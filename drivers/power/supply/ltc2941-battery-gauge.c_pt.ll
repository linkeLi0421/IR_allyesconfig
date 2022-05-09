; ModuleID = '/llk/IR_all_yes/drivers/power/supply/ltc2941-battery-gauge.c_pt.bc'
source_filename = "../drivers/power/supply/ltc2941-battery-gauge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.ltc294x_info = type { ptr, ptr, %struct.power_supply_desc, %struct.delayed_work, i32, i32, i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_ltc2941_battery_gauge__290_656_ltc294x_driver_init6 = internal global ptr @ltc294x_driver_init, section ".initcall6.init", align 4
@ltc294x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ltc294x_i2c_probe, ptr null, ptr null, ptr @ltc294x_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltc294x_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltc294x_pm_ops, ptr null, ptr null }, ptr @ltc294x_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ltc294x_driver_exit = internal global ptr @ltc294x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [68 x i8] c"ltc2941_battery_gauge.author=Auryn Verwegen, Topic Embedded Systems\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [69 x i8] c"ltc2941_battery_gauge.author=Mike Looijmans, Topic Embedded Products\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [94 x i8] c"ltc2941_battery_gauge.description=LTC2941/LTC2942/LTC2943/LTC2944 Battery Gas Gauge IC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [70 x i8] c"ltc2941_battery_gauge.file=drivers/power/supply/ltc2941-battery-gauge\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [34 x i8] c"ltc2941_battery_gauge.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LTC2941\00", [24 x i8] zeroinitializer }, align 32
@ltc294x_i2c_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2941\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2942\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2943\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2944\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@ltc294x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ltc294x_suspend, ptr @ltc294x_resume, ptr @ltc294x_suspend, ptr @ltc294x_resume, ptr @ltc294x_suspend, ptr @ltc294x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ltc294x_i2c_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ltc2941\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ltc2942\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ltc2943\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ltc2944\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lltc,resistor-sense\00", [44 x i8] zeroinitializer }, align 32
@ltc294x_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 477, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Could not find lltc,resistor-sense in devicetree\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ltc294x_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/power/supply/ltc2941-battery-gauge.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc294x_i2c_probe._entry_ptr = internal global ptr @ltc294x_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lltc,prescaler-exponent\00", [40 x i8] zeroinitializer }, align 32
@ltc294x_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 486, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"lltc,prescaler-exponent not in devicetree\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ltc294x_i2c_probe._entry_ptr.11 = internal global ptr @ltc294x_i2c_probe._entry.8, section ".printk_index", align 4
@ltc294x_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not read status register\0A\00", [32 x i8] zeroinitializer }, align 32
@ltc294x_i2c_probe._entry_ptr.14 = internal global ptr @ltc294x_i2c_probe._entry.12, section ".printk_index", align 4
@ltc294x_properties = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 28, i32 24, i32 25, i32 26, i32 12, i32 52, i32 17], [36 x i8] zeroinitializer }, align 32
@ltc294x_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 549, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Communication with chip failed\0A\00", [32 x i8] zeroinitializer }, align 32
@ltc294x_i2c_probe._entry_ptr.17 = internal global ptr @ltc294x_i2c_probe._entry.15, section ".printk_index", align 4
@ltc294x_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 556, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register ltc2941\0A\00", [36 x i8] zeroinitializer }, align 32
@ltc294x_i2c_probe._entry_ptr.20 = internal global ptr @ltc294x_i2c_probe._entry.18, section ".printk_index", align 4
@ltc294x_read_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 115, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ltc2941 read_reg failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ltc294x_read_regs\00", [46 x i8] zeroinitializer }, align 32
@ltc294x_read_regs._entry_ptr = internal global ptr @ltc294x_read_regs._entry, section ".printk_index", align 4
@ltc294x_read_regs.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.22, ptr @.str.4, ptr @.str.24, i8 0, i8 30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ltc2941_battery_gauge\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s (%#x, %d) -> %#x\0A\00", [43 x i8] zeroinitializer }, align 32
@ltc294x_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ltc2941 write_reg failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ltc294x_write_regs\00", [45 x i8] zeroinitializer }, align 32
@ltc294x_write_regs._entry_ptr = internal global ptr @ltc294x_write_regs._entry, section ".printk_index", align 4
@ltc294x_write_regs.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.26, ptr @.str.4, ptr @.str.24, i8 0, i8 34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@devm_delayed_work_autocancel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&(w)->work)\00", [34 x i8] zeroinitializer }, align 32
@devm_delayed_work_autocancel.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&(w)->timer\00", [20 x i8] zeroinitializer }, align 32
@ltc294x_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not read registers from device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ltc294x_reset\00", [18 x i8] zeroinitializer }, align 32
@ltc294x_reset._entry_ptr = internal global ptr @ltc294x_reset._entry, section ".printk_index", align 4
@ltc294x_reset._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not write register\0A\00", [38 x i8] zeroinitializer }, align 32
@ltc294x_reset._entry_ptr.34 = internal global ptr @ltc294x_reset._entry.32, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 12, i64 17, i64 24, i64 25, i64 26, i64 28, i64 52]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"ltc294x_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 646, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 648, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"ltc294x_i2c_of_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 625, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"ltc294x_pm_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 608, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"ltc294x_i2c_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 616, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 474, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 476, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 482, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 485, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 506, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"ltc294x_properties\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 439, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 549, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 556, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 115, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 119, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 133, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [32 x i8] c"../include/linux/devm-helpers.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 50, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 152, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [48 x i8] c"../drivers/power/supply/ltc2941-battery-gauge.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 176, i32 4 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_ltc294x_driver_exit, ptr @__initcall__kmod_ltc2941_battery_gauge__290_656_ltc294x_driver_init6, ptr @ltc294x_driver_exit, ptr @ltc294x_i2c_probe._entry, ptr @ltc294x_i2c_probe._entry.12, ptr @ltc294x_i2c_probe._entry.15, ptr @ltc294x_i2c_probe._entry.18, ptr @ltc294x_i2c_probe._entry.8, ptr @ltc294x_i2c_probe._entry_ptr, ptr @ltc294x_i2c_probe._entry_ptr.11, ptr @ltc294x_i2c_probe._entry_ptr.14, ptr @ltc294x_i2c_probe._entry_ptr.17, ptr @ltc294x_i2c_probe._entry_ptr.20, ptr @ltc294x_read_regs._entry, ptr @ltc294x_read_regs._entry_ptr, ptr @ltc294x_reset._entry, ptr @ltc294x_reset._entry.32, ptr @ltc294x_reset._entry_ptr, ptr @ltc294x_reset._entry_ptr.34, ptr @ltc294x_write_regs._entry, ptr @ltc294x_write_regs._entry_ptr, ptr @ltc294x_driver, ptr @.str, ptr @ltc294x_i2c_of_match, ptr @ltc294x_pm_ops, ptr @ltc294x_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @ltc294x_properties, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @devm_delayed_work_autocancel.__key, ptr @.str.27, ptr @devm_delayed_work_autocancel.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_i2c_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_i2c_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_properties to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_read_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_delayed_work_autocancel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_delayed_work_autocancel.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc294x_reset._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc294x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ltc294x_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc294x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ltc294x_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc294x_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg_start.i = alloca i8, align 1
  %psy_cfg = alloca %struct.power_supply_config, align 4
  %prescaler_exp = alloca i32, align 4
  %r_sense = alloca i32, align 4
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #8
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prescaler_exp) #8
  %1 = ptrtoint ptr %prescaler_exp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %prescaler_exp, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_sense) #8
  %2 = ptrtoint ptr %r_sense to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %r_sense, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #8
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %status, align 1, !annotation !92
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 176, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_node_get(ptr noundef %6) #8
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %7 = ptrtoint ptr %call4 to i32
  %id5 = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %id5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %id5, align 4
  %9 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call2, align 4
  %supply_desc = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %supply_desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %supply_desc, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %call2, ptr noundef nonnull @.str.1, ptr noundef nonnull %r_sense, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8 = icmp slt i32 %call.i.i, 0
  br i1 %cmp8, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %12 = ptrtoint ptr %r_sense to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r_sense, align 4
  %r_sense12 = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %r_sense12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %r_sense12, align 4
  %call.i.i162 = call i32 @of_property_read_variable_u32_array(ptr noundef %call2, ptr noundef nonnull @.str.7, ptr noundef nonnull %prescaler_exp, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i162)
  %cmp14 = icmp slt i32 %call.i.i162, 0
  br i1 %cmp14, label %do.end18, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  %15 = ptrtoint ptr %prescaler_exp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 7, ptr %prescaler_exp, align 4
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %if.end11.if.end20_crit_edge
  %16 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp22 = icmp eq i32 %17, 2
  %18 = ptrtoint ptr %prescaler_exp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prescaler_exp, align 4
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp24 = icmp ugt i32 %19, 6
  br i1 %cmp24, label %if.then25, label %if.then23.if.end26_crit_edge

