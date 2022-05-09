; ModuleID = '/llk/IR_all_yes/drivers/power/supply/da9030_battery.c_pt.bc'
source_filename = "../drivers/power/supply/da9030_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.da9030_battery_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.da9030_charger = type { ptr, %struct.power_supply_desc, ptr, %struct.da9030_adc_res, %struct.delayed_work, i32, ptr, %struct.da9030_battery_thresholds, i32, i32, i8, i8, i32, i32, i8, %struct.notifier_block, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.da9030_adc_res = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.da9030_battery_thresholds = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.power_supply_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_da9030_battery__223_579_da903x_battery_driver_init6 = internal global ptr @da903x_battery_driver_init, section ".initcall6.init", align 4
@da903x_battery_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9030_battery_probe, ptr @da9030_battery_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da903x_battery_driver_exit = internal global ptr @da903x_battery_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description224 = internal constant [57 x i8] c"da9030_battery.description=DA9030 battery charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [46 x i8] c"da9030_battery.author=Mike Rapoport, CompuLab\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [56 x i8] c"da9030_battery.file=drivers/power/supply/da9030_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [27 x i8] c"da9030_battery.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"da903x-battery\00", [17 x i8] zeroinitializer }, align 32
@da9030_battery_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&charger->work)->work)\00", [53 x i8] zeroinitializer }, align 32
@da9030_battery_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&charger->work)->timer\00", [39 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@da9030_battery_props = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 73, i32 0, i32 2, i32 6, i32 10, i32 11, i32 12, i32 18], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"charger\00", [24 x i8] zeroinitializer }, align 32
@bat_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bat_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"charger is %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iset = %dmA, vset = %dmV\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vbat_res = %d (%dmV)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vbatmin_res = %d (%dmV)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vbatmintxon = %d (%dmV)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ichmax_res = %d (%dmA)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ichmin_res = %d (%dmA)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ichaverage_res = %d (%dmA)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vchmax_res = %d (%dmV)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vchmin_res = %d (%dmV)\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 16, i64 32, i64 128]
@__sancov_gen_cov_switch_values.17 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 2, i64 6, i64 10, i64 11, i64 12, i64 18, i64 73]
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"da903x_battery_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 571, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 573, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 519, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"da9030_battery_props\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 293, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 179, i32 44 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"bat_debug_fops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 175, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 141, i32 16 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 141, i32 52 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 141, i32 59 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 143, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 147, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 150, i32 16 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 153, i32 16 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 156, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 159, i32 16 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 162, i32 16 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 165, i32 16 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [41 x i8] c"../drivers/power/supply/da9030_battery.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 168, i32 16 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_da903x_battery_driver_exit, ptr @__initcall__kmod_da9030_battery__223_579_da903x_battery_driver_init6, ptr @da903x_battery_driver_exit, ptr @da903x_battery_driver, ptr @.str, ptr @da9030_battery_probe.__key, ptr @.str.1, ptr @da9030_battery_probe.__key.2, ptr @.str.3, ptr @da9030_battery_props, ptr @.str.4, ptr @bat_debug_fops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da903x_battery_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9030_battery_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9030_battery_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9030_battery_props to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bat_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da903x_battery_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da903x_battery_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da903x_battery_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @da903x_battery_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9030_battery_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %v.i = alloca [5 x i8], align 1
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #4
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %charge_milliamp = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %charge_milliamp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %charge_milliamp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1499, i32 %4)
  %cmp1 = icmp ugt i32 %4, 1499
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %charge_millivolt = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %charge_millivolt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %charge_millivolt, align 4
  %7 = add i32 %6, -4351
  call void @__sanitizer_cov_trace_const_cmp4(i32 -351, i32 %7)
  %8 = icmp ult i32 %7, -351
  br i1 %8, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 268, i32 noundef 3520) #4
  %cmp9 = icmp eq ptr %call.i, null
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %master = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %master, align 4
  %batmon_interval = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 13
  %12 = ptrtoint ptr %batmon_interval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %batmon_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %.op = mul i32 %13, 1000
  %mul = select i1 %tobool.not, i32 10000, i32 %.op
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #4
  %interval = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call2.i, ptr %interval, align 4
  %15 = ptrtoint ptr %charge_milliamp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %charge_milliamp, align 4
  %charge_milliamp15 = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %charge_milliamp15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %charge_milliamp15, align 4
  %18 = ptrtoint ptr %charge_millivolt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %charge_millivolt, align 4
  %charge_millivolt17 = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %charge_millivolt17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %charge_millivolt17, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %battery_info18 = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %battery_info18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %battery_info18, align 4
  %battery_low = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 14
  %24 = ptrtoint ptr %battery_low to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %battery_low, align 4
  %battery_low19 = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 16
  %26 = ptrtoint ptr %battery_low19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %battery_low19, align 4
  %battery_critical = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 15
  %27 = ptrtoint ptr %battery_critical to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %battery_critical, align 4
  %battery_critical20 = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 17
  %29 = ptrtoint ptr %battery_critical20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %battery_critical20, align 4
  %tbat_low.i = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 10
  %30 = ptrtoint ptr %tbat_low.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tbat_low.i, align 4
  %thresholds.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 7
  %32 = ptrtoint ptr %thresholds.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %thresholds.i, align 4
  %tbat_high.i = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 11
  %33 = ptrtoint ptr %tbat_high.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tbat_high.i, align 4
  %tbat_high3.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %tbat_high3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tbat_high3.i, align 4
  %tbat_restart.i = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 12
  %36 = ptrtoint ptr %tbat_restart.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tbat_restart.i, align 4
  %tbat_restart5.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %tbat_restart5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tbat_restart5.i, align 4
  %vbat_low.i = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 3
  %39 = ptrtoint ptr %vbat_low.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vbat_low.i, align 4
  %sub.i.i117 = shl i32 %40, 8
  %shl.i.i = add i32 %sub.i.i117, -678400
  %div.i.i118 = sdiv i32 %shl.i.i, 2650
  %vbat_low7.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 7, i32 3
  %41 = ptrtoint ptr %vbat_low7.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div.i.i118, ptr %vbat_low7.i, align 4
  %vbat_crit.i = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 4
  %42 = ptrtoint ptr %vbat_crit.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vbat_crit.i, align 4
  %sub.i44.i = shl i32 %43, 8
  %shl.i45.i = add i32 %sub.i44.i, -678400
  %div.i46.i = sdiv i32 %shl.i45.i, 2650
  %vbat_crit10.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 7, i32 4
  %44 = ptrtoint ptr %vbat_crit10.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div.i46.i, ptr %vbat_crit10.i, align 4
  %vbat_charge_start.i = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 5
  %45 = ptrtoint ptr %vbat_charge_start.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vbat_charge_start.i, align 4
  %sub.i47.i = shl i32 %46, 8
  %shl.i48.i = add i32 %sub.i47.i, -678400
  %div.i49.i = sdiv i32 %shl.i48.i, 2650
  %vbat_charge_start13.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 7, i32 5
  %47 = ptrtoint ptr %vbat_charge_start13.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div.i49.i, ptr %vbat_charge_start13.i, align 4
  %vbat_charge_stop.i = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 6
  %48 = ptrtoint ptr %vbat_charge_stop.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vbat_charge_stop.i, align 4
  %sub.i50.i = shl i32 %49, 8
  %shl.i51.i = add i32 %sub.i50.i, -678400
  %div.i52.i = sdiv i32 %shl.i51.i, 2650
  %vbat_charge_stop16.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 7, i32 6
  %50 = ptrtoint ptr %vbat_charge_stop16.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div.i52.i, ptr %vbat_charge_stop16.i, align 4
  %vbat_charge_restart.i = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 7
  %51 = ptrtoint ptr %vbat_charge_restart.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vbat_charge_restart.i, align 4
  %sub.i53.i = shl i32 %52, 8
  %shl.i54.i = add i32 %sub.i53.i, -678400
  %div.i55.i = sdiv i32 %shl.i54.i, 2650
  %vbat_charge_restart19.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 7, i32 7
  %53 = ptrtoint ptr %vbat_charge_restart19.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div.i55.i, ptr %vbat_charge_restart19.i, align 4
  %vcharge_min.i = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 8
  %54 = ptrtoint ptr %vcharge_min.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vcharge_min.i, align 4
  %sub.i56.i = shl i32 %55, 8
  %shl.i57.i = add i32 %sub.i56.i, -678400
  %div.i58.i = sdiv i32 %shl.i57.i, 2650
  %vcharge_min22.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 7, i32 8
  %56 = ptrtoint ptr %vcharge_min22.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div.i58.i, ptr %vcharge_min22.i, align 4
  %vcharge_max.i = getelementptr inbounds %struct.da9030_battery_info, ptr %2, i32 0, i32 9
  %57 = ptrtoint ptr %vcharge_max.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vcharge_max.i, align 4
  %sub.i59.i = shl i32 %58, 8
  %shl.i60.i = add i32 %sub.i59.i, -678400
  %div.i61.i = sdiv i32 %shl.i60.i, 2650
  %vcharge_max25.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 7, i32 9
  %59 = ptrtoint ptr %vcharge_max25.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div.i61.i, ptr %vcharge_max25.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %v.i) #4
  %60 = getelementptr inbounds [5 x i8], ptr %v.i, i32 0, i32 1
  %61 = getelementptr inbounds [5 x i8], ptr %v.i, i32 0, i32 2
  %62 = getelementptr inbounds [5 x i8], ptr %v.i, i32 0, i32 3
  %63 = getelementptr inbounds [5 x i8], ptr %v.i, i32 0, i32 4
  %conv.i = trunc i32 %div.i.i118 to i8
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv.i, ptr %60, align 1
  %65 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv.i, ptr %v.i, align 1
  %conv3.i = trunc i32 %34 to i8
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv3.i, ptr %61, align 1
  %conv6.i = trunc i32 %37 to i8
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv6.i, ptr %62, align 1
  %conv9.i = trunc i32 %31 to i8
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv9.i, ptr %63, align 1
  %69 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %master, align 4
  %call.i123 = call i32 @da903x_writes(ptr noundef %70, i32 noundef 50, i32 noundef 5, ptr noundef nonnull %v.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not.i = icmp eq i32 %call.i123, 0
  br i1 %tobool.not.i, label %if.end.i124, label %if.end11.da9030_battery_charger_init.exit.thread_crit_edge

if.end11.da9030_battery_charger_init.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %da9030_battery_charger_init.exit.thread

if.end.i124:                                      ; preds = %if.end11
  %71 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %master, align 4
  %call12.i = call i32 @da903x_write(ptr noundef %72, i32 noundef 48, i8 noundef zeroext 48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %da9030_battery_charger_init.exit, label %if.end.i124.da9030_battery_charger_init.exit.thread_crit_edge

if.end.i124.da9030_battery_charger_init.exit.thread_crit_edge: ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #6
  br label %da9030_battery_charger_init.exit.thread

da9030_battery_charger_init.exit.thread:          ; preds = %if.end.i124.da9030_battery_charger_init.exit.thread_crit_edge, %if.end11.da9030_battery_charger_init.exit.thread_crit_edge
  %retval.0.i125.ph = phi i32 [ %call12.i, %if.end.i124.da9030_battery_charger_init.exit.thread_crit_edge ], [ %call.i123, %if.end11.da9030_battery_charger_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %v.i) #4
  br label %cleanup

da9030_battery_charger_init.exit:                 ; preds = %if.end.i124
  %73 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %master, align 4
  %call17.i = call i32 @da903x_write(ptr noundef %74, i32 noundef 49, i8 noundef zeroext 63) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %v.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool22.not = icmp eq i32 %call17.i, 0
  br i1 %tobool22.not, label %do.body25, label %da9030_battery_charger_init.exit.cleanup_crit_edge

da9030_battery_charger_init.exit.cleanup_crit_edge: ; preds = %da9030_battery_charger_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body25:                                        ; preds = %da9030_battery_charger_init.exit
  %work = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 4
  call void @__init_work(ptr noundef %work, i32 noundef 0) #4
  %75 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @da9030_battery_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry33 = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %76 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %entry33, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %78 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @da9030_charging_monitor, ptr %func, align 4
  %timer = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 4, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @da9030_battery_probe.__key.2) #4
  %79 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %81 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %work, i32 noundef %80) #4
  %nb = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 15
  %82 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @da9030_battery_event, ptr %nb, align 4
  %83 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %master, align 4
  %call47 = call i32 @da903x_register_notifier(ptr noundef %84, ptr noundef %nb, i32 noundef 184) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %do.body25.err_notifier_crit_edge

