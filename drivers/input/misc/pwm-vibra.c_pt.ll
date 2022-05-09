; ModuleID = '/llk/IR_all_yes/drivers/input/misc/pwm-vibra.c_pt.bc'
source_filename = "../drivers/input/misc/pwm-vibra.c"
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
%struct.pwm_vibrator = type { ptr, ptr, ptr, ptr, %struct.work_struct, i16, i32, i8 }
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

@__initcall__kmod_pwm_vibra__288_265_pwm_vibrator_driver_init6 = internal global ptr @pwm_vibrator_driver_init, section ".initcall6.init", align 4
@pwm_vibrator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_vibrator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pwm_vibra_dt_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_vibrator_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwm_vibrator_driver_exit = internal global ptr @pwm_vibrator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [52 x i8] c"pwm_vibra.author=Sebastian Reichel <sre@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [42 x i8] c"pwm_vibra.description=PWM vibrator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [44 x i8] c"pwm_vibra.file=drivers/input/misc/pwm-vibra\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"pwm_vibra.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [38 x i8] c"pwm_vibra.alias=platform:pwm-vibrator\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm-vibrator\00", [19 x i8] zeroinitializer }, align 32
@pwm_vibra_dt_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pwm-vibrator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pwm_vibrator_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pwm_vibrator_suspend, ptr @pwm_vibrator_resume, ptr @pwm_vibrator_suspend, ptr @pwm_vibrator_resume, ptr @pwm_vibrator_suspend, ptr @pwm_vibrator_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@pwm_vibrator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request regulator: %d\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm_vibrator_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/input/misc/pwm-vibra.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_vibrator_probe._entry_ptr = internal global ptr @pwm_vibrator_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@pwm_vibrator_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 150, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request main pwm: %d\00", [33 x i8] zeroinitializer }, align 32
@pwm_vibrator_probe._entry_ptr.10 = internal global ptr @pwm_vibrator_probe._entry.8, section ".printk_index", align 4
@pwm_vibrator_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&vibrator->play_work)\00", [56 x i8] zeroinitializer }, align 32
@pwm_vibrator_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 162, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to apply initial PWM state: %d\00", [58 x i8] zeroinitializer }, align 32
@pwm_vibrator_probe._entry_ptr.14 = internal global ptr @pwm_vibrator_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"direction\00", [22 x i8] zeroinitializer }, align 32
@pwm_vibrator_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pwm_vibrator_probe._entry_ptr.17 = internal global ptr @pwm_vibrator_probe._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"direction-duty-cycle-ns\00", [40 x i8] zeroinitializer }, align 32
@pwm_vibrator_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 192, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request direction pwm: %d\00", [60 x i8] zeroinitializer }, align 32
@pwm_vibrator_probe._entry_ptr.21 = internal global ptr @pwm_vibrator_probe._entry.19, section ".printk_index", align 4
@pwm_vibrator_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't create FF dev: %d\00", [37 x i8] zeroinitializer }, align 32
@pwm_vibrator_probe._entry_ptr.24 = internal global ptr @pwm_vibrator_probe._entry.22, section ".printk_index", align 4
@pwm_vibrator_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 216, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't register input dev: %d\00", [32 x i8] zeroinitializer }, align 32
@pwm_vibrator_probe._entry_ptr.27 = internal global ptr @pwm_vibrator_probe._entry.25, section ".printk_index", align 4
@pwm_vibrator_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 45, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable regulator: %d\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm_vibrator_start\00", [45 x i8] zeroinitializer }, align 32
@pwm_vibrator_start._entry_ptr = internal global ptr @pwm_vibrator_start._entry, section ".printk_index", align 4
@pwm_vibrator_start._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 57, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to apply pwm state: %d\00", [34 x i8] zeroinitializer }, align 32
@pwm_vibrator_start._entry_ptr.32 = internal global ptr @pwm_vibrator_start._entry.30, section ".printk_index", align 4
@pwm_vibrator_start._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.4, i32 68, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to apply dir-pwm state: %d\00", [62 x i8] zeroinitializer }, align 32
@pwm_vibrator_start._entry_ptr.35 = internal global ptr @pwm_vibrator_start._entry.33, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966779, i64 4294967235]
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"pwm_vibrator_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 257, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 260, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [25 x i8] c"pwm_vibra_dt_match_table\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 250, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"pwm_vibrator_pm_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 246, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 136, i32 49 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 140, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 145, i32 43 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 149, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 154, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 161, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 166, i32 47 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 175, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 182, i32 40 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 192, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 210, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 216, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 45, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 57, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [34 x i8] c"../drivers/input/misc/pwm-vibra.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 68, i32 4 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pwm_vibrator_driver_exit, ptr @__initcall__kmod_pwm_vibra__288_265_pwm_vibrator_driver_init6, ptr @pwm_vibrator_driver_exit, ptr @pwm_vibrator_probe._entry, ptr @pwm_vibrator_probe._entry.12, ptr @pwm_vibrator_probe._entry.16, ptr @pwm_vibrator_probe._entry.19, ptr @pwm_vibrator_probe._entry.22, ptr @pwm_vibrator_probe._entry.25, ptr @pwm_vibrator_probe._entry.8, ptr @pwm_vibrator_probe._entry_ptr, ptr @pwm_vibrator_probe._entry_ptr.10, ptr @pwm_vibrator_probe._entry_ptr.14, ptr @pwm_vibrator_probe._entry_ptr.17, ptr @pwm_vibrator_probe._entry_ptr.21, ptr @pwm_vibrator_probe._entry_ptr.24, ptr @pwm_vibrator_probe._entry_ptr.27, ptr @pwm_vibrator_start._entry, ptr @pwm_vibrator_start._entry.30, ptr @pwm_vibrator_start._entry.33, ptr @pwm_vibrator_start._entry_ptr, ptr @pwm_vibrator_start._entry_ptr.32, ptr @pwm_vibrator_start._entry_ptr.35, ptr @pwm_vibrator_driver, ptr @.str, ptr @pwm_vibra_dt_match_table, ptr @pwm_vibrator_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @pwm_vibrator_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibra_dt_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_start._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_vibrator_start._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_vibrator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_vibrator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_vibrator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_vibrator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_vibrator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %state = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %vcc = getelementptr inbounds %struct.pwm_vibrator, ptr %call.i, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %spec.select.i) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %call18 = tail call ptr @devm_pwm_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #5
  %pwm = getelementptr inbounds %struct.pwm_vibrator, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %pwm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call18, ptr %pwm, align 4
  %cmp.i.i172 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %call18 to i32
  %spec.select.i173 = select i1 %cmp.i.i172, i32 %5, i32 0
  %6 = zext i32 %spec.select.i173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %spec.select.i173, label %do.end27 [
    i32 0, label %do.body31
    i32 -517, label %if.end16.cleanup_crit_edge
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end27:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %spec.select.i173) #8
  br label %cleanup