if.then23.if.end26_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prescaler_exp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6, ptr %prescaler_exp, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then23.if.end26_crit_edge
  %21 = ptrtoint ptr %r_sense to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r_sense, align 4
  %div = sdiv i32 17000000, %22
  %23 = ptrtoint ptr %prescaler_exp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prescaler_exp, align 4
  %mul = shl i32 %24, 1
  %div27161 = lshr exact i32 4096, %mul
  %div28 = sdiv i32 %div, %div27161
  br label %if.end37

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %cmp29 = icmp ugt i32 %19, 7
  br i1 %cmp29, label %if.then30, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prescaler_exp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %prescaler_exp, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.else.if.end31_crit_edge
  %26 = ptrtoint ptr %r_sense to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %r_sense, align 4
  %div32 = sdiv i32 4250000, %27
  %28 = ptrtoint ptr %prescaler_exp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prescaler_exp, align 4
  %div34160 = lshr exact i32 128, %29
  %div35 = sdiv i32 %div32, %div34160
  br label %if.end37

if.end37:                                         ; preds = %if.end31, %if.end26
  %div35.sink = phi i32 [ %div35, %if.end31 ], [ %div28, %if.end26 ]
  %Qlsb36 = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %Qlsb36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div35.sink, ptr %Qlsb36, align 4
  %31 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %switch = icmp ult i32 %32, 2
  br i1 %switch, label %if.then42, label %if.end56

if.then42:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %33 = call ptr @memset(ptr %msgs.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_start.i) #8
  %34 = ptrtoint ptr %reg_start.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %reg_start.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %35 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr.i, align 2
  %37 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msgs.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 2
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %39 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %reg_start.i, ptr %buf4.i, align 4
  %arrayidx6.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %36, ptr %arrayidx6.i, align 4
  %len10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %len10.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len10.i, align 4
  %buf12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %buf12.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %status, ptr %buf12.i, align 4
  %flags.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %flags.i, align 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %44 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i, align 8
  %call.i163 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp.i = icmp slt i32 %call.i163, 0
  br i1 %cmp.i, label %do.end48, label %do.body16.i

do.body16.i:                                      ; preds = %if.then42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_read_regs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_i2c_probe, %if.end50)) #8
          to label %if.then21.i [label %if.end50], !srcloc !93

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %status, align 1
  %conv23.i = zext i8 %47 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_read_regs.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 1, i32 noundef %conv23.i) #8
  br label %if.end50

do.end48:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end50:                                         ; preds = %if.then21.i, %do.body16.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  %48 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %tobool.not = icmp sgt i8 %49, -1
  br i1 %tobool.not, label %if.end56.thread172, label %if.end56.thread

if.end56.thread:                                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %id5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %id5, align 4
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %client, ptr %call.i, align 4
  %type170 = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %type170 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %type170, align 4
  %properties171 = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %properties171 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @ltc294x_properties, ptr %properties171, align 4
  br label %sw.default

if.end56.thread172:                               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %id5 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %id5, align 4
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %client, ptr %call.i, align 4
  %type173 = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %type173 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %type173, align 4
  %properties174 = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 2, i32 4
  %57 = ptrtoint ptr %properties174 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ltc294x_properties, ptr %properties174, align 4
  br label %sw.epilog

