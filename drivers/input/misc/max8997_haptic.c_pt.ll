; ModuleID = '/llk/IR_all_yes/drivers/input/misc/max8997_haptic.c_pt.bc'
source_filename = "../drivers/input/misc/max8997_haptic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
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
%struct.max8997_platform_data = type { i32, ptr, i32, i8, [3 x i32], i32, [8 x i32], i8, [8 x i32], i8, [8 x i32], i8, i32, i32, ptr, ptr, ptr }
%struct.max8997_haptic = type { ptr, ptr, ptr, ptr, %struct.work_struct, %struct.mutex, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }
%struct.max8997_haptic_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.84 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.84 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_max8997_haptic__288_397_max8997_haptic_driver_init6 = internal global ptr @max8997_haptic_driver_init, section ".initcall6.init", align 4
@max8997_haptic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8997_haptic_probe, ptr @max8997_haptic_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_haptic_pm_ops, ptr null, ptr null }, ptr @max8997_haptic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8997_haptic_driver_exit = internal global ptr @max8997_haptic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [58 x i8] c"max8997_haptic.author=Donggeun Kim <dg77.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [49 x i8] c"max8997_haptic.description=max8997_haptic driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [54 x i8] c"max8997_haptic.file=drivers/input/misc/max8997_haptic\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"max8997_haptic.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max8997-haptic\00", [17 x i8] zeroinitializer }, align 32
@max8997_haptic_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max8997_haptic_suspend, ptr null, ptr @max8997_haptic_suspend, ptr null, ptr @max8997_haptic_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max8997_haptic_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8997-haptic\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max8997_haptic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no haptic platform data\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max8997_haptic_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/misc/max8997_haptic.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8997_haptic_probe._entry_ptr = internal global ptr @max8997_haptic_probe._entry, section ".printk_index", align 4
@max8997_haptic_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@max8997_haptic_probe._entry_ptr.8 = internal global ptr @max8997_haptic_probe._entry.6, section ".printk_index", align 4
@max8997_haptic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&chip->work)\00", [33 x i8] zeroinitializer }, align 32
@max8997_haptic_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chip->mutex\00", [19 x i8] zeroinitializer }, align 32
@max8997_haptic_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 287, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unable to request PWM for haptic, error: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@max8997_haptic_probe._entry_ptr.14 = internal global ptr @max8997_haptic_probe._entry.12, section ".printk_index", align 4
@max8997_haptic_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid chip mode specified (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@max8997_haptic_probe._entry_ptr.17 = internal global ptr @max8997_haptic_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inmotor\00", [24 x i8] zeroinitializer }, align 32
@max8997_haptic_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to get regulator, error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@max8997_haptic_probe._entry_ptr.21 = internal global ptr @max8997_haptic_probe._entry.19, section ".printk_index", align 4
@max8997_haptic_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to create FF device, error: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@max8997_haptic_probe._entry_ptr.24 = internal global ptr @max8997_haptic_probe._entry.22, section ".printk_index", align 4
@max8997_haptic_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unable to register input device, error: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@max8997_haptic_probe._entry_ptr.27 = internal global ptr @max8997_haptic_probe._entry.25, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@max8997_haptic_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"set_pwm_cycle failed, error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max8997_haptic_enable\00", [42 x i8] zeroinitializer }, align 32
@max8997_haptic_enable._entry_ptr = internal global ptr @max8997_haptic_enable._entry, section ".printk_index", align 4
@max8997_haptic_enable._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 167, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@max8997_haptic_enable._entry_ptr.32 = internal global ptr @max8997_haptic_enable._entry.30, section ".printk_index", align 4
@max8997_haptic_enable._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to enable PWM\0A\00", [42 x i8] zeroinitializer }, align 32
@max8997_haptic_enable._entry_ptr.35 = internal global ptr @max8997_haptic_enable._entry.33, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"max8997_haptic_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 388, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 390, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"max8997_haptic_pm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 380, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"max8997_haptic_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 382, i32 40 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 248, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 255, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 260, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 261, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 285, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 299, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 305, i32 46 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 308, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 324, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 332, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 160, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 167, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [39 x i8] c"../drivers/input/misc/max8997_haptic.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 174, i32 5 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max8997_haptic_driver_exit, ptr @__initcall__kmod_max8997_haptic__288_397_max8997_haptic_driver_init6, ptr @max8997_haptic_driver_exit, ptr @max8997_haptic_enable._entry, ptr @max8997_haptic_enable._entry.30, ptr @max8997_haptic_enable._entry.33, ptr @max8997_haptic_enable._entry_ptr, ptr @max8997_haptic_enable._entry_ptr.32, ptr @max8997_haptic_enable._entry_ptr.35, ptr @max8997_haptic_probe._entry, ptr @max8997_haptic_probe._entry.12, ptr @max8997_haptic_probe._entry.15, ptr @max8997_haptic_probe._entry.19, ptr @max8997_haptic_probe._entry.22, ptr @max8997_haptic_probe._entry.25, ptr @max8997_haptic_probe._entry.6, ptr @max8997_haptic_probe._entry_ptr, ptr @max8997_haptic_probe._entry_ptr.14, ptr @max8997_haptic_probe._entry_ptr.17, ptr @max8997_haptic_probe._entry_ptr.21, ptr @max8997_haptic_probe._entry_ptr.24, ptr @max8997_haptic_probe._entry_ptr.27, ptr @max8997_haptic_probe._entry_ptr.8, ptr @max8997_haptic_driver, ptr @.str, ptr @max8997_haptic_pm_ops, ptr @max8997_haptic_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @max8997_haptic_probe.__key, ptr @.str.9, ptr @max8997_haptic_probe.__key.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_enable._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_haptic_enable._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_haptic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8997_haptic_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8997_haptic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8997_haptic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_haptic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %entry
  %haptic_pdata3 = getelementptr inbounds %struct.max8997_platform_data, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %haptic_pdata3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %haptic_pdata3, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.do.end_crit_edge, label %if.end7

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 192) #10
  %call9 = tail call ptr @input_allocate_device() #6
  %tobool10.not = icmp eq ptr %call7.i.i, null
  %tobool11.not = icmp eq ptr %call9, null
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %do.end15, label %do.body18

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %err_free_mem

