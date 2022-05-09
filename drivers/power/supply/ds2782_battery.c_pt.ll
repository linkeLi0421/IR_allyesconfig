; ModuleID = '/llk/IR_all_yes/drivers/power/supply/ds2782_battery.c_pt.bc'
source_filename = "../drivers/power/supply/ds2782_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ds278x_battery_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ds278x_info = type { ptr, ptr, %struct.power_supply_desc, ptr, %struct.delayed_work, i32, i32, i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_ds2782_battery__289_467_ds278x_battery_driver_init6 = internal global ptr @ds278x_battery_driver_init, section ".initcall6.init", align 4
@ds278x_battery_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ds278x_battery_probe, ptr @ds278x_battery_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ds278x_battery_pm_ops, ptr null, ptr null }, ptr @ds278x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ds278x_battery_driver_exit = internal global ptr @ds278x_battery_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [34 x i8] c"ds2782_battery.author=Ryan Mallon\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [80 x i8] c"ds2782_battery.description=Maxim/Dallas DS2782 Stand-Alone Fuel Gauge IC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [56 x i8] c"ds2782_battery.file=drivers/power/supply/ds2782_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [27 x i8] c"ds2782_battery.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds2782-battery\00", [17 x i8] zeroinitializer }, align 32
@ds278x_battery_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ds278x_suspend, ptr @ds278x_resume, ptr @ds278x_suspend, ptr @ds278x_resume, ptr @ds278x_suspend, ptr @ds278x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ds278x_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ds2782\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ds2786\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ds278x_battery_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"missing platform data for ds2786\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ds278x_battery_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/ds2782_battery.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds278x_battery_probe._entry_ptr = internal global ptr @ds278x_battery_probe._entry, section ".printk_index", align 4
@battery_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @battery_lock, i64 52), ptr getelementptr (i8, ptr @battery_lock, i64 52) }, ptr @battery_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@battery_id = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@ds278x_ops = internal constant { [2 x %struct.ds278x_battery_ops], [40 x i8] } { [2 x %struct.ds278x_battery_ops] [%struct.ds278x_battery_ops { ptr @ds2782_get_current, ptr @ds2782_get_voltage, ptr @ds2782_get_capacity }, %struct.ds278x_battery_ops { ptr @ds2786_get_current, ptr @ds2786_get_voltage, ptr @ds2786_get_capacity }], [40 x i8] zeroinitializer }, align 32
@ds278x_battery_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&info->bat_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@ds278x_battery_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&info->bat_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@ds278x_battery_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register battery\0A\00", [36 x i8] zeroinitializer }, align 32
@ds278x_battery_probe._entry_ptr.12 = internal global ptr @ds278x_battery_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"battery_lock.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"battery_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"battery_id.xa_lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ds2782_get_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sense resistor value is 0\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ds2782_get_current\00", [45 x i8] zeroinitializer }, align 32
@ds2782_get_current._entry_ptr = internal global ptr @ds2782_get_current._entry, section ".printk_index", align 4
@ds2782_get_current.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.17, ptr @.str.3, ptr @.str.19, i8 0, i8 34, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds2782_battery\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sense resistor = %d milli-ohms\0A\00", [32 x i8] zeroinitializer }, align 32
@ds278x_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 75, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"register read failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ds278x_read_reg\00", [16 x i8] zeroinitializer }, align 32
@ds278x_read_reg._entry_ptr = internal global ptr @ds278x_read_reg._entry, section ".printk_index", align 4
@ds278x_read_reg16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.22, ptr @.str.3, i32 90, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ds278x_read_reg16\00", [46 x i8] zeroinitializer }, align 32
@ds278x_read_reg16._entry_ptr = internal global ptr @ds278x_read_reg16._entry, section ".printk_index", align 4
@ds278x_battery_props = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 47, i32 12, i32 17, i32 52], [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 12, i64 17, i64 47, i64 52]
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"ds278x_battery_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 458, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 460, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"ds278x_battery_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 353, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"ds278x_id\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 451, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 387, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"battery_lock\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"battery_id\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 405, i32 50 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"ds278x_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 360, i32 40 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 425, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 430, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 67, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 66, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 131, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 136, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 75, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 90, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [21 x i8] c"ds278x_battery_props\00", align 1
@___asan_gen_.123 = private constant [41 x i8] c"../drivers/power/supply/ds2782_battery.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 298, i32 35 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_ds278x_battery_driver_exit, ptr @__initcall__kmod_ds2782_battery__289_467_ds278x_battery_driver_init6, ptr @ds2782_get_current._entry, ptr @ds2782_get_current._entry_ptr, ptr @ds278x_battery_driver_exit, ptr @ds278x_battery_probe._entry, ptr @ds278x_battery_probe._entry.10, ptr @ds278x_battery_probe._entry_ptr, ptr @ds278x_battery_probe._entry_ptr.12, ptr @ds278x_read_reg._entry, ptr @ds278x_read_reg._entry_ptr, ptr @ds278x_read_reg16._entry, ptr @ds278x_read_reg16._entry_ptr, ptr @ds278x_battery_driver, ptr @.str, ptr @ds278x_battery_pm_ops, ptr @ds278x_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @battery_lock, ptr @battery_id, ptr @.str.6, ptr @ds278x_ops, ptr @ds278x_battery_probe.__key, ptr @.str.7, ptr @ds278x_battery_probe.__key.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @ds278x_battery_props], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds278x_battery_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds278x_battery_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds278x_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds278x_battery_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_id to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds278x_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds278x_battery_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds278x_battery_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds278x_battery_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2782_get_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds278x_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds278x_read_reg16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds278x_battery_props to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds278x_battery_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ds278x_battery_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds278x_battery_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ds278x_battery_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds278x_battery_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %2 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @battery_lock, i32 noundef 0) #7
  %call = tail call i32 @idr_alloc(ptr noundef nonnull @battery_id, ptr noundef %client, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #7
  tail call void @mutex_unlock(ptr noundef nonnull @battery_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 180) #11
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.fail_info_crit_edge, label %if.end8

if.end4.fail_info_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_info

if.end8:                                          ; preds = %if.end4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %call) #7
  %battery_desc = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %battery_desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %battery_desc, align 8
  %tobool13.not = icmp eq ptr %call9, null
  br i1 %tobool13.not, label %if.end8.fail_name_crit_edge, label %if.end15