if.end56:                                         ; preds = %if.end37
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %client, ptr %call.i, align 4
  %type = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %type, align 4
  %properties = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 2, i32 4
  %60 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @ltc294x_properties, ptr %properties, align 4
  %61 = and i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %switch175 = icmp eq i32 %61, 2
  br i1 %switch175, label %if.end56.sw.epilog_crit_edge, label %if.end56.sw.default_crit_edge

if.end56.sw.default_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

if.end56.sw.epilog_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end56.sw.default_crit_edge, %if.end56.thread
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end56.sw.epilog_crit_edge, %if.end56.thread172
  %.sink = phi i32 [ 4, %sw.default ], [ 6, %if.end56.thread172 ], [ 7, %if.end56.sw.epilog_crit_edge ]
  %num_properties67 = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 2, i32 5
  %62 = ptrtoint ptr %num_properties67 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink, ptr %num_properties67, align 4
  %get_property = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 2, i32 6
  %63 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @ltc294x_get_property, ptr %get_property, align 4
  %set_property = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 2, i32 7
  %64 = ptrtoint ptr %set_property to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ltc294x_set_property, ptr %set_property, align 4
  %property_is_writeable = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 2, i32 8
  %65 = ptrtoint ptr %property_is_writeable to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @ltc294x_property_is_writeable, ptr %property_is_writeable, align 4
  %external_power_changed = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 2, i32 9
  %66 = ptrtoint ptr %external_power_changed to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %external_power_changed, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %67 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i, ptr %drv_data, align 4
  %work = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 3
  call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %68 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -64, ptr %work, align 4
  %lockdep_map.i = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @devm_delayed_work_autocancel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry5.i = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %69 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %71 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @ltc294x_work, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 3, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.29, ptr noundef nonnull @devm_delayed_work_autocancel.__key.28) #8
  %call.i164 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_delayed_work_drop, ptr noundef %work) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool74.not = icmp eq i32 %call.i164, 0
  br i1 %tobool74.not, label %if.end76, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end76:                                         ; preds = %sw.epilog
  %72 = ptrtoint ptr %prescaler_exp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %prescaler_exp, align 4
  %call77 = call fastcc i32 @ltc294x_reset(ptr noundef nonnull %call.i, i32 noundef %73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end83, label %if.end85

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end85:                                         ; preds = %if.end76
  %call88 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef %supply_desc, ptr noundef nonnull %psy_cfg) #8
  %supply = getelementptr inbounds %struct.ltc294x_info, ptr %call.i, i32 0, i32 1
  %74 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call88, ptr %supply, align 4
  %cmp.i165 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %do.end94, label %if.else98

do.end94:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  %75 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %supply, align 4
  %77 = ptrtoint ptr %76 to i32
  br label %cleanup

if.else98:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %78 = load ptr, ptr @system_wq, align 4
  %call.i.i166 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %78, ptr noundef %work, i32 noundef 1000) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else98, %do.end94, %do.end83, %sw.epilog.cleanup_crit_edge, %do.end48, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i163, %do.end48 ], [ %call77, %do.end83 ], [ %77, %do.end94 ], [ 0, %if.else98 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i164, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_sense) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prescaler_exp) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltc294x_i2c_shutdown(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg_start.i = alloca i8, align 1
  %value = alloca i8, align 1
  %control = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value, align 1, !annotation !92
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %control) #8
  %id = getelementptr inbounds %struct.ltc294x_info, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %7 = call ptr @memset(ptr %msgs.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_start.i) #8
  %8 = ptrtoint ptr %reg_start.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %reg_start.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i, align 2
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 2
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg_start.i, ptr %buf4.i, align 4
  %arrayidx6.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %10, ptr %arrayidx6.i, align 4
  %len10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %len10.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len10.i, align 4
  %buf12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %buf12.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %value, ptr %buf12.i, align 4
  %flags.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags.i, align 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ltc294x_read_regs.exit.thread, label %do.body16.i

ltc294x_read_regs.exit.thread:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  br label %cleanup

do.body16.i:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_read_regs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_i2c_shutdown, %if.end5)) #8
          to label %if.then21.i [label %if.end5], !srcloc !93

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %value, align 1
  %conv23.i = zext i8 %21 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_read_regs.__UNIQUE_ID_ddebug288, ptr noundef %dev22.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef 1, i32 noundef 1, i32 noundef %conv23.i) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then21.i, %do.body16.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  %22 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %value, align 1
  %24 = and i8 %23, 63
  %25 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %control, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %23)
  %26 = icmp ult i8 %23, 64
  br i1 %26, label %if.end5.cleanup_crit_edge, label %if.then11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end5
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i20 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %28, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %control) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.i21 = icmp slt i32 %call.i20, 0
  br i1 %cmp.i21, label %do.end.i23, label %do.body3.i

do.end.i23:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i22 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22, ptr noundef nonnull @.str.25) #11
  br label %cleanup

