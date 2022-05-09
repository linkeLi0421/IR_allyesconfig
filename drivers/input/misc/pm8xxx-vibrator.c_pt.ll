; ModuleID = '/llk/IR_all_yes/drivers/input/misc/pm8xxx-vibrator.c_pt.bc'
source_filename = "../drivers/input/misc/pm8xxx-vibrator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pm8xxx_regs = type { i32, i32, i32, i32, i32, i32 }
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
%struct.pm8xxx_vib = type { ptr, %struct.work_struct, ptr, ptr, i32, i32, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.68 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.68 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_pm8xxx_vibrator__223_257_pm8xxx_vib_driver_init6 = internal global ptr @pm8xxx_vib_driver_init, section ".initcall6.init", align 4
@pm8xxx_vib_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm8xxx_vib_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8xxx_vib_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_vib_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm8xxx_vib_driver_exit = internal global ptr @pm8xxx_vib_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias224 = internal constant [42 x i8] c"pm8xxx_vibrator.alias=platform:pm8xxx_vib\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [83 x i8] c"pm8xxx_vibrator.description=PMIC8xxx vibrator driver based on ff-memless framework\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [56 x i8] c"pm8xxx_vibrator.file=drivers/input/misc/pm8xxx-vibrator\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [31 x i8] c"pm8xxx_vibrator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [61 x i8] c"pm8xxx_vibrator.author=Amy Maloche <amaloche@codeaurora.org>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm8xxx-vib\00", [21 x i8] zeroinitializer }, align 32
@pm8xxx_vib_id_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8058-vib\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8058_regs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8921-vib\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8058_regs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8916-vib\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8916_regs }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@pm8xxx_vib_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm8xxx_vib_suspend, ptr null, ptr @pm8xxx_vib_suspend, ptr null, ptr @pm8xxx_vib_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pm8xxx_vib_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&vib->work)\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm8xxx_vib_ffmemless\00", [43 x i8] zeroinitializer }, align 32
@pm8xxx_vib_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 215, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"couldn't register vibrator as FF device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm8xxx_vib_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/input/misc/pm8xxx-vibrator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm8xxx_vib_probe._entry_ptr = internal global ptr @pm8xxx_vib_probe._entry, section ".printk_index", align 4
@pm8xxx_vib_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 221, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't register input device\0A\00", [32 x i8] zeroinitializer }, align 32
@pm8xxx_vib_probe._entry_ptr.10 = internal global ptr @pm8xxx_vib_probe._entry.8, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@pm8058_regs = internal constant { %struct.pm8xxx_regs, [40 x i8] } { %struct.pm8xxx_regs { i32 0, i32 0, i32 74, i32 248, i32 3, i32 252 }, [40 x i8] zeroinitializer }, align 32
@pm8916_regs = internal global { %struct.pm8xxx_regs, [40 x i8] } { %struct.pm8xxx_regs { i32 49222, i32 128, i32 49217, i32 31, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"pm8xxx_vib_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 249, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 252, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"pm8xxx_vib_id_table\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 241, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"pm8xxx_vib_pm_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 239, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 187, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 205, i32 20 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 214, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 221, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"pm8058_regs\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 31, i32 33 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"pm8916_regs\00", align 1
@___asan_gen_.60 = private constant [40 x i8] c"../drivers/input/misc/pm8xxx-vibrator.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 38, i32 27 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias224, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_pm8xxx_vib_driver_exit, ptr @__initcall__kmod_pm8xxx_vibrator__223_257_pm8xxx_vib_driver_init6, ptr @pm8xxx_vib_driver_exit, ptr @pm8xxx_vib_probe._entry, ptr @pm8xxx_vib_probe._entry.8, ptr @pm8xxx_vib_probe._entry_ptr, ptr @pm8xxx_vib_probe._entry_ptr.10, ptr @pm8xxx_vib_driver, ptr @.str, ptr @pm8xxx_vib_id_table, ptr @pm8xxx_vib_pm_ops, ptr @pm8xxx_vib_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @pm8058_regs, ptr @pm8916_regs], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_vib_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_vib_id_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_vib_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_vib_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_vib_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_vib_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8058_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_vib_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm8xxx_vib_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_vib_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm8xxx_vib_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_vib_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !50
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %call2 = tail call ptr @dev_get_regmap(ptr noundef %2, ptr noundef null) #5
  %regmap = getelementptr inbounds %struct.pm8xxx_vib, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %regmap, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %do.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end6
  %work = getelementptr inbounds %struct.pm8xxx_vib, ptr %call.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %4 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.pm8xxx_vib, ptr %call.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @pm8xxx_vib_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry15 = getelementptr inbounds %struct.pm8xxx_vib, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.pm8xxx_vib, ptr %call.i, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.pm8xxx_vib, ptr %call.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pm8xxx_work_handler, ptr %func, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %call.i, align 4
  %call18 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %drv_addr = getelementptr inbounds %struct.pm8xxx_regs, ptr %call18, i32 0, i32 2
  %11 = ptrtoint ptr %drv_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %drv_addr, align 4
  %call20 = call i32 @regmap_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end22

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %do.body
  %drv_en_manual_mask = getelementptr inbounds %struct.pm8xxx_regs, ptr %call18, i32 0, i32 5
  %13 = ptrtoint ptr %drv_en_manual_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %drv_en_manual_mask, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and = and i32 %16, %14
  store i32 %and, ptr %val, align 4
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %19 = ptrtoint ptr %drv_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %drv_addr, align 4
  %call25 = call i32 @regmap_write(ptr noundef %18, i32 noundef %20, i32 noundef %and) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end22.cleanup_crit_edge, label %if.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %regs29 = getelementptr inbounds %struct.pm8xxx_vib, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %regs29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call18, ptr %regs29, align 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %conv = trunc i32 %23 to i8
  %reg_vib_drv = getelementptr inbounds %struct.pm8xxx_vib, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %reg_vib_drv to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %reg_vib_drv, align 1
  %25 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.2, ptr %call8, align 8
  %version = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %version, align 2
  %close = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 32
  %27 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pm8xxx_vib_close, ptr %close, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 40, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  call void @input_set_capability(ptr noundef %30, i32 noundef 21, i32 noundef 80) #5
  %call31 = call i32 @input_ff_create_memless(ptr noundef nonnull %call8, ptr noundef null, ptr noundef nonnull @pm8xxx_vib_play_effect) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %call39 = call i32 @input_register_device(ptr noundef nonnull %call8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i89 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i89 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i89, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end44, %do.end36, %if.end22.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %do.end36 ], [ %call39, %do.end44 ], [ 0, %if.end46 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %call20, %do.body.cleanup_crit_edge ], [ %call25, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_work_handler(ptr nocapture noundef %work) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !50
  %regmap = getelementptr i8, ptr %work, i32 44
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %drv_addr = getelementptr inbounds %struct.pm8xxx_regs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %drv_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %drv_addr, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %speed = getelementptr i8, ptr %work, i32 52
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul = mul i32 %8, 1900
  %div = sdiv i32 %mul, 255
  %add = add nsw i32 %div, 1200
  %div5 = sdiv i32 %add, 100
  %9 = getelementptr i8, ptr %work, i32 60
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %9, align 4
  %11 = getelementptr i8, ptr %work, i32 56
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div5, ptr %11, align 4
  %reg_vib_drv.i = getelementptr i8, ptr %work, i32 61
  %13 = ptrtoint ptr %reg_vib_drv.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg_vib_drv.i, align 1
  %conv.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs1, align 4
  %drv_shift.i = getelementptr inbounds %struct.pm8xxx_regs, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %drv_shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %drv_shift.i, align 4
  %shl.i = shl i32 %div5, %18
  %drv_mask.i = getelementptr inbounds %struct.pm8xxx_regs, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %drv_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %drv_mask.i, align 4
  %and.i = and i32 %shl.i, %20
  %or.i = or i32 %and.i, %conv.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %21 = getelementptr i8, ptr %work, i32 60
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %21, align 4
  %23 = getelementptr i8, ptr %work, i32 56
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 12, ptr %23, align 4
  %reg_vib_drv.i27 = getelementptr i8, ptr %work, i32 61
  %25 = ptrtoint ptr %reg_vib_drv.i27 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg_vib_drv.i27, align 1
  %conv.i28 = zext i8 %26 to i32
  %27 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs1, align 4
  %drv_mask2.i = getelementptr inbounds %struct.pm8xxx_regs, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %drv_mask2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %drv_mask2.i, align 4
  %neg.i = xor i32 %30, -1
  %and3.i = and i32 %neg.i, %conv.i28
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %31 = phi ptr [ %16, %if.then.i ], [ %28, %if.else.i ]
  %reg_vib_drv.i29 = phi ptr [ %reg_vib_drv.i, %if.then.i ], [ %reg_vib_drv.i27, %if.else.i ]
  %val.0.i = phi i32 [ %or.i, %if.then.i ], [ %and3.i, %if.else.i ]
  %32 = xor i1 %tobool.not, true
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %drv_addr.i = getelementptr inbounds %struct.pm8xxx_regs, ptr %31, i32 0, i32 2
  %35 = ptrtoint ptr %drv_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %drv_addr.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %34, i32 noundef %36, i32 noundef %val.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %conv7.i = trunc i32 %val.0.i to i8
  %37 = ptrtoint ptr %reg_vib_drv.i29 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv7.i, ptr %reg_vib_drv.i29, align 1
  %enable_mask.i = getelementptr inbounds %struct.pm8xxx_regs, ptr %31, i32 0, i32 1
  %38 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %enable_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool9.not.i = icmp eq i32 %39, 0
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.then10.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %31, align 4
  %cond.i = sext i1 %32 to i32
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %43, i32 noundef %39, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then10.i, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_vib_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.pm8xxx_vib, ptr %1, i32 0, i32 1
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #5
  %active = getelementptr inbounds %struct.pm8xxx_vib, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %reg_vib_drv.i = getelementptr inbounds %struct.pm8xxx_vib, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %reg_vib_drv.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_vib_drv.i, align 1
  %conv.i = zext i8 %5 to i32
  %regs1.i = getelementptr inbounds %struct.pm8xxx_vib, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %drv_mask2.i = getelementptr inbounds %struct.pm8xxx_regs, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %drv_mask2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %drv_mask2.i, align 4
  %neg.i = xor i32 %9, -1
  %and3.i = and i32 %neg.i, %conv.i
  %regmap.i = getelementptr inbounds %struct.pm8xxx_vib, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %drv_addr.i = getelementptr inbounds %struct.pm8xxx_regs, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %drv_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %drv_addr.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %13, i32 noundef %and3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end6.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end6.i:                                        ; preds = %if.then
  %conv7.i = trunc i32 %and3.i to i8
  %14 = ptrtoint ptr %reg_vib_drv.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7.i, ptr %reg_vib_drv.i, align 1
  %enable_mask.i = getelementptr inbounds %struct.pm8xxx_regs, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enable_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not.i = icmp eq i32 %16, 0
  br i1 %tobool9.not.i, label %if.end6.i.if.end_crit_edge, label %if.then10.i

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %7, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %20, i32 noundef %16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then10.i, %if.end6.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_vib_play_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  %4 = lshr i16 %3, 8
  %5 = zext i16 %4 to i32
  %speed = getelementptr inbounds %struct.pm8xxx_vib, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %tobool.not = icmp ult i16 %3, 256
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %weak_magnitude, align 2
  %9 = lshr i16 %8, 9
  %10 = zext i16 %9 to i32
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %speed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %work = getelementptr inbounds %struct.pm8xxx_vib, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_vib_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg_vib_drv.i = getelementptr inbounds %struct.pm8xxx_vib, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %reg_vib_drv.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_vib_drv.i, align 1
  %conv.i = zext i8 %3 to i32
  %regs1.i = getelementptr inbounds %struct.pm8xxx_vib, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %drv_mask2.i = getelementptr inbounds %struct.pm8xxx_regs, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %drv_mask2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %drv_mask2.i, align 4
  %neg.i = xor i32 %7, -1
  %and3.i = and i32 %neg.i, %conv.i
  %regmap.i = getelementptr inbounds %struct.pm8xxx_vib, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %drv_addr.i = getelementptr inbounds %struct.pm8xxx_regs, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %drv_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %drv_addr.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %11, i32 noundef %and3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.pm8xxx_vib_set.exit_crit_edge, label %if.end6.i

entry.pm8xxx_vib_set.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm8xxx_vib_set.exit

if.end6.i:                                        ; preds = %entry
  %conv7.i = trunc i32 %and3.i to i8
  %12 = ptrtoint ptr %reg_vib_drv.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv7.i, ptr %reg_vib_drv.i, align 1
  %enable_mask.i = getelementptr inbounds %struct.pm8xxx_regs, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not.i = icmp eq i32 %14, 0
  br i1 %tobool9.not.i, label %if.end6.i.pm8xxx_vib_set.exit_crit_edge, label %if.then10.i

if.end6.i.pm8xxx_vib_set.exit_crit_edge:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm8xxx_vib_set.exit

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %18, i32 noundef %14, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %pm8xxx_vib_set.exit

pm8xxx_vib_set.exit:                              ; preds = %if.then10.i, %if.end6.i.pm8xxx_vib_set.exit_crit_edge, %entry.pm8xxx_vib_set.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_pm8xxx_vibrator__223_257_pm8xxx_vib_driver_init6, !1, !"__initcall__kmod_pm8xxx_vibrator__223_257_pm8xxx_vib_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 257, i32 1}
!2 = !{ptr @__exitcall_pm8xxx_vib_driver_exit, !1, !"__exitcall_pm8xxx_vib_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias224, !4, !"__UNIQUE_ID_alias224", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 259, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 260, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 261, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author228, !11, !"__UNIQUE_ID_author228", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 262, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 252, i32 11}
!14 = !{ptr @pm8xxx_vib_driver, !15, !"pm8xxx_vib_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 249, i32 31}
!16 = !{ptr @pm8xxx_vib_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 187, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 205, i32 20}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 214, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pm8xxx_vib_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @pm8xxx_vib_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 221, i32 3}
!31 = !{ptr @pm8xxx_vib_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pm8xxx_vib_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @pm8xxx_vib_id_table, !34, !"pm8xxx_vib_id_table", i1 false, i1 false}
!34 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 241, i32 34}
!35 = !{ptr @pm8058_regs, !36, !"pm8058_regs", i1 false, i1 false}
!36 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 31, i32 33}
!37 = !{ptr @pm8916_regs, !38, !"pm8916_regs", i1 false, i1 false}
!38 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 38, i32 27}
!39 = !{ptr @pm8xxx_vib_pm_ops, !40, !"pm8xxx_vib_pm_ops", i1 false, i1 false}
!40 = !{!"../drivers/input/misc/pm8xxx-vibrator.c", i32 239, i32 8}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{i8 0, i8 2}
