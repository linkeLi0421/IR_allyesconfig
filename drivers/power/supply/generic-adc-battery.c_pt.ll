; ModuleID = '/llk/IR_all_yes/drivers/power/supply/generic-adc-battery.c_pt.bc'
source_filename = "../drivers/power/supply/generic-adc-battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.gab = type { ptr, %struct.power_supply_desc, [3 x ptr], ptr, %struct.delayed_work, i32, i32, i8, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gab_platform_data = type { %struct.power_supply_info, ptr, i32 }

@__initcall__kmod_generic_adc_battery__187_413_gab_driver_init6 = internal global ptr @gab_driver_init, section ".initcall6.init", align 4
@gab_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gab_probe, ptr @gab_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gab_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gab_driver_exit = internal global ptr @gab_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [69 x i8] c"generic_adc_battery.author=anish kumar <anish198519851985@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [65 x i8] c"generic_adc_battery.description=generic battery driver using IIO\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [66 x i8] c"generic_adc_battery.file=drivers/power/supply/generic-adc-battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [32 x i8] c"generic_adc_battery.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"generic-adc-battery\00", [44 x i8] zeroinitializer }, align 32
@gab_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @gab_suspend, ptr @gab_resume, ptr @gab_suspend, ptr @gab_resume, ptr @gab_suspend, ptr @gab_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gab_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gab_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/power/supply/generic-adc-battery.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gab_probe._entry_ptr = internal global ptr @gab_probe._entry, section ".printk_index", align 4
@gab_props = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 22, i32 23, i32 26, i32 12, i32 17, i32 6, i32 11, i32 10, i32 73], [56 x i8] zeroinitializer }, align 32
@gab_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&adc_bat->bat_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@gab_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&adc_bat->bat_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"charged\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"battery charged\00", [16 x i8] zeroinitializer }, align 32
@gab_get_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no battery infos ?!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gab_get_property\00", [47 x i8] zeroinitializer }, align 32
@gab_get_property._entry_ptr = internal global ptr @gab_get_property._entry, section ".printk_index", align 4
@read_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013read channel error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_channel\00", [19 x i8] zeroinitializer }, align 32
@read_channel._entry_ptr = internal global ptr @read_channel._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"voltage\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"current\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 6, i64 10, i64 11, i64 12, i64 17, i64 20, i64 22, i64 23, i64 26, i64 73]
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"gab_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 405, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 407, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"gab_pm_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 403, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 249, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [10 x i8] c"gab_props\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 70, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 325, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 328, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 335, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 152, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 137, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 41, i32 18 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 42, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [46 x i8] c"../drivers/power/supply/generic-adc-battery.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 43, i32 17 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_gab_driver_exit, ptr @__initcall__kmod_generic_adc_battery__187_413_gab_driver_init6, ptr @gab_driver_exit, ptr @gab_get_property._entry, ptr @gab_get_property._entry_ptr, ptr @gab_probe._entry, ptr @gab_probe._entry_ptr, ptr @read_channel._entry, ptr @read_channel._entry_ptr, ptr @gab_driver, ptr @.str, ptr @gab_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gab_props, ptr @gab_probe.__key, ptr @.str.6, ptr @gab_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gab_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gab_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gab_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gab_props to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gab_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gab_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gab_get_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gab_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gab_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gab_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @gab_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gab_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #6
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 188, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup100

if.end:                                           ; preds = %entry
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %3 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %drv_data, align 4
  %psy_desc3 = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 4
  %6 = ptrtoint ptr %psy_desc3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %psy_desc3, align 4
  %cable_plugged = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %cable_plugged to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %cable_plugged, align 4
  %status = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %status, align 4
  %type = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type, align 4
  %get_property = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gab_get_property, ptr %get_property, align 4
  %external_power_changed = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %external_power_changed to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gab_ext_power_changed, ptr %external_power_changed, align 4
  %pdata5 = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %pdata5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %pdata5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 52) #10
  %tobool7.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup100_crit_edge, label %if.end9