if.end8.fail_name_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_name

if.end15:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp17 = icmp eq i32 %8, 1
  br i1 %cmp17, label %if.then18, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %rsns19 = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %rsns19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rsns19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %client, ptr %call7.i.i, align 8
  %id22 = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %id22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call, ptr %id22, align 4
  %15 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x %struct.ds278x_battery_ops], ptr @ds278x_ops, i32 0, i32 %16
  %ops = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %ops, align 4
  %type.i = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type.i, align 4
  %properties.i = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ds278x_battery_props, ptr %properties.i, align 8
  %num_properties.i = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 2, i32 5
  %20 = ptrtoint ptr %num_properties.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %num_properties.i, align 4
  %get_property.i = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 2, i32 6
  %21 = ptrtoint ptr %get_property.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ds278x_battery_get_property, ptr %get_property.i, align 8
  %external_power_changed.i = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 2, i32 9
  %22 = ptrtoint ptr %external_power_changed.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %external_power_changed.i, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %23 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %drv_data, align 4
  %capacity = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 100, ptr %capacity, align 4
  %status = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %status, align 8
  %bat_work = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %bat_work, i32 noundef 0) #7
  %26 = ptrtoint ptr %bat_work to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %bat_work, align 8
  %lockdep_map = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @ds278x_battery_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry33 = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry33, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %29 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ds278x_bat_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @ds278x_battery_probe.__key.8) #7
  %call46 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef %battery_desc, ptr noundef nonnull %psy_cfg) #7
  %battery = getelementptr inbounds %struct.ds278x_info, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call46, ptr %battery, align 4
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end52, label %if.else