do.body3.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_write_regs.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_i2c_shutdown, %cleanup)) #8
          to label %if.then8.i [label %cleanup], !srcloc !93

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %control, align 1
  %conv10.i = zext i8 %30 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_write_regs.__UNIQUE_ID_ddebug289, ptr noundef %dev9.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef 1, i32 noundef %conv10.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %do.body3.i, %do.end.i23, %if.end5.cleanup_crit_edge, %ltc294x_read_regs.exit.thread, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %control) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc294x_get_property(ptr noundef %psy, i32 noundef %prop, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %prop, label %entry.cleanup_crit_edge [
    i32 24, label %sw.bb
    i32 25, label %sw.bb2
    i32 26, label %sw.bb4
    i32 28, label %sw.bb6
    i32 12, label %sw.bb8
    i32 17, label %sw.bb10
    i32 52, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call fastcc i32 @ltc294x_read_charge_register(ptr noundef %call, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %Qlsb.i = getelementptr inbounds %struct.ltc294x_info, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %Qlsb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %Qlsb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.i = icmp slt i32 %2, 0
  %sub.i = add nsw i32 %call.i, -65535
  %spec.select.i = select i1 %cmp1.i, i32 %sub.i, i32 %call.i
  %div.i.i = sdiv i32 %2, 10
  %mul.i.i = mul i32 %spec.select.i, %div.i.i
  %div1.i.i = sdiv i32 %mul.i.i, 100
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div1.i.i, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %call.i26 = tail call fastcc i32 @ltc294x_read_charge_register(ptr noundef %call, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i27 = icmp slt i32 %call.i26, 0
  br i1 %cmp.i27, label %sw.bb2.cleanup_crit_edge, label %if.end.i35

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i35:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %Qlsb.i28 = getelementptr inbounds %struct.ltc294x_info, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %Qlsb.i28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %Qlsb.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i29 = icmp slt i32 %5, 0
  %sub.i30 = add nsw i32 %call.i26, -65535
  %spec.select.i31 = select i1 %cmp1.i29, i32 %sub.i30, i32 %call.i26
  %div.i.i32 = sdiv i32 %5, 10
  %mul.i.i33 = mul i32 %spec.select.i31, %div.i.i32
  %div1.i.i34 = sdiv i32 %mul.i.i33, 100
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div1.i.i34, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %call.i38 = tail call fastcc i32 @ltc294x_read_charge_register(ptr noundef %call, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp.i39 = icmp slt i32 %call.i38, 0
  br i1 %cmp.i39, label %sw.bb4.cleanup_crit_edge, label %if.end.i47

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i47:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %Qlsb.i40 = getelementptr inbounds %struct.ltc294x_info, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %Qlsb.i40 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %Qlsb.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.i41 = icmp slt i32 %8, 0
  %sub.i42 = add nsw i32 %call.i38, -65535
  %spec.select.i43 = select i1 %cmp1.i41, i32 %sub.i42, i32 %call.i38
  %div.i.i44 = sdiv i32 %8, 10
  %mul.i.i45 = mul i32 %spec.select.i43, %div.i.i44
  %div1.i.i46 = sdiv i32 %mul.i.i45, 100
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div1.i.i46, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %call.i50 = tail call fastcc i32 @ltc294x_read_charge_register(ptr noundef %call, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp.i51 = icmp slt i32 %call.i50, 0
  br i1 %cmp.i51, label %sw.bb6.cleanup_crit_edge, label %if.end.i56

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i56:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i52 = add nsw i32 %call.i50, -32767
  %Qlsb.i.i = getelementptr inbounds %struct.ltc294x_info, ptr %call, i32 0, i32 7
  %10 = ptrtoint ptr %Qlsb.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %Qlsb.i.i, align 4
  %div.i.i53 = sdiv i32 %11, 10
  %mul.i.i54 = mul i32 %div.i.i53, %sub.i52
  %div1.i.i55 = sdiv i32 %mul.i.i54, 100
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div1.i.i55, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call fastcc i32 @ltc294x_get_voltage(ptr noundef %call, ptr noundef %val)
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call fastcc i32 @ltc294x_get_current(ptr noundef %call, ptr noundef %val)
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call fastcc i32 @ltc294x_get_temperature(ptr noundef %call, ptr noundef %val)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %if.end.i56, %sw.bb6.cleanup_crit_edge, %if.end.i47, %sw.bb4.cleanup_crit_edge, %if.end.i35, %sw.bb2.cleanup_crit_edge, %if.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.i35 ], [ %call.i26, %sw.bb2.cleanup_crit_edge ], [ 0, %if.end.i47 ], [ %call.i38, %sw.bb4.cleanup_crit_edge ], [ 0, %if.end.i56 ], [ %call.i50, %sw.bb6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc294x_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  %dataw.i10 = alloca [2 x i8], align 1
  %dataw.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 24, label %sw.bb
    i32 25, label %sw.bb2
    i32 26, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dataw.i) #8
  %mul.i.i = mul i32 %2, 100
  %Qlsb.i.i = getelementptr inbounds %struct.ltc294x_info, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %Qlsb.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %Qlsb.i.i, align 4
  %div.i.i = sdiv i32 %4, 10
  %div1.i.i = sdiv i32 %mul.i.i, %div.i.i
  %5 = tail call i32 @llvm.smin.i32(i32 %div1.i.i, i32 65535) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  %add.i = add nsw i32 %5, 65535
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %spec.select.i)
  %6 = icmp ugt i32 %spec.select.i, 65535
  br i1 %6, label %sw.bb.ltc294x_set_charge_thr.exit_crit_edge, label %if.end4.i

sw.bb.ltc294x_set_charge_thr.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc294x_set_charge_thr.exit

if.end4.i:                                        ; preds = %sw.bb
  %7 = getelementptr inbounds [2 x i8], ptr %dataw.i, i32 0, i32 1
  %8 = lshr i32 %spec.select.i, 8
  %conv.i = trunc i32 %8 to i8
  %9 = ptrtoint ptr %dataw.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %dataw.i, align 1
  %conv6.i = trunc i32 %spec.select.i to i8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %7, align 1
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %call.i.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %12, i8 noundef zeroext 4, i8 noundef zeroext 2, ptr noundef nonnull %dataw.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body3.i.i

do.end.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #11
  br label %ltc294x_set_charge_thr.exit

do.body3.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_write_regs.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_set_property, %ltc294x_set_charge_thr.exit)) #8
          to label %if.then8.i.i [label %ltc294x_set_charge_thr.exit], !srcloc !93

if.then8.i.i:                                     ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev9.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %dataw.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dataw.i, align 1
  %conv10.i.i = zext i8 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_write_regs.__UNIQUE_ID_ddebug289, ptr noundef %dev9.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef 2, i32 noundef %conv10.i.i) #8
  br label %ltc294x_set_charge_thr.exit

ltc294x_set_charge_thr.exit:                      ; preds = %if.then8.i.i, %do.body3.i.i, %do.end.i.i, %sw.bb.ltc294x_set_charge_thr.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.bb.ltc294x_set_charge_thr.exit_crit_edge ], [ %call.i.i, %do.end.i.i ], [ 0, %if.then8.i.i ], [ 0, %do.body3.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dataw.i) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dataw.i10) #8
  %mul.i.i11 = mul i32 %16, 100
  %Qlsb.i.i12 = getelementptr inbounds %struct.ltc294x_info, ptr %call, i32 0, i32 7
  %17 = ptrtoint ptr %Qlsb.i.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %Qlsb.i.i12, align 4
  %div.i.i13 = sdiv i32 %18, 10
  %div1.i.i14 = sdiv i32 %mul.i.i11, %div.i.i13
  %19 = tail call i32 @llvm.smin.i32(i32 %div1.i.i14, i32 65535) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i15 = icmp slt i32 %18, 0
  %add.i16 = add nsw i32 %19, 65535
  %spec.select.i17 = select i1 %cmp.i15, i32 %add.i16, i32 %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %spec.select.i17)
  %20 = icmp ugt i32 %spec.select.i17, 65535
  br i1 %20, label %sw.bb2.ltc294x_set_charge_thr.exit30_crit_edge, label %if.end4.i22