do.body31:                                        ; preds = %if.end16
  %play_work = getelementptr inbounds %struct.pwm_vibrator, ptr %call.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %play_work, i32 noundef 0) #5
  %7 = ptrtoint ptr %play_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %play_work, align 4
  %lockdep_map = getelementptr inbounds %struct.pwm_vibrator, ptr %call.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @pwm_vibrator_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry35 = getelementptr inbounds %struct.pwm_vibrator, ptr %call.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry35, ptr %entry35, align 4
  %prev.i = getelementptr inbounds %struct.pwm_vibrator, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry35, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.pwm_vibrator, ptr %call.i, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pwm_vibrator_play_work, ptr %func, align 4
  %11 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pwm, align 4
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %12, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %state, ptr %state1.i.i, i32 24)
  %args1.i.i = getelementptr inbounds %struct.pwm_device, ptr %12, i32 0, i32 6
  %14 = ptrtoint ptr %args1.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %args.sroa.0.0.copyload8.i = load i64, ptr %args1.i.i, align 8
  %args.sroa.5.0.args1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %12, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %args.sroa.5.0.copyload9.i = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i, align 8
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %args.sroa.0.0.copyload8.i, ptr %state, align 8
  %polarity2.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %17 = ptrtoint ptr %polarity2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %args.sroa.5.0.copyload9.i, ptr %polarity2.i, align 8
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %18 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %duty_cycle.i, align 8
  %usage_power.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 4
  %19 = ptrtoint ptr %usage_power.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %usage_power.i, align 1
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %enabled, align 4
  %call41 = call i32 @pwm_apply_state(ptr noundef %12, ptr noundef nonnull %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call41) #8
  br label %cleanup

