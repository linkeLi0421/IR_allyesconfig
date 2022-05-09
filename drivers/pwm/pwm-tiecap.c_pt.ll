; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-tiecap.c_pt.bc'
source_filename = "../drivers/pwm/pwm-tiecap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.ecap_pwm_chip = type { %struct.pwm_chip, i32, ptr, %struct.ecap_context }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.ecap_context = type { i32, i32, i16 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_tiecap__171_331_ecap_pwm_driver_init6 = internal global ptr @ecap_pwm_driver_init, section ".initcall6.init", align 4
@ecap_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ecap_pwm_probe, ptr @ecap_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ecap_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ecap_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ecap_pwm_driver_exit = internal global ptr @ecap_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [39 x i8] c"pwm_tiecap.description=ECAP PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [36 x i8] c"pwm_tiecap.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [39 x i8] c"pwm_tiecap.file=drivers/pwm/pwm-tiecap\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [23 x i8] c"pwm_tiecap.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ecap\00", [27 x i8] zeroinitializer }, align 32
@ecap_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-ecap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am33xx-ecap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ecap_pwm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ecap_pwm_suspend, ptr @ecap_pwm_resume, ptr @ecap_pwm_suspend, ptr @ecap_pwm_resume, ptr @ecap_pwm_suspend, ptr @ecap_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,am33xx-ecap\00", [17 x i8] zeroinitializer }, align 32
@ecap_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 232, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Binding is obsolete.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ecap_pwm_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/pwm/pwm-tiecap.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ecap_pwm_probe._entry_ptr = internal global ptr @ecap_pwm_probe._entry, section ".printk_index", align 4
@ecap_pwm_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 238, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ecap_pwm_probe._entry_ptr.11 = internal global ptr @ecap_pwm_probe._entry.8, section ".printk_index", align 4
@ecap_pwm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 244, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock rate\0A\00", [38 x i8] zeroinitializer }, align 32
@ecap_pwm_probe._entry_ptr.14 = internal global ptr @ecap_pwm_probe._entry.12, section ".printk_index", align 4
@ecap_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @ecap_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ecap_pwm_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 258, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pwmchip_add() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ecap_pwm_probe._entry_ptr.17 = internal global ptr @ecap_pwm_probe._entry.15, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"ecap_pwm_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 322, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 324, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"ecap_of_match\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 211, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"ecap_pwm_pm_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 320, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 229, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 231, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 232, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 238, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 244, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"ecap_pwm_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 206, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [28 x i8] c"../drivers/pwm/pwm-tiecap.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 258, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_ecap_pwm_driver_exit, ptr @__initcall__kmod_pwm_tiecap__171_331_ecap_pwm_driver_init6, ptr @ecap_pwm_driver_exit, ptr @ecap_pwm_probe._entry, ptr @ecap_pwm_probe._entry.12, ptr @ecap_pwm_probe._entry.15, ptr @ecap_pwm_probe._entry.8, ptr @ecap_pwm_probe._entry_ptr, ptr @ecap_pwm_probe._entry_ptr.11, ptr @ecap_pwm_probe._entry_ptr.14, ptr @ecap_pwm_probe._entry_ptr.17, ptr @ecap_pwm_driver, ptr @.str, ptr @ecap_of_match, ptr @ecap_pwm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @ecap_pwm_ops, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecap_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecap_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecap_pwm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecap_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecap_pwm_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecap_pwm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecap_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecap_pwm_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ecap_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ecap_pwm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ecap_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ecap_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecap_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end13_crit_edge, label %do.end

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call11 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #5
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %clk.0 = phi ptr [ %call11, %do.end ], [ %call3, %if.then5.if.end13_crit_edge ], [ %call3, %if.end.if.end13_crit_edge ]
  %cmp.i82 = icmp ugt ptr %clk.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  %4 = ptrtoint ptr %clk.0 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call22 = tail call i32 @clk_get_rate(ptr noundef %clk.0) #5
  %clk_rate = getelementptr inbounds %struct.ecap_pwm_chip, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call22, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ecap_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %npwm, align 4
  %call35 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %mmio_base = getelementptr inbounds %struct.ecap_pwm_chip, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call35, ptr %mmio_base, align 4
  %cmp.i83 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end30
  %call44 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp = icmp slt i32 %call44, 0
  br i1 %cmp, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call44) #8
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end48, %if.then38, %do.end28, %do.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end18 ], [ %10, %if.then38 ], [ %call44, %do.end48 ], [ 0, %if.end50 ], [ -22, %do.end28 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecap_pwm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecap_pwm_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled2 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %enabled2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled2, align 4, !range !54
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polarity, align 8
  %polarity4 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %polarity4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %polarity4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then.if.end12.thread_crit_edge, label %if.then7

if.then.if.end12.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.thread

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %mmio_base.i = getelementptr inbounds %struct.ecap_pwm_chip, ptr %chip, i32 0, i32 2
  %6 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 42
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %9 = and i16 %8, -4099
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %11, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %9) #5, !srcloc !58
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 4) #5
  br label %if.end12.thread