sw.bb2.ltc294x_set_charge_thr.exit30_crit_edge:   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc294x_set_charge_thr.exit30

if.end4.i22:                                      ; preds = %sw.bb2
  %21 = getelementptr inbounds [2 x i8], ptr %dataw.i10, i32 0, i32 1
  %22 = lshr i32 %spec.select.i17, 8
  %conv.i18 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %dataw.i10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i18, ptr %dataw.i10, align 1
  %conv6.i19 = trunc i32 %spec.select.i17 to i8
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv6.i19, ptr %21, align 1
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %call.i.i20 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %26, i8 noundef zeroext 6, i8 noundef zeroext 2, ptr noundef nonnull %dataw.i10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %cmp.i.i21 = icmp slt i32 %call.i.i20, 0
  br i1 %cmp.i.i21, label %do.end.i.i24, label %do.body3.i.i25

do.end.i.i24:                                     ; preds = %if.end4.i22
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i23 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i23, ptr noundef nonnull @.str.25) #11
  br label %ltc294x_set_charge_thr.exit30

do.body3.i.i25:                                   ; preds = %if.end4.i22
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_write_regs.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_set_property, %ltc294x_set_charge_thr.exit30)) #8
          to label %if.then8.i.i28 [label %ltc294x_set_charge_thr.exit30], !srcloc !93

if.then8.i.i28:                                   ; preds = %do.body3.i.i25
  call void @__sanitizer_cov_trace_pc() #10
  %dev9.i.i26 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %dataw.i10 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dataw.i10, align 1
  %conv10.i.i27 = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_write_regs.__UNIQUE_ID_ddebug289, ptr noundef %dev9.i.i26, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef 6, i32 noundef 2, i32 noundef %conv10.i.i27) #8
  br label %ltc294x_set_charge_thr.exit30

ltc294x_set_charge_thr.exit30:                    ; preds = %if.then8.i.i28, %do.body3.i.i25, %do.end.i.i24, %sw.bb2.ltc294x_set_charge_thr.exit30_crit_edge
  %retval.0.i29 = phi i32 [ -22, %sw.bb2.ltc294x_set_charge_thr.exit30_crit_edge ], [ %call.i.i20, %do.end.i.i24 ], [ 0, %if.then8.i.i28 ], [ 0, %do.body3.i.i25 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dataw.i10) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %call5 = tail call fastcc i32 @ltc294x_set_charge_now(ptr noundef %call, i32 noundef %30)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %ltc294x_set_charge_thr.exit30, %ltc294x_set_charge_thr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.bb4 ], [ %retval.0.i29, %ltc294x_set_charge_thr.exit30 ], [ %retval.0.i, %ltc294x_set_charge_thr.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ltc294x_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %psp.off = add i32 %psp, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %psp.off)
  %switch = icmp ult i32 %psp.off, 3
  %. = zext i1 %switch to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltc294x_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  %call.i = tail call fastcc i32 @ltc294x_read_charge_register(ptr noundef %add.ptr, i32 noundef 2) #8
  %charge1.i = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %charge1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %charge1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %1)
  %cmp.not.i = icmp eq i32 %call.i, %1
  br i1 %cmp.not.i, label %entry.ltc294x_update.exit_crit_edge, label %if.then.i

entry.ltc294x_update.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc294x_update.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %charge1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i, ptr %charge1.i, align 4
  %supply.i = getelementptr i8, ptr %work, i32 -56
  %3 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %supply.i, align 4
  tail call void @power_supply_changed(ptr noundef %4) #8
  br label %ltc294x_update.exit

ltc294x_update.exit:                              ; preds = %if.then.i, %entry.ltc294x_update.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work, i32 noundef 1000) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc294x_reset(ptr nocapture noundef readonly %info, i32 noundef %prescaler_exp) unnamed_addr #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg_start.i = alloca i8, align 1
  %value = alloca i8, align 1
  %control = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !92
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %control) #8
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %3 = call ptr @memset(ptr %msgs.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_start.i) #8
  %4 = ptrtoint ptr %reg_start.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %reg_start.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr.i, align 2
  %7 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msgs.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 2
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reg_start.i, ptr %buf4.i, align 4
  %arrayidx6.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %6, ptr %arrayidx6.i, align 4
  %len10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %len10.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len10.i, align 4
  %buf12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %buf12.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %value, ptr %buf12.i, align 4
  %flags.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags.i, align 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %do.body16.i

do.body16.i:                                      ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_read_regs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_reset, %if.end)) #8
          to label %if.then21.i [label %if.end], !srcloc !93

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %value, align 1
  %conv23.i = zext i8 %17 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_read_regs.__UNIQUE_ID_ddebug288, ptr noundef %dev22.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef 1, i32 noundef 1, i32 noundef %conv23.i) #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end:                                           ; preds = %if.then21.i, %do.body16.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  %prescaler_exp.tr = trunc i32 %prescaler_exp to i8
  %20 = shl i8 %prescaler_exp.tr, 3
  %conv = and i8 %20, 56
  %21 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %control, align 1
  %id = getelementptr inbounds %struct.ltc294x_info, ptr %info, i32 0, i32 4
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %23, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.bb5_crit_edge
    i32 3, label %if.end.sw.bb5_crit_edge45
  ]