if.end48:                                         ; preds = %do.body31
  %call50 = call ptr @devm_pwm_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #5
  %pwm_dir = getelementptr inbounds %struct.pwm_vibrator, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %pwm_dir to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call50, ptr %pwm_dir, align 4
  %cmp.i.i174 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %call50 to i32
  %spec.select.i175 = select i1 %cmp.i.i174, i32 %22, i32 0
  %23 = zext i32 %spec.select.i175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %spec.select.i175, label %do.end73 [
    i32 0, label %sw.bb
    i32 -61, label %sw.bb69
    i32 -517, label %if.end48.cleanup_crit_edge
  ]

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end48
  %state1.i.i176 = getelementptr inbounds %struct.pwm_device, ptr %call50, i32 0, i32 7
  %24 = call ptr @memcpy(ptr %state, ptr %state1.i.i176, i32 24)
  %args1.i.i177 = getelementptr inbounds %struct.pwm_device, ptr %call50, i32 0, i32 6
  %25 = ptrtoint ptr %args1.i.i177 to i32
  call void @__asan_load8_noabort(i32 %25)
  %args.sroa.0.0.copyload8.i178 = load i64, ptr %args1.i.i177, align 8
  %args.sroa.5.0.args1.i.sroa_idx.i179 = getelementptr inbounds %struct.pwm_device, ptr %call50, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i179 to i32
  call void @__asan_load4_noabort(i32 %26)
  %args.sroa.5.0.copyload9.i180 = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i179, align 8
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %args.sroa.0.0.copyload8.i178, ptr %state, align 8
  %28 = ptrtoint ptr %polarity2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %args.sroa.5.0.copyload9.i180, ptr %polarity2.i, align 8
  %29 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %duty_cycle.i, align 8
  %30 = ptrtoint ptr %usage_power.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %usage_power.i, align 1
  %31 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %enabled, align 4
  %call56 = call i32 @pwm_apply_state(ptr noundef %call50, ptr noundef nonnull %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call56) #8
  br label %cleanup

if.end63:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %pwm_dir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pwm_dir, align 4
  %state1.i.i184 = getelementptr inbounds %struct.pwm_device, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %state1.i.i184 to i32
  call void @__asan_load8_noabort(i32 %34)
  %state.sroa.0.0.copyload1.i = load i64, ptr %state1.i.i184, align 8
  %div171 = lshr i64 %state.sroa.0.0.copyload1.i, 1
  %conv = trunc i64 %div171 to i32
  %direction_duty_cycle = getelementptr inbounds %struct.pwm_vibrator, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %direction_duty_cycle to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv, ptr %direction_duty_cycle, align 4
  %call.i185 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %direction_duty_cycle, i32 noundef 1) #5
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %pwm_dir to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %pwm_dir, align 4
  br label %sw.epilog

do.end73:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %spec.select.i175) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb69, %if.end63
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str, ptr %38, align 8
  %40 = load ptr, ptr %call.i, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 25, ptr %id, align 4
  %42 = load ptr, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 40, i32 1
  %43 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev, ptr %parent, align 8
  %44 = load ptr, ptr %call.i, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 32
  %45 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @pwm_vibrator_close, ptr %close, align 4
  %46 = load ptr, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %46, i32 0, i32 40, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %48 = load ptr, ptr %call.i, align 4
  call void @input_set_capability(ptr noundef %48, i32 noundef 21, i32 noundef 80) #5
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %call85 = call i32 @input_ff_create_memless(ptr noundef %50, ptr noundef null, ptr noundef nonnull @pwm_vibrator_play_effect) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end92, label %do.end90

do.end90:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call85) #8
  br label %cleanup

if.end92:                                         ; preds = %sw.epilog
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %call94 = call i32 @input_register_device(ptr noundef %52) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end101, label %do.end99

do.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call94) #8
  br label %cleanup