do.body18:                                        ; preds = %if.end7
  %work = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %11 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @max8997_haptic_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry22 = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry22, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @max8997_haptic_play_effect_work, ptr %func, align 4
  %mutex = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @max8997_haptic_probe.__key.10) #6
  %haptic = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %haptic to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %haptic, align 4
  %client = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %client, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %call7.i.i, align 8
  %input_dev31 = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %input_dev31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9, ptr %input_dev31, align 8
  %pwm_period = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %pwm_period to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pwm_period, align 4
  %pwm_period32 = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %pwm_period32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pwm_period32, align 4
  %type = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %9, i32 0, i32 2
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  %type33 = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 11
  %25 = ptrtoint ptr %type33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %type33, align 4
  %mode = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %9, i32 0, i32 3
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode, align 4
  %mode34 = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 12
  %28 = ptrtoint ptr %mode34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %mode34, align 8
  %pwm_divisor = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %9, i32 0, i32 4
  %29 = ptrtoint ptr %pwm_divisor to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pwm_divisor, align 4
  %pwm_divisor35 = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %pwm_divisor35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %pwm_divisor35, align 8
  %32 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %do.end55 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb40
  ]

sw.bb:                                            ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %internal_mode_pattern = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %9, i32 0, i32 5
  %33 = ptrtoint ptr %internal_mode_pattern to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %internal_mode_pattern, align 4
  %internal_mode_pattern37 = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 13
  %35 = ptrtoint ptr %internal_mode_pattern37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %internal_mode_pattern37, align 4
  %pattern_cycle = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %9, i32 0, i32 6
  %36 = ptrtoint ptr %pattern_cycle to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pattern_cycle, align 4
  %pattern_cycle38 = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 14
  %38 = ptrtoint ptr %pattern_cycle38 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %pattern_cycle38, align 8
  %pattern_signal_period = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %9, i32 0, i32 7
  %39 = ptrtoint ptr %pattern_signal_period to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pattern_signal_period, align 4
  %pattern_signal_period39 = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 15
  %41 = ptrtoint ptr %pattern_signal_period39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %pattern_signal_period39, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %do.body18
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %9, align 4
  %call41 = tail call ptr @pwm_request(i32 noundef %43, ptr noundef nonnull @.str) #6
  %pwm = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 8
  %44 = ptrtoint ptr %pwm to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call41, ptr %pwm, align 8
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then44, label %if.end51

