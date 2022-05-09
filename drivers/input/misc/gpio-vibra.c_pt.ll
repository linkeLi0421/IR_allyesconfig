; ModuleID = '/llk/IR_all_yes/drivers/input/misc/gpio-vibra.c_pt.bc'
source_filename = "../drivers/input/misc/gpio-vibra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.gpio_vibrator = type { ptr, ptr, ptr, %struct.work_struct, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.84 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.84 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_gpio_vibra__288_202_gpio_vibrator_driver_init6 = internal global ptr @gpio_vibrator_driver_init, section ".initcall6.init", align 4
@gpio_vibrator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_vibrator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_vibra_dt_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_vibrator_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_vibrator_driver_exit = internal global ptr @gpio_vibrator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [45 x i8] c"gpio_vibra.author=Luca Weiss <luca@z3ntu.xy>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [44 x i8] c"gpio_vibra.description=GPIO vibrator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [46 x i8] c"gpio_vibra.file=drivers/input/misc/gpio-vibra\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"gpio_vibra.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [40 x i8] c"gpio_vibra.alias=platform:gpio-vibrator\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio-vibrator\00", [18 x i8] zeroinitializer }, align 32
@gpio_vibra_dt_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-vibrator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gpio_vibrator_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @gpio_vibrator_suspend, ptr @gpio_vibrator_resume, ptr @gpio_vibrator_suspend, ptr @gpio_vibrator_resume, ptr @gpio_vibrator_suspend, ptr @gpio_vibrator_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@gpio_vibrator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 120, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpio_vibrator_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/misc/gpio-vibra.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_vibrator_probe._entry_ptr = internal global ptr @gpio_vibrator_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@gpio_vibrator_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request main gpio: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@gpio_vibrator_probe._entry_ptr.10 = internal global ptr @gpio_vibrator_probe._entry.8, section ".printk_index", align 4
@gpio_vibrator_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&vibrator->play_work)\00", [56 x i8] zeroinitializer }, align 32
@gpio_vibrator_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 145, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't create FF dev: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@gpio_vibrator_probe._entry_ptr.14 = internal global ptr @gpio_vibrator_probe._entry.12, section ".printk_index", align 4
@gpio_vibrator_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 151, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't register input dev: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@gpio_vibrator_probe._entry_ptr.17 = internal global ptr @gpio_vibrator_probe._entry.15, section ".printk_index", align 4
@gpio_vibrator_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 45, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpio_vibrator_start\00", [44 x i8] zeroinitializer }, align 32
@gpio_vibrator_start._entry_ptr = internal global ptr @gpio_vibrator_start._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"gpio_vibrator_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 194, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 197, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [26 x i8] c"gpio_vibra_dt_match_table\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 187, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"gpio_vibrator_pm_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 183, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 115, i32 49 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 119, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 124, i32 46 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 128, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 133, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 145, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 151, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [35 x i8] c"../drivers/input/misc/gpio-vibra.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 45, i32 4 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_gpio_vibrator_driver_exit, ptr @__initcall__kmod_gpio_vibra__288_202_gpio_vibrator_driver_init6, ptr @gpio_vibrator_driver_exit, ptr @gpio_vibrator_probe._entry, ptr @gpio_vibrator_probe._entry.12, ptr @gpio_vibrator_probe._entry.15, ptr @gpio_vibrator_probe._entry.8, ptr @gpio_vibrator_probe._entry_ptr, ptr @gpio_vibrator_probe._entry_ptr.10, ptr @gpio_vibrator_probe._entry_ptr.14, ptr @gpio_vibrator_probe._entry_ptr.17, ptr @gpio_vibrator_start._entry, ptr @gpio_vibrator_start._entry_ptr, ptr @gpio_vibrator_driver, ptr @.str, ptr @gpio_vibra_dt_match_table, ptr @gpio_vibrator_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @gpio_vibrator_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vibrator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vibra_dt_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vibrator_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vibrator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vibrator_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vibrator_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vibrator_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vibrator_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vibrator_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vibrator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_vibrator_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_vibrator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_vibrator_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vibrator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #4
  %vcc = getelementptr inbounds %struct.gpio_vibrator, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %vcc, align 4
  %cmp.i.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  %2 = ptrtoint ptr %call8 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %2, i32 0
  %3 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i, label %do.end [
    i32 0, label %if.end16
    i32 -517, label %if.end6.cleanup_crit_edge
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %spec.select.i) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %call18 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 3) #4
  %gpio = getelementptr inbounds %struct.gpio_vibrator, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call18, ptr %gpio, align 4
  %cmp.i.i104 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %call18 to i32
  %spec.select.i105 = select i1 %cmp.i.i104, i32 %5, i32 0
  %6 = zext i32 %spec.select.i105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %spec.select.i105, label %do.end27 [
    i32 0, label %do.body31
    i32 -517, label %if.end16.cleanup_crit_edge
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end27:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %spec.select.i105) #7
  br label %cleanup