if.end101:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i186 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %driver_data.i.i186 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i186, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %do.end99, %do.end90, %do.end73, %do.end61, %if.end48.cleanup_crit_edge, %do.end46, %do.end27, %if.end16.cleanup_crit_edge, %do.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %do.end46 ], [ %call85, %do.end90 ], [ %call94, %do.end99 ], [ 0, %if.end101 ], [ %call56, %do.end61 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %spec.select.i, %if.end6.cleanup_crit_edge ], [ %spec.select.i, %do.end ], [ %spec.select.i173, %if.end16.cleanup_crit_edge ], [ %spec.select.i173, %do.end27 ], [ %spec.select.i175, %if.end48.cleanup_crit_edge ], [ %spec.select.i175, %do.end73 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_vibrator_play_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  %state.i11.i = alloca %struct.pwm_state, align 8
  %state.i.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %level = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  tail call fastcc void @pwm_vibrator_start(ptr noundef %add.ptr)
  br label %if.end

if.else:                                          ; preds = %entry
  %pwm_dir.i = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %pwm_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwm_dir.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %if.end.i.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i) #5
  %state1.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %state.i.i, ptr %state1.i.i.i, i32 24)
  %enabled.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled.i.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.pwm_disable.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.pwm_disable.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %enabled.i.i, align 4
  %call.i.i = call i32 @pwm_apply_state(ptr noundef nonnull %3, ptr noundef nonnull %state.i.i) #5
  br label %pwm_disable.exit.i

pwm_disable.exit.i:                               ; preds = %if.end3.i.i, %if.end.i.i.pwm_disable.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %pwm_disable.exit.i, %if.else.if.end.i_crit_edge
  %pwm.i = getelementptr i8, ptr %work, i32 -12
  %8 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i11.i) #5
  %tobool.not.i12.i = icmp eq ptr %9, null
  br i1 %tobool.not.i12.i, label %if.end.i.pwm_disable.exit19.i_crit_edge, label %if.end.i16.i

if.end.i.pwm_disable.exit19.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit19.i

if.end.i16.i:                                     ; preds = %if.end.i
  %state1.i.i13.i = getelementptr inbounds %struct.pwm_device, ptr %9, i32 0, i32 7
  %10 = call ptr @memcpy(ptr %state.i11.i, ptr %state1.i.i13.i, i32 24)
  %enabled.i14.i = getelementptr inbounds %struct.pwm_state, ptr %state.i11.i, i32 0, i32 3
  %11 = ptrtoint ptr %enabled.i14.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enabled.i14.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i15.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i15.i, label %if.end.i16.i.pwm_disable.exit19.i_crit_edge, label %if.end3.i18.i

if.end.i16.i.pwm_disable.exit19.i_crit_edge:      ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit19.i

if.end3.i18.i:                                    ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %enabled.i14.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %enabled.i14.i, align 4
  %call.i17.i = call i32 @pwm_apply_state(ptr noundef nonnull %9, ptr noundef nonnull %state.i11.i) #5
  br label %pwm_disable.exit19.i

pwm_disable.exit19.i:                             ; preds = %if.end3.i18.i, %if.end.i16.i.pwm_disable.exit19.i_crit_edge, %if.end.i.pwm_disable.exit19.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i11.i) #5
  %vcc_on.i = getelementptr i8, ptr %work, i32 52
  %14 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vcc_on.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not.i = icmp eq i8 %15, 0
  br i1 %tobool2.not.i, label %pwm_disable.exit19.i.if.end_crit_edge, label %if.then3.i

pwm_disable.exit19.i.if.end_crit_edge:            ; preds = %pwm_disable.exit19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3.i:                                       ; preds = %pwm_disable.exit19.i
  call void @__sanitizer_cov_trace_pc() #7
  %vcc.i = getelementptr i8, ptr %work, i32 -4
  %16 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vcc.i, align 4
  %call.i = call i32 @regulator_disable(ptr noundef %17) #5
  %18 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %vcc_on.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %pwm_disable.exit19.i.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_vibrator_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  %state.i11.i = alloca %struct.pwm_state, align 8
  %state.i.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %play_work = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %play_work) #5
  %pwm_dir.i = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pwm_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwm_dir.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.end.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i) #5
  %state1.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %state.i.i, ptr %state1.i.i.i, i32 24)
  %enabled.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled.i.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.pwm_disable.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.pwm_disable.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %enabled.i.i, align 4
  %call.i.i = call i32 @pwm_apply_state(ptr noundef nonnull %3, ptr noundef nonnull %state.i.i) #5
  br label %pwm_disable.exit.i

