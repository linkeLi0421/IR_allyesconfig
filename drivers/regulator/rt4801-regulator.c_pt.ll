; ModuleID = '/llk/IR_all_yes/drivers/regulator/rt4801-regulator.c_pt.bc'
source_filename = "../drivers/regulator/rt4801-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rt4801_priv = type { ptr, ptr, i32, [2 x i32] }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_rt4801_regulator__288_219_rt4801_driver_init6 = internal global ptr @rt4801_driver_init, section ".initcall6.init", align 4
@rt4801_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @rt4801_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt4801_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt4801_driver_exit = internal global ptr @rt4801_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [61 x i8] c"rt4801_regulator.author=ChiYuan Hwang <cy_huang@richtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [64 x i8] c"rt4801_regulator.description=Richtek RT4801 Display Bias Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"rt4801_regulator.file=drivers/regulator/rt4801-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [32 x i8] c"rt4801_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt4801\00", [25 x i8] zeroinitializer }, align 32
@rt4801_of_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"richtek,rt4801\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt4801_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt4801_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"rt4801_regulator:169:(&rt4801_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@rt4801_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to init regmap\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt4801_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/rt4801-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt4801_probe._entry_ptr = internal global ptr @rt4801_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@rt4801_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get gpios\0A\00", [43 x i8] zeroinitializer }, align 32
@rt4801_probe._entry_ptr.10 = internal global ptr @rt4801_probe._entry.8, section ".printk_index", align 4
@rt4801_regulator_descs = internal constant { [2 x %struct.regulator_desc], [120 x i8] } { [2 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr null, ptr null, i32 0, i8 0, i32 21, i32 0, ptr @rt4801_regulator_ops, i32 0, i32 0, ptr null, i32 4000000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr null, ptr null, i32 1, i8 0, i32 21, i32 0, ptr @rt4801_regulator_ops, i32 0, i32 0, ptr null, i32 4000000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 1, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [120 x i8] zeroinitializer }, align 32
@rt4801_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register [%d] regulator\0A\00", [61 x i8] zeroinitializer }, align 32
@rt4801_probe._entry_ptr.13 = internal global ptr @rt4801_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DSVP\00", [27 x i8] zeroinitializer }, align 32
@rt4801_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @rt4801_set_voltage_sel, ptr null, ptr @rt4801_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt4801_enable, ptr @rt4801_disable, ptr @rt4801_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DSVN\00", [27 x i8] zeroinitializer }, align 32
@rt4801_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 70, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no dedicated gpio can control\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt4801_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt4801_enable._entry_ptr = internal global ptr @rt4801_enable._entry, section ".printk_index", align 4
@rt4801_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.19, ptr @.str.4, i32 92, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rt4801_disable\00", [17 x i8] zeroinitializer }, align 32
@rt4801_disable._entry_ptr = internal global ptr @rt4801_disable._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"rt4801_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 212, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 214, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"rt4801_of_id\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 206, i32 49 }
@___asan_gen_.29 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"rt4801_regmap_config\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 149, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 169, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 171, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 175, i32 64 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 177, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"rt4801_regulator_descs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 120, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 198, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 122, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"rt4801_regulator_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 111, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 135, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 70, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [40 x i8] c"../drivers/regulator/rt4801-regulator.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 92, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_rt4801_driver_exit, ptr @__initcall__kmod_rt4801_regulator__288_219_rt4801_driver_init6, ptr @rt4801_disable._entry, ptr @rt4801_disable._entry_ptr, ptr @rt4801_driver_exit, ptr @rt4801_enable._entry, ptr @rt4801_enable._entry_ptr, ptr @rt4801_probe._entry, ptr @rt4801_probe._entry.11, ptr @rt4801_probe._entry.8, ptr @rt4801_probe._entry_ptr, ptr @rt4801_probe._entry_ptr.10, ptr @rt4801_probe._entry_ptr.13, ptr @rt4801_driver, ptr @.str, ptr @rt4801_of_id, ptr @rt4801_probe._key, ptr @rt4801_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @rt4801_regulator_descs, ptr @.str.12, ptr @.str.14, ptr @rt4801_regulator_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4801_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4801_of_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4801_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4801_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4801_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4801_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4801_regulator_descs to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4801_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4801_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4801_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4801_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4801_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt4801_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt4801_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @rt4801_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4801_probe(ptr noundef %i2c) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %enable_flag = getelementptr inbounds %struct.rt4801_priv, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %enable_flag to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %enable_flag, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt4801_regmap_config, ptr noundef nonnull @rt4801_probe._key, ptr noundef nonnull @.str.1) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup42

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 7) #5
  %enable_gpios = getelementptr inbounds %struct.rt4801_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %enable_gpios to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %enable_gpios, align 4
  %cmp.i71 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %do.end16, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %4 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %5 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %6 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %7 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %8 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %9 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %config, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %5, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %6, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val, align 4, !annotation !66
  %call24 = call i32 @regmap_read(ptr noundef %call3, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %for.cond.preheader.cleanup.thread_crit_edge

for.cond.preheader.cleanup.thread_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  %16 = ptrtoint ptr %enable_gpios to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable_gpios, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup42

if.end27:                                         ; preds = %for.cond.preheader
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and = and i32 %20, 31
  %arrayidx = getelementptr %struct.rt4801_priv, ptr %call.i, i32 0, i32 3, i32 0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %arrayidx, align 4
  %call29 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @rt4801_regulator_descs, ptr noundef nonnull %config) #5
  %cmp.i72 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.end27.do.end34_crit_edge, label %for.inc