if.end.sw.bb5_crit_edge45:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = or i8 %20, -64
  %26 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %control, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge45
  %27 = or i8 %conv, -128
  %28 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %control, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %if.end.sw.epilog_crit_edge
  %29 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %value, align 1
  %31 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %control, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp11.not = icmp eq i8 %30, %32
  br i1 %cmp11.not, label %sw.epilog.cleanup_crit_edge, label %if.then13

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %sw.epilog
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info, align 4
  %call.i34 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %control) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp.i35 = icmp slt i32 %call.i34, 0
  br i1 %cmp.i35, label %do.end21, label %do.body3.i

do.body3.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_write_regs.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_reset, %cleanup)) #8
          to label %if.then8.i [label %cleanup], !srcloc !93

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %control, align 1
  %conv10.i = zext i8 %36 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_write_regs.__UNIQUE_ID_ddebug289, ptr noundef %dev9.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef 1, i32 noundef %conv10.i) #8
  br label %cleanup

do.end21:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i36 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i36, ptr noundef nonnull @.str.25) #11
  %37 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info, align 4
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.33) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.then8.i, %do.body3.i, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %sw.epilog.cleanup_crit_edge ], [ %call.i, %do.end ], [ %call.i34, %do.end21 ], [ 0, %do.body3.i ], [ 0, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %control) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc294x_get_voltage(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg_start.i = alloca i8, align 1
  %datar = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %datar) #8
  %0 = ptrtoint ptr %datar to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %datar, align 1, !annotation !92
  %1 = getelementptr inbounds [2 x i8], ptr %datar, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !92
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %5 = call ptr @memset(ptr %msgs.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_start.i) #8
  %6 = ptrtoint ptr %reg_start.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %reg_start.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg_start.i, ptr %buf4.i, align 4
  %arrayidx6.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %8, ptr %arrayidx6.i, align 4
  %len10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %len10.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %len10.i, align 4
  %buf12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %buf12.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %datar, ptr %buf12.i, align 4
  %flags.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags.i, align 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.body16.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #11
  br label %ltc294x_read_regs.exit

do.body16.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_read_regs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_get_voltage, %ltc294x_read_regs.exit)) #8
          to label %if.then21.i [label %ltc294x_read_regs.exit], !srcloc !93

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %18 = ptrtoint ptr %datar to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %datar, align 1
  %conv23.i = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_read_regs.__UNIQUE_ID_ddebug288, ptr noundef %dev22.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef 8, i32 noundef 2, i32 noundef %conv23.i) #8
  br label %ltc294x_read_regs.exit

ltc294x_read_regs.exit:                           ; preds = %if.then21.i, %do.body16.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.then21.i ], [ 0, %do.body16.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  %20 = ptrtoint ptr %datar to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %datar, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 1
  %id = getelementptr inbounds %struct.ltc294x_info, ptr %info, i32 0, i32 4
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %25, label %sw.default [
    i32 2, label %ltc294x_read_regs.exit.sw.epilog_crit_edge
    i32 3, label %sw.bb5
  ]

ltc294x_read_regs.exit.sw.epilog_crit_edge:       ; preds = %ltc294x_read_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %ltc294x_read_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %ltc294x_read_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %ltc294x_read_regs.exit.sw.epilog_crit_edge
  %.sink22 = phi i32 [ 60000, %sw.default ], [ 56640, %sw.bb5 ], [ 47200, %ltc294x_read_regs.exit.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 100, %sw.default ], [ 1250, %sw.bb5 ], [ 500, %ltc294x_read_regs.exit.sw.epilog_crit_edge ]
  %conv = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv3 = zext i8 %23 to i32
  %or = or i32 %shl, %conv3
  %mul9 = mul nuw i32 %or, %.sink22
  %div10 = udiv i32 %mul9, 65535
  %mul11 = mul nuw nsw i32 %div10, %.sink
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul11, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %datar) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc294x_get_current(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg_start.i = alloca i8, align 1
  %datar = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %datar) #8
  %0 = ptrtoint ptr %datar to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %datar, align 1, !annotation !92
  %1 = getelementptr inbounds [2 x i8], ptr %datar, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !92
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %5 = call ptr @memset(ptr %msgs.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_start.i) #8
  %6 = ptrtoint ptr %reg_start.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 14, ptr %reg_start.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg_start.i, ptr %buf4.i, align 4
  %arrayidx6.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %8, ptr %arrayidx6.i, align 4
  %len10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %len10.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %len10.i, align 4
  %buf12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %buf12.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %datar, ptr %buf12.i, align 4
  %flags.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags.i, align 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.body16.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #11
  br label %ltc294x_read_regs.exit

do.body16.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_read_regs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_get_current, %ltc294x_read_regs.exit)) #8
          to label %if.then21.i [label %ltc294x_read_regs.exit], !srcloc !93

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %18 = ptrtoint ptr %datar to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %datar, align 1
  %conv23.i = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_read_regs.__UNIQUE_ID_ddebug288, ptr noundef %dev22.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef 14, i32 noundef 2, i32 noundef %conv23.i) #8
  br label %ltc294x_read_regs.exit