if.end.cleanup100_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.end9:                                          ; preds = %if.end
  %14 = call ptr @memcpy(ptr %call7.i.i.i, ptr @gab_props, i32 40)
  %call11 = tail call ptr @iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #6
  %arrayidx12 = getelementptr %struct.gab, ptr %call.i, i32 0, i32 2, i32 0
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call11, ptr %arrayidx12, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %for.body24.lr.ph

for.body24.lr.ph:                                 ; preds = %if.end9
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %17)
  %cmp27 = icmp eq i32 %17, 12
  br i1 %cmp27, label %for.body24.lr.ph.for.inc37_crit_edge, label %for.inc

for.body24.lr.ph.for.inc37_crit_edge:             ; preds = %for.body24.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx12, align 4
  br label %for.inc37

for.inc:                                          ; preds = %for.body24.lr.ph
  %arrayidx25.1184 = getelementptr i32, ptr %call7.i.i.i, i32 1
  %19 = ptrtoint ptr %arrayidx25.1184 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx25.1184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %20)
  %cmp27.1185 = icmp eq i32 %20, 12
  br i1 %cmp27.1185, label %for.inc.for.inc37_crit_edge, label %for.inc.1189

for.inc.for.inc37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

for.inc.1189:                                     ; preds = %for.inc
  %arrayidx25.2191 = getelementptr i32, ptr %call7.i.i.i, i32 2
  %21 = ptrtoint ptr %arrayidx25.2191 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx25.2191, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %22)
  %cmp27.2192 = icmp eq i32 %22, 12
  br i1 %cmp27.2192, label %for.inc.1189.for.inc37_crit_edge, label %for.inc.2196

for.inc.1189.for.inc37_crit_edge:                 ; preds = %for.inc.1189
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

for.inc.2196:                                     ; preds = %for.inc.1189
  %arrayidx25.3 = getelementptr i32, ptr %call7.i.i.i, i32 3
  %23 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx25.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %24)
  %cmp27.3 = icmp eq i32 %24, 12
  br i1 %cmp27.3, label %for.inc.2196.for.inc37_crit_edge, label %for.inc.3

for.inc.2196.for.inc37_crit_edge:                 ; preds = %for.inc.2196
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

for.inc.3:                                        ; preds = %for.inc.2196
  %arrayidx25.4 = getelementptr i32, ptr %call7.i.i.i, i32 4
  %25 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx25.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %26)
  %cmp27.4 = icmp eq i32 %26, 12
  br i1 %cmp27.4, label %for.inc.3.for.inc37_crit_edge, label %for.inc.4

for.inc.3.for.inc37_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx25.5 = getelementptr i32, ptr %call7.i.i.i, i32 5
  %27 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx25.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %28)
  %cmp27.5 = icmp eq i32 %28, 12
  br i1 %cmp27.5, label %for.inc.4.for.inc37_crit_edge, label %for.inc.5

for.inc.4.for.inc37_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx25.6 = getelementptr i32, ptr %call7.i.i.i, i32 6
  %29 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx25.6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %30)
  %cmp27.6 = icmp eq i32 %30, 12
  br i1 %cmp27.6, label %for.inc.5.for.inc37_crit_edge, label %for.inc.6

for.inc.5.for.inc37_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx25.7 = getelementptr i32, ptr %call7.i.i.i, i32 7
  %31 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx25.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %32)
  %cmp27.7 = icmp eq i32 %32, 12
  br i1 %cmp27.7, label %for.inc.6.for.inc37_crit_edge, label %for.inc.7

for.inc.6.for.inc37_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx25.8 = getelementptr i32, ptr %call7.i.i.i, i32 8
  %33 = ptrtoint ptr %arrayidx25.8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx25.8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %34)
  %cmp27.8 = icmp eq i32 %34, 12
  br i1 %cmp27.8, label %for.inc.7.for.inc37_crit_edge, label %for.inc.8

for.inc.7.for.inc37_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx25.9 = getelementptr i32, ptr %call7.i.i.i, i32 9
  %35 = ptrtoint ptr %arrayidx25.9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx25.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %36)
  %cmp27.9 = icmp eq i32 %36, 12
  br i1 %cmp27.9, label %for.inc.8.for.inc37_crit_edge, label %if.then31