if.end12:                                         ; preds = %entry
  %14 = zext i8 %1 to i32
  %enabled13 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %15 = ptrtoint ptr %enabled13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enabled13, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end12.thread:                                  ; preds = %if.then7, %if.then.if.end12.thread_crit_edge
  %17 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %polarity, align 8
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %call.i.i57 = tail call i32 @__pm_runtime_resume(ptr noundef %20, i32 noundef 4) #5
  %mmio_base.i58 = getelementptr inbounds %struct.ecap_pwm_chip, ptr %chip, i32 0, i32 2
  %21 = ptrtoint ptr %mmio_base.i58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base.i58, align 4
  %add.ptr.i59 = getelementptr i8, ptr %22, i32 42
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i59) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  %24 = and i16 %23, -5
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #5
  %masksel.i = select i1 %cmp.i, i16 1024, i16 0
  %value.0.i = or i16 %25, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %26 = tail call i16 @llvm.bswap.i16(i16 %value.0.i) #5
  %27 = ptrtoint ptr %mmio_base.i58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio_base.i58, align 4
  %add.ptr9.i = getelementptr i8, ptr %28, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i, i16 %26) #5, !srcloc !58
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %call.i1.i = tail call i32 @__pm_runtime_idle(ptr noundef %30, i32 noundef 4) #5
  %enabled1372 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %31 = ptrtoint ptr %enabled1372 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enabled1372, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool14.not73 = icmp eq i8 %32, 0
  br i1 %tobool14.not73, label %if.end12.thread.cleanup_crit_edge, label %if.end12.thread.if.end19_crit_edge

if.end12.thread.if.end19_crit_edge:               ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end12.thread.cleanup_crit_edge:                ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool16.not = icmp eq i8 %1, 0
  br i1 %tobool16.not, label %if.then15.cleanup_crit_edge, label %if.then17

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %mmio_base.i60 = getelementptr inbounds %struct.ecap_pwm_chip, ptr %chip, i32 0, i32 2
  %33 = ptrtoint ptr %mmio_base.i60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio_base.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %34, i32 42
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i61) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %36 = and i16 %35, -4099
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %mmio_base.i60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio_base.i60, align 4
  %add.ptr5.i62 = getelementptr i8, ptr %38, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i62, i16 %36) #5, !srcloc !58
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 4
  %call.i.i63 = tail call i32 @__pm_runtime_idle(ptr noundef %40, i32 noundef 4) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end12.thread.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  %enabled.175 = phi i32 [ 0, %if.end12.thread.if.end19_crit_edge ], [ %14, %if.end12.if.end19_crit_edge ]
  %41 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000000, i64 %42)
  %cmp20 = icmp ugt i64 %42, 1000000000
  br i1 %cmp20, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %clk_rate.i = getelementptr inbounds %struct.ecap_pwm_chip, ptr %chip, i32 0, i32 1
  %43 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %clk_rate.i, align 4
  %conv.i = zext i32 %44 to i64
  %mul.i = mul nuw nsw i64 %42, %conv.i
  %45 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i, i32 0) #9, !srcloc !61
  %asmresult.i.i = extractvalue { i64, i32 } %45, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %45, 1
  %46 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #9, !srcloc !62
  %asmresult10.i.i = extractvalue { i64, i32 } %46, 0
  %div1631.i = lshr i64 %asmresult10.i.i, 29
  %conv185.i = trunc i64 %div1631.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv185.i)
  %cmp186.i = icmp eq i32 %conv185.i, 0
  br i1 %cmp186.i, label %if.end23.if.end416.i_crit_edge, label %if.else189.i

if.end23.if.end416.i_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end416.i