do.end52:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  %31 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %battery, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = ptrtoint ptr %battery_desc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %battery_desc, align 8
  call void @kfree(ptr noundef %35) #7
  br label %fail_name

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %bat_work, i32 noundef 1000) #7
  br label %cleanup

fail_name:                                        ; preds = %do.end52, %if.end8.fail_name_crit_edge
  %ret.0 = phi i32 [ %33, %do.end52 ], [ -12, %if.end8.fail_name_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %fail_info

fail_info:                                        ; preds = %fail_name, %if.end4.fail_info_crit_edge
  %ret.1 = phi i32 [ %ret.0, %fail_name ], [ -12, %if.end4.fail_info_crit_edge ]
  call void @mutex_lock_nested(ptr noundef nonnull @battery_lock, i32 noundef 0) #7
  %call61 = call ptr @idr_remove(ptr noundef nonnull @battery_id, i32 noundef %call) #7
  call void @mutex_unlock(ptr noundef nonnull @battery_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %fail_info, %if.else, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.else ], [ -22, %do.end ], [ %call, %if.end.cleanup_crit_edge ], [ %ret.1, %fail_info ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds278x_battery_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %id1 = getelementptr inbounds %struct.ds278x_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id1, align 4
  %battery = getelementptr inbounds %struct.ds278x_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %battery, align 4
  tail call void @power_supply_unregister(ptr noundef %5) #7
  %bat_work = getelementptr inbounds %struct.ds278x_info, ptr %1, i32 0, i32 4
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bat_work) #7
  %battery_desc = getelementptr inbounds %struct.ds278x_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %battery_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %battery_desc, align 4
  tail call void @kfree(ptr noundef %7) #7
  tail call void @kfree(ptr noundef %1) #7
  tail call void @mutex_lock_nested(ptr noundef nonnull @battery_lock, i32 noundef 0) #7
  %call3 = tail call ptr @idr_remove(ptr noundef nonnull @battery_id, i32 noundef %3) #7
  tail call void @mutex_unlock(ptr noundef nonnull @battery_lock) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds278x_bat_work(ptr noundef %work) #2 align 64 {
entry:
  %current_uA.i.i = alloca i32, align 4
  %capacity.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -64
  %status.i = getelementptr i8, ptr %work, i32 112
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status.i, align 4
  %capacity.i = getelementptr i8, ptr %work, i32 108
  %2 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capacity.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_uA.i.i) #7
  %4 = ptrtoint ptr %current_uA.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %current_uA.i.i, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %capacity.i.i) #7
  %5 = ptrtoint ptr %capacity.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %capacity.i.i, align 4, !annotation !75
  %ops.i.i = getelementptr i8, ptr %work, i32 -4
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i.i = call i32 %9(ptr noundef %add.ptr, ptr noundef nonnull %current_uA.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.ds278x_get_status.exit.i_crit_edge

entry.ds278x_get_status.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds278x_get_status.exit.i

if.end.i.i:                                       ; preds = %entry
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %get_battery_capacity.i.i = getelementptr inbounds %struct.ds278x_battery_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %get_battery_capacity.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_battery_capacity.i.i, align 4
  %call2.i.i = call i32 %13(ptr noundef %add.ptr, ptr noundef nonnull %capacity.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.ds278x_get_status.exit.i_crit_edge

if.end.i.i.ds278x_get_status.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds278x_get_status.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %14 = ptrtoint ptr %capacity.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capacity.i.i, align 4
  %16 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 100
  br i1 %cmp.i.i, label %if.end5.i.i.cleanup.sink.split.i.i_crit_edge, label %if.else.i.i

if.end5.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end5.i.i
  %17 = ptrtoint ptr %current_uA.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %current_uA.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8.i.i = icmp eq i32 %18, 0
  br i1 %cmp8.i.i, label %if.else.i.i.cleanup.sink.split.i.i_crit_edge, label %if.else10.i.i

if.else.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.else10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11.i.i = icmp slt i32 %18, 0
  %..i.i = select i1 %cmp11.i.i, i32 2, i32 1
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.else10.i.i, %if.else.i.i.cleanup.sink.split.i.i_crit_edge, %if.end5.i.i.cleanup.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 4, %if.end5.i.i.cleanup.sink.split.i.i_crit_edge ], [ 3, %if.else.i.i.cleanup.sink.split.i.i_crit_edge ], [ %..i.i, %if.else10.i.i ]
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink.i.i, ptr %status.i, align 4
  br label %ds278x_get_status.exit.i

ds278x_get_status.exit.i:                         ; preds = %cleanup.sink.split.i.i, %if.end.i.i.ds278x_get_status.exit.i_crit_edge, %entry.ds278x_get_status.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %capacity.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_uA.i.i) #7
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %21)
  %cmp.not.i = icmp eq i32 %1, %21
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %ds278x_get_status.exit.i.if.then.i_crit_edge