do.body25.err_notifier_crit_edge:                 ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_notifier

if.end50:                                         ; preds = %do.body25
  %psy_desc1.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 1
  %85 = ptrtoint ptr %battery_info18 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %battery_info18, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %89 = ptrtoint ptr %psy_desc1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %psy_desc1.i, align 4
  %use_for_apm.i = getelementptr inbounds %struct.power_supply_info, ptr %86, i32 0, i32 8
  %90 = ptrtoint ptr %use_for_apm.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %use_for_apm.i, align 4
  %use_for_apm3.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 1, i32 12
  %92 = ptrtoint ptr %use_for_apm3.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %use_for_apm3.i, align 4
  %type.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %type.i, align 4
  %get_property.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 1, i32 6
  %94 = ptrtoint ptr %get_property.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @da9030_battery_get_property, ptr %get_property.i, align 4
  %properties.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 1, i32 4
  %95 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @da9030_battery_props, ptr %properties.i, align 4
  %num_properties.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 1, i32 5
  %96 = ptrtoint ptr %num_properties.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 8, ptr %num_properties.i, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %97 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i, ptr %drv_data, align 4
  %call52 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef %psy_desc1.i, ptr noundef nonnull %psy_cfg) #4
  %98 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call52, ptr %call.i, align 4
  %cmp.i126 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %99 = ptrtoint ptr %call52 to i32
  %100 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %master, align 4
  %call62 = call i32 @da903x_unregister_notifier(ptr noundef %101, ptr noundef %nb, i32 noundef 184) #4
  br label %err_notifier