for.inc.8.for.inc37_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

if.then31:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx34 = getelementptr i32, ptr %call7.i.i.i, i32 10
  %37 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 12, ptr %arrayidx34, align 8
  br label %for.inc37

for.inc37:                                        ; preds = %if.then31, %for.inc.8.for.inc37_crit_edge, %for.inc.7.for.inc37_crit_edge, %for.inc.6.for.inc37_crit_edge, %for.inc.5.for.inc37_crit_edge, %for.inc.4.for.inc37_crit_edge, %for.inc.3.for.inc37_crit_edge, %for.inc.2196.for.inc37_crit_edge, %for.inc.1189.for.inc37_crit_edge, %for.inc.for.inc37_crit_edge, %if.then16, %for.body24.lr.ph.for.inc37_crit_edge
  %index.2 = phi i32 [ 10, %if.then16 ], [ 11, %if.then31 ], [ 10, %for.body24.lr.ph.for.inc37_crit_edge ], [ 10, %for.inc.for.inc37_crit_edge ], [ 10, %for.inc.1189.for.inc37_crit_edge ], [ 10, %for.inc.2196.for.inc37_crit_edge ], [ 10, %for.inc.3.for.inc37_crit_edge ], [ 10, %for.inc.4.for.inc37_crit_edge ], [ 10, %for.inc.5.for.inc37_crit_edge ], [ 10, %for.inc.6.for.inc37_crit_edge ], [ 10, %for.inc.7.for.inc37_crit_edge ], [ 10, %for.inc.8.for.inc37_crit_edge ]
  %call11.1 = tail call ptr @iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #6
  %arrayidx12.1 = getelementptr %struct.gab, ptr %call.i, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call11.1, ptr %arrayidx12.1, align 4
  %cmp.i.1 = icmp ugt ptr %call11.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.then16.1, label %for.inc37.for.body24.1_crit_edge

for.inc37.for.body24.1_crit_edge:                 ; preds = %for.inc37
  br label %for.body24.1

for.body24.1:                                     ; preds = %for.inc.1.for.body24.1_crit_edge, %for.inc37.for.body24.1_crit_edge
  %index2.0176.1 = phi i32 [ %inc.1, %for.inc.1.for.body24.1_crit_edge ], [ 0, %for.inc37.for.body24.1_crit_edge ]
  %arrayidx25.1 = getelementptr i32, ptr %call7.i.i.i, i32 %index2.0176.1
  %39 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx25.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %40)
  %cmp27.1 = icmp eq i32 %40, 17
  br i1 %cmp27.1, label %for.end.1, label %for.inc.1

for.inc.1:                                        ; preds = %for.body24.1
  %inc.1 = add nuw nsw i32 %index2.0176.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %index.2
  br i1 %exitcond.1.not, label %for.inc.1.if.then31.1_crit_edge, label %for.inc.1.for.body24.1_crit_edge

for.inc.1.for.body24.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body24.1

for.inc.1.if.then31.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.1

for.end.1:                                        ; preds = %for.body24.1
  call void @__sanitizer_cov_trace_cmp4(i32 %index2.0176.1, i32 %index.2)
  %cmp30.1 = icmp eq i32 %index2.0176.1, %index.2
  br i1 %cmp30.1, label %for.end.1.if.then31.1_crit_edge, label %for.end.1.for.inc37.1_crit_edge

for.end.1.for.inc37.1_crit_edge:                  ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37.1

for.end.1.if.then31.1_crit_edge:                  ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.1

if.then31.1:                                      ; preds = %for.end.1.if.then31.1_crit_edge, %for.inc.1.if.then31.1_crit_edge
  %inc33.1 = add nuw nsw i32 %index.2, 1
  %arrayidx34.1 = getelementptr i32, ptr %call7.i.i.i, i32 %index.2
  %41 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 17, ptr %arrayidx34.1, align 4
  br label %for.inc37.1

if.then16.1:                                      ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #8
  %42 = xor i1 %cmp.i, true
  %43 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx12.1, align 4
  br label %for.inc37.1

