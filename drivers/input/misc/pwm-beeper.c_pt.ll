; ModuleID = '/llk/IR_all_yes/drivers/input/misc/pwm-beeper.c_pt.bc'
source_filename = "../drivers/input/misc/pwm-beeper.c"
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
%struct.atomic_t = type { i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pwm_beeper = type { ptr, ptr, ptr, %struct.work_struct, i32, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_pwm_beeper__290_257_pwm_beeper_driver_init6 = internal global ptr @pwm_beeper_driver_init, section ".initcall6.init", align 4
@pwm_beeper_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_beeper_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pwm_beeper_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_beeper_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwm_beeper_driver_exit = internal global ptr @pwm_beeper_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [55 x i8] c"pwm_beeper.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [41 x i8] c"pwm_beeper.description=PWM beeper driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [46 x i8] c"pwm_beeper.file=drivers/input/misc/pwm-beeper\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"pwm_beeper.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [37 x i8] c"pwm_beeper.alias=platform:pwm-beeper\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm-beeper\00", [21 x i8] zeroinitializer }, align 32
@pwm_beeper_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pwm-beeper\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pwm_beeper_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pwm_beeper_suspend, ptr @pwm_beeper_resume, ptr @pwm_beeper_suspend, ptr @pwm_beeper_resume, ptr @pwm_beeper_suspend, ptr @pwm_beeper_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pwm_beeper_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request PWM device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm_beeper_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/misc/pwm-beeper.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_beeper_probe._entry_ptr = internal global ptr @pwm_beeper_probe._entry, section ".printk_index", align 4
@pwm_beeper_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to apply initial PWM state: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pwm_beeper_probe._entry_ptr.8 = internal global ptr @pwm_beeper_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"amp\00", [28 x i8] zeroinitializer }, align 32
@pwm_beeper_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get 'amp' regulator: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@pwm_beeper_probe._entry_ptr.12 = internal global ptr @pwm_beeper_probe._entry.10, section ".printk_index", align 4
@pwm_beeper_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&beeper->work)\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"beeper-hz\00", [22 x i8] zeroinitializer }, align 32
@pwm_beeper_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm_beeper\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"failed to parse 'beeper-hz' property, using default: %uHz\0A\00", [37 x i8] zeroinitializer }, align 32
@pwm_beeper_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@pwm_beeper_probe._entry_ptr.19 = internal global ptr @pwm_beeper_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm/input0\00", [21 x i8] zeroinitializer }, align 32
@pwm_beeper_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pwm_beeper_probe._entry_ptr.23 = internal global ptr @pwm_beeper_probe._entry.21, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"pwm_beeper_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 249, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 252, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"pwm_beeper_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 242, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"pwm_beeper_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 238, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 138, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 148, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 153, i32 46 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 157, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 162, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 164, i32 40 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 167, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 176, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 181, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [35 x i8] c"../drivers/input/misc/pwm-beeper.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 197, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_pwm_beeper_driver_exit, ptr @__initcall__kmod_pwm_beeper__290_257_pwm_beeper_driver_init6, ptr @pwm_beeper_driver_exit, ptr @pwm_beeper_probe._entry, ptr @pwm_beeper_probe._entry.10, ptr @pwm_beeper_probe._entry.17, ptr @pwm_beeper_probe._entry.21, ptr @pwm_beeper_probe._entry.6, ptr @pwm_beeper_probe._entry_ptr, ptr @pwm_beeper_probe._entry_ptr.12, ptr @pwm_beeper_probe._entry_ptr.19, ptr @pwm_beeper_probe._entry_ptr.23, ptr @pwm_beeper_probe._entry_ptr.8, ptr @pwm_beeper_driver, ptr @.str, ptr @pwm_beeper_match, ptr @pwm_beeper_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @pwm_beeper_probe.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_beeper_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_beeper_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_beeper_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_beeper_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_beeper_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_beeper_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_beeper_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_beeper_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_beeper_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_beeper_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_beeper_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_beeper_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_beeper_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_beeper_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %state = alloca %struct.pwm_state, align 8
  %bell_frequency = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bell_frequency) #5
  %0 = ptrtoint ptr %bell_frequency to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bell_frequency, align 4, !annotation !66
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_pwm_get(ptr noundef %dev1, ptr noundef null) #5
  %pwm = getelementptr inbounds %struct.pwm_beeper, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %pwm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %pwm, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call2, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then5.cleanup_crit_edge, label %do.end

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %2) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %call2, i32 0, i32 7
  %3 = call ptr @memcpy(ptr %state, ptr %state1.i.i, i32 24)
  %args1.i.i = getelementptr inbounds %struct.pwm_device, ptr %call2, i32 0, i32 6
  %4 = ptrtoint ptr %args1.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %args.sroa.0.0.copyload8.i = load i64, ptr %args1.i.i, align 8
  %args.sroa.5.0.args1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %call2, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %args.sroa.5.0.copyload9.i = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i, align 8
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %args.sroa.0.0.copyload8.i, ptr %state, align 8
  %polarity2.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %polarity2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %args.sroa.5.0.copyload9.i, ptr %polarity2.i, align 8
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %duty_cycle.i, align 8
  %usage_power.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 4
  %9 = ptrtoint ptr %usage_power.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %usage_power.i, align 1
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %enabled, align 4
  %call13 = call i32 @pwm_apply_state(ptr noundef %call2, ptr noundef nonnull %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end19, label %do.end18

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call13) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %call20 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #5
  %amplifier = getelementptr inbounds %struct.pwm_beeper, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %amplifier to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %amplifier, align 4
  %cmp.i142 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then23, label %do.body33