if.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %call.i127 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 438, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @bat_debug_fops) #4
  %debug_file.i = getelementptr inbounds %struct.da9030_charger, ptr %call.i, i32 0, i32 18
  %102 = ptrtoint ptr %debug_file.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i127, ptr %debug_file.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %103 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_notifier:                                     ; preds = %if.then55, %do.body25.err_notifier_crit_edge
  %ret.0 = phi i32 [ %call47, %do.body25.err_notifier_crit_edge ], [ %99, %if.then55 ]
  %call64 = call zeroext i1 @cancel_delayed_work(ptr noundef %work) #4
  br label %cleanup

cleanup:                                          ; preds = %err_notifier, %if.end58, %da9030_battery_charger_init.exit.cleanup_crit_edge, %da9030_battery_charger_init.exit.thread, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %call17.i, %da9030_battery_charger_init.exit.cleanup_crit_edge ], [ %ret.0, %err_notifier ], [ %retval.0.i125.ph, %da9030_battery_charger_init.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9030_battery_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debug_file.i = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %debug_file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug_file.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #4
  %master = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %nb = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 15
  %call1 = tail call i32 @da903x_unregister_notifier(ptr noundef %5, ptr noundef %nb, i32 noundef 184) #4
  %work = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 4
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #4
  %6 = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %6, align 4
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  %call.i = tail call i32 @da903x_write(ptr noundef %9, i32 noundef 40, i8 noundef zeroext 0) #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @power_supply_changed(ptr noundef %11) #4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @power_supply_unregister(ptr noundef %13) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9030_charging_monitor(ptr noundef %work) #2 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #4
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i.i, align 1, !annotation !58
  %master.i.i = getelementptr i8, ptr %work, i32 -16
  %1 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master.i.i, align 4
  %call.i.i = call i32 @da903x_read(ptr noundef %2, i32 noundef 40, ptr noundef nonnull %val.i.i) #4
  %3 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val.i.i, align 1
  %is_on.i.i = getelementptr i8, ptr %work, i32 168
  %.lobit.i.i = lshr i8 %4, 7
  %5 = ptrtoint ptr %is_on.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.lobit.i.i, ptr %is_on.i.i, align 4
  %6 = lshr i8 %4, 3
  %7 = and i8 %6, 15
  %and3.i.i = zext i8 %7 to i32
  %mul.i.i = mul nuw nsw i32 %and3.i.i, 100
  %mA.i.i = getelementptr i8, ptr %work, i32 160
  %8 = ptrtoint ptr %mA.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul.i.i, ptr %mA.i.i, align 4
  %9 = and i8 %4, 7
  %and5.i.i = zext i8 %9 to i32
  %mul6.i.i = mul nuw nsw i32 %and5.i.i, 50
  %add.i.i = add nuw nsw i32 %mul6.i.i, 4000
  %mV.i.i = getelementptr i8, ptr %work, i32 164
  %10 = ptrtoint ptr %mV.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i.i, ptr %mV.i.i, align 4
  %adc.i.i = getelementptr i8, ptr %work, i32 -12
  %11 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master.i.i, align 4
  %call.i.i.i = call i32 @da903x_reads(ptr noundef %12, i32 noundef 65, i32 noundef 11, ptr noundef %adc.i.i) #4
  %13 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i.i, align 4
  %fault.i.i = getelementptr i8, ptr %work, i32 157
  %call8.i.i = call i32 @da903x_read(ptr noundef %14, i32 noundef 10, ptr noundef %fault.i.i) #4
  %15 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master.i.i, align 4
  %call10.i.i = call i32 @da903x_query_status(ptr noundef %16, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.i.i = icmp ne i32 %call10.i.i, 0
  %chdet.i.i = getelementptr i8, ptr %work, i32 156
  %frombool12.i.i = zext i1 %tobool11.i.i to i8
  %17 = ptrtoint ptr %chdet.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool12.i.i, ptr %chdet.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #4
  %18 = ptrtoint ptr %is_on.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_on.i.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool11.i.i, label %land.lhs.true.i, label %if.then.i.da9030_charger_check_state.exit_crit_edge

if.then.i.da9030_charger_check_state.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %da9030_charger_check_state.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %20 = ptrtoint ptr %adc.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %adc.i.i, align 4
  %conv.i = zext i8 %21 to i32
  %vbat_charge_start.i = getelementptr i8, ptr %work, i32 128
  %22 = ptrtoint ptr %vbat_charge_start.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vbat_charge_start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv.i)
  %cmp.i = icmp sgt i32 %23, %conv.i
  br i1 %cmp.i, label %if.then3.i, label %land.lhs.true.i.da9030_charger_check_state.exit_crit_edge

land.lhs.true.i.da9030_charger_check_state.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %da9030_charger_check_state.exit

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %charge_milliamp.i.i = getelementptr i8, ptr %work, i32 148
  %24 = ptrtoint ptr %charge_milliamp.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %charge_milliamp.i.i, align 4
  %div.i.i = udiv i32 %25, 100
  %26 = shl nuw nsw i32 %div.i.i, 3
  %charge_millivolt.i.i = getelementptr i8, ptr %work, i32 152
  %27 = ptrtoint ptr %charge_millivolt.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %charge_millivolt.i.i, align 4
  %sub.i.i = add i32 %28, -4000
  %div2.i.i = udiv i32 %sub.i.i, 50
  %conv3.i.i = or i32 %div2.i.i, %26
  %29 = trunc i32 %conv3.i.i to i8
  %conv5.i.i = or i8 %29, -128
  br label %if.end57.sink.split.i

if.else.i:                                        ; preds = %entry
  br i1 %tobool11.i.i, label %if.end7.i, label %if.else.i.if.end57.sink.split.i_crit_edge

if.else.i.if.end57.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.sink.split.i

if.end7.i:                                        ; preds = %if.else.i
  %30 = ptrtoint ptr %adc.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %adc.i.i, align 4
  %conv10.i = zext i8 %31 to i32
  %thresholds11.i = getelementptr i8, ptr %work, i32 108
  %vbat_charge_stop.i = getelementptr i8, ptr %work, i32 132
  %32 = ptrtoint ptr %vbat_charge_stop.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vbat_charge_stop.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv10.i)
  %cmp12.not.i = icmp sgt i32 %33, %conv10.i
  br i1 %cmp12.not.i, label %if.else17.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %is_on.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %is_on.i.i, align 4
  %35 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %master.i.i, align 4
  %call.i88.i = call i32 @da903x_write(ptr noundef %36, i32 noundef 40, i8 noundef zeroext 0) #4
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  call void @power_supply_changed(ptr noundef %38) #4
  %vbat_charge_restart.i = getelementptr i8, ptr %work, i32 136
  %39 = ptrtoint ptr %vbat_charge_restart.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vbat_charge_restart.i, align 4
  br label %if.end31.sink.split.i