for.inc37.1:                                      ; preds = %if.then16.1, %if.then31.1, %for.end.1.for.inc37.1_crit_edge
  %index.2.1 = phi i32 [ %index.2, %if.then16.1 ], [ %inc33.1, %if.then31.1 ], [ %index.2, %for.end.1.for.inc37.1_crit_edge ]
  %any.1.off0.1 = phi i1 [ %42, %if.then16.1 ], [ true, %if.then31.1 ], [ true, %for.end.1.for.inc37.1_crit_edge ]
  %call11.2 = tail call ptr @iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #6
  %arrayidx12.2 = getelementptr %struct.gab, ptr %call.i, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call11.2, ptr %arrayidx12.2, align 4
  %cmp.i.2 = icmp ugt ptr %call11.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc37.2, label %for.inc37.1.for.body24.2_crit_edge

for.inc37.1.for.body24.2_crit_edge:               ; preds = %for.inc37.1
  br label %for.body24.2

for.body24.2:                                     ; preds = %for.inc.2.for.body24.2_crit_edge, %for.inc37.1.for.body24.2_crit_edge
  %index2.0176.2 = phi i32 [ %inc.2, %for.inc.2.for.body24.2_crit_edge ], [ 0, %for.inc37.1.for.body24.2_crit_edge ]
  %arrayidx25.2 = getelementptr i32, ptr %call7.i.i.i, i32 %index2.0176.2
  %45 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx25.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %46)
  %cmp27.2 = icmp eq i32 %46, 20
  br i1 %cmp27.2, label %for.end.2, label %for.inc.2

for.inc.2:                                        ; preds = %for.body24.2
  %inc.2 = add nuw nsw i32 %index2.0176.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, %index.2.1
  br i1 %exitcond.2.not, label %for.inc.2.if.then31.2_crit_edge, label %for.inc.2.for.body24.2_crit_edge

for.inc.2.for.body24.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body24.2

for.inc.2.if.then31.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.2

for.end.2:                                        ; preds = %for.body24.2
  call void @__sanitizer_cov_trace_cmp4(i32 %index2.0176.2, i32 %index.2.1)
  %cmp30.2 = icmp eq i32 %index2.0176.2, %index.2.1
  br i1 %cmp30.2, label %for.end.2.if.then31.2_crit_edge, label %for.end.2.if.end42_crit_edge

for.end.2.if.end42_crit_edge:                     ; preds = %for.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

for.end.2.if.then31.2_crit_edge:                  ; preds = %for.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.2

if.then31.2:                                      ; preds = %for.end.2.if.then31.2_crit_edge, %for.inc.2.if.then31.2_crit_edge
  %inc33.2 = add nsw i32 %index.2.1, 1
  %arrayidx34.2 = getelementptr i32, ptr %call7.i.i.i, i32 %index.2.1
  %47 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 20, ptr %arrayidx34.2, align 4
  br label %if.end42

for.inc37.2:                                      ; preds = %for.inc37.1
  %48 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx12.2, align 4
  br i1 %any.1.off0.1, label %for.inc37.2.if.end42_crit_edge, label %for.inc37.2.second_mem_fail_crit_edge

for.inc37.2.second_mem_fail_crit_edge:            ; preds = %for.inc37.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %second_mem_fail

for.inc37.2.if.end42_crit_edge:                   ; preds = %for.inc37.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.end42:                                         ; preds = %for.inc37.2.if.end42_crit_edge, %if.then31.2, %for.end.2.if.end42_crit_edge
  %index.2.2207 = phi i32 [ %index.2.1, %for.inc37.2.if.end42_crit_edge ], [ %index.2.1, %for.end.2.if.end42_crit_edge ], [ %inc33.2, %if.then31.2 ]
  %properties43 = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %properties43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i.i, ptr %properties43, align 4
  %num_properties = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 1, i32 5
  %50 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %index.2.2207, ptr %num_properties, align 4
  %call45 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef %psy_desc3, ptr noundef nonnull %psy_cfg) #6
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call45, ptr %call.i, align 4
  %cmp.i174 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %if.then48, label %do.body53

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %call45 to i32
  br label %err_reg_fail