if.then23:                                        ; preds = %if.end19
  %cmp26.not = icmp eq ptr %call20, inttoptr (i32 -517 to ptr)
  br i1 %cmp26.not, label %if.then23.cleanup_crit_edge, label %do.end30

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %12) #8
  br label %cleanup

do.body33:                                        ; preds = %if.end19
  %work = getelementptr inbounds %struct.pwm_beeper, ptr %call.i, i32 0, i32 3
  call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %13 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.pwm_beeper, ptr %call.i, i32 0, i32 3, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @pwm_beeper_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry37 = getelementptr inbounds %struct.pwm_beeper, ptr %call.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry37, ptr %entry37, align 4
  %prev.i = getelementptr inbounds %struct.pwm_beeper, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry37, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.pwm_beeper, ptr %call.i, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @pwm_beeper_work, ptr %func, align 4
  %call.i143 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull %bell_frequency, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool42.not = icmp eq i32 %call.i143, 0
  br i1 %tobool42.not, label %do.body33.if.end53_crit_edge, label %if.then43

do.body33.if.end53_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then43:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %bell_frequency to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1000, ptr %bell_frequency, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_beeper_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_beeper_probe, %if.then49)) #5
          to label %if.end53 [label %if.then49], !srcloc !67

if.then49:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %bell_frequency to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bell_frequency, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_beeper_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %19) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.then43, %do.body33.if.end53_crit_edge
  %20 = ptrtoint ptr %bell_frequency to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bell_frequency, align 4
  %bell_frequency54 = getelementptr inbounds %struct.pwm_beeper, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %bell_frequency54 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bell_frequency54, align 4
  %call55 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #5
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call55, ptr %call.i, align 4
  %tobool57.not = icmp eq ptr %call55, null
  br i1 %tobool57.not, label %do.end61, label %if.end62

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end62:                                         ; preds = %if.end53
  %24 = ptrtoint ptr %call55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str, ptr %call55, align 8
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %phys = getelementptr inbounds %struct.input_dev, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.20, ptr %phys, align 4
  %28 = load ptr, ptr %call.i, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 25, ptr %id, align 4
  %30 = load ptr, ptr %call.i, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 31, ptr %vendor, align 2
  %32 = load ptr, ptr %call.i, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %product, align 4
  %34 = load ptr, ptr %call.i, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 256, ptr %version, align 2
  %36 = load ptr, ptr %call.i, align 4
  call void @input_set_capability(ptr noundef %36, i32 noundef 18, i32 noundef 2) #5
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  call void @input_set_capability(ptr noundef %38, i32 noundef 18, i32 noundef 1) #5
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %event = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 34
  %41 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @pwm_beeper_event, ptr %event, align 4
  %42 = load ptr, ptr %call.i, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 32
  %43 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @pwm_beeper_close, ptr %close, align 4
  %44 = load ptr, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 40, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %46 = load ptr, ptr %call.i, align 4
  %call78 = call i32 @input_register_device(ptr noundef %46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end84, label %do.end83

do.end83:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call78) #8
  br label %cleanup