ds278x_get_status.exit.i.if.then.i_crit_edge:     ; preds = %ds278x_get_status.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %ds278x_get_status.exit.i
  %22 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %23)
  %cmp4.not.i = icmp eq i32 %3, %23
  br i1 %cmp4.not.i, label %lor.lhs.false.i.ds278x_bat_update.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i.ds278x_bat_update.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds278x_bat_update.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %ds278x_get_status.exit.i.if.then.i_crit_edge
  %battery.i = getelementptr i8, ptr %work, i32 -60
  %24 = ptrtoint ptr %battery.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %battery.i, align 4
  call void @power_supply_changed(ptr noundef %25) #7
  br label %ds278x_bat_update.exit

ds278x_bat_update.exit:                           ; preds = %if.then.i, %lor.lhs.false.i.ds278x_bat_update.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i2 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work, i32 noundef 1000) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2782_get_current(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %current_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 105) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ds278x_read_reg.exit, label %if.end

ds278x_read_reg.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3.i = trunc i32 %call.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3.i)
  %cmp = icmp eq i8 %conv3.i, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = trunc i32 %call.i to i16
  %div.rhs.trunc = and i16 %6, 255
  %div50 = udiv i16 1000, %div.rhs.trunc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds2782_get_current.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds2782_get_current, %do.end16)) #7
          to label %if.then11 [label %do.end16], !srcloc !76

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %div.zext = zext i16 %div50 to i32
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds2782_get_current.__UNIQUE_ID_ddebug288, ptr noundef %dev13, ptr noundef nonnull @.str.19, i32 noundef %div.zext) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then11, %if.end3
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %call.i34 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %10, i8 noundef zeroext 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp.i35 = icmp slt i32 %call.i34, 0
  br i1 %cmp.i35, label %ds278x_read_reg16.exit, label %if.end20