pwm_disable.exit.i:                               ; preds = %if.end3.i.i, %if.end.i.i.pwm_disable.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %pwm_disable.exit.i, %entry.if.end.i_crit_edge
  %pwm.i = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i11.i) #5
  %tobool.not.i12.i = icmp eq ptr %9, null
  br i1 %tobool.not.i12.i, label %if.end.i.pwm_disable.exit19.i_crit_edge, label %if.end.i16.i

if.end.i.pwm_disable.exit19.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit19.i

if.end.i16.i:                                     ; preds = %if.end.i
  %state1.i.i13.i = getelementptr inbounds %struct.pwm_device, ptr %9, i32 0, i32 7
  %10 = call ptr @memcpy(ptr %state.i11.i, ptr %state1.i.i13.i, i32 24)
  %enabled.i14.i = getelementptr inbounds %struct.pwm_state, ptr %state.i11.i, i32 0, i32 3
  %11 = ptrtoint ptr %enabled.i14.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enabled.i14.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i15.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i15.i, label %if.end.i16.i.pwm_disable.exit19.i_crit_edge, label %if.end3.i18.i

if.end.i16.i.pwm_disable.exit19.i_crit_edge:      ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit19.i

if.end3.i18.i:                                    ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %enabled.i14.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %enabled.i14.i, align 4
  %call.i17.i = call i32 @pwm_apply_state(ptr noundef nonnull %9, ptr noundef nonnull %state.i11.i) #5
  br label %pwm_disable.exit19.i

pwm_disable.exit19.i:                             ; preds = %if.end3.i18.i, %if.end.i16.i.pwm_disable.exit19.i_crit_edge, %if.end.i.pwm_disable.exit19.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i11.i) #5
  %vcc_on.i = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vcc_on.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not.i = icmp eq i8 %15, 0
  br i1 %tobool2.not.i, label %pwm_disable.exit19.i.pwm_vibrator_stop.exit_crit_edge, label %if.then3.i

pwm_disable.exit19.i.pwm_vibrator_stop.exit_crit_edge: ; preds = %pwm_disable.exit19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_vibrator_stop.exit

if.then3.i:                                       ; preds = %pwm_disable.exit19.i
  call void @__sanitizer_cov_trace_pc() #7
  %vcc.i = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vcc.i, align 4
  %call.i = call i32 @regulator_disable(ptr noundef %17) #5
  %18 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %vcc_on.i, align 4
  br label %pwm_vibrator_stop.exit

pwm_vibrator_stop.exit:                           ; preds = %if.then3.i, %pwm_disable.exit19.i.pwm_vibrator_stop.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_vibrator_play_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
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
  %level = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %level to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %weak_magnitude, align 2
  %7 = ptrtoint ptr %level to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %play_work = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %play_work) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pwm_vibrator_start(ptr nocapture noundef %vibrator) unnamed_addr #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  %state = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vibrator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vibrator, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #5
  %vcc_on = getelementptr inbounds %struct.pwm_vibrator, ptr %vibrator, i32 0, i32 7
  %4 = ptrtoint ptr %vcc_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vcc_on, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %vcc = getelementptr inbounds %struct.pwm_vibrator, ptr %vibrator, i32 0, i32 3
  %6 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vcc, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %vcc_on to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %vcc_on, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %pwm = getelementptr inbounds %struct.pwm_vibrator, ptr %vibrator, i32 0, i32 1
  %9 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwm, align 4
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %10, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %state, ptr %state1.i, i32 24)
  %level = getelementptr inbounds %struct.pwm_vibrator, ptr %vibrator, i32 0, i32 5
  %12 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %level, align 4
  %conv.i = zext i16 %13 to i64
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %state, align 8
  %mul.i = mul i64 %15, %conv.i
  %add.i = add i64 %mul.i, 32767
  %16 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 281479271743489, i64 %add.i, i64 281479271743489) #9, !srcloc !85
  %17 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 281479271743489, i64 %add.i, i64 %16) #9, !srcloc !86
  %duty_cycle191.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %18 = ptrtoint ptr %duty_cycle191.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %duty_cycle191.i, align 8
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %19 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %enabled, align 4
  %call7 = call i32 @pwm_apply_state(ptr noundef %10, ptr noundef nonnull %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %call7) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %pwm_dir = getelementptr inbounds %struct.pwm_vibrator, ptr %vibrator, i32 0, i32 2
  %20 = ptrtoint ptr %pwm_dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pwm_dir, align 4
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %state1.i1 = getelementptr inbounds %struct.pwm_device, ptr %21, i32 0, i32 7
  %22 = call ptr @memcpy(ptr %state, ptr %state1.i1, i32 24)
  %direction_duty_cycle = getelementptr inbounds %struct.pwm_vibrator, ptr %vibrator, i32 0, i32 6
  %23 = ptrtoint ptr %direction_duty_cycle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %direction_duty_cycle, align 4
  %conv17 = zext i32 %24 to i64
  %25 = ptrtoint ptr %duty_cycle191.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv17, ptr %duty_cycle191.i, align 8
  %26 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %enabled, align 4
  %call20 = call i32 @pwm_apply_state(ptr noundef nonnull %21, ptr noundef nonnull %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then15.cleanup_crit_edge, label %do.end25

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end25:                                         ; preds = %if.then15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %call20) #8
  %27 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pwm, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #5
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %do.end25.pwm_disable.exit_crit_edge, label %if.end.i