do.body53:                                        ; preds = %if.end42
  %bat_work = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 4
  call void @__init_work(ptr noundef %bat_work, i32 noundef 0) #6
  %53 = ptrtoint ptr %bat_work to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %bat_work, align 4
  %lockdep_map = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @gab_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry60 = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %54 = ptrtoint ptr %entry60 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %entry60, ptr %entry60, align 4
  %prev.i = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %entry60, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %56 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @gab_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 4, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @gab_probe.__key.7) #6
  %call72 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 1) #6
  %charge_finished = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 8
  %57 = ptrtoint ptr %charge_finished to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call72, ptr %charge_finished, align 4
  %tobool74.not = icmp eq ptr %call72, null
  br i1 %tobool74.not, label %do.body53.if.end82_crit_edge, label %if.then75

do.body53.if.end82_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then75:                                        ; preds = %do.body53
  %call77 = call i32 @gpiod_to_irq(ptr noundef nonnull %call72) #6
  %call78 = call i32 @request_any_context_irq(i32 noundef %call77, ptr noundef nonnull @gab_charged, i32 noundef 3, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %gpio_req_fail, label %if.then75.if.end82_crit_edge

if.then75.if.end82_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.end82:                                         ; preds = %if.then75.if.end82_crit_edge, %do.body53.if.end82_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %bat_work, i32 noundef 0) #6
  br label %cleanup100

gpio_req_fail:                                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  call void @power_supply_unregister(ptr noundef %61) #6
  br label %err_reg_fail

err_reg_fail:                                     ; preds = %gpio_req_fail, %if.then48
  %ret.0 = phi i32 [ %52, %if.then48 ], [ %call78, %gpio_req_fail ]
  %62 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx12, align 4
  %tobool92.not = icmp eq ptr %63, null
  br i1 %tobool92.not, label %err_reg_fail.for.inc97_crit_edge, label %if.then93

err_reg_fail.for.inc97_crit_edge:                 ; preds = %err_reg_fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc97

if.then93:                                        ; preds = %err_reg_fail
  call void @__sanitizer_cov_trace_pc() #8
  call void @iio_channel_release(ptr noundef nonnull %63) #6
  br label %for.inc97

for.inc97:                                        ; preds = %if.then93, %err_reg_fail.for.inc97_crit_edge
  %64 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx12.1, align 4
  %tobool92.not.1 = icmp eq ptr %65, null
  br i1 %tobool92.not.1, label %for.inc97.for.inc97.1_crit_edge, label %if.then93.1

for.inc97.for.inc97.1_crit_edge:                  ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc97.1

if.then93.1:                                      ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #8
  call void @iio_channel_release(ptr noundef nonnull %65) #6
  br label %for.inc97.1

for.inc97.1:                                      ; preds = %if.then93.1, %for.inc97.for.inc97.1_crit_edge
  %66 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx12.2, align 4
  %tobool92.not.2 = icmp eq ptr %67, null
  br i1 %tobool92.not.2, label %for.inc97.1.second_mem_fail_crit_edge, label %if.then93.2

for.inc97.1.second_mem_fail_crit_edge:            ; preds = %for.inc97.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %second_mem_fail

if.then93.2:                                      ; preds = %for.inc97.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @iio_channel_release(ptr noundef nonnull %67) #6
  br label %second_mem_fail