if.end27.do.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

do.end34:                                         ; preds = %if.end27.1.do.end34_crit_edge, %if.end27.do.end34_crit_edge
  %call29.lcssa = phi ptr [ %call29, %if.end27.do.end34_crit_edge ], [ %call29.1, %if.end27.1.do.end34_crit_edge ]
  %i.078.lcssa81 = phi i32 [ 0, %if.end27.do.end34_crit_edge ], [ 1, %if.end27.1.do.end34_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %i.078.lcssa81) #8
  %22 = ptrtoint ptr %call29.lcssa to i32
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.inc.cleanup.thread_crit_edge, %do.end34, %for.cond.preheader.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %22, %do.end34 ], [ %call24, %for.cond.preheader.cleanup.thread_crit_edge ], [ %call24.1, %for.inc.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  br label %cleanup42

for.inc:                                          ; preds = %if.end27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %23 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %config, align 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %4, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %5, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %6, align 4
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call3, ptr %7, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %val, align 4, !annotation !66
  %call24.1 = call i32 @regmap_read(ptr noundef %call3, i32 noundef 1, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.1)
  %tobool25.not.1 = icmp eq i32 %call24.1, 0
  br i1 %tobool25.not.1, label %if.end27.1, label %for.inc.cleanup.thread_crit_edge

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end27.1:                                       ; preds = %for.inc
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %and.1 = and i32 %31, 31
  %arrayidx.1 = getelementptr %struct.rt4801_priv, ptr %call.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.1, ptr %arrayidx.1, align 4
  %call29.1 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([2 x %struct.regulator_desc], ptr @rt4801_regulator_descs, i32 0, i32 1), ptr noundef nonnull %config) #5
  %cmp.i72.1 = icmp ugt ptr %call29.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72.1, label %if.end27.1.do.end34_crit_edge, label %for.inc.1

if.end27.1.do.end34_crit_edge:                    ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

for.inc.1:                                        ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  br label %cleanup42

cleanup42:                                        ; preds = %for.inc.1, %cleanup.thread, %do.end16, %do.end, %entry.cleanup42_crit_edge
  %retval.2 = phi i32 [ %2, %do.end ], [ %18, %do.end16 ], [ -12, %entry.cleanup42_crit_edge ], [ %retval.1.ph, %cleanup.thread ], [ 0, %for.inc.1 ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4801_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %enable_flag = getelementptr inbounds %struct.rt4801_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %enable_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_flag, align 4
  %shl = shl nuw i32 1, %call1
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %rdev, i32 noundef %selector) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %arrayidx = getelementptr %struct.rt4801_priv, ptr %call, i32 0, i32 3, i32 %call1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %selector, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4801_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %enable_flag = getelementptr inbounds %struct.rt4801_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %enable_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_flag, align 4
  %shl = shl nuw i32 1, %call1
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %rdev) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.rt4801_priv, ptr %call, i32 0, i32 3, i32 %call1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4801_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %enable_gpios = getelementptr inbounds %struct.rt4801_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %enable_gpios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_gpios, align 4
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ndescs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call1)
  %cmp.not = icmp ugt i32 %3, %call1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  br label %bypass_gpio

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.gpio_descs, ptr %1, i32 0, i32 2, i32 %call1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #5
  br label %bypass_gpio