if.then44:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %45) #9
  br label %err_free_mem

if.end51:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #6
  %args.i = getelementptr inbounds %struct.pwm_device, ptr %call41, i32 0, i32 6
  %polarity.i = getelementptr inbounds %struct.pwm_device, ptr %call41, i32 0, i32 6, i32 1
  %46 = getelementptr inbounds i8, ptr %state.i, i32 8
  %47 = call ptr @memset(ptr %46, i32 0, i32 16)
  %48 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %polarity.i, align 8
  %polarity1.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 2
  %50 = ptrtoint ptr %polarity1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %polarity1.i, align 8
  %51 = ptrtoint ptr %args.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %args.i, align 8
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %state.i, align 8
  %call.i = call i32 @pwm_apply_state(ptr noundef %call41, ptr noundef nonnull %state.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #6
  br label %sw.epilog

do.end55:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %27) #9
  br label %err_free_mem

sw.epilog:                                        ; preds = %if.end51, %sw.bb
  %call59 = call ptr @regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #6
  %regulator = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call59, ptr %regulator, align 4
  %cmp.i168 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then62, label %if.end69

if.then62:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %call59 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %55) #9
  br label %err_free_pwm

if.end69:                                         ; preds = %sw.epilog
  %56 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str, ptr %call9, align 8
  %version = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %version, align 2
  %parent72 = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 40, i32 1
  %58 = ptrtoint ptr %parent72 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dev, ptr %parent72, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 32
  %59 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @max8997_haptic_close, ptr %close, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 40, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  call void @input_set_capability(ptr noundef nonnull %call9, i32 noundef 21, i32 noundef 80) #6
  %call73 = call i32 @input_ff_create_memless(ptr noundef nonnull %call9, ptr noundef null, ptr noundef nonnull @max8997_haptic_play_effect) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call73) #9
  br label %err_put_regulator

if.end80:                                         ; preds = %if.end69
  %call81 = call i32 @input_register_device(ptr noundef nonnull %call9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end88, label %do.end86

do.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call81) #9
  call void @input_ff_destroy(ptr noundef nonnull %call9) #6
  br label %err_put_regulator

if.end88:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i169 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %61 = ptrtoint ptr %driver_data.i.i169 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i, ptr %driver_data.i.i169, align 4
  br label %cleanup

err_put_regulator:                                ; preds = %do.end86, %do.end78
  %error.0 = phi i32 [ %call73, %do.end78 ], [ %call81, %do.end86 ]
  %62 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regulator, align 4
  call void @regulator_put(ptr noundef %63) #6
  br label %err_free_pwm

err_free_pwm:                                     ; preds = %err_put_regulator, %if.then62
  %error.1 = phi i32 [ %55, %if.then62 ], [ %error.0, %err_put_regulator ]
  %64 = ptrtoint ptr %mode34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mode34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp = icmp eq i32 %65, 0
  br i1 %cmp, label %if.then91, label %err_free_pwm.err_free_mem_crit_edge

err_free_pwm.err_free_mem_crit_edge:              ; preds = %err_free_pwm
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_mem