if.else17.i:                                      ; preds = %if.end7.i
  %vbat_low.i = getelementptr i8, ptr %work, i32 120
  %41 = ptrtoint ptr %vbat_low.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vbat_low.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv10.i)
  %cmp22.i = icmp slt i32 %42, %conv10.i
  br i1 %cmp22.i, label %if.else17.i.if.end31.sink.split.i_crit_edge, label %if.else17.i.if.end31.i_crit_edge

if.else17.i.if.end31.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

if.else17.i.if.end31.sink.split.i_crit_edge:      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.sink.split.i

if.end31.sink.split.i:                            ; preds = %if.else17.i.if.end31.sink.split.i_crit_edge, %if.then14.i
  %.sink91.i = phi i32 [ %40, %if.then14.i ], [ %42, %if.else17.i.if.end31.sink.split.i_crit_edge ]
  %43 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.sink.i = load ptr, ptr %master.i.i, align 4
  %conv28.i = trunc i32 %.sink91.i to i8
  %call29.i = call i32 @da903x_write(ptr noundef %.sink.i, i32 noundef 50, i8 noundef zeroext %conv28.i) #4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end31.sink.split.i, %if.else17.i.if.end31.i_crit_edge
  %vchmax_res.i = getelementptr i8, ptr %work, i32 -6
  %44 = ptrtoint ptr %vchmax_res.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %vchmax_res.i, align 2
  %conv33.i = zext i8 %45 to i32
  %vcharge_max.i = getelementptr i8, ptr %work, i32 144
  %46 = ptrtoint ptr %vcharge_max.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vcharge_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv33.i)
  %cmp35.i = icmp slt i32 %47, %conv33.i
  br i1 %cmp35.i, label %if.end31.i.if.end57.sink.split.i_crit_edge, label %lor.lhs.false.i