if.else189.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %47 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %duty_cycle, align 8
  %49 = shl i64 %48, 32
  %conv192.i = ashr exact i64 %49, 32
  %mul193.i = mul nsw i64 %conv192.i, %conv.i
  %50 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul193.i, i32 0) #9, !srcloc !61
  %asmresult.i3.i = extractvalue { i64, i32 } %50, 0
  %asmresult4.i4.i = extractvalue { i64, i32 } %50, 1
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul193.i, i64 %asmresult.i3.i, i32 %asmresult4.i4.i) #9, !srcloc !62
  %asmresult10.i5.i = extractvalue { i64, i32 } %51, 0
  %div3892.i = lshr i64 %asmresult10.i5.i, 29
  %conv415.i = trunc i64 %div3892.i to i32
  br label %if.end416.i

if.end416.i:                                      ; preds = %if.else189.i, %if.end23.if.end416.i_crit_edge
  %duty_cycles.0.i = phi i32 [ %conv415.i, %if.else189.i ], [ 1, %if.end23.if.end416.i_crit_edge ]
  %period_cycles.0.i = phi i32 [ %conv185.i, %if.else189.i ], [ 1, %if.end23.if.end416.i_crit_edge ]
  %52 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip, align 4
  %call.i.i64 = tail call i32 @__pm_runtime_resume(ptr noundef %53, i32 noundef 4) #5
  %mmio_base.i65 = getelementptr inbounds %struct.ecap_pwm_chip, ptr %chip, i32 0, i32 2
  %54 = ptrtoint ptr %mmio_base.i65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio_base.i65, align 4
  %add.ptr.i66 = getelementptr i8, ptr %55, i32 42
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i66) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %57 = or i16 %56, -16382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %mmio_base.i65 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio_base.i65, align 4
  %add.ptr426.i = getelementptr i8, ptr %59, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr426.i, i16 %57) #5, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled.175)
  %tobool427.not.i = icmp eq i32 %enabled.175, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %60 = tail call i32 @llvm.bswap.i32(i32 %duty_cycles.0.i) #5
  %61 = ptrtoint ptr %mmio_base.i65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio_base.i65, align 4
  br i1 %tobool427.not.i, label %if.then32, label %ecap_pwm_config.exit

ecap_pwm_config.exit:                             ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr444.i = getelementptr i8, ptr %62, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr444.i, i32 %60) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %63 = tail call i32 @llvm.bswap.i32(i32 %period_cycles.0.i) #5
  %64 = ptrtoint ptr %mmio_base.i65 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio_base.i65, align 4
  %add.ptr449.i = getelementptr i8, ptr %65, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr449.i, i32 %63) #5, !srcloc !65
  %66 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip, align 4
  %call.i6.i = tail call i32 @__pm_runtime_idle(ptr noundef %67, i32 noundef 4) #5
  br label %cleanup