if.then91:                                        ; preds = %err_free_pwm
  call void @__sanitizer_cov_trace_pc() #8
  %pwm92 = getelementptr inbounds %struct.max8997_haptic, ptr %call7.i.i, i32 0, i32 8
  %66 = ptrtoint ptr %pwm92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pwm92, align 8
  call void @pwm_free(ptr noundef %67) #6
  br label %err_free_mem

err_free_mem:                                     ; preds = %if.then91, %err_free_pwm.err_free_mem_crit_edge, %do.end55, %if.then44, %do.end15
  %error.2 = phi i32 [ -22, %do.end55 ], [ %45, %if.then44 ], [ %error.1, %if.then91 ], [ %error.1, %err_free_pwm.err_free_mem_crit_edge ], [ -12, %do.end15 ]
  call void @input_free_device(ptr noundef %call9) #6
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end88, %do.end
  %retval.0 = phi i32 [ %error.2, %err_free_mem ], [ 0, %if.end88 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_haptic_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev = getelementptr inbounds %struct.max8997_haptic, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  tail call void @input_unregister_device(ptr noundef %3) #6
  %regulator = getelementptr inbounds %struct.max8997_haptic, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regulator, align 4
  tail call void @regulator_put(ptr noundef %5) #6
  %mode = getelementptr inbounds %struct.max8997_haptic, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pwm = getelementptr inbounds %struct.max8997_haptic, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm, align 4
  tail call void @pwm_free(ptr noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8997_haptic_play_effect_work(ptr noundef %work) #2 align 64 {
entry:
  %state.i.i = alloca %struct.pwm_state, align 8
  %state.i.i.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %level = getelementptr i8, ptr %work, i32 140
  %0 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mutex.i = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %mode.i.i = getelementptr i8, ptr %work, i32 160
  %2 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  %pwm_period.i.i = getelementptr i8, ptr %work, i32 148
  %4 = ptrtoint ptr %pwm_period.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pwm_period.i.i, align 4
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level, align 4
  %pwm.i.i = getelementptr i8, ptr %work, i32 144
  %8 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %9, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i.i.i = icmp slt i32 %5, 0
  %or.cond.i.i.i = or i1 %cmp1.i.i.i, %tobool.not.i.i.i
  br i1 %or.cond.i.i.i, label %max8997_haptic_set_duty_cycle.exit.thread46.i, label %if.end3.i.i.i

max8997_haptic_set_duty_cycle.exit.thread46.i:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i.i) #6
  br label %do.end.i

if.end3.i.i.i:                                    ; preds = %if.then.i.i
  %mul.i.i = mul i32 %7, %5
  %div.i.i = udiv i32 %mul.i.i, 100
  %state1.i.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %9, i32 0, i32 7
  %10 = call ptr @memcpy(ptr %state.i.i.i, ptr %state1.i.i.i.i, i32 24)
  %duty_cycle.i.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %duty_cycle.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %duty_cycle.i.i.i, align 8
  %conv.i28.i.i = zext i32 %div.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv.i28.i.i)
  %cmp4.i.i.i = icmp eq i64 %12, %conv.i28.i.i
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %if.end3.if.end10_crit_edge.i.i.i

if.end3.if.end10_crit_edge.i.i.i:                 ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %.pre.i.i.i = zext i32 %5 to i64
  br label %max8997_haptic_set_duty_cycle.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end3.i.i.i
  %13 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %state.i.i.i, align 8
  %conv621.i.i.i = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %conv621.i.i.i)
  %cmp7.i.i.i = icmp eq i64 %14, %conv621.i.i.i
  br i1 %cmp7.i.i.i, label %max8997_haptic_set_duty_cycle.exit.thread43.i, label %land.lhs.true.i.i.i.max8997_haptic_set_duty_cycle.exit.i_crit_edge

land.lhs.true.i.i.i.max8997_haptic_set_duty_cycle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_haptic_set_duty_cycle.exit.i