if.end31.i.if.end57.sink.split.i_crit_edge:       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end31.i
  %vchmin_res.i = getelementptr i8, ptr %work, i32 -5
  %48 = ptrtoint ptr %vchmin_res.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %vchmin_res.i, align 1
  %conv38.i = zext i8 %49 to i32
  %vcharge_min.i = getelementptr i8, ptr %work, i32 140
  %50 = ptrtoint ptr %vcharge_min.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vcharge_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv38.i)
  %cmp40.i = icmp sgt i32 %51, %conv38.i
  br i1 %cmp40.i, label %lor.lhs.false.i.if.end57.sink.split.i_crit_edge, label %lor.lhs.false42.i

lor.lhs.false.i.if.end57.sink.split.i_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.sink.split.i

lor.lhs.false42.i:                                ; preds = %lor.lhs.false.i
  %tbat_res.i = getelementptr i8, ptr %work, i32 -4
  %52 = ptrtoint ptr %tbat_res.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tbat_res.i, align 4
  %conv44.i = zext i8 %53 to i32
  %tbat_high.i = getelementptr i8, ptr %work, i32 112
  %54 = ptrtoint ptr %tbat_high.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tbat_high.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv44.i)
  %cmp46.i = icmp sgt i32 %55, %conv44.i
  br i1 %cmp46.i, label %lor.lhs.false42.i.if.end57.sink.split.i_crit_edge, label %lor.lhs.false48.i

lor.lhs.false42.i.if.end57.sink.split.i_crit_edge: ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.sink.split.i

lor.lhs.false48.i:                                ; preds = %lor.lhs.false42.i
  %56 = ptrtoint ptr %thresholds11.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %thresholds11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv44.i)
  %cmp53.i = icmp slt i32 %57, %conv44.i
  br i1 %cmp53.i, label %lor.lhs.false48.i.if.end57.sink.split.i_crit_edge, label %lor.lhs.false48.i.da9030_charger_check_state.exit_crit_edge

lor.lhs.false48.i.da9030_charger_check_state.exit_crit_edge: ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %da9030_charger_check_state.exit

lor.lhs.false48.i.if.end57.sink.split.i_crit_edge: ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.sink.split.i