second_mem_fail:                                  ; preds = %if.then93.2, %for.inc97.1.second_mem_fail_crit_edge, %for.inc37.2.second_mem_fail_crit_edge
  %ret.1 = phi i32 [ -19, %for.inc37.2.second_mem_fail_crit_edge ], [ %ret.0, %if.then93.2 ], [ %ret.0, %for.inc97.1.second_mem_fail_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup100

cleanup100:                                       ; preds = %second_mem_fail, %if.end82, %if.end.cleanup100_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end82 ], [ -12, %do.end ], [ %ret.1, %second_mem_fail ], [ -12, %if.end.cleanup100_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gab_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @power_supply_unregister(ptr noundef %3) #6
  %charge_finished = getelementptr inbounds %struct.gab, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %charge_finished to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %charge_finished, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %5) #6
  %call3 = tail call ptr @free_irq(i32 noundef %call2, ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.gab, ptr %1, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iio_channel_release(ptr noundef nonnull %7) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.gab, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool4.not.1 = icmp eq ptr %9, null
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iio_channel_release(ptr noundef nonnull %9) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.gab, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %tobool4.not.2 = icmp eq ptr %11, null
  br i1 %tobool4.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then5.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iio_channel_release(ptr noundef nonnull %11) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then5.2, %for.inc.1.for.inc.2_crit_edge
  %properties = getelementptr inbounds %struct.gab, ptr %1, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %properties, align 4
  tail call void @kfree(ptr noundef %13) #6
  %bat_work = getelementptr inbounds %struct.gab, ptr %1, i32 0, i32 4
  %call9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bat_work) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gab_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #6
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %result, align 4
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdata1 = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdata1, align 4
  %3 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 23, label %sw.bb3
    i32 26, label %sw.bb4
    i32 73, label %sw.bb14
    i32 22, label %sw.bb13
    i32 10, label %sw.bb12
    i32 6, label %sw.bb10
    i32 11, label %sw.bb11
    i32 20, label %if.end.gab_prop_to_chan.exit.i_crit_edge
    i32 12, label %sw.bb1.i.i
    i32 17, label %sw.bb2.i.i
  ]

if.end.gab_prop_to_chan.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %gab_prop_to_chan.exit.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %level.i = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level.i, align 4
  %charge_full_design.i = getelementptr inbounds %struct.power_supply_info, ptr %2, i32 0, i32 4
  %6 = ptrtoint ptr %charge_full_design.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %charge_full_design.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp eq i32 %5, %7
  br i1 %cmp.i, label %sw.bb.gab_get_status.exit_crit_edge, label %if.end.i

sw.bb.gab_get_status.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %gab_get_status.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %status.i = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status.i, align 4
  br label %gab_get_status.exit