do.end25.pwm_disable.exit_crit_edge:              ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit

if.end.i:                                         ; preds = %do.end25
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %28, i32 0, i32 7
  %29 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %30 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enabled.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool1.not.i = icmp eq i8 %31, 0
  br i1 %tobool1.not.i, label %if.end.i.pwm_disable.exit_crit_edge, label %if.end3.i

if.end.i.pwm_disable.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %enabled.i, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef nonnull %28, ptr noundef nonnull %state.i) #5
  br label %pwm_disable.exit

pwm_disable.exit:                                 ; preds = %if.end3.i, %if.end.i.pwm_disable.exit_crit_edge, %do.end25.pwm_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #5
  br label %cleanup

cleanup:                                          ; preds = %pwm_disable.exit, %if.then15.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end12, %do.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_vibrator_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %state.i11.i = alloca %struct.pwm_state, align 8
  %state.i.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %play_work = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %play_work) #5
  %level = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %pwm_dir.i = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pwm_dir.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwm_dir.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.end.i.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i) #5
  %state1.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %state.i.i, ptr %state1.i.i.i, i32 24)
  %enabled.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled.i.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.pwm_disable.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.pwm_disable.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %enabled.i.i, align 4
  %call.i.i = call i32 @pwm_apply_state(ptr noundef nonnull %5, ptr noundef nonnull %state.i.i) #5
  br label %pwm_disable.exit.i

pwm_disable.exit.i:                               ; preds = %if.end3.i.i, %if.end.i.i.pwm_disable.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %pwm_disable.exit.i, %if.then.if.end.i_crit_edge
  %pwm.i = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pwm.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i11.i) #5
  %tobool.not.i12.i = icmp eq ptr %11, null
  br i1 %tobool.not.i12.i, label %if.end.i.pwm_disable.exit19.i_crit_edge, label %if.end.i16.i

if.end.i.pwm_disable.exit19.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit19.i

if.end.i16.i:                                     ; preds = %if.end.i
  %state1.i.i13.i = getelementptr inbounds %struct.pwm_device, ptr %11, i32 0, i32 7
  %12 = call ptr @memcpy(ptr %state.i11.i, ptr %state1.i.i13.i, i32 24)
  %enabled.i14.i = getelementptr inbounds %struct.pwm_state, ptr %state.i11.i, i32 0, i32 3
  %13 = ptrtoint ptr %enabled.i14.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enabled.i14.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i15.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i15.i, label %if.end.i16.i.pwm_disable.exit19.i_crit_edge, label %if.end3.i18.i

if.end.i16.i.pwm_disable.exit19.i_crit_edge:      ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit19.i