max8997_haptic_set_duty_cycle.exit.thread43.i:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i.i) #6
  br label %if.end.i

if.else.i.i:                                      ; preds = %if.then
  %15 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %level, align 4
  %mul3.i.i = shl i32 %16, 6
  %sub.i.i = add i32 %mul3.i.i, 99
  %div4.i.i = udiv i32 %sub.i.i, 100
  %conv.i.i = trunc i32 %div4.i.i to i8
  %internal_mode_pattern.i.i = getelementptr i8, ptr %work, i32 164
  %17 = ptrtoint ptr %internal_mode_pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %internal_mode_pattern.i.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %18, label %if.else.i.i.if.end.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb6.i.i
    i32 2, label %sw.bb9.i.i
    i32 3, label %sw.bb12.i.i
  ]

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

sw.bb.i.i:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %client.i.i = getelementptr i8, ptr %work, i32 -12
  %20 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i.i, align 4
  %call5.i.i = tail call i32 @max8997_write_reg(ptr noundef %21, i8 noundef zeroext 12, i8 noundef zeroext %conv.i.i) #6
  br label %if.end.i

sw.bb6.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %client7.i.i = getelementptr i8, ptr %work, i32 -12
  %22 = ptrtoint ptr %client7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client7.i.i, align 4
  %call8.i.i = tail call i32 @max8997_write_reg(ptr noundef %23, i8 noundef zeroext 13, i8 noundef zeroext %conv.i.i) #6
  br label %if.end.i

sw.bb9.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %client10.i.i = getelementptr i8, ptr %work, i32 -12
  %24 = ptrtoint ptr %client10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client10.i.i, align 4
  %call11.i.i = tail call i32 @max8997_write_reg(ptr noundef %25, i8 noundef zeroext 14, i8 noundef zeroext %conv.i.i) #6
  br label %if.end.i

sw.bb12.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %client13.i.i = getelementptr i8, ptr %work, i32 -12
  %26 = ptrtoint ptr %client13.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client13.i.i, align 4
  %call14.i.i = tail call i32 @max8997_write_reg(ptr noundef %27, i8 noundef zeroext 15, i8 noundef zeroext %conv.i.i) #6
  br label %if.end.i

max8997_haptic_set_duty_cycle.exit.i:             ; preds = %land.lhs.true.i.i.i.max8997_haptic_set_duty_cycle.exit.i_crit_edge, %if.end3.if.end10_crit_edge.i.i.i
  %conv1322.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %if.end3.if.end10_crit_edge.i.i.i ], [ %conv621.i.i.i, %land.lhs.true.i.i.i.max8997_haptic_set_duty_cycle.exit.i_crit_edge ]
  %28 = ptrtoint ptr %duty_cycle.i.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv.i28.i.i, ptr %duty_cycle.i.i.i, align 8
  %29 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv1322.pre-phi.i.i.i, ptr %state.i.i.i, align 8
  %call.i.i.i = call i32 @pwm_apply_state(ptr noundef nonnull %9, ptr noundef nonnull %state.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %max8997_haptic_set_duty_cycle.exit.i.if.end.i_crit_edge, label %max8997_haptic_set_duty_cycle.exit.i.do.end.i_crit_edge

max8997_haptic_set_duty_cycle.exit.i.do.end.i_crit_edge: ; preds = %max8997_haptic_set_duty_cycle.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

max8997_haptic_set_duty_cycle.exit.i.if.end.i_crit_edge: ; preds = %max8997_haptic_set_duty_cycle.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %max8997_haptic_set_duty_cycle.exit.i.do.end.i_crit_edge, %max8997_haptic_set_duty_cycle.exit.thread46.i
  %retval.0.i.i49.i = phi i32 [ -22, %max8997_haptic_set_duty_cycle.exit.thread46.i ], [ %call.i.i.i, %max8997_haptic_set_duty_cycle.exit.i.do.end.i_crit_edge ]
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i.i49.i) #9
  br label %max8997_haptic_enable.exit