if.end57.sink.split.i:                            ; preds = %lor.lhs.false48.i.if.end57.sink.split.i_crit_edge, %lor.lhs.false42.i.if.end57.sink.split.i_crit_edge, %lor.lhs.false.i.if.end57.sink.split.i_crit_edge, %if.end31.i.if.end57.sink.split.i_crit_edge, %if.else.i.if.end57.sink.split.i_crit_edge, %if.then3.i
  %.sink95.i = phi i8 [ 1, %if.then3.i ], [ 0, %if.else.i.if.end57.sink.split.i_crit_edge ], [ 0, %lor.lhs.false48.i.if.end57.sink.split.i_crit_edge ], [ 0, %lor.lhs.false42.i.if.end57.sink.split.i_crit_edge ], [ 0, %lor.lhs.false.i.if.end57.sink.split.i_crit_edge ], [ 0, %if.end31.i.if.end57.sink.split.i_crit_edge ]
  %.sink94.i = phi i8 [ %conv5.i.i, %if.then3.i ], [ 0, %if.else.i.if.end57.sink.split.i_crit_edge ], [ 0, %lor.lhs.false48.i.if.end57.sink.split.i_crit_edge ], [ 0, %lor.lhs.false42.i.if.end57.sink.split.i_crit_edge ], [ 0, %lor.lhs.false.i.if.end57.sink.split.i_crit_edge ], [ 0, %if.end31.i.if.end57.sink.split.i_crit_edge ]
  %58 = ptrtoint ptr %is_on.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %.sink95.i, ptr %is_on.i.i, align 4
  %59 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %master.i.i, align 4
  %call.i90.i = call i32 @da903x_write(ptr noundef %60, i32 noundef 40, i8 noundef zeroext %.sink94.i) #4
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr, align 4
  call void @power_supply_changed(ptr noundef %62) #4
  br label %da9030_charger_check_state.exit

da9030_charger_check_state.exit:                  ; preds = %if.end57.sink.split.i, %lor.lhs.false48.i.da9030_charger_check_state.exit_crit_edge, %land.lhs.true.i.da9030_charger_check_state.exit_crit_edge, %if.then.i.da9030_charger_check_state.exit_crit_edge
  %interval = getelementptr i8, ptr %work, i32 100
  %63 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %65 = load ptr, ptr @system_wq, align 4
  %call.i.i4 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %65, ptr noundef %work, i32 noundef %64) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9030_battery_event(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 32, label %sw.bb4
    i32 128, label %entry.sw.bb5_crit_edge
    i32 16, label %entry.sw.bb5_crit_edge13
  ]

entry.sw.bb5_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %work = getelementptr i8, ptr %nb, i32 -172
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work) #4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %adc.i = getelementptr i8, ptr %nb, i32 -184
  %master.i.i = getelementptr i8, ptr %nb, i32 -188
  %2 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i.i, align 4
  %call.i.i9 = tail call i32 @da903x_reads(ptr noundef %3, i32 noundef 65, i32 noundef 11, ptr noundef %adc.i) #4
  %is_on.i = getelementptr i8, ptr %nb, i32 -4
  %4 = ptrtoint ptr %is_on.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_on.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb4
  %6 = ptrtoint ptr %adc.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %adc.i, align 4
  %conv.i = zext i8 %7 to i32
  %vbat_low.i = getelementptr i8, ptr %nb, i32 -52
  %8 = ptrtoint ptr %vbat_low.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vbat_low.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i)
  %cmp.i = icmp sgt i32 %9, %conv.i
  br i1 %cmp.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master.i.i, align 4
  %vbat_crit.i = getelementptr i8, ptr %nb, i32 -48
  %12 = ptrtoint ptr %vbat_crit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vbat_crit.i, align 4
  %conv5.i = trunc i32 %13 to i8
  %call.i = tail call i32 @da903x_write(ptr noundef %11, i32 noundef 50, i8 noundef zeroext %conv5.i) #4
  %battery_low.i = getelementptr i8, ptr %nb, i32 12
  %14 = ptrtoint ptr %battery_low.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %battery_low.i, align 4
  %tobool6.not.i = icmp eq ptr %15, null
  br i1 %tobool6.not.i, label %if.then3.i.sw.epilog_crit_edge, label %if.then3.i.if.end23.sink.split.i_crit_edge

if.then3.i.if.end23.sink.split.i_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.sink.split.i

if.then3.i.sw.epilog_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end.i
  %vbat_crit14.i = getelementptr i8, ptr %nb, i32 -48
  %16 = ptrtoint ptr %vbat_crit14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vbat_crit14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i)
  %cmp15.i = icmp sgt i32 %17, %conv.i
  br i1 %cmp15.i, label %if.then17.i, label %if.else.i.sw.epilog_crit_edge

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then17.i:                                      ; preds = %if.else.i
  %battery_critical.i = getelementptr i8, ptr %nb, i32 16
  %18 = ptrtoint ptr %battery_critical.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %battery_critical.i, align 4
  %tobool18.not.i = icmp eq ptr %19, null
  br i1 %tobool18.not.i, label %if.then17.i.sw.epilog_crit_edge, label %if.then17.i.if.end23.sink.split.i_crit_edge

if.then17.i.if.end23.sink.split.i_crit_edge:      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.sink.split.i