if.end3.i18.i:                                    ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %enabled.i14.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %enabled.i14.i, align 4
  %call.i17.i = call i32 @pwm_apply_state(ptr noundef nonnull %11, ptr noundef nonnull %state.i11.i) #5
  br label %pwm_disable.exit19.i

pwm_disable.exit19.i:                             ; preds = %if.end3.i18.i, %if.end.i16.i.pwm_disable.exit19.i_crit_edge, %if.end.i.pwm_disable.exit19.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i11.i) #5
  %vcc_on.i = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vcc_on.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not.i = icmp eq i8 %17, 0
  br i1 %tobool2.not.i, label %pwm_disable.exit19.i.if.end_crit_edge, label %if.then3.i

pwm_disable.exit19.i.if.end_crit_edge:            ; preds = %pwm_disable.exit19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3.i:                                       ; preds = %pwm_disable.exit19.i
  call void @__sanitizer_cov_trace_pc() #7
  %vcc.i = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vcc.i, align 4
  %call.i = call i32 @regulator_disable(ptr noundef %19) #5
  %20 = ptrtoint ptr %vcc_on.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %vcc_on.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %pwm_disable.exit19.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_vibrator_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %level = getelementptr inbounds %struct.pwm_vibrator, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @pwm_vibrator_start(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_pwm_vibra__288_265_pwm_vibrator_driver_init6, !1, !"__initcall__kmod_pwm_vibra__288_265_pwm_vibrator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/pwm-vibra.c", i32 265, i32 1}
!2 = !{ptr @__exitcall_pwm_vibrator_driver_exit, !1, !"__exitcall_pwm_vibrator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/pwm-vibra.c", i32 267, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/pwm-vibra.c", i32 268, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/pwm-vibra.c", i32 269, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/pwm-vibra.c", i32 270, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/pwm-vibra.c", i32 260, i32 11}
!14 = !{ptr @pwm_vibrator_driver, !15, !"pwm_vibrator_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/pwm-vibra.c", i32 257, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/pwm-vibra.c", i32 136, i32 49}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/misc/pwm-vibra.c", i32 140, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pwm_vibrator_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @pwm_vibrator_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/misc/pwm-vibra.c", i32 145, i32 43}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/pwm-vibra.c", i32 149, i32 4}
!30 = !{ptr @pwm_vibrator_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pwm_vibrator_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @pwm_vibrator_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/pwm-vibra.c", i32 154, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/misc/pwm-vibra.c", i32 161, i32 3}
!37 = !{ptr @pwm_vibrator_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pwm_vibrator_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/misc/pwm-vibra.c", i32 166, i32 47}
!41 = !{ptr @pwm_vibrator_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/input/misc/pwm-vibra.c", i32 175, i32 4}
!43 = !{ptr @pwm_vibrator_probe._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/misc/pwm-vibra.c", i32 182, i32 40}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/misc/pwm-vibra.c", i32 192, i32 3}
!48 = !{ptr @pwm_vibrator_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pwm_vibrator_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/pwm-vibra.c", i32 210, i32 3}
!52 = !{ptr @pwm_vibrator_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pwm_vibrator_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/pwm-vibra.c", i32 216, i32 3}
!56 = !{ptr @pwm_vibrator_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pwm_vibrator_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/misc/pwm-vibra.c", i32 45, i32 4}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @pwm_vibrator_start._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @pwm_vibrator_start._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/misc/pwm-vibra.c", i32 57, i32 3}
!65 = !{ptr @pwm_vibrator_start._entry.30, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pwm_vibrator_start._entry_ptr.32, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/misc/pwm-vibra.c", i32 68, i32 4}
!69 = !{ptr @pwm_vibrator_start._entry.33, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @pwm_vibrator_start._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @pwm_vibra_dt_match_table, !72, !"pwm_vibra_dt_match_table", i1 false, i1 false}
!72 = !{!"../drivers/input/misc/pwm-vibra.c", i32 250, i32 34}
!73 = !{ptr @pwm_vibrator_pm_ops, !74, !"pwm_vibrator_pm_ops", i1 false, i1 false}
!74 = !{!"../drivers/input/misc/pwm-vibra.c", i32 246, i32 8}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i8 0, i8 2}
!85 = !{i64 536237, i64 536264}
!86 = !{i64 536577, i64 536604, i64 536638, i64 536659}