ltc294x_read_regs.exit:                           ; preds = %if.then21.i, %do.body16.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.then21.i ], [ 0, %do.body16.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  %20 = ptrtoint ptr %datar to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %datar, align 1
  %conv = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 1
  %conv3 = zext i8 %23 to i32
  %or = or i32 %shl, %conv3
  %sub = add nsw i32 %or, -32767
  %id = getelementptr inbounds %struct.ltc294x_info, ptr %info, i32 0, i32 4
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp = icmp eq i32 %25, 3
  %value.0.v = select i1 %cmp, i32 64000, i32 60000
  %value.0 = mul i32 %sub, %value.0.v
  %r_sense = getelementptr inbounds %struct.ltc294x_info, ptr %info, i32 0, i32 6
  %26 = ptrtoint ptr %r_sense to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %r_sense, align 4
  %mul6 = mul i32 %27, 32767
  %div = sdiv i32 %value.0, %mul6
  %mul7 = mul i32 %div, 1000
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul7, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %datar) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc294x_get_temperature(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg_start.i = alloca i8, align 1
  %datar = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %datar) #8
  %0 = ptrtoint ptr %datar to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %datar, align 1, !annotation !92
  %1 = getelementptr inbounds [2 x i8], ptr %datar, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !92
  %id = getelementptr inbounds %struct.ltc294x_info, ptr %info, i32 0, i32 4
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  %. = select i1 %cmp, i32 12, i32 20
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %7 = call ptr @memset(ptr %msgs.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_start.i) #8
  %conv.i = trunc i32 %. to i8
  %8 = ptrtoint ptr %reg_start.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %reg_start.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i, align 2
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 2
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg_start.i, ptr %buf4.i, align 4
  %arrayidx6.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %10, ptr %arrayidx6.i, align 4
  %len10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %len10.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %len10.i, align 4
  %buf12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %buf12.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %datar, ptr %buf12.i, align 4
  %flags.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags.i, align 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.body16.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #11
  br label %ltc294x_read_regs.exit

do.body16.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_read_regs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_get_temperature, %ltc294x_read_regs.exit)) #8
          to label %if.then21.i [label %ltc294x_read_regs.exit], !srcloc !93

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %20 = ptrtoint ptr %datar to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %datar, align 1
  %conv23.i = zext i8 %21 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_read_regs.__UNIQUE_ID_ddebug288, ptr noundef %dev22.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %., i32 noundef 2, i32 noundef %conv23.i) #8
  br label %ltc294x_read_regs.exit

ltc294x_read_regs.exit:                           ; preds = %if.then21.i, %do.body16.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.then21.i ], [ 0, %do.body16.i ]
  %.6 = select i1 %cmp, i32 6000, i32 5100
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  %22 = ptrtoint ptr %datar to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %datar, align 1
  %conv = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 1
  %conv3 = zext i8 %25 to i32
  %or = or i32 %shl, %conv3
  %mul = mul nuw nsw i32 %or, %.6
  %div = udiv i32 %mul, 65535
  %sub = add nsw i32 %div, -2722
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %datar) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc294x_read_charge_register(ptr nocapture noundef readonly %info, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg_start.i = alloca i8, align 1
  %datar = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %datar) #8
  %0 = ptrtoint ptr %datar to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %datar, align 1, !annotation !92
  %1 = getelementptr inbounds [2 x i8], ptr %datar, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !92
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %5 = call ptr @memset(ptr %msgs.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_start.i) #8
  %conv.i = trunc i32 %reg to i8
  %6 = ptrtoint ptr %reg_start.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %reg_start.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg_start.i, ptr %buf4.i, align 4
  %arrayidx6.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %8, ptr %arrayidx6.i, align 4
  %len10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %len10.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %len10.i, align 4
  %buf12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %buf12.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %datar, ptr %buf12.i, align 4
  %flags.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags.i, align 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ltc294x_read_regs.exit.thread, label %do.body16.i

ltc294x_read_regs.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  br label %cleanup

do.body16.i:                                      ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_read_regs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_read_charge_register, %if.end)) #8
          to label %if.then21.i [label %if.end], !srcloc !93

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %18 = ptrtoint ptr %datar to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %datar, align 1
  %conv23.i = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_read_regs.__UNIQUE_ID_ddebug288, ptr noundef %dev22.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %reg, i32 noundef 2, i32 noundef %conv23.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then21.i, %do.body16.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  %20 = ptrtoint ptr %datar to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %datar, align 1
  %conv = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 1
  %conv3 = zext i8 %23 to i32
  %add = or i32 %shl, %conv3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ltc294x_read_regs.exit.thread
  %retval.0 = phi i32 [ %add, %if.end ], [ %call.i, %ltc294x_read_regs.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %datar) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc294x_set_charge_now(ptr nocapture noundef readonly %info, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg_start.i = alloca i8, align 1
  %dataw = alloca [2 x i8], align 1
  %ctrl_reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dataw) #8
  %0 = ptrtoint ptr %dataw to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %dataw, align 1, !annotation !92
  %1 = getelementptr inbounds [2 x i8], ptr %dataw, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl_reg) #8
  %2 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ctrl_reg, align 1, !annotation !92
  %mul.i = mul i32 %val, 100
  %Qlsb.i = getelementptr inbounds %struct.ltc294x_info, ptr %info, i32 0, i32 7
  %3 = ptrtoint ptr %Qlsb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %Qlsb.i, align 4
  %div.i = sdiv i32 %4, 10
  %div1.i = sdiv i32 %mul.i, %div.i
  %5 = tail call i32 @llvm.smin.i32(i32 %div1.i, i32 65535) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  %add = add nsw i32 %5, 65535
  %spec.select = select i1 %cmp, i32 %add, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %spec.select)
  %6 = icmp ugt i32 %spec.select, 65535
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %9 = call ptr @memset(ptr %msgs.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_start.i) #8
  %10 = ptrtoint ptr %reg_start.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %reg_start.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 2
  %13 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msgs.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %reg_start.i, ptr %buf4.i, align 4
  %arrayidx6.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %12, ptr %arrayidx6.i, align 4
  %len10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %len10.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len10.i, align 4
  %buf12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %buf12.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ctrl_reg, ptr %buf12.i, align 4
  %flags.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags.i, align 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ltc294x_read_regs.exit.thread, label %do.body16.i

ltc294x_read_regs.exit.thread:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  br label %cleanup

do.body16.i:                                      ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_read_regs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_set_charge_now, %if.end8)) #8
          to label %if.then21.i [label %if.end8], !srcloc !93

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  %22 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctrl_reg, align 1
  %conv23.i = zext i8 %23 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_read_regs.__UNIQUE_ID_ddebug288, ptr noundef %dev22.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef 1, i32 noundef 1, i32 noundef %conv23.i) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then21.i, %do.body16.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_start.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  %24 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ctrl_reg, align 1
  %26 = or i8 %25, 1
  store i8 %26, ptr %ctrl_reg, align 1
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 4
  %call.i52 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %28, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %ctrl_reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp.i53 = icmp slt i32 %call.i52, 0
  br i1 %cmp.i53, label %ltc294x_write_regs.exit.thread, label %do.body3.i