if.end.i:                                         ; preds = %max8997_haptic_set_duty_cycle.exit.i.if.end.i_crit_edge, %sw.bb12.i.i, %sw.bb9.i.i, %sw.bb6.i.i, %sw.bb.i.i, %if.else.i.i.if.end.i_crit_edge, %max8997_haptic_set_duty_cycle.exit.thread43.i
  %enabled.i = getelementptr i8, ptr %work, i32 136
  %32 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %enabled.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool1.not.i = icmp eq i8 %33, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.max8997_haptic_enable.exit_crit_edge

if.end.i.max8997_haptic_enable.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_haptic_enable.exit

if.then2.i:                                       ; preds = %if.end.i
  %regulator.i = getelementptr i8, ptr %work, i32 -4
  %34 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regulator.i, align 4
  %call3.i = call i32 @regulator_enable(ptr noundef %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.31) #9
  br label %max8997_haptic_enable.exit

if.end10.i:                                       ; preds = %if.then2.i
  call fastcc void @max8997_haptic_configure(ptr noundef %add.ptr) #6
  %38 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i = icmp eq i32 %39, 0
  br i1 %cmp.i, label %if.then11.i, label %if.end10.i.if.end22.i_crit_edge

if.end10.i.if.end22.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then11.i:                                      ; preds = %if.end10.i
  %pwm.i = getelementptr i8, ptr %work, i32 144
  %40 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pwm.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i) #6
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %pwm_enable.exit.thread52.i, label %if.end.i.i

pwm_enable.exit.thread52.i:                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #6
  br label %do.end17.i

if.end.i.i:                                       ; preds = %if.then11.i
  %state1.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %41, i32 0, i32 7
  %42 = call ptr @memcpy(ptr %state.i.i, ptr %state1.i.i.i, i32 24)
  %enabled.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enabled.i.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool1.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool1.not.i.i, label %pwm_enable.exit.i, label %pwm_enable.exit.thread.i

pwm_enable.exit.thread.i:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #6
  br label %if.end22.i

pwm_enable.exit.i:                                ; preds = %if.end.i.i
  %45 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %enabled.i.i, align 4
  %call.i.i = call i32 @pwm_apply_state(ptr noundef nonnull %41, ptr noundef nonnull %state.i.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i, label %pwm_enable.exit.i.if.end22.i_crit_edge, label %pwm_enable.exit.i.do.end17.i_crit_edge

pwm_enable.exit.i.do.end17.i_crit_edge:           ; preds = %pwm_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i

pwm_enable.exit.i.if.end22.i_crit_edge:           ; preds = %pwm_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

do.end17.i:                                       ; preds = %pwm_enable.exit.i.do.end17.i_crit_edge, %pwm_enable.exit.thread52.i
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.34) #9
  %48 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regulator.i, align 4
  %call20.i = call i32 @regulator_disable(ptr noundef %49) #6
  br label %max8997_haptic_enable.exit

if.end22.i:                                       ; preds = %pwm_enable.exit.i.if.end22.i_crit_edge, %pwm_enable.exit.thread.i, %if.end10.i.if.end22.i_crit_edge
  %50 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %enabled.i, align 4
  br label %max8997_haptic_enable.exit