ds278x_read_reg16.exit:                           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %dev.i36 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i36, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end20:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i38 = trunc i32 %call.i34 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv3.i38) #7
  %conv21 = sext i16 %13 to i32
  %div2251 = udiv i16 1563, %div50
  %div22.zext = zext i16 %div2251 to i32
  %mul = mul nsw i32 %div22.zext, %conv21
  %14 = ptrtoint ptr %current_uA to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %current_uA, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %ds278x_read_reg16.exit, %do.end, %ds278x_read_reg.exit
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end20 ], [ %call.i, %ds278x_read_reg.exit ], [ %call.i34, %ds278x_read_reg16.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2782_get_voltage(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %voltage_uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ds278x_read_reg16.exit, label %if.end

ds278x_read_reg16.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i = trunc i32 %call.i to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #7
  %5 = sdiv i16 %4, 32
  %div = sext i16 %5 to i32
  %mul = mul nsw i32 %div, 4800
  %6 = ptrtoint ptr %voltage_uV to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %voltage_uV, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ds278x_read_reg16.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %ds278x_read_reg16.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2782_get_capacity(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %capacity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ds278x_read_reg.exit, label %if.end

ds278x_read_reg.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = and i32 %call.i, 255
  %4 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %capacity, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ds278x_read_reg.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %ds278x_read_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2786_get_current(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %current_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ds278x_read_reg16.exit, label %if.end

ds278x_read_reg16.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i = trunc i32 %call.i to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #7
  %5 = sdiv i16 %4, 16
  %div = sext i16 %5 to i32
  %rsns = getelementptr inbounds %struct.ds278x_info, ptr %info, i32 0, i32 6
  %6 = ptrtoint ptr %rsns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsns, align 4
  %div1 = sdiv i32 25, %7
  %mul = mul nsw i32 %div1, %div
  %8 = ptrtoint ptr %current_uA to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %current_uA, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ds278x_read_reg16.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %ds278x_read_reg16.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2786_get_voltage(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %voltage_uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ds278x_read_reg16.exit, label %if.end

ds278x_read_reg16.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i = trunc i32 %call.i to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #7
  %5 = sdiv i16 %4, 8
  %div = sext i16 %5 to i32
  %mul = mul nsw i32 %div, 1220
  %6 = ptrtoint ptr %voltage_uV to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %voltage_uV, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ds278x_read_reg16.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %ds278x_read_reg16.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2786_get_capacity(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %capacity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ds278x_read_reg.exit, label %if.end

ds278x_read_reg.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = lshr i32 %call.i, 1
  %div = and i32 %4, 127
  %5 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %capacity, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ds278x_read_reg.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %ds278x_read_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds278x_battery_get_property(ptr noundef %psy, i32 noundef %prop, ptr noundef %val) #2 align 64 {
entry:
  %current_uA.i = alloca i32, align 4
  %capacity.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %prop, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 47, label %sw.bb2
    i32 12, label %sw.bb4
    i32 17, label %sw.bb7
    i32 52, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_uA.i) #7
  %1 = ptrtoint ptr %current_uA.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %current_uA.i, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %capacity.i) #7
  %2 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %capacity.i, align 4, !annotation !75
  %ops.i = getelementptr inbounds %struct.ds278x_info, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = call i32 %6(ptr noundef %call, ptr noundef nonnull %current_uA.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.ds278x_get_status.exit_crit_edge

sw.bb.ds278x_get_status.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds278x_get_status.exit

if.end.i:                                         ; preds = %sw.bb
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %get_battery_capacity.i = getelementptr inbounds %struct.ds278x_battery_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %get_battery_capacity.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_battery_capacity.i, align 4
  %call2.i = call i32 %10(ptr noundef %call, ptr noundef nonnull %capacity.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.ds278x_get_status.exit_crit_edge

if.end.i.ds278x_get_status.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds278x_get_status.exit

if.end5.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capacity.i, align 4
  %capacity6.i = getelementptr inbounds %struct.ds278x_info, ptr %call, i32 0, i32 7
  %13 = ptrtoint ptr %capacity6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %capacity6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %12)
  %cmp.i = icmp eq i32 %12, 100
  br i1 %cmp.i, label %if.end5.i.cleanup.sink.split.i_crit_edge, label %if.else.i

if.end5.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end5.i
  %14 = ptrtoint ptr %current_uA.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_uA.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8.i = icmp eq i32 %15, 0
  br i1 %cmp8.i, label %if.else.i.cleanup.sink.split.i_crit_edge, label %if.else10.i

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp11.i = icmp slt i32 %15, 0
  %..i = select i1 %cmp11.i, i32 2, i32 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else10.i, %if.else.i.cleanup.sink.split.i_crit_edge, %if.end5.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 4, %if.end5.i.cleanup.sink.split.i_crit_edge ], [ 3, %if.else.i.cleanup.sink.split.i_crit_edge ], [ %..i, %if.else10.i ]
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink.i, ptr %val, align 4
  br label %ds278x_get_status.exit

ds278x_get_status.exit:                           ; preds = %cleanup.sink.split.i, %if.end.i.ds278x_get_status.exit_crit_edge, %sw.bb.ds278x_get_status.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %sw.bb.ds278x_get_status.exit_crit_edge ], [ %call2.i, %if.end.i.ds278x_get_status.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %capacity.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_uA.i) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.ds278x_info, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %get_battery_capacity = getelementptr inbounds %struct.ds278x_battery_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %get_battery_capacity to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_battery_capacity, align 4
  %call3 = tail call i32 %20(ptr noundef %call, ptr noundef %val) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ops5 = getelementptr inbounds %struct.ds278x_info, ptr %call, i32 0, i32 3
  %21 = ptrtoint ptr %ops5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops5, align 4
  %get_battery_voltage = getelementptr inbounds %struct.ds278x_battery_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %get_battery_voltage to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_battery_voltage, align 4
  %call6 = tail call i32 %24(ptr noundef %call, ptr noundef %val) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ops8 = getelementptr inbounds %struct.ds278x_info, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops8, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call9 = tail call i32 %28(ptr noundef %call, ptr noundef %val) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %30, i8 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %ds278x_read_reg16.exit.i, label %if.end.i23

ds278x_read_reg16.exit.i:                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.20) #10
  br label %sw.epilog

if.end.i23:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i = trunc i32 %call.i.i to i16
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #7
  %34 = sdiv i16 %33, 32
  %div.i = sext i16 %34 to i32
  %mul.i = mul nsw i32 %div.i, 125
  %div1.i = sdiv i32 %mul.i, 100
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div1.i, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i23, %ds278x_read_reg16.exit.i, %sw.bb7, %sw.bb4, %sw.bb2, %ds278x_get_status.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call9, %sw.bb7 ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %retval.0.i, %ds278x_get_status.exit ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %if.end.i23 ], [ %call.i.i, %ds278x_read_reg16.exit.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds278x_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bat_work = getelementptr inbounds %struct.ds278x_info, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %bat_work) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds278x_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bat_work = getelementptr inbounds %struct.ds278x_info, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %bat_work, i32 noundef 1000) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_ds2782_battery__289_467_ds278x_battery_driver_init6, !1, !"__initcall__kmod_ds2782_battery__289_467_ds278x_battery_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/ds2782_battery.c", i32 467, i32 1}
!2 = !{ptr @__exitcall_ds278x_battery_driver_exit, !1, !"__exitcall_ds278x_battery_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/ds2782_battery.c", i32 469, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/ds2782_battery.c", i32 470, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/ds2782_battery.c", i32 471, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/ds2782_battery.c", i32 460, i32 11}
!12 = !{ptr @ds278x_battery_driver, !13, !"ds278x_battery_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/ds2782_battery.c", i32 458, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/ds2782_battery.c", i32 387, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ds278x_battery_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ds278x_battery_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/ds2782_battery.c", i32 405, i32 50}
!24 = !{ptr @ds278x_battery_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/ds2782_battery.c", i32 425, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ds278x_battery_probe.__key.8, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/ds2782_battery.c", i32 430, i32 3}
!31 = !{ptr @ds278x_battery_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ds278x_battery_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/ds2782_battery.c", i32 67, i32 8}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @battery_lock, !34, !"battery_lock", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/ds2782_battery.c", i32 66, i32 8}
!39 = !{ptr @battery_id, !38, !"battery_id", i1 false, i1 false}
!40 = !{ptr @ds278x_ops, !41, !"ds278x_ops", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/ds2782_battery.c", i32 360, i32 40}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/ds2782_battery.c", i32 131, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ds2782_get_current._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ds2782_get_current._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/ds2782_battery.c", i32 136, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ds2782_get_current.__UNIQUE_ID_ddebug288, !48, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/ds2782_battery.c", i32 75, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ds278x_read_reg._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ds278x_read_reg._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/ds2782_battery.c", i32 90, i32 3}
!58 = !{ptr @ds278x_read_reg16._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ds278x_read_reg16._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @ds278x_battery_props, !61, !"ds278x_battery_props", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/ds2782_battery.c", i32 298, i32 35}
!62 = !{ptr @ds278x_battery_pm_ops, !63, !"ds278x_battery_pm_ops", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/ds2782_battery.c", i32 353, i32 8}
!64 = !{ptr @ds278x_id, !65, !"ds278x_id", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/ds2782_battery.c", i32 451, i32 35}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i64 2148700733, i64 2148700738, i64 2148700751, i64 2148700795, i64 2148700829, i64 2148700850}