gab_get_status.exit:                              ; preds = %if.end.i, %sw.bb.gab_get_status.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.end.i ], [ 4, %sw.bb.gab_get_status.exit_crit_edge ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cal_charge = getelementptr inbounds %struct.gab_platform_data, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %cal_charge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cal_charge, align 4
  %14 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %result, align 4
  %call5 = tail call i32 %13(i32 noundef %15) #6
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call5, ptr %val, align 4
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %gab_prop_to_chan.exit.i

sw.bb2.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %gab_prop_to_chan.exit.i

gab_prop_to_chan.exit.i:                          ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %if.end.gab_prop_to_chan.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %sw.bb2.i.i ], [ 0, %sw.bb1.i.i ], [ 2, %if.end.gab_prop_to_chan.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gab, ptr %call.i, i32 0, i32 2, i32 %retval.0.i.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %call1.i = call i32 @iio_read_channel_processed(ptr noundef %18, ptr noundef nonnull %result) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i38 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i38, label %read_channel.exit.thread, label %if.end9

read_channel.exit.thread:                         ; preds = %gab_prop_to_chan.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end9:                                          ; preds = %gab_prop_to_chan.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %result, align 4
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %technology = getelementptr inbounds %struct.power_supply_info, ptr %2, i32 0, i32 1
  %22 = ptrtoint ptr %technology to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %technology, align 4
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %val, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %voltage_min_design = getelementptr inbounds %struct.power_supply_info, ptr %2, i32 0, i32 3
  %25 = ptrtoint ptr %voltage_min_design to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %voltage_min_design, align 4
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %voltage_max_design = getelementptr inbounds %struct.power_supply_info, ptr %2, i32 0, i32 2
  %28 = ptrtoint ptr %voltage_max_design to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %voltage_max_design, align 4
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %charge_full_design = getelementptr inbounds %struct.power_supply_info, ptr %2, i32 0, i32 4
  %31 = ptrtoint ptr %charge_full_design to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %charge_full_design, align 4
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 4
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %if.end9, %read_channel.exit.thread, %sw.bb4, %sw.bb3, %gab_get_status.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb14 ], [ 0, %sw.bb13 ], [ 0, %sw.bb12 ], [ 0, %sw.bb11 ], [ 0, %sw.bb10 ], [ %call1.i, %if.end9 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %gab_get_status.exit ], [ %call1.i, %read_channel.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gab_ext_power_changed(ptr noundef %psy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  %bat_work = getelementptr inbounds %struct.gab, ptr %call.i, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %bat_work, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gab_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  %status1 = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call2 = tail call i32 @power_supply_am_i_supplied(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool = icmp ne i32 %call2, 0
  %frombool = zext i1 %tobool to i8
  %cable_plugged = getelementptr i8, ptr %work, i32 108
  %4 = ptrtoint ptr %cable_plugged to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %cable_plugged, align 4
  br i1 %tobool, label %if.else, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else:                                          ; preds = %entry
  %charge_finished.i = getelementptr i8, ptr %work, i32 112
  %5 = ptrtoint ptr %charge_finished.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %charge_finished.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.else.if.else10_crit_edge, label %gab_charge_finished.exit

if.else.if.else10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else10

gab_charge_finished.exit:                         ; preds = %if.else
  %call.i = tail call i32 @gpiod_get_value(ptr noundef nonnull %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.i.not, label %gab_charge_finished.exit.if.else10_crit_edge, label %gab_charge_finished.exit.if.end12_crit_edge

gab_charge_finished.exit.if.end12_crit_edge:      ; preds = %gab_charge_finished.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

gab_charge_finished.exit.if.else10_crit_edge:     ; preds = %gab_charge_finished.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else10

if.else10:                                        ; preds = %gab_charge_finished.exit.if.else10_crit_edge, %if.else.if.else10_crit_edge
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %gab_charge_finished.exit.if.end12_crit_edge, %entry.if.end12_crit_edge
  %.sink = phi i32 [ 1, %if.else10 ], [ 2, %entry.if.end12_crit_edge ], [ 3, %gab_charge_finished.exit.if.end12_crit_edge ]
  %7 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %status1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %.sink)
  %cmp.not = icmp eq i32 %1, %.sink
  br i1 %cmp.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  tail call void @power_supply_changed(ptr noundef %9) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_any_context_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gab_charged(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.gab, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %jitter_delay = getelementptr inbounds %struct.gab_platform_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %jitter_delay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jitter_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 10, i32 %3
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select) #6
  %bat_work = getelementptr inbounds %struct.gab, ptr %dev_id, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %bat_work, i32 noundef %call2.i) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_am_i_supplied(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gab_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bat_work = getelementptr inbounds %struct.gab, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bat_work) #6
  %status = getelementptr inbounds %struct.gab, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gab_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata1 = getelementptr inbounds %struct.gab, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
  %jitter_delay = getelementptr inbounds %struct.gab_platform_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %jitter_delay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jitter_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 10, i32 %5
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select) #6
  %bat_work = getelementptr inbounds %struct.gab, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %bat_work, i32 noundef %call2.i) #6
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_generic_adc_battery__187_413_gab_driver_init6, !1, !"__initcall__kmod_generic_adc_battery__187_413_gab_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 413, i32 1}
!2 = !{ptr @__exitcall_gab_driver_exit, !1, !"__exitcall_gab_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 415, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 416, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 417, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 407, i32 11}
!12 = !{ptr @gab_driver, !13, !"gab_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 405, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 249, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gab_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @gab_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @gab_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 325, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gab_probe.__key.7, !23, !"__key", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 328, i32 11}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 335, i32 5}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 152, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gab_get_property._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @gab_get_property._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 137, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @read_channel._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @read_channel._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @gab_props, !42, !"gab_props", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 70, i32 41}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 41, i32 18}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 42, i32 18}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 43, i32 17}
!49 = distinct !{null, !50, !"gab_chan_name", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 40, i32 26}
!51 = distinct !{null, !52, !"gab_dyn_props", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 87, i32 41}
!53 = !{ptr @gab_pm_ops, !54, !"gab_pm_ops", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/generic-adc-battery.c", i32 403, i32 8}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