if.end84:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i144 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i144 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i144, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %do.end83, %do.end61, %do.end30, %if.then23.cleanup_crit_edge, %do.end18, %do.end, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %do.end18 ], [ %call78, %do.end83 ], [ 0, %if.end84 ], [ -12, %do.end61 ], [ -12, %entry.cleanup_crit_edge ], [ %2, %do.end ], [ -517, %if.then5.cleanup_crit_edge ], [ %12, %do.end30 ], [ -517, %if.then23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bell_frequency) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_beeper_work(ptr noundef %work) #2 align 64 {
entry:
  %state.i.i6 = alloca %struct.pwm_state, align 8
  %state.i.i = alloca %struct.pwm_state, align 8
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %period2 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %period2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %period2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #5
  %pwm.i = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwm.i, align 4
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %enabled.i, align 4
  %conv.i = zext i32 %1 to i64
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv.i, ptr %state.i, align 8
  %mul.i.i = mul nuw nsw i64 %conv.i, 50
  %add.i.i = add nuw nsw i64 %mul.i.i, 50
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add.i.i, i32 0) #9, !srcloc !68
  %asmresult.i.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add.i.i, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #9, !srcloc !69
  %asmresult10.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1681.i.i = lshr i64 %asmresult10.i.i.i, 6
  %duty_cycle191.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 1
  %9 = ptrtoint ptr %duty_cycle191.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %div1681.i.i, ptr %duty_cycle191.i.i, align 8
  %call3.i = call i32 @pwm_apply_state(ptr noundef %3, ptr noundef nonnull %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.pwm_beeper_on.exit_crit_edge

if.then.pwm_beeper_on.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_beeper_on.exit

if.end.i:                                         ; preds = %if.then
  %amplifier_on.i = getelementptr i8, ptr %work, i32 53
  %10 = ptrtoint ptr %amplifier_on.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %amplifier_on.i, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not.i = icmp eq i8 %11, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.pwm_beeper_on.exit_crit_edge

if.end.i.pwm_beeper_on.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_beeper_on.exit

if.then5.i:                                       ; preds = %if.end.i
  %amplifier.i = getelementptr i8, ptr %work, i32 -4
  %12 = ptrtoint ptr %amplifier.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %amplifier.i, align 4
  %call6.i = call i32 @regulator_enable(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end10.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then5.i
  %14 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pwm.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i) #5
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.then8.i.pwm_disable.exit.i_crit_edge, label %if.end.i.i

if.then8.i.pwm_disable.exit.i_crit_edge:          ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit.i

if.end.i.i:                                       ; preds = %if.then8.i
  %state1.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %15, i32 0, i32 7
  %16 = call ptr @memcpy(ptr %state.i.i, ptr %state1.i.i.i, i32 24)
  %enabled.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enabled.i.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.pwm_disable.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.pwm_disable.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %enabled.i.i, align 4
  %call.i.i = call i32 @pwm_apply_state(ptr noundef nonnull %15, ptr noundef nonnull %state.i.i) #5
  br label %pwm_disable.exit.i

pwm_disable.exit.i:                               ; preds = %if.end3.i.i, %if.end.i.i.pwm_disable.exit.i_crit_edge, %if.then8.i.pwm_disable.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #5
  br label %pwm_beeper_on.exit

if.end10.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %amplifier_on.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %amplifier_on.i, align 1
  br label %pwm_beeper_on.exit

pwm_beeper_on.exit:                               ; preds = %if.end10.i, %pwm_disable.exit.i, %if.end.i.pwm_beeper_on.exit_crit_edge, %if.then.pwm_beeper_on.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %amplifier_on.i7 = getelementptr i8, ptr %work, i32 53
  %21 = ptrtoint ptr %amplifier_on.i7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %amplifier_on.i7, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i8 = icmp eq i8 %22, 0
  br i1 %tobool.not.i8, label %if.else.if.end.i12_crit_edge, label %if.then.i

if.else.if.end.i12_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i12

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %amplifier.i9 = getelementptr i8, ptr %work, i32 -4
  %23 = ptrtoint ptr %amplifier.i9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %amplifier.i9, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %24) #5
  %25 = ptrtoint ptr %amplifier_on.i7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %amplifier_on.i7, align 1
  br label %if.end.i12