if.then32:                                        ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr433.i = getelementptr i8, ptr %62, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr433.i, i32 %60) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %68 = tail call i32 @llvm.bswap.i32(i32 %period_cycles.0.i) #5
  %69 = ptrtoint ptr %mmio_base.i65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio_base.i65, align 4
  %add.ptr438.i = getelementptr i8, ptr %70, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr438.i, i32 %68) #5, !srcloc !65
  %71 = ptrtoint ptr %mmio_base.i65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio_base.i65, align 4
  %add.ptr456.i = getelementptr i8, ptr %72, i32 42
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr456.i) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %74 = and i16 %73, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %mmio_base.i65 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio_base.i65, align 4
  %add.ptr467.i = getelementptr i8, ptr %76, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr467.i, i16 %74) #5, !srcloc !58
  %77 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %chip, align 4
  %call.i6.i70 = tail call i32 @__pm_runtime_idle(ptr noundef %78, i32 noundef 4) #5
  %79 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chip, align 4
  %call.i.i67 = tail call i32 @__pm_runtime_resume(ptr noundef %80, i32 noundef 4) #5
  %81 = ptrtoint ptr %mmio_base.i65 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio_base.i65, align 4
  %add.ptr.i69 = getelementptr i8, ptr %82, i32 42
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i69) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %84 = or i16 %83, 4098
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %85 = ptrtoint ptr %mmio_base.i65 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio_base.i65, align 4
  %add.ptr7.i = getelementptr i8, ptr %86, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i, i16 %84) #5, !srcloc !58
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %ecap_pwm_config.exit, %if.end19.cleanup_crit_edge, %if.then17, %if.then15.cleanup_crit_edge, %if.end12.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then32 ], [ 0, %if.then17 ], [ 0, %if.then15.cleanup_crit_edge ], [ -34, %if.end19.cleanup_crit_edge ], [ 0, %ecap_pwm_config.exit ], [ 0, %if.end12.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecap_pwm_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwms, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #5
  %mmio_base.i = getelementptr inbounds %struct.ecap_pwm_chip, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 42
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !55
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %ctx.i = getelementptr inbounds %struct.ecap_pwm_chip, ptr %1, i32 0, i32 3
  %ecctl2.i = getelementptr inbounds %struct.ecap_pwm_chip, ptr %1, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %ecctl2.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %ecctl2.i, align 4
  %11 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #5, !srcloc !73
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %cap4.i = getelementptr inbounds %struct.ecap_pwm_chip, ptr %1, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %cap4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cap4.i, align 4
  %16 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #5, !srcloc !73
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  %20 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ctx.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i29.i = tail call i32 @__pm_runtime_idle(ptr noundef %22, i32 noundef 4) #5
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecap_pwm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwms, align 4
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %ctx.i = getelementptr inbounds %struct.ecap_pwm_chip, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctx.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %mmio_base.i = getelementptr inbounds %struct.ecap_pwm_chip, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %cap4.i = getelementptr inbounds %struct.ecap_pwm_chip, ptr %1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %cap4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap4.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %13 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %12) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %ecctl2.i = getelementptr inbounds %struct.ecap_pwm_chip, ptr %1, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %ecctl2.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ecctl2.i, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #5
  %18 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %19, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 %17) #5, !srcloc !58
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_pwm_tiecap__171_331_ecap_pwm_driver_init6, !1, !"__initcall__kmod_pwm_tiecap__171_331_ecap_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-tiecap.c", i32 331, i32 1}
!2 = !{ptr @__exitcall_ecap_pwm_driver_exit, !1, !"__exitcall_ecap_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description172, !4, !"__UNIQUE_ID_description172", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-tiecap.c", i32 333, i32 1}
!5 = !{ptr @__UNIQUE_ID_author173, !6, !"__UNIQUE_ID_author173", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-tiecap.c", i32 334, i32 1}
!7 = !{ptr @__UNIQUE_ID_file174, !8, !"__UNIQUE_ID_file174", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-tiecap.c", i32 335, i32 1}
!9 = !{ptr @__UNIQUE_ID_license175, !8, !"__UNIQUE_ID_license175", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-tiecap.c", i32 324, i32 11}
!12 = !{ptr @ecap_pwm_driver, !13, !"ecap_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-tiecap.c", i32 322, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-tiecap.c", i32 229, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-tiecap.c", i32 231, i32 35}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-tiecap.c", i32 232, i32 4}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ecap_pwm_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ecap_pwm_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-tiecap.c", i32 238, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ecap_pwm_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ecap_pwm_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pwm/pwm-tiecap.c", i32 244, i32 3}
!33 = !{ptr @ecap_pwm_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ecap_pwm_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pwm/pwm-tiecap.c", i32 258, i32 3}
!37 = !{ptr @ecap_pwm_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ecap_pwm_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @ecap_pwm_ops, !40, !"ecap_pwm_ops", i1 false, i1 false}
!40 = !{!"../drivers/pwm/pwm-tiecap.c", i32 206, i32 29}
!41 = !{ptr @ecap_of_match, !42, !"ecap_of_match", i1 false, i1 false}
!42 = !{!"../drivers/pwm/pwm-tiecap.c", i32 211, i32 34}
!43 = !{ptr @ecap_pwm_pm_ops, !44, !"ecap_pwm_pm_ops", i1 false, i1 false}
!44 = !{!"../drivers/pwm/pwm-tiecap.c", i32 320, i32 8}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i8 0, i8 2}
!55 = !{i64 4789546}
!56 = !{i64 2152609568}
!57 = !{i64 2152609956}
!58 = !{i64 4789346}
!59 = !{i64 2152607414}
!60 = !{i64 2152607806}
!61 = !{i64 706615, i64 706642, i64 706664, i64 706692}
!62 = !{i64 707023, i64 707050, i64 707083, i64 707104, i64 707131, i64 707157}
!63 = !{i64 2152603516}
!64 = !{i64 2152603990}
!65 = !{i64 4789966}
!66 = !{i64 2152605710}
!67 = !{i64 2152604838}
!68 = !{i64 2152606421}
!69 = !{i64 2152606727}
!70 = !{i64 2152608493}
!71 = !{i64 2152608881}
!72 = !{i64 2152617239}
!73 = !{i64 4790384}
!74 = !{i64 2152617742}
!75 = !{i64 2152618245}
!76 = !{i64 2152618476}
!77 = !{i64 2152618912}
!78 = !{i64 2152619350}