ltc294x_write_regs.exit.thread:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i54 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i54, ptr noundef nonnull @.str.25) #11
  br label %cleanup

do.body3.i:                                       ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_write_regs.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_set_charge_now, %if.end15)) #8
          to label %if.then8.i [label %if.end15], !srcloc !93

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ctrl_reg, align 1
  %conv10.i = zext i8 %30 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_write_regs.__UNIQUE_ID_ddebug289, ptr noundef %dev9.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef 1, i32 noundef %conv10.i) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then8.i, %do.body3.i
  %31 = lshr i32 %spec.select, 8
  %conv16 = trunc i32 %31 to i8
  %32 = ptrtoint ptr %dataw to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv16, ptr %dataw, align 1
  %conv18 = trunc i32 %spec.select to i8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv18, ptr %1, align 1
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info, align 4
  %call.i57 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %35, i8 noundef zeroext 2, i8 noundef zeroext 2, ptr noundef nonnull %dataw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp.i58 = icmp slt i32 %call.i57, 0
  br i1 %cmp.i58, label %do.end.i60, label %do.body3.i61

do.end.i60:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i59 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i59, ptr noundef nonnull @.str.25) #11
  br label %ltc294x_write_regs.exit66

do.body3.i61:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_write_regs.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_set_charge_now, %ltc294x_write_regs.exit66)) #8
          to label %if.then8.i64 [label %ltc294x_write_regs.exit66], !srcloc !93

if.then8.i64:                                     ; preds = %do.body3.i61
  call void @__sanitizer_cov_trace_pc() #10
  %dev9.i62 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %dataw to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dataw, align 1
  %conv10.i63 = zext i8 %37 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_write_regs.__UNIQUE_ID_ddebug289, ptr noundef %dev9.i62, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef 2, i32 noundef %conv10.i63) #8
  br label %ltc294x_write_regs.exit66

ltc294x_write_regs.exit66:                        ; preds = %if.then8.i64, %do.body3.i61, %do.end.i60
  %38 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ctrl_reg, align 1
  %40 = and i8 %39, -2
  store i8 %40, ptr %ctrl_reg, align 1
  %41 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %info, align 4
  %call.i67 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %42, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %ctrl_reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  br i1 %cmp.i68, label %45, label %do.body3.i71

do.body3.i71:                                     ; preds = %ltc294x_write_regs.exit66
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc294x_write_regs.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc294x_set_charge_now, %cleanup)) #8
          to label %if.then8.i74 [label %cleanup], !srcloc !93

if.then8.i74:                                     ; preds = %do.body3.i71
  call void @__sanitizer_cov_trace_pc() #10
  %dev9.i72 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ctrl_reg, align 1
  %conv10.i73 = zext i8 %44 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc294x_write_regs.__UNIQUE_ID_ddebug289, ptr noundef %dev9.i72, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef 1, i32 noundef %conv10.i73) #8
  br label %cleanup

45:                                               ; preds = %ltc294x_write_regs.exit66
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i69 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i69, ptr noundef nonnull @.str.25) #11
  br label %cleanup

cleanup:                                          ; preds = %45, %if.then8.i74, %do.body3.i71, %ltc294x_write_regs.exit.thread, %ltc294x_read_regs.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %ltc294x_read_regs.exit.thread ], [ %call.i52, %ltc294x_write_regs.exit.thread ], [ %call.i67, %45 ], [ 0, %do.body3.i71 ], [ 0, %if.then8.i74 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl_reg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dataw) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

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
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %res) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc294x_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.ltc294x_info, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc294x_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.ltc294x_info, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 1000) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_ltc2941_battery_gauge__290_656_ltc294x_driver_init6, !1, !"__initcall__kmod_ltc2941_battery_gauge__290_656_ltc294x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 656, i32 1}
!2 = !{ptr @__exitcall_ltc294x_driver_exit, !1, !"__exitcall_ltc294x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 658, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 659, i32 1}
!7 = !{ptr @__UNIQUE_ID_description293, !8, !"__UNIQUE_ID_description293", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 660, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 661, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 648, i32 11}
!14 = !{ptr @ltc294x_driver, !15, !"ltc294x_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 646, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 474, i32 33}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 476, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ltc294x_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ltc294x_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 482, i32 33}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 485, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ltc294x_i2c_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ltc294x_i2c_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 506, i32 4}
!35 = !{ptr @ltc294x_i2c_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ltc294x_i2c_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 549, i32 3}
!39 = !{ptr @ltc294x_i2c_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ltc294x_i2c_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 556, i32 3}
!43 = !{ptr @ltc294x_i2c_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ltc294x_i2c_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 115, i32 3}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ltc294x_read_regs._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ltc294x_read_regs._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 119, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ltc294x_read_regs.__UNIQUE_ID_ddebug288, !51, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!54 = !{ptr @ltc294x_properties, !55, !"ltc294x_properties", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 439, i32 35}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 133, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ltc294x_write_regs._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ltc294x_write_regs._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @ltc294x_write_regs.__UNIQUE_ID_ddebug289, !62, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 137, i32 2}
!63 = !{ptr @devm_delayed_work_autocancel.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../include/linux/devm-helpers.h", i32 50, i32 2}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @devm_delayed_work_autocancel.__key.28, !64, !"__key", i1 false, i1 false}
!67 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 152, i32 3}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ltc294x_reset._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ltc294x_reset._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 176, i32 4}
!75 = !{ptr @ltc294x_reset._entry.32, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ltc294x_reset._entry_ptr.34, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @ltc294x_i2c_of_match, !78, !"ltc294x_i2c_of_match", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 625, i32 34}
!79 = !{ptr @ltc294x_pm_ops, !80, !"ltc294x_pm_ops", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 608, i32 8}
!81 = !{ptr @ltc294x_i2c_id, !82, !"ltc294x_i2c_id", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/ltc2941-battery-gauge.c", i32 616, i32 35}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i64 2148295195, i64 2148295200, i64 2148295213, i64 2148295257, i64 2148295291, i64 2148295312}