max8997_haptic_enable.exit:                       ; preds = %if.end22.i, %do.end17.i, %do.end8.i, %if.end.i.max8997_haptic_enable.exit_crit_edge, %do.end.i
  call void @mutex_unlock(ptr noundef %mutex.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @max8997_haptic_disable(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.else, %max8997_haptic_enable.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8997_haptic_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.max8997_haptic, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #6
  tail call fastcc void @max8997_haptic_disable(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_haptic_play_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  %conv = zext i16 %3 to i32
  %level = getelementptr inbounds %struct.max8997_haptic, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %weak_magnitude, align 2
  %conv3 = zext i16 %6 to i32
  %7 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv3, ptr %level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %work = getelementptr inbounds %struct.max8997_haptic, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_ff_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max8997_haptic_disable(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %enabled = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 4
  tail call fastcc void @max8997_haptic_configure(ptr noundef %chip)
  %mode = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 12
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  %pwm = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 8
  %5 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pwm, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #6
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then2.pwm_disable.exit_crit_edge, label %if.end.i

if.then2.pwm_disable.exit_crit_edge:              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_disable.exit

if.end.i:                                         ; preds = %if.then2
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %6, i32 0, i32 7
  %7 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %if.end.i.pwm_disable.exit_crit_edge, label %if.end3.i

if.end.i.pwm_disable.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_disable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %enabled.i, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef nonnull %6, ptr noundef nonnull %state.i) #6
  br label %pwm_disable.exit

pwm_disable.exit:                                 ; preds = %if.end3.i, %if.end.i.pwm_disable.exit_crit_edge, %if.then2.pwm_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #6
  br label %if.end

if.end:                                           ; preds = %pwm_disable.exit, %if.then.if.end_crit_edge
  %regulator = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 3
  %11 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regulator, align 4
  %call = call i32 @regulator_disable(ptr noundef %12) #6
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max8997_haptic_configure(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %shl = shl i32 %1, 7
  %enabled = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !80
  %4 = shl nuw nsw i8 %3, 6
  %shl1 = zext i8 %4 to i32
  %or = or i32 %shl, %shl1
  %mode = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 12
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %shl2 = shl i32 %6, 5
  %or3 = or i32 %or, %shl2
  %pwm_divisor = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 10
  %7 = ptrtoint ptr %pwm_divisor to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pwm_divisor, align 4
  %or4 = or i32 %or3, %8
  %conv5 = trunc i32 %or4 to i8
  %client = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 1
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client, align 4
  %call = tail call i32 @max8997_write_reg(ptr noundef %10, i8 noundef zeroext 2, i8 noundef zeroext %conv5) #6
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enabled, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %internal_mode_pattern = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 13
  %15 = ptrtoint ptr %internal_mode_pattern to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %internal_mode_pattern, align 4
  %shl11 = shl i32 %16, 6
  %shl13 = shl i32 %16, 4
  %shl16 = shl i32 %16, 2
  %or14 = or i32 %shl13, %16
  %or17 = or i32 %or14, %shl11
  %or20 = or i32 %or17, %shl16
  %conv21 = trunc i32 %or20 to i8
  %17 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client, align 4
  %call23 = tail call i32 @max8997_write_reg(ptr noundef %18, i8 noundef zeroext 3, i8 noundef zeroext %conv21) #6
  %19 = ptrtoint ptr %internal_mode_pattern to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %internal_mode_pattern, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %20, label %if.then.if.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 2, label %sw.bb41
    i32 3, label %sw.bb51
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %pattern_cycle = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 14
  %22 = ptrtoint ptr %pattern_cycle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pattern_cycle, align 4
  %.tr97 = trunc i32 %23 to i8
  %conv26 = shl i8 %.tr97, 4
  %24 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client, align 4
  %call28 = tail call i32 @max8997_write_reg(ptr noundef %25, i8 noundef zeroext 4, i8 noundef zeroext %conv26) #6
  br label %if.end.sink.split

sw.bb32:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %pattern_cycle33 = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 14
  %26 = ptrtoint ptr %pattern_cycle33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pattern_cycle33, align 4
  %conv34 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client, align 4
  %call36 = tail call i32 @max8997_write_reg(ptr noundef %29, i8 noundef zeroext 4, i8 noundef zeroext %conv34) #6
  br label %if.end.sink.split

sw.bb41:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %pattern_cycle42 = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 14
  %30 = ptrtoint ptr %pattern_cycle42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pattern_cycle42, align 4
  %.tr = trunc i32 %31 to i8
  %conv44 = shl i8 %.tr, 4
  %32 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client, align 4
  %call46 = tail call i32 @max8997_write_reg(ptr noundef %33, i8 noundef zeroext 5, i8 noundef zeroext %conv44) #6
  br label %if.end.sink.split

sw.bb51:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %pattern_cycle52 = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 14
  %34 = ptrtoint ptr %pattern_cycle52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pattern_cycle52, align 4
  %conv53 = trunc i32 %35 to i8
  %36 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client, align 4
  %call55 = tail call i32 @max8997_write_reg(ptr noundef %37, i8 noundef zeroext 5, i8 noundef zeroext %conv53) #6
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb51, %sw.bb41, %sw.bb32, %sw.bb
  %.sink98 = phi i8 [ 6, %sw.bb ], [ 7, %sw.bb32 ], [ 8, %sw.bb41 ], [ 9, %sw.bb51 ]
  %pattern_signal_period = getelementptr inbounds %struct.max8997_haptic, ptr %chip, i32 0, i32 15
  %38 = ptrtoint ptr %pattern_signal_period to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pattern_signal_period, align 4
  %conv29 = trunc i32 %39 to i8
  %40 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client, align 4
  %call31 = tail call i32 @max8997_write_reg(ptr noundef %41, i8 noundef zeroext %.sink98, i8 noundef zeroext %conv29) #6
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_haptic_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @max8997_haptic_disable(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_max8997_haptic__288_397_max8997_haptic_driver_init6, !1, !"__initcall__kmod_max8997_haptic__288_397_max8997_haptic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/max8997_haptic.c", i32 397, i32 1}
!2 = !{ptr @__exitcall_max8997_haptic_driver_exit, !1, !"__exitcall_max8997_haptic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/max8997_haptic.c", i32 399, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/max8997_haptic.c", i32 400, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/max8997_haptic.c", i32 401, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/max8997_haptic.c", i32 390, i32 11}
!12 = !{ptr @max8997_haptic_driver, !13, !"max8997_haptic_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/max8997_haptic.c", i32 388, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/max8997_haptic.c", i32 248, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max8997_haptic_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max8997_haptic_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/max8997_haptic.c", i32 255, i32 3}
!24 = !{ptr @max8997_haptic_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @max8997_haptic_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @max8997_haptic_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/input/misc/max8997_haptic.c", i32 260, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @max8997_haptic_probe.__key.10, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/input/misc/max8997_haptic.c", i32 261, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/max8997_haptic.c", i32 285, i32 4}
!34 = !{ptr @max8997_haptic_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @max8997_haptic_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/max8997_haptic.c", i32 299, i32 3}
!38 = !{ptr @max8997_haptic_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @max8997_haptic_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/max8997_haptic.c", i32 305, i32 46}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/misc/max8997_haptic.c", i32 308, i32 3}
!44 = !{ptr @max8997_haptic_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @max8997_haptic_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/misc/max8997_haptic.c", i32 324, i32 3}
!48 = !{ptr @max8997_haptic_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @max8997_haptic_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/max8997_haptic.c", i32 332, i32 3}
!52 = !{ptr @max8997_haptic_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @max8997_haptic_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/max8997_haptic.c", i32 160, i32 3}
!56 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @max8997_haptic_enable._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @max8997_haptic_enable._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/misc/max8997_haptic.c", i32 167, i32 4}
!61 = !{ptr @max8997_haptic_enable._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @max8997_haptic_enable._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/misc/max8997_haptic.c", i32 174, i32 5}
!65 = !{ptr @max8997_haptic_enable._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @max8997_haptic_enable._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @max8997_haptic_pm_ops, !68, !"max8997_haptic_pm_ops", i1 false, i1 false}
!68 = !{!"../drivers/input/misc/max8997_haptic.c", i32 380, i32 8}
!69 = !{ptr @max8997_haptic_id, !70, !"max8997_haptic_id", i1 false, i1 false}
!70 = !{!"../drivers/input/misc/max8997_haptic.c", i32 382, i32 40}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}