if.end.i12:                                       ; preds = %if.then.i, %if.else.if.end.i12_crit_edge
  %pwm.i10 = getelementptr i8, ptr %work, i32 -8
  %26 = ptrtoint ptr %pwm.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pwm.i10, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i6) #5
  %tobool.not.i.i11 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i11, label %if.end.i12.pwm_beeper_off.exit_crit_edge, label %if.end.i.i16

if.end.i12.pwm_beeper_off.exit_crit_edge:         ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_beeper_off.exit

if.end.i.i16:                                     ; preds = %if.end.i12
  %state1.i.i.i13 = getelementptr inbounds %struct.pwm_device, ptr %27, i32 0, i32 7
  %28 = call ptr @memcpy(ptr %state.i.i6, ptr %state1.i.i.i13, i32 24)
  %enabled.i.i14 = getelementptr inbounds %struct.pwm_state, ptr %state.i.i6, i32 0, i32 3
  %29 = ptrtoint ptr %enabled.i.i14 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %enabled.i.i14, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool1.not.i.i15 = icmp eq i8 %30, 0
  br i1 %tobool1.not.i.i15, label %if.end.i.i16.pwm_beeper_off.exit_crit_edge, label %if.end3.i.i18

if.end.i.i16.pwm_beeper_off.exit_crit_edge:       ; preds = %if.end.i.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_beeper_off.exit

if.end3.i.i18:                                    ; preds = %if.end.i.i16
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %enabled.i.i14 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %enabled.i.i14, align 4
  %call.i.i17 = call i32 @pwm_apply_state(ptr noundef nonnull %27, ptr noundef nonnull %state.i.i6) #5
  br label %pwm_beeper_off.exit

pwm_beeper_off.exit:                              ; preds = %if.end3.i.i18, %if.end.i.i16.pwm_beeper_off.exit_crit_edge, %if.end.i12.pwm_beeper_off.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i6) #5
  br label %if.end

if.end:                                           ; preds = %pwm_beeper_off.exit, %pwm_beeper_on.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_beeper_event(ptr nocapture noundef readonly %input, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %type)
  %cmp.not = icmp ne i32 %type, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp1 = icmp slt i32 %value, 0
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %code, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  br i1 %tobool.not, label %sw.bb.if.end5_crit_edge, label %cond.true

sw.bb.if.end5_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %bell_frequency = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %bell_frequency to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bell_frequency, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.true, %if.end.sw.epilog_crit_edge
  %value.addr.0 = phi i32 [ %value, %if.end.sw.epilog_crit_edge ], [ %4, %cond.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value.addr.0)
  %cmp2 = icmp eq i32 %value.addr.0, 0
  br i1 %cmp2, label %sw.epilog.if.end5_crit_edge, label %if.else

sw.epilog.if.end5_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 1000000000, %value.addr.0
  br label %if.end5

if.end5:                                          ; preds = %if.else, %sw.epilog.if.end5_crit_edge, %sw.bb.if.end5_crit_edge
  %div.sink = phi i32 [ %div, %if.else ], [ 0, %sw.bb.if.end5_crit_edge ], [ 0, %sw.epilog.if.end5_crit_edge ]
  %period4 = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %period4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.sink, ptr %period4, align 4
  %suspended = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %suspended, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %work = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_beeper_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  %state.i.i.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work.i = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 3
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #5
  %amplifier_on.i.i = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %amplifier_on.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %amplifier_on.i.i, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %if.then.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %amplifier.i.i = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %amplifier.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %amplifier.i.i, align 4
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %5) #5
  %6 = ptrtoint ptr %amplifier_on.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %amplifier_on.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %pwm.i.i = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwm.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i.i) #5
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.pwm_beeper_stop.exit_crit_edge, label %if.end.i.i.i

if.end.i.i.pwm_beeper_stop.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_beeper_stop.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %state1.i.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %8, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %state.i.i.i, ptr %state1.i.i.i.i, i32 24)
  %enabled.i.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %enabled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled.i.i.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i.i.i = icmp eq i8 %11, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.pwm_beeper_stop.exit_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.pwm_beeper_stop.exit_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_beeper_stop.exit

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %enabled.i.i.i, align 4
  %call.i.i.i = call i32 @pwm_apply_state(ptr noundef nonnull %8, ptr noundef nonnull %state.i.i.i) #5
  br label %pwm_beeper_stop.exit