bypass_gpio:                                      ; preds = %if.end, %do.end
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vsel_reg, align 4
  %arrayidx3 = getelementptr %struct.rt4801_priv, ptr %call, i32 0, i32 3, i32 %call1
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %11, i32 noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %bypass_gpio.cleanup_crit_edge

bypass_gpio.cleanup_crit_edge:                    ; preds = %bypass_gpio
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %bypass_gpio
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw i32 1, %call1
  %enable_flag = getelementptr inbounds %struct.rt4801_priv, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %enable_flag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable_flag, align 4
  %or = or i32 %15, %shl
  store i32 %or, ptr %enable_flag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %bypass_gpio.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4801_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %enable_gpios = getelementptr inbounds %struct.rt4801_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %enable_gpios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_gpios, align 4
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ndescs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call1)
  %cmp.not = icmp ugt i32 %3, %call1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  br label %bypass_gpio

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.gpio_descs, ptr %1, i32 0, i32 2, i32 %call1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #5
  br label %bypass_gpio

bypass_gpio:                                      ; preds = %if.end, %do.end
  %shl = shl nuw i32 1, %call1
  %neg = xor i32 %shl, -1
  %enable_flag = getelementptr inbounds %struct.rt4801_priv, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %enable_flag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_flag, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %enable_flag, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4801_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %enable_flag = getelementptr inbounds %struct.rt4801_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %enable_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_flag, align 4
  %2 = lshr i32 %1, %call1
  %3 = and i32 %2, 1
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_rt4801_regulator__288_219_rt4801_driver_init6, !1, !"__initcall__kmod_rt4801_regulator__288_219_rt4801_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/rt4801-regulator.c", i32 219, i32 1}
!2 = !{ptr @__exitcall_rt4801_driver_exit, !1, !"__exitcall_rt4801_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/rt4801-regulator.c", i32 221, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/rt4801-regulator.c", i32 222, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/rt4801-regulator.c", i32 223, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/rt4801-regulator.c", i32 214, i32 11}
!12 = !{ptr @rt4801_driver, !13, !"rt4801_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/rt4801-regulator.c", i32 212, i32 26}
!14 = !{ptr @rt4801_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/regulator/rt4801-regulator.c", i32 169, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/rt4801-regulator.c", i32 171, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rt4801_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rt4801_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/rt4801-regulator.c", i32 175, i32 64}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/rt4801-regulator.c", i32 177, i32 3}
!29 = !{ptr @rt4801_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rt4801_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/rt4801-regulator.c", i32 198, i32 4}
!33 = !{ptr @rt4801_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rt4801_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @rt4801_regmap_config, !36, !"rt4801_regmap_config", i1 false, i1 false}
!36 = !{!"../drivers/regulator/rt4801-regulator.c", i32 149, i32 35}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/rt4801-regulator.c", i32 122, i32 11}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/rt4801-regulator.c", i32 135, i32 11}
!41 = !{ptr @rt4801_regulator_descs, !42, !"rt4801_regulator_descs", i1 false, i1 false}
!42 = !{!"../drivers/regulator/rt4801-regulator.c", i32 120, i32 36}
!43 = !{ptr @rt4801_regulator_ops, !44, !"rt4801_regulator_ops", i1 false, i1 false}
!44 = !{!"../drivers/regulator/rt4801-regulator.c", i32 111, i32 35}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/rt4801-regulator.c", i32 70, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rt4801_enable._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @rt4801_enable._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/rt4801-regulator.c", i32 92, i32 3}
!53 = !{ptr @rt4801_disable._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rt4801_disable._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @rt4801_of_id, !56, !"rt4801_of_id", i1 false, i1 false}
!56 = !{!"../drivers/regulator/rt4801-regulator.c", i32 206, i32 49}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