do.body31:                                        ; preds = %if.end16
  %play_work = getelementptr inbounds %struct.gpio_vibrator, ptr %call.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %play_work, i32 noundef 0) #4
  %7 = ptrtoint ptr %play_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %play_work, align 4
  %lockdep_map = getelementptr inbounds %struct.gpio_vibrator, ptr %call.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @gpio_vibrator_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry35 = getelementptr inbounds %struct.gpio_vibrator, ptr %call.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry35, ptr %entry35, align 4
  %prev.i = getelementptr inbounds %struct.gpio_vibrator, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry35, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.gpio_vibrator, ptr %call.i, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gpio_vibrator_play_work, ptr %func, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str, ptr %12, align 8
  %14 = load ptr, ptr %call.i, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 25, ptr %id, align 4
  %16 = load ptr, ptr %call.i, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gpio_vibrator_close, ptr %close, align 4
  %18 = load ptr, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 40, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %20 = load ptr, ptr %call.i, align 4
  tail call void @input_set_capability(ptr noundef %20, i32 noundef 21, i32 noundef 80) #4
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %call45 = tail call i32 @input_ff_create_memless(ptr noundef %22, ptr noundef null, ptr noundef nonnull @gpio_vibrator_play_effect) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call45) #7
  br label %cleanup

if.end52:                                         ; preds = %do.body31
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %call54 = tail call i32 @input_register_device(ptr noundef %24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end61, label %do.end59

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call54) #7
  br label %cleanup

if.end61:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i106 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i106 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i106, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end59, %do.end50, %do.end27, %if.end16.cleanup_crit_edge, %do.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %do.end50 ], [ %call54, %do.end59 ], [ 0, %if.end61 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %spec.select.i, %if.end6.cleanup_crit_edge ], [ %spec.select.i, %do.end ], [ %spec.select.i105, %if.end16.cleanup_crit_edge ], [ %spec.select.i105, %do.end27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_vibrator_play_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %running, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %vcc_on.i = getelementptr i8, ptr %work, i32 45
  %6 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vcc_on.i, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end4.i_crit_edge

if.then.if.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then
  %vcc.i = getelementptr i8, ptr %work, i32 -4
  %8 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vcc.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %call.i) #7
  br label %if.end

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %vcc_on.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i, %if.then.if.end4.i_crit_edge
  %gpio.i = getelementptr i8, ptr %work, i32 -8
  %11 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %12, i32 noundef 1) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %gpio.i3 = getelementptr i8, ptr %work, i32 -8
  %13 = ptrtoint ptr %gpio.i3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio.i3, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 0) #4
  %vcc_on.i4 = getelementptr i8, ptr %work, i32 45
  %15 = ptrtoint ptr %vcc_on.i4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vcc_on.i4, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i5 = icmp eq i8 %16, 0
  br i1 %tobool.not.i5, label %if.else.if.end_crit_edge, label %if.then.i8

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i8:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %vcc.i6 = getelementptr i8, ptr %work, i32 -4
  %17 = ptrtoint ptr %vcc.i6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vcc.i6, align 4
  %call.i7 = tail call i32 @regulator_disable(ptr noundef %18) #4
  %19 = ptrtoint ptr %vcc_on.i4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %vcc_on.i4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.i8, %if.else.if.end_crit_edge, %if.end4.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_vibrator_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %play_work = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %play_work) #4
  %gpio.i = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #4
  %vcc_on.i = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vcc_on.i, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.gpio_vibrator_stop.exit_crit_edge, label %if.then.i