pwm_beeper_stop.exit:                             ; preds = %if.end3.i.i.i, %if.end.i.i.i.pwm_beeper_stop.exit_crit_edge, %if.end.i.i.pwm_beeper_stop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i.i) #5
  ret void
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
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_beeper_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %state.i.i.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  %suspended = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %suspended, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %event_lock2 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 36
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock2) #5
  %work.i = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 3
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #5
  %amplifier_on.i.i = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %amplifier_on.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %amplifier_on.i.i, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %if.then.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %amplifier.i.i = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %amplifier.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %amplifier.i.i, align 4
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %10) #5
  %11 = ptrtoint ptr %amplifier_on.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %amplifier_on.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %pwm.i.i = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwm.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i.i) #5
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.pwm_beeper_stop.exit_crit_edge, label %if.end.i.i.i

if.end.i.i.pwm_beeper_stop.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_beeper_stop.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %state1.i.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %13, i32 0, i32 7
  %14 = call ptr @memcpy(ptr %state.i.i.i, ptr %state1.i.i.i.i, i32 24)
  %enabled.i.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %enabled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enabled.i.i.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool1.not.i.i.i = icmp eq i8 %16, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.pwm_beeper_stop.exit_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.pwm_beeper_stop.exit_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_beeper_stop.exit

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %enabled.i.i.i, align 4
  %call.i.i.i = call i32 @pwm_apply_state(ptr noundef nonnull %13, ptr noundef nonnull %state.i.i.i) #5
  br label %pwm_beeper_stop.exit

pwm_beeper_stop.exit:                             ; preds = %if.end3.i.i.i, %if.end.i.i.i.pwm_beeper_stop.exit_crit_edge, %if.end.i.i.pwm_beeper_stop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_beeper_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  %suspended = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %suspended, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %event_lock2 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 36
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock2) #5
  %work = getelementptr inbounds %struct.pwm_beeper, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_pwm_beeper__290_257_pwm_beeper_driver_init6, !1, !"__initcall__kmod_pwm_beeper__290_257_pwm_beeper_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/pwm-beeper.c", i32 257, i32 1}
!2 = !{ptr @__exitcall_pwm_beeper_driver_exit, !1, !"__exitcall_pwm_beeper_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/pwm-beeper.c", i32 259, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/pwm-beeper.c", i32 260, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/pwm-beeper.c", i32 261, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias295, !11, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/pwm-beeper.c", i32 262, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/pwm-beeper.c", i32 252, i32 11}
!14 = !{ptr @pwm_beeper_driver, !15, !"pwm_beeper_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/pwm-beeper.c", i32 249, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/pwm-beeper.c", i32 138, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pwm_beeper_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pwm_beeper_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/misc/pwm-beeper.c", i32 148, i32 3}
!26 = !{ptr @pwm_beeper_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pwm_beeper_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/pwm-beeper.c", i32 153, i32 46}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/misc/pwm-beeper.c", i32 157, i32 4}
!32 = !{ptr @pwm_beeper_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pwm_beeper_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @pwm_beeper_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/input/misc/pwm-beeper.c", i32 162, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/misc/pwm-beeper.c", i32 164, i32 40}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/misc/pwm-beeper.c", i32 167, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pwm_beeper_probe.__UNIQUE_ID_ddebug289, !40, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/pwm-beeper.c", i32 176, i32 3}
!45 = !{ptr @pwm_beeper_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @pwm_beeper_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/misc/pwm-beeper.c", i32 181, i32 24}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/misc/pwm-beeper.c", i32 197, i32 3}
!51 = !{ptr @pwm_beeper_probe._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @pwm_beeper_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @pwm_beeper_match, !54, !"pwm_beeper_match", i1 false, i1 false}
!54 = !{!"../drivers/input/misc/pwm-beeper.c", i32 242, i32 34}
!55 = !{ptr @pwm_beeper_pm_ops, !56, !"pwm_beeper_pm_ops", i1 false, i1 false}
!56 = !{!"../drivers/input/misc/pwm-beeper.c", i32 238, i32 8}
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
!67 = !{i64 2149037042, i64 2149037047, i64 2149037060, i64 2149037104, i64 2149037138, i64 2149037159}
!68 = !{i64 535897, i64 535924, i64 535946, i64 535974}
!69 = !{i64 536305, i64 536332, i64 536365, i64 536386, i64 536413, i64 536439}
!70 = !{i8 0, i8 2}