if.then17.i.sw.epilog_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end23.sink.split.i:                            ; preds = %if.then17.i.if.end23.sink.split.i_crit_edge, %if.then3.i.if.end23.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %15, %if.then3.i.if.end23.sink.split.i_crit_edge ], [ %19, %if.then17.i.if.end23.sink.split.i_crit_edge ]
  tail call void %.sink.i() #4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge13
  %add.ptr = getelementptr i8, ptr %nb, i32 -244
  %20 = getelementptr i8, ptr %nb, i32 -4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %20, align 4
  %master.i = getelementptr i8, ptr %nb, i32 -188
  %22 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master.i, align 4
  %call.i11 = tail call i32 @da903x_write(ptr noundef %23, i32 noundef 40, i8 noundef zeroext 0) #4
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  tail call void @power_supply_changed(ptr noundef %25) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %if.end23.sink.split.i, %if.then17.i.sw.epilog_crit_edge, %if.else.i.sw.epilog_crit_edge, %if.then3.i.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_register_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_unregister_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_writes(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_query_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_reads(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9030_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #4
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 6, label %sw.bb2
    i32 10, label %sw.bb3
    i32 11, label %sw.bb5
    i32 12, label %sw.bb7
    i32 18, label %sw.bb9
    i32 73, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %chdet.i = getelementptr inbounds %struct.da9030_charger, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %chdet.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %chdet.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %sw.bb.da9030_battery_check_status.exit_crit_edge, label %if.then.i

sw.bb.da9030_battery_check_status.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %da9030_battery_check_status.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %is_on.i = getelementptr inbounds %struct.da9030_charger, ptr %call, i32 0, i32 14
  %3 = ptrtoint ptr %is_on.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_on.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  %..i = select i1 %tobool1.not.i, i32 3, i32 1
  br label %da9030_battery_check_status.exit

da9030_battery_check_status.exit:                 ; preds = %if.then.i, %sw.bb.da9030_battery_check_status.exit_crit_edge
  %.sink.i = phi i32 [ %..i, %if.then.i ], [ 2, %sw.bb.da9030_battery_check_status.exit_crit_edge ]
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink.i, ptr %val, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fault.i = getelementptr inbounds %struct.da9030_charger, ptr %call, i32 0, i32 11
  %6 = ptrtoint ptr %fault.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fault.i, align 1
  %conv.i = zext i8 %7 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i30 = icmp eq i32 %and.i, 0
  %and3.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %..i31 = select i1 %tobool4.not.i, i32 1, i32 4
  %.sink.i32 = select i1 %tobool.not.i30, i32 %..i31, i32 2
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink.i32, ptr %val, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %battery_info = getelementptr inbounds %struct.da9030_charger, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %battery_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %battery_info, align 4
  %technology = getelementptr inbounds %struct.power_supply_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %technology to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %technology, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %battery_info4 = getelementptr inbounds %struct.da9030_charger, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %battery_info4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %battery_info4, align 4
  %voltage_max_design = getelementptr inbounds %struct.power_supply_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %voltage_max_design to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %voltage_max_design, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %battery_info6 = getelementptr inbounds %struct.da9030_charger, ptr %call, i32 0, i32 6
  %19 = ptrtoint ptr %battery_info6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %battery_info6, align 4
  %voltage_min_design = getelementptr inbounds %struct.power_supply_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %voltage_min_design to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %voltage_min_design, align 4
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %adc = getelementptr inbounds %struct.da9030_charger, ptr %call, i32 0, i32 3
  %24 = ptrtoint ptr %adc to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %adc, align 4
  %conv = zext i8 %25 to i32
  %mul.i = mul nuw nsw i32 %conv, 2650
  %shr.i35 = lshr i32 %mul.i, 8
  %26 = mul nuw nsw i32 %shr.i35, 1000
  %mul = add nuw nsw i32 %26, 2650000
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %val, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ichaverage_res = getelementptr inbounds %struct.da9030_charger, ptr %call, i32 0, i32 3, i32 5
  %28 = ptrtoint ptr %ichaverage_res to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ichaverage_res, align 1
  %conv11 = zext i8 %29 to i32
  %mul.i33 = mul nuw nsw i32 %conv11, 24000
  %shr.i3436 = lshr i32 %mul.i33, 8
  %div.i37.lhs.trunc = trunc i32 %shr.i3436 to i16
  %div.i3738 = udiv i16 %div.i37.lhs.trunc, 15
  %div.i37.zext = zext i16 %div.i3738 to i32
  %mul13 = mul nuw nsw i32 %div.i37.zext, 1000
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul13, ptr %val, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %battery_info15 = getelementptr inbounds %struct.da9030_charger, ptr %call, i32 0, i32 6
  %31 = ptrtoint ptr %battery_info15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %battery_info15, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb2, %sw.bb1, %da9030_battery_check_status.exit, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bat_debug_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @bat_debug_show, ptr noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bat_debug_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %is_on = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %is_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_on, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.7, ptr @.str.6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond) #4
  %chdet = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %chdet to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chdet, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mA = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %mA to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mA, align 4
  %mV = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %mV to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mV, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, i32 noundef %7, i32 noundef %9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %adc = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %adc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %adc, align 4
  %conv = zext i8 %11 to i32
  %mul.i = mul nuw nsw i32 %conv, 2650
  %shr.i96 = lshr i32 %mul.i, 8
  %add.i = add nuw nsw i32 %shr.i96, 2650
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %add.i) #4
  %vbatmin_res = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %vbatmin_res to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vbatmin_res, align 1
  %conv6 = zext i8 %13 to i32
  %mul.i76 = mul nuw nsw i32 %conv6, 2650
  %shr.i7797 = lshr i32 %mul.i76, 8
  %add.i78 = add nuw nsw i32 %shr.i7797, 2650
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.10, i32 noundef %conv6, i32 noundef %add.i78) #4
  %vbatmintxon = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %vbatmintxon to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vbatmintxon, align 2
  %conv12 = zext i8 %15 to i32
  %mul.i79 = mul nuw nsw i32 %conv12, 2650
  %shr.i8098 = lshr i32 %mul.i79, 8
  %add.i81 = add nuw nsw i32 %shr.i8098, 2650
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %conv12, i32 noundef %add.i81) #4
  %ichmax_res = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %ichmax_res to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ichmax_res, align 1
  %conv18 = zext i8 %17 to i32
  %mul.i82 = mul nuw nsw i32 %conv18, 2650
  %shr.i8399 = lshr i32 %mul.i82, 8
  %add.i84 = add nuw nsw i32 %shr.i8399, 2650
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i32 noundef %conv18, i32 noundef %add.i84) #4
  %ichmin_res = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %ichmin_res to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ichmin_res, align 4
  %conv24 = zext i8 %19 to i32
  %mul.i85 = mul nuw nsw i32 %conv24, 24000
  %shr.i86100 = lshr i32 %mul.i85, 8
  %div.i101.lhs.trunc = trunc i32 %shr.i86100 to i16
  %div.i101102 = udiv i16 %div.i101.lhs.trunc, 15
  %div.i101.zext = zext i16 %div.i101102 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.13, i32 noundef %conv24, i32 noundef %div.i101.zext) #4
  %ichaverage_res = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %ichaverage_res to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ichaverage_res, align 1
  %conv30 = zext i8 %21 to i32
  %mul.i87 = mul nuw nsw i32 %conv30, 24000
  %shr.i88103 = lshr i32 %mul.i87, 8
  %div.i89104.lhs.trunc = trunc i32 %shr.i88103 to i16
  %div.i89104105 = udiv i16 %div.i89104.lhs.trunc, 15
  %div.i89104.zext = zext i16 %div.i89104105 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %conv30, i32 noundef %div.i89104.zext) #4
  %vchmax_res = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 3, i32 6
  %22 = ptrtoint ptr %vchmax_res to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vchmax_res, align 2
  %conv36 = zext i8 %23 to i32
  %mul.i90 = mul nuw nsw i32 %conv36, 24000
  %shr.i91106 = lshr i32 %mul.i90, 8
  %div.i92107.lhs.trunc = trunc i32 %shr.i91106 to i16
  %div.i92107108 = udiv i16 %div.i92107.lhs.trunc, 15
  %div.i92107.zext = zext i16 %div.i92107108 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, i32 noundef %conv36, i32 noundef %div.i92107.zext) #4
  %vchmin_res = getelementptr inbounds %struct.da9030_charger, ptr %1, i32 0, i32 3, i32 7
  %24 = ptrtoint ptr %vchmin_res to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vchmin_res, align 1
  %conv42 = zext i8 %25 to i32
  %mul.i93 = mul nuw nsw i32 %conv42, 2650
  %shr.i94109 = lshr i32 %mul.i93, 8
  %add.i95 = add nuw nsw i32 %shr.i94109, 2650
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %conv42, i32 noundef %add.i95) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_da9030_battery__223_579_da903x_battery_driver_init6, !1, !"__initcall__kmod_da9030_battery__223_579_da903x_battery_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/da9030_battery.c", i32 579, i32 1}
!2 = !{ptr @__exitcall_da903x_battery_driver_exit, !1, !"__exitcall_da903x_battery_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description224, !4, !"__UNIQUE_ID_description224", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/da9030_battery.c", i32 581, i32 1}
!5 = !{ptr @__UNIQUE_ID_author225, !6, !"__UNIQUE_ID_author225", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/da9030_battery.c", i32 582, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/da9030_battery.c", i32 583, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/da9030_battery.c", i32 573, i32 11}
!12 = !{ptr @da903x_battery_driver, !13, !"da903x_battery_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/da9030_battery.c", i32 571, i32 31}
!14 = !{ptr @da9030_battery_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/da9030_battery.c", i32 519, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @da9030_battery_probe.__key.2, !15, !"__key", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @da9030_battery_props, !20, !"da9030_battery_props", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/da9030_battery.c", i32 293, i32 35}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/power/supply/da9030_battery.c", i32 179, i32 44}
!23 = !{ptr @bat_debug_fops, !24, !"bat_debug_fops", i1 false, i1 false}
!24 = !{!"../drivers/power/supply/da9030_battery.c", i32 175, i32 1}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/da9030_battery.c", i32 141, i32 16}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/da9030_battery.c", i32 141, i32 52}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/da9030_battery.c", i32 141, i32 59}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/da9030_battery.c", i32 143, i32 17}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/da9030_battery.c", i32 147, i32 16}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/da9030_battery.c", i32 150, i32 16}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/da9030_battery.c", i32 153, i32 16}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/da9030_battery.c", i32 156, i32 16}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/da9030_battery.c", i32 159, i32 16}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/da9030_battery.c", i32 162, i32 16}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/da9030_battery.c", i32 165, i32 16}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/da9030_battery.c", i32 168, i32 16}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
!59 = !{i8 0, i8 2}