entry.gpio_vibrator_stop.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %gpio_vibrator_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %vcc.i = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vcc.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %7) #4
  %8 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %vcc_on.i, align 1
  br label %gpio_vibrator_stop.exit

gpio_vibrator_stop.exit:                          ; preds = %if.then.i, %entry.gpio_vibrator_stop.exit_crit_edge
  %running = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %running, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vibrator_play_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %weak_magnitude, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %level.0.in = phi i16 [ %3, %entry.if.end_crit_edge ], [ %5, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %level.0.in)
  %tobool3 = icmp ne i16 %level.0.in, 0
  %running = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 4
  %frombool = zext i1 %tobool3 to i8
  %6 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %running, align 4
  %play_work = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %play_work) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vibrator_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %play_work = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %play_work) #4
  %running = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %running, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %gpio.i = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #4
  %vcc_on.i = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vcc_on.i, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %vcc.i = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vcc.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %9) #4
  %10 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %vcc_on.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vibrator_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %running = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %running, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %vcc_on.i = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vcc_on.i, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end4.i_crit_edge

if.then.if.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then
  %vcc.i = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vcc.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef %call.i) #7
  br label %if.end

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %vcc_on.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i, %if.then.if.end4.i_crit_edge
  %gpio.i = getelementptr inbounds %struct.gpio_vibrator, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.end4.i, %do.end.i, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_gpio_vibra__288_202_gpio_vibrator_driver_init6, !1, !"__initcall__kmod_gpio_vibra__288_202_gpio_vibrator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/gpio-vibra.c", i32 202, i32 1}
!2 = !{ptr @__exitcall_gpio_vibrator_driver_exit, !1, !"__exitcall_gpio_vibrator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/gpio-vibra.c", i32 204, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/gpio-vibra.c", i32 205, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/gpio-vibra.c", i32 206, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/gpio-vibra.c", i32 207, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/gpio-vibra.c", i32 197, i32 11}
!14 = !{ptr @gpio_vibrator_driver, !15, !"gpio_vibrator_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/gpio-vibra.c", i32 194, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/gpio-vibra.c", i32 115, i32 49}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/misc/gpio-vibra.c", i32 119, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @gpio_vibrator_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @gpio_vibrator_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/misc/gpio-vibra.c", i32 124, i32 46}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/gpio-vibra.c", i32 128, i32 4}
!30 = !{ptr @gpio_vibrator_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @gpio_vibrator_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @gpio_vibrator_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/gpio-vibra.c", i32 133, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/misc/gpio-vibra.c", i32 145, i32 3}
!37 = !{ptr @gpio_vibrator_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @gpio_vibrator_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/misc/gpio-vibra.c", i32 151, i32 3}
!41 = !{ptr @gpio_vibrator_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @gpio_vibrator_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/gpio-vibra.c", i32 45, i32 4}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @gpio_vibrator_start._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @gpio_vibrator_start._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @gpio_vibra_dt_match_table, !49, !"gpio_vibra_dt_match_table", i1 false, i1 false}
!49 = !{!"../drivers/input/misc/gpio-vibra.c", i32 187, i32 34}
!50 = !{ptr @gpio_vibrator_pm_ops, !51, !"gpio_vibrator_pm_ops", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/gpio-vibra.c", i32 183, i32 8}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
