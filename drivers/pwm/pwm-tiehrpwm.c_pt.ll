; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-tiehrpwm.c_pt.bc'
source_filename = "../drivers/pwm/pwm-tiehrpwm.c"
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
%struct.ehrpwm_pwm_chip = type { %struct.pwm_chip, i32, ptr, [2 x i32], [2 x i32], ptr, %struct.ehrpwm_context }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.ehrpwm_context = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_tiehrpwm__171_579_ehrpwm_pwm_driver_init6 = internal global ptr @ehrpwm_pwm_driver_init, section ".initcall6.init", align 4
@ehrpwm_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ehrpwm_pwm_probe, ptr @ehrpwm_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ehrpwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ehrpwm_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ehrpwm_pwm_driver_exit = internal global ptr @ehrpwm_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [43 x i8] c"pwm_tiehrpwm.description=EHRPWM PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [38 x i8] c"pwm_tiehrpwm.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [43 x i8] c"pwm_tiehrpwm.file=drivers/pwm/pwm-tiehrpwm\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [25 x i8] c"pwm_tiehrpwm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ehrpwm\00", [25 x i8] zeroinitializer }, align 32
@ehrpwm_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-ehrpwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am33xx-ehrpwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ehrpwm_pwm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ehrpwm_pwm_suspend, ptr @ehrpwm_pwm_resume, ptr @ehrpwm_pwm_suspend, ptr @ehrpwm_pwm_resume, ptr @ehrpwm_pwm_suspend, ptr @ehrpwm_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,am33xx-ecap\00", [17 x i8] zeroinitializer }, align 32
@ehrpwm_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 434, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Binding is obsolete.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ehrpwm_pwm_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/pwm/pwm-tiehrpwm.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ehrpwm_pwm_probe._entry_ptr = internal global ptr @ehrpwm_pwm_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to get fck\0A\00", [45 x i8] zeroinitializer }, align 32
@ehrpwm_pwm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 444, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock rate\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ehrpwm_pwm_probe._entry_ptr.12 = internal global ptr @ehrpwm_pwm_probe._entry.9, section ".printk_index", align 4
@ehrpwm_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr @ehrpwm_pwm_free, ptr null, ptr null, ptr null, ptr null, ptr @ehrpwm_pwm_config, ptr @ehrpwm_pwm_set_polarity, ptr @ehrpwm_pwm_enable, ptr @ehrpwm_pwm_disable }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tbclk\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get tbclk\0A\00", [43 x i8] zeroinitializer }, align 32
@ehrpwm_pwm_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 463, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clk_prepare() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ehrpwm_pwm_probe._entry_ptr.17 = internal global ptr @ehrpwm_pwm_probe._entry.15, section ".printk_index", align 4
@ehrpwm_pwm_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 469, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pwmchip_add() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ehrpwm_pwm_probe._entry_ptr.20 = internal global ptr @ehrpwm_pwm_probe._entry.18, section ".printk_index", align 4
@ehrpwm_pwm_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 396, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Removing PWM device without disabling\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ehrpwm_pwm_free\00", [16 x i8] zeroinitializer }, align 32
@ehrpwm_pwm_free._entry_ptr = internal global ptr @ehrpwm_pwm_free._entry, section ".printk_index", align 4
@ehrpwm_pwm_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 261, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"period value conflicts with channel %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ehrpwm_pwm_config\00", [46 x i8] zeroinitializer }, align 32
@ehrpwm_pwm_config._entry_ptr = internal global ptr @ehrpwm_pwm_config._entry, section ".printk_index", align 4
@ehrpwm_pwm_config._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 271, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unsupported values\0A\00", [44 x i8] zeroinitializer }, align 32
@ehrpwm_pwm_config._entry_ptr.27 = internal global ptr @ehrpwm_pwm_config._entry.25, section ".printk_index", align 4
@ehrpwm_pwm_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 350, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable TBCLK for %s: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ehrpwm_pwm_enable\00", [46 x i8] zeroinitializer }, align 32
@ehrpwm_pwm_enable._entry_ptr = internal global ptr @ehrpwm_pwm_enable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"ehrpwm_pwm_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 570, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 572, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"ehrpwm_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 413, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"ehrpwm_pwm_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 567, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 431, i32 33 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 433, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 434, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 440, i32 50 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 444, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"ehrpwm_pwm_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 404, i32 29 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 457, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 459, i32 56 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 463, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 469, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 396, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 259, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 271, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [30 x i8] c"../drivers/pwm/pwm-tiehrpwm.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 349, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_ehrpwm_pwm_driver_exit, ptr @__initcall__kmod_pwm_tiehrpwm__171_579_ehrpwm_pwm_driver_init6, ptr @ehrpwm_pwm_config._entry, ptr @ehrpwm_pwm_config._entry.25, ptr @ehrpwm_pwm_config._entry_ptr, ptr @ehrpwm_pwm_config._entry_ptr.27, ptr @ehrpwm_pwm_driver_exit, ptr @ehrpwm_pwm_enable._entry, ptr @ehrpwm_pwm_enable._entry_ptr, ptr @ehrpwm_pwm_free._entry, ptr @ehrpwm_pwm_free._entry_ptr, ptr @ehrpwm_pwm_probe._entry, ptr @ehrpwm_pwm_probe._entry.15, ptr @ehrpwm_pwm_probe._entry.18, ptr @ehrpwm_pwm_probe._entry.9, ptr @ehrpwm_pwm_probe._entry_ptr, ptr @ehrpwm_pwm_probe._entry_ptr.12, ptr @ehrpwm_pwm_probe._entry_ptr.17, ptr @ehrpwm_pwm_probe._entry_ptr.20, ptr @ehrpwm_pwm_driver, ptr @.str, ptr @ehrpwm_of_match, ptr @ehrpwm_pwm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @ehrpwm_pwm_ops, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehrpwm_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehrpwm_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehrpwm_pwm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehrpwm_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehrpwm_pwm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehrpwm_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehrpwm_pwm_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehrpwm_pwm_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehrpwm_pwm_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehrpwm_pwm_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehrpwm_pwm_config._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehrpwm_pwm_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ehrpwm_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehrpwm_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ehrpwm_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehrpwm_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehrpwm_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end13_crit_edge, label %do.end

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call11 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %clk.0 = phi ptr [ %call11, %do.end ], [ %call3, %if.then5.if.end13_crit_edge ], [ %call3, %if.end.if.end13_crit_edge ]
  %cmp.i109 = icmp ugt ptr %clk.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %clk.0 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %call20 = tail call i32 @clk_get_rate(ptr noundef %clk.0) #6
  %clk_rate = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call20, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool22.not = icmp eq i32 %call20, 0
  br i1 %tobool22.not, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ehrpwm_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %npwm, align 4
  %call33 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %mmio_base = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call33, ptr %mmio_base, align 4
  %cmp.i110 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %call41 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  %tbclk = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %tbclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call41, ptr %tbclk, align 4
  %cmp.i111 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then44, label %if.end49

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call41 to i32
  %call48 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @.str.14) #6
  br label %cleanup

if.end49:                                         ; preds = %if.end39
  %call51 = tail call i32 @clk_prepare(ptr noundef %call41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp = icmp slt i32 %call51, 0
  br i1 %cmp, label %do.end55, label %if.end57

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call51) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  %call59 = tail call i32 @pwmchip_add(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end64, label %if.end66

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call59) #9
  %13 = ptrtoint ptr %tbclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tbclk, align 4
  tail call void @clk_unprepare(ptr noundef %14) #6
  br label %cleanup

if.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %do.end64, %do.end55, %if.then44, %if.then36, %do.end26, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then15 ], [ %10, %if.then36 ], [ %call48, %if.then44 ], [ %call51, %do.end55 ], [ %call59, %do.end64 ], [ 0, %if.end66 ], [ -22, %do.end26 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehrpwm_pwm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #6
  %tbclk = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tbclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tbclk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ehrpwm_pwm_free(ptr nocapture noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.21) #9
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %5 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwpwm, align 8
  %arrayidx = getelementptr %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 3, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehrpwm_pwm_config(ptr nocapture noundef %chip, ptr nocapture noundef readonly %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %period_ns)
  %cmp = icmp sgt i32 %period_ns, 1000000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_rate = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_rate, align 4
  %conv = zext i32 %1 to i64
  %conv1 = sext i32 %period_ns to i64
  %mul = mul nsw i64 %conv, %conv1
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #10, !srcloc !79
  %asmresult.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #10, !srcloc !80
  %asmresult10.i = extractvalue { i64, i32 } %3, 0
  %div166659 = lshr i64 %asmresult10.i, 29
  %conv188 = trunc i64 %div166659 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv188)
  %cmp189 = icmp eq i32 %conv188, 0
  br i1 %cmp189, label %if.end.if.end419_crit_edge, label %if.else192

if.end.if.end419_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end419

if.else192:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv195 = sext i32 %duty_ns to i64
  %mul196 = mul nsw i64 %conv, %conv195
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul196, i32 0) #10, !srcloc !79
  %asmresult.i661 = extractvalue { i64, i32 } %4, 0
  %asmresult4.i662 = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul196, i64 %asmresult.i661, i32 %asmresult4.i662) #10, !srcloc !80
  %asmresult10.i663 = extractvalue { i64, i32 } %5, 0
  %div392660 = lshr i64 %asmresult10.i663, 29
  %conv418 = trunc i64 %div392660 to i32
  br label %if.end419

if.end419:                                        ; preds = %if.else192, %if.end.if.end419_crit_edge
  %duty_cycles.0 = phi i32 [ %conv418, %if.else192 ], [ 1, %if.end.if.end419_crit_edge ]
  %period_cycles.0 = phi i32 [ %conv188, %if.else192 ], [ 1, %if.end.if.end419_crit_edge ]
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %arrayidx = getelementptr %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool423.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %period_cycles.0)
  %cmp427.not = icmp eq i32 %7, %period_cycles.0
  %or.cond = select i1 %tobool423.not, i1 true, i1 %cmp427.not
  br i1 %or.cond, label %if.end419.for.inc_crit_edge, label %if.then429

if.end419.for.inc_crit_edge:                      ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then429:                                       ; preds = %if.end419
  %8 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp430 = icmp eq i32 %9, 0
  br i1 %cmp430, label %if.then429.for.inc_crit_edge, label %if.then429.do.end_crit_edge

if.then429.do.end_crit_edge:                      ; preds = %if.then429
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then429.for.inc_crit_edge:                     ; preds = %if.then429
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %if.then429.1.do.end_crit_edge, %if.then429.do.end_crit_edge
  %i.0675.lcssa = phi i32 [ 0, %if.then429.do.end_crit_edge ], [ 1, %if.then429.1.do.end_crit_edge ]
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23, i32 noundef %i.0675.lcssa) #9
  br label %cleanup

for.inc:                                          ; preds = %if.then429.for.inc_crit_edge, %if.end419.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool423.not.1 = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %period_cycles.0)
  %cmp427.not.1 = icmp eq i32 %13, %period_cycles.0
  %or.cond.1 = select i1 %tobool423.not.1, i1 true, i1 %cmp427.not.1
  br i1 %or.cond.1, label %for.inc.for.inc.1_crit_edge, label %if.then429.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then429.1:                                     ; preds = %for.inc
  %14 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp430.1 = icmp eq i32 %15, 1
  br i1 %cmp430.1, label %if.then429.1.for.inc.1_crit_edge, label %if.then429.1.do.end_crit_edge

if.then429.1.do.end_crit_edge:                    ; preds = %if.then429.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then429.1.for.inc.1_crit_edge:                 ; preds = %if.then429.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then429.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %16 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwpwm, align 8
  %arrayidx437 = getelementptr %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 3, i32 %17
  %18 = ptrtoint ptr %arrayidx437 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %period_cycles.0, ptr %arrayidx437, align 4
  %div438 = udiv i32 %period_cycles.0, 65535
  %19 = zext i32 %div438 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div438, label %for.inc.1.i [
    i32 0, label %for.inc.1.if.end446_crit_edge
    i32 1, label %if.then.fold.split.i
  ]

for.inc.1.if.end446_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

if.then.fold.split.i:                             ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.1.i:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 262140, i32 %period_cycles.0)
  %cmp6.2.i = icmp ult i32 %period_cycles.0, 262140
  br i1 %cmp6.2.i, label %for.inc.1.i.if.end446_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end446_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 393210, i32 %period_cycles.0)
  %cmp6.3.i = icmp ult i32 %period_cycles.0, 393210
  br i1 %cmp6.3.i, label %for.inc.2.i.if.end446_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end446_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 524280, i32 %period_cycles.0)
  %cmp6.4.i = icmp ult i32 %period_cycles.0, 524280
  br i1 %cmp6.4.i, label %for.inc.3.i.if.end446_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end446_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 655350, i32 %period_cycles.0)
  %cmp6.5.i = icmp ult i32 %period_cycles.0, 655350
  br i1 %cmp6.5.i, label %for.inc.4.i.if.end446_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end446_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 786420, i32 %period_cycles.0)
  %cmp6.6.i = icmp ult i32 %period_cycles.0, 786420
  br i1 %cmp6.6.i, label %for.inc.5.i.if.end446_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end446_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 917490, i32 %period_cycles.0)
  %cmp6.7.i = icmp ult i32 %period_cycles.0, 917490
  br i1 %cmp6.7.i, label %for.inc.6.i.if.end446_crit_edge, label %for.inc.3.1.i

for.inc.6.i.if.end446_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.3.1.i:                                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048560, i32 %period_cycles.0)
  %cmp6.4.1.i = icmp ult i32 %period_cycles.0, 1048560
  br i1 %cmp6.4.1.i, label %for.inc.3.1.i.if.end446_crit_edge, label %for.inc.4.1.i

for.inc.3.1.i.if.end446_crit_edge:                ; preds = %for.inc.3.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.4.1.i:                                    ; preds = %for.inc.3.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1310700, i32 %period_cycles.0)
  %cmp6.5.1.i = icmp ult i32 %period_cycles.0, 1310700
  br i1 %cmp6.5.1.i, label %for.inc.4.1.i.if.end446_crit_edge, label %for.inc.5.1.i

for.inc.4.1.i.if.end446_crit_edge:                ; preds = %for.inc.4.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.5.1.i:                                    ; preds = %for.inc.4.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572840, i32 %period_cycles.0)
  %cmp6.6.1.i = icmp ult i32 %period_cycles.0, 1572840
  br i1 %cmp6.6.1.i, label %for.inc.5.1.i.if.end446_crit_edge, label %for.inc.6.1.i

for.inc.5.1.i.if.end446_crit_edge:                ; preds = %for.inc.5.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.6.1.i:                                    ; preds = %for.inc.5.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1834980, i32 %period_cycles.0)
  %cmp6.7.1.i = icmp ult i32 %period_cycles.0, 1834980
  br i1 %cmp6.7.1.i, label %for.inc.6.1.i.if.end446_crit_edge, label %for.inc.3.2.i

for.inc.6.1.i.if.end446_crit_edge:                ; preds = %for.inc.6.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.3.2.i:                                    ; preds = %for.inc.6.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097120, i32 %period_cycles.0)
  %cmp6.4.2.i = icmp ult i32 %period_cycles.0, 2097120
  br i1 %cmp6.4.2.i, label %for.inc.3.2.i.if.end446_crit_edge, label %for.inc.4.2.i

for.inc.3.2.i.if.end446_crit_edge:                ; preds = %for.inc.3.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.4.2.i:                                    ; preds = %for.inc.3.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2621400, i32 %period_cycles.0)
  %cmp6.5.2.i = icmp ult i32 %period_cycles.0, 2621400
  br i1 %cmp6.5.2.i, label %for.inc.4.2.i.if.end446_crit_edge, label %for.inc.5.2.i

for.inc.4.2.i.if.end446_crit_edge:                ; preds = %for.inc.4.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.5.2.i:                                    ; preds = %for.inc.4.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145680, i32 %period_cycles.0)
  %cmp6.6.2.i = icmp ult i32 %period_cycles.0, 3145680
  br i1 %cmp6.6.2.i, label %for.inc.5.2.i.if.end446_crit_edge, label %for.inc.6.2.i

for.inc.5.2.i.if.end446_crit_edge:                ; preds = %for.inc.5.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.6.2.i:                                    ; preds = %for.inc.5.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3669960, i32 %period_cycles.0)
  %cmp6.7.2.i = icmp ult i32 %period_cycles.0, 3669960
  br i1 %cmp6.7.2.i, label %for.inc.6.2.i.if.end446_crit_edge, label %for.inc.3.3.i

for.inc.6.2.i.if.end446_crit_edge:                ; preds = %for.inc.6.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.3.3.i:                                    ; preds = %for.inc.6.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194240, i32 %period_cycles.0)
  %cmp6.4.3.i = icmp ult i32 %period_cycles.0, 4194240
  br i1 %cmp6.4.3.i, label %for.inc.3.3.i.if.end446_crit_edge, label %for.inc.4.3.i

for.inc.3.3.i.if.end446_crit_edge:                ; preds = %for.inc.3.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.4.3.i:                                    ; preds = %for.inc.3.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5242800, i32 %period_cycles.0)
  %cmp6.5.3.i = icmp ult i32 %period_cycles.0, 5242800
  br i1 %cmp6.5.3.i, label %for.inc.4.3.i.if.end446_crit_edge, label %for.inc.5.3.i

for.inc.4.3.i.if.end446_crit_edge:                ; preds = %for.inc.4.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.5.3.i:                                    ; preds = %for.inc.4.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291360, i32 %period_cycles.0)
  %cmp6.6.3.i = icmp ult i32 %period_cycles.0, 6291360
  br i1 %cmp6.6.3.i, label %for.inc.5.3.i.if.end446_crit_edge, label %for.inc.6.3.i

for.inc.5.3.i.if.end446_crit_edge:                ; preds = %for.inc.5.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.6.3.i:                                    ; preds = %for.inc.5.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7339920, i32 %period_cycles.0)
  %cmp6.7.3.i = icmp ult i32 %period_cycles.0, 7339920
  br i1 %cmp6.7.3.i, label %for.inc.6.3.i.if.end446_crit_edge, label %for.inc.3.4.i

for.inc.6.3.i.if.end446_crit_edge:                ; preds = %for.inc.6.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.3.4.i:                                    ; preds = %for.inc.6.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388480, i32 %period_cycles.0)
  %cmp6.4.4.i = icmp ult i32 %period_cycles.0, 8388480
  br i1 %cmp6.4.4.i, label %for.inc.3.4.i.if.end446_crit_edge, label %for.inc.4.4.i

for.inc.3.4.i.if.end446_crit_edge:                ; preds = %for.inc.3.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.4.4.i:                                    ; preds = %for.inc.3.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10485600, i32 %period_cycles.0)
  %cmp6.5.4.i = icmp ult i32 %period_cycles.0, 10485600
  br i1 %cmp6.5.4.i, label %for.inc.4.4.i.if.end446_crit_edge, label %for.inc.5.4.i

for.inc.4.4.i.if.end446_crit_edge:                ; preds = %for.inc.4.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.5.4.i:                                    ; preds = %for.inc.4.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582720, i32 %period_cycles.0)
  %cmp6.6.4.i = icmp ult i32 %period_cycles.0, 12582720
  br i1 %cmp6.6.4.i, label %for.inc.5.4.i.if.end446_crit_edge, label %for.inc.6.4.i

for.inc.5.4.i.if.end446_crit_edge:                ; preds = %for.inc.5.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.6.4.i:                                    ; preds = %for.inc.5.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14679840, i32 %period_cycles.0)
  %cmp6.7.4.i = icmp ult i32 %period_cycles.0, 14679840
  br i1 %cmp6.7.4.i, label %for.inc.6.4.i.if.end446_crit_edge, label %for.inc.3.5.i

for.inc.6.4.i.if.end446_crit_edge:                ; preds = %for.inc.6.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.3.5.i:                                    ; preds = %for.inc.6.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16776960, i32 %period_cycles.0)
  %cmp6.4.5.i = icmp ult i32 %period_cycles.0, 16776960
  br i1 %cmp6.4.5.i, label %for.inc.3.5.i.if.end446_crit_edge, label %for.inc.4.5.i

for.inc.3.5.i.if.end446_crit_edge:                ; preds = %for.inc.3.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.4.5.i:                                    ; preds = %for.inc.3.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20971200, i32 %period_cycles.0)
  %cmp6.5.5.i = icmp ult i32 %period_cycles.0, 20971200
  br i1 %cmp6.5.5.i, label %for.inc.4.5.i.if.end446_crit_edge, label %for.inc.5.5.i

for.inc.4.5.i.if.end446_crit_edge:                ; preds = %for.inc.4.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.5.5.i:                                    ; preds = %for.inc.4.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165440, i32 %period_cycles.0)
  %cmp6.6.5.i = icmp ult i32 %period_cycles.0, 25165440
  br i1 %cmp6.6.5.i, label %for.inc.5.5.i.if.end446_crit_edge, label %for.inc.6.5.i

for.inc.5.5.i.if.end446_crit_edge:                ; preds = %for.inc.5.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.6.5.i:                                    ; preds = %for.inc.5.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29359680, i32 %period_cycles.0)
  %cmp6.7.5.i = icmp ult i32 %period_cycles.0, 29359680
  br i1 %cmp6.7.5.i, label %for.inc.6.5.i.if.end446_crit_edge, label %for.inc.3.6.i

for.inc.6.5.i.if.end446_crit_edge:                ; preds = %for.inc.6.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.3.6.i:                                    ; preds = %for.inc.6.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33553920, i32 %period_cycles.0)
  %cmp6.4.6.i = icmp ult i32 %period_cycles.0, 33553920
  br i1 %cmp6.4.6.i, label %for.inc.3.6.i.if.end446_crit_edge, label %for.inc.4.6.i

for.inc.3.6.i.if.end446_crit_edge:                ; preds = %for.inc.3.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.4.6.i:                                    ; preds = %for.inc.3.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 41942400, i32 %period_cycles.0)
  %cmp6.5.6.i = icmp ult i32 %period_cycles.0, 41942400
  br i1 %cmp6.5.6.i, label %for.inc.4.6.i.if.end446_crit_edge, label %for.inc.5.6.i

for.inc.4.6.i.if.end446_crit_edge:                ; preds = %for.inc.4.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.5.6.i:                                    ; preds = %for.inc.4.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50330880, i32 %period_cycles.0)
  %cmp6.6.6.i = icmp ult i32 %period_cycles.0, 50330880
  br i1 %cmp6.6.6.i, label %for.inc.5.6.i.if.end446_crit_edge, label %for.inc.6.6.i

for.inc.5.6.i.if.end446_crit_edge:                ; preds = %for.inc.5.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.6.6.i:                                    ; preds = %for.inc.5.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 58719360, i32 %period_cycles.0)
  %cmp6.7.6.i = icmp ult i32 %period_cycles.0, 58719360
  br i1 %cmp6.7.6.i, label %for.inc.6.6.i.if.end446_crit_edge, label %for.inc.3.7.i

for.inc.6.6.i.if.end446_crit_edge:                ; preds = %for.inc.6.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.3.7.i:                                    ; preds = %for.inc.6.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67107840, i32 %period_cycles.0)
  %cmp6.4.7.i = icmp ult i32 %period_cycles.0, 67107840
  br i1 %cmp6.4.7.i, label %for.inc.3.7.i.if.end446_crit_edge, label %for.inc.4.7.i

for.inc.3.7.i.if.end446_crit_edge:                ; preds = %for.inc.3.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.4.7.i:                                    ; preds = %for.inc.3.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 83884800, i32 %period_cycles.0)
  %cmp6.5.7.i = icmp ult i32 %period_cycles.0, 83884800
  br i1 %cmp6.5.7.i, label %for.inc.4.7.i.if.end446_crit_edge, label %for.inc.5.7.i

for.inc.4.7.i.if.end446_crit_edge:                ; preds = %for.inc.4.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.5.7.i:                                    ; preds = %for.inc.4.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100661760, i32 %period_cycles.0)
  %cmp6.6.7.i = icmp ult i32 %period_cycles.0, 100661760
  br i1 %cmp6.6.7.i, label %for.inc.5.7.i.if.end446_crit_edge, label %for.inc.6.7.i

for.inc.5.7.i.if.end446_crit_edge:                ; preds = %for.inc.5.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

for.inc.6.7.i:                                    ; preds = %for.inc.5.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 117438720, i32 %period_cycles.0)
  %cmp6.7.7.i = icmp ult i32 %period_cycles.0, 117438720
  br i1 %cmp6.7.7.i, label %for.inc.6.7.i.if.end446_crit_edge, label %do.end444

for.inc.6.7.i.if.end446_crit_edge:                ; preds = %for.inc.6.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end446

do.end444:                                        ; preds = %for.inc.6.7.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end446:                                        ; preds = %for.inc.6.7.i.if.end446_crit_edge, %for.inc.5.7.i.if.end446_crit_edge, %for.inc.4.7.i.if.end446_crit_edge, %for.inc.3.7.i.if.end446_crit_edge, %for.inc.6.6.i.if.end446_crit_edge, %for.inc.5.6.i.if.end446_crit_edge, %for.inc.4.6.i.if.end446_crit_edge, %for.inc.3.6.i.if.end446_crit_edge, %for.inc.6.5.i.if.end446_crit_edge, %for.inc.5.5.i.if.end446_crit_edge, %for.inc.4.5.i.if.end446_crit_edge, %for.inc.3.5.i.if.end446_crit_edge, %for.inc.6.4.i.if.end446_crit_edge, %for.inc.5.4.i.if.end446_crit_edge, %for.inc.4.4.i.if.end446_crit_edge, %for.inc.3.4.i.if.end446_crit_edge, %for.inc.6.3.i.if.end446_crit_edge, %for.inc.5.3.i.if.end446_crit_edge, %for.inc.4.3.i.if.end446_crit_edge, %for.inc.3.3.i.if.end446_crit_edge, %for.inc.6.2.i.if.end446_crit_edge, %for.inc.5.2.i.if.end446_crit_edge, %for.inc.4.2.i.if.end446_crit_edge, %for.inc.3.2.i.if.end446_crit_edge, %for.inc.6.1.i.if.end446_crit_edge, %for.inc.5.1.i.if.end446_crit_edge, %for.inc.4.1.i.if.end446_crit_edge, %for.inc.3.1.i.if.end446_crit_edge, %for.inc.6.i.if.end446_crit_edge, %for.inc.5.i.if.end446_crit_edge, %for.inc.4.i.if.end446_crit_edge, %for.inc.3.i.if.end446_crit_edge, %for.inc.2.i.if.end446_crit_edge, %for.inc.1.i.if.end446_crit_edge, %if.then.fold.split.i, %for.inc.1.if.end446_crit_edge
  %clkdiv.029.lcssa.i = phi i16 [ 0, %for.inc.1.if.end446_crit_edge ], [ 0, %for.inc.1.i.if.end446_crit_edge ], [ 0, %for.inc.2.i.if.end446_crit_edge ], [ 0, %for.inc.3.i.if.end446_crit_edge ], [ 0, %for.inc.4.i.if.end446_crit_edge ], [ 0, %for.inc.5.i.if.end446_crit_edge ], [ 0, %for.inc.6.i.if.end446_crit_edge ], [ 1024, %for.inc.3.1.i.if.end446_crit_edge ], [ 1024, %for.inc.4.1.i.if.end446_crit_edge ], [ 1024, %for.inc.5.1.i.if.end446_crit_edge ], [ 1024, %for.inc.6.1.i.if.end446_crit_edge ], [ 2048, %for.inc.3.2.i.if.end446_crit_edge ], [ 2048, %for.inc.4.2.i.if.end446_crit_edge ], [ 2048, %for.inc.5.2.i.if.end446_crit_edge ], [ 2048, %for.inc.6.2.i.if.end446_crit_edge ], [ 3072, %for.inc.3.3.i.if.end446_crit_edge ], [ 3072, %for.inc.4.3.i.if.end446_crit_edge ], [ 3072, %for.inc.5.3.i.if.end446_crit_edge ], [ 3072, %for.inc.6.3.i.if.end446_crit_edge ], [ 4096, %for.inc.3.4.i.if.end446_crit_edge ], [ 4096, %for.inc.4.4.i.if.end446_crit_edge ], [ 4096, %for.inc.5.4.i.if.end446_crit_edge ], [ 4096, %for.inc.6.4.i.if.end446_crit_edge ], [ 5120, %for.inc.3.5.i.if.end446_crit_edge ], [ 5120, %for.inc.4.5.i.if.end446_crit_edge ], [ 5120, %for.inc.5.5.i.if.end446_crit_edge ], [ 5120, %for.inc.6.5.i.if.end446_crit_edge ], [ 6144, %for.inc.3.6.i.if.end446_crit_edge ], [ 6144, %for.inc.4.6.i.if.end446_crit_edge ], [ 6144, %for.inc.5.6.i.if.end446_crit_edge ], [ 6144, %for.inc.6.6.i.if.end446_crit_edge ], [ 7168, %for.inc.3.7.i.if.end446_crit_edge ], [ 7168, %for.inc.4.7.i.if.end446_crit_edge ], [ 7168, %for.inc.5.7.i.if.end446_crit_edge ], [ 7168, %for.inc.6.7.i.if.end446_crit_edge ], [ 0, %if.then.fold.split.i ]
  %hspclkdiv.026.lcssa.i = phi i16 [ 0, %for.inc.1.if.end446_crit_edge ], [ 256, %for.inc.1.i.if.end446_crit_edge ], [ 384, %for.inc.2.i.if.end446_crit_edge ], [ 512, %for.inc.3.i.if.end446_crit_edge ], [ 640, %for.inc.4.i.if.end446_crit_edge ], [ 768, %for.inc.5.i.if.end446_crit_edge ], [ 896, %for.inc.6.i.if.end446_crit_edge ], [ 512, %for.inc.3.1.i.if.end446_crit_edge ], [ 640, %for.inc.4.1.i.if.end446_crit_edge ], [ 768, %for.inc.5.1.i.if.end446_crit_edge ], [ 896, %for.inc.6.1.i.if.end446_crit_edge ], [ 512, %for.inc.3.2.i.if.end446_crit_edge ], [ 640, %for.inc.4.2.i.if.end446_crit_edge ], [ 768, %for.inc.5.2.i.if.end446_crit_edge ], [ 896, %for.inc.6.2.i.if.end446_crit_edge ], [ 512, %for.inc.3.3.i.if.end446_crit_edge ], [ 640, %for.inc.4.3.i.if.end446_crit_edge ], [ 768, %for.inc.5.3.i.if.end446_crit_edge ], [ 896, %for.inc.6.3.i.if.end446_crit_edge ], [ 512, %for.inc.3.4.i.if.end446_crit_edge ], [ 640, %for.inc.4.4.i.if.end446_crit_edge ], [ 768, %for.inc.5.4.i.if.end446_crit_edge ], [ 896, %for.inc.6.4.i.if.end446_crit_edge ], [ 512, %for.inc.3.5.i.if.end446_crit_edge ], [ 640, %for.inc.4.5.i.if.end446_crit_edge ], [ 768, %for.inc.5.5.i.if.end446_crit_edge ], [ 896, %for.inc.6.5.i.if.end446_crit_edge ], [ 512, %for.inc.3.6.i.if.end446_crit_edge ], [ 640, %for.inc.4.6.i.if.end446_crit_edge ], [ 768, %for.inc.5.6.i.if.end446_crit_edge ], [ 896, %for.inc.6.6.i.if.end446_crit_edge ], [ 512, %for.inc.3.7.i.if.end446_crit_edge ], [ 640, %for.inc.4.7.i.if.end446_crit_edge ], [ 768, %for.inc.5.7.i.if.end446_crit_edge ], [ 896, %for.inc.6.7.i.if.end446_crit_edge ], [ 128, %if.then.fold.split.i ]
  %mul4.lcssa.i = phi i32 [ 1, %for.inc.1.if.end446_crit_edge ], [ 4, %for.inc.1.i.if.end446_crit_edge ], [ 6, %for.inc.2.i.if.end446_crit_edge ], [ 8, %for.inc.3.i.if.end446_crit_edge ], [ 10, %for.inc.4.i.if.end446_crit_edge ], [ 12, %for.inc.5.i.if.end446_crit_edge ], [ 14, %for.inc.6.i.if.end446_crit_edge ], [ 16, %for.inc.3.1.i.if.end446_crit_edge ], [ 20, %for.inc.4.1.i.if.end446_crit_edge ], [ 24, %for.inc.5.1.i.if.end446_crit_edge ], [ 28, %for.inc.6.1.i.if.end446_crit_edge ], [ 32, %for.inc.3.2.i.if.end446_crit_edge ], [ 40, %for.inc.4.2.i.if.end446_crit_edge ], [ 48, %for.inc.5.2.i.if.end446_crit_edge ], [ 56, %for.inc.6.2.i.if.end446_crit_edge ], [ 64, %for.inc.3.3.i.if.end446_crit_edge ], [ 80, %for.inc.4.3.i.if.end446_crit_edge ], [ 96, %for.inc.5.3.i.if.end446_crit_edge ], [ 112, %for.inc.6.3.i.if.end446_crit_edge ], [ 128, %for.inc.3.4.i.if.end446_crit_edge ], [ 160, %for.inc.4.4.i.if.end446_crit_edge ], [ 192, %for.inc.5.4.i.if.end446_crit_edge ], [ 224, %for.inc.6.4.i.if.end446_crit_edge ], [ 256, %for.inc.3.5.i.if.end446_crit_edge ], [ 320, %for.inc.4.5.i.if.end446_crit_edge ], [ 384, %for.inc.5.5.i.if.end446_crit_edge ], [ 448, %for.inc.6.5.i.if.end446_crit_edge ], [ 512, %for.inc.3.6.i.if.end446_crit_edge ], [ 640, %for.inc.4.6.i.if.end446_crit_edge ], [ 768, %for.inc.5.6.i.if.end446_crit_edge ], [ 896, %for.inc.6.6.i.if.end446_crit_edge ], [ 1024, %for.inc.3.7.i.if.end446_crit_edge ], [ 1280, %for.inc.4.7.i.if.end446_crit_edge ], [ 1536, %for.inc.5.7.i.if.end446_crit_edge ], [ 1792, %for.inc.6.7.i.if.end446_crit_edge ], [ 2, %if.then.fold.split.i ]
  %or.i = or i16 %hspclkdiv.026.lcssa.i, %clkdiv.029.lcssa.i
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %23, i32 noundef 4) #6
  %mmio_base = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 2
  %24 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base, align 4
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %27 = and i16 %26, 32736
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %or16.i = or i16 %or.i, %28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %29 = tail call i16 @llvm.bswap.i16(i16 %or16.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %29) #6, !srcloc !84
  %div450 = udiv i32 %period_cycles.0, %mul4.lcssa.i
  %div452 = udiv i32 %duty_cycles.0, %mul4.lcssa.i
  %30 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_base, align 4
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %31) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %33 = and i16 %32, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %33) #6, !srcloc !84
  %34 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_base, align 4
  %conv455 = trunc i32 %div450 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv455) #6
  %add.ptr.i = getelementptr i8, ptr %35, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %36) #6, !srcloc !84
  %37 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio_base, align 4
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %38) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %40 = and i16 %39, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 %40) #6, !srcloc !84
  %41 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp458 = icmp eq i32 %42, 1
  %. = select i1 %cmp458, i32 20, i32 18
  %43 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio_base, align 4
  %conv464 = trunc i32 %div452 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv464) #6
  %add.ptr.i666 = getelementptr i8, ptr %44, i32 %.
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i666, i16 %45) #6, !srcloc !84
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip, align 4
  %call.i667 = tail call i32 @__pm_runtime_idle(ptr noundef %47, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end446, %do.end444, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end444 ], [ 0, %if.end446 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ehrpwm_pwm_set_polarity(ptr nocapture noundef writeonly %chip, ptr nocapture noundef readonly %pwm, i32 noundef %polarity) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %arrayidx = getelementptr %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 4, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %polarity, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehrpwm_pwm_enable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %mmio_base = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 26
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %7 = and i16 %6, 16383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %7) #6, !srcloc !84
  %8 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base, align 4
  %add.ptr.i24 = getelementptr i8, ptr %9, i32 28
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i24) #6, !srcloc !81
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %neg.i = select i1 %tobool.not, i16 -4, i16 -13
  %and.i25 = and i16 %11, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %12 = tail call i16 @llvm.bswap.i16(i16 %and.i25) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i24, i16 %12) #6, !srcloc !84
  %13 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp eq i32 %14, 1
  br i1 %cmp.i, label %if.then.i, label %if.else3.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp1.i = icmp eq i32 %16, 1
  %..i = select i1 %cmp1.i, i16 517, i16 266
  br label %configure_polarity.exit

if.else3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5.i = getelementptr %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 4, i32 %14
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp6.i = icmp eq i32 %18, 1
  %.17.i = select i1 %cmp6.i, i16 37, i16 26
  br label %configure_polarity.exit

configure_polarity.exit:                          ; preds = %if.else3.i, %if.then.i
  %aqctl_val.0.i = phi i16 [ %..i, %if.then.i ], [ %.17.i, %if.else3.i ]
  %aqctl_mask.0.i = phi i16 [ 783, %if.then.i ], [ 63, %if.else3.i ]
  %aqctl_reg.0.i = phi i32 [ 24, %if.then.i ], [ 22, %if.else3.i ]
  %19 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %aqctl_reg.0.i
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #6, !srcloc !81
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %neg.i.i = xor i16 %aqctl_mask.0.i, -1
  %and.i.i = and i16 %22, %neg.i.i
  %and615.i.i = and i16 %aqctl_mask.0.i, %aqctl_val.0.i
  %or16.i.i = or i16 %and.i.i, %and615.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %23 = tail call i16 @llvm.bswap.i16(i16 %or16.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %23) #6, !srcloc !84
  %tbclk = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 5
  %24 = ptrtoint ptr %tbclk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tbclk, align 4
  %call4 = tail call i32 @clk_enable(ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %configure_polarity.exit.cleanup_crit_edge, label %do.end

configure_polarity.exit.cleanup_crit_edge:        ; preds = %configure_polarity.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %configure_polarity.exit
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %if.end.i ], [ %29, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i, i32 noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %configure_polarity.exit.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ehrpwm_pwm_disable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %mmio_base = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 26
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %5 = and i16 %4, 16383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %5) #6, !srcloc !84
  %6 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base, align 4
  %add.ptr.i13 = getelementptr i8, ptr %7, i32 28
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i13) #6, !srcloc !81
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %neg.i = select i1 %tobool.not, i16 -4, i16 -13
  %and.i14 = and i16 %9, %neg.i
  %and615.i = select i1 %tobool.not, i16 1, i16 4
  %or16.i = or i16 %and.i14, %and615.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %10 = tail call i16 @llvm.bswap.i16(i16 %or16.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i13, i16 %10) #6, !srcloc !84
  %11 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base, align 4
  %add.ptr.i15 = getelementptr i8, ptr %12, i32 26
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i15) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %14 = or i16 %13, -16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15, i16 %14) #6, !srcloc !84
  %15 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base, align 4
  %add.ptr.i18 = getelementptr i8, ptr %16, i32 28
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i18) #6, !srcloc !81
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %and.i20 = and i16 %18, %neg.i
  %or16.i22 = or i16 %and.i20, %and615.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %19 = tail call i16 @llvm.bswap.i16(i16 %or16.i22) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i18, i16 %19) #6, !srcloc !84
  %tbclk = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %chip, i32 0, i32 5
  %20 = ptrtoint ptr %tbclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tbclk, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehrpwm_pwm_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  %mmio_base.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base.i, align 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #6, !srcloc !81
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %ctx.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %ctx.i, align 4
  %9 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 10
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #6, !srcloc !81
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %tbprd.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %tbprd.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %tbprd.i, align 2
  %14 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %15, i32 18
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i) #6, !srcloc !81
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %cmpa.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %cmpa.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %cmpa.i, align 4
  %19 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %20, i32 20
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i44.i) #6, !srcloc !81
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %cmpb.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %cmpb.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %cmpb.i, align 2
  %24 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %25, i32 22
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i45.i) #6, !srcloc !81
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %aqctla.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 4
  %28 = ptrtoint ptr %aqctla.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %aqctla.i, align 4
  %29 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %30, i32 24
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i46.i) #6, !srcloc !81
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %aqctlb.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 5
  %33 = ptrtoint ptr %aqctlb.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %aqctlb.i, align 2
  %34 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %35, i32 26
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i47.i) #6, !srcloc !81
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %aqsfrc.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 6
  %38 = ptrtoint ptr %aqsfrc.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %aqsfrc.i, align 4
  %39 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %40, i32 28
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i48.i) #6, !srcloc !81
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %aqcsfrc.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 7
  %43 = ptrtoint ptr %aqcsfrc.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %aqcsfrc.i, align 2
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i49.i = tail call i32 @__pm_runtime_idle(ptr noundef %45, i32 noundef 4) #6
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp11.not = icmp eq i32 %47, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %48 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pwms, align 4
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr %struct.pwm_device, ptr %49, i32 %i.012, i32 7, i32 3
  %50 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.012, 1
  %51 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %npwm, align 4
  %cmp = icmp ult i32 %inc, %52
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehrpwm_pwm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not = icmp eq i32 %3, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwms, align 4
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr %struct.pwm_device, ptr %5, i32 %i.012, i32 7, i32 3
  %6 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.012, 1
  %7 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %npwm, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %mmio_base.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i, align 4
  %ctx.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6
  %tbprd.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %tbprd.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tbprd.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #6
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %13) #6, !srcloc !84
  %14 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base.i, align 4
  %cmpa.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %cmpa.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cmpa.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #6
  %add.ptr.i30.i = getelementptr i8, ptr %15, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i30.i, i16 %18) #6, !srcloc !84
  %19 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_base.i, align 4
  %cmpb.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 3
  %21 = ptrtoint ptr %cmpb.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cmpb.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #6
  %add.ptr.i31.i = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i31.i, i16 %23) #6, !srcloc !84
  %24 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base.i, align 4
  %aqctla.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %aqctla.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %aqctla.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #6
  %add.ptr.i32.i = getelementptr i8, ptr %25, i32 22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i32.i, i16 %28) #6, !srcloc !84
  %29 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_base.i, align 4
  %aqctlb.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 5
  %31 = ptrtoint ptr %aqctlb.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %aqctlb.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #6
  %add.ptr.i33.i = getelementptr i8, ptr %30, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i33.i, i16 %33) #6, !srcloc !84
  %34 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_base.i, align 4
  %aqsfrc.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 6
  %36 = ptrtoint ptr %aqsfrc.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %aqsfrc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #6
  %add.ptr.i34.i = getelementptr i8, ptr %35, i32 26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i34.i, i16 %38) #6, !srcloc !84
  %39 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio_base.i, align 4
  %aqcsfrc.i = getelementptr inbounds %struct.ehrpwm_pwm_chip, ptr %1, i32 0, i32 6, i32 7
  %41 = ptrtoint ptr %aqcsfrc.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %aqcsfrc.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #6
  %add.ptr.i35.i = getelementptr i8, ptr %40, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i35.i, i16 %43) #6, !srcloc !84
  %44 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio_base.i, align 4
  %46 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ctx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %45, i16 %48) #6, !srcloc !84
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_pwm_tiehrpwm__171_579_ehrpwm_pwm_driver_init6, !1, !"__initcall__kmod_pwm_tiehrpwm__171_579_ehrpwm_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 579, i32 1}
!2 = !{ptr @__exitcall_ehrpwm_pwm_driver_exit, !1, !"__exitcall_ehrpwm_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description172, !4, !"__UNIQUE_ID_description172", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 581, i32 1}
!5 = !{ptr @__UNIQUE_ID_author173, !6, !"__UNIQUE_ID_author173", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 582, i32 1}
!7 = !{ptr @__UNIQUE_ID_file174, !8, !"__UNIQUE_ID_file174", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 583, i32 1}
!9 = !{ptr @__UNIQUE_ID_license175, !8, !"__UNIQUE_ID_license175", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 572, i32 11}
!12 = !{ptr @ehrpwm_pwm_driver, !13, !"ehrpwm_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 570, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 431, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 433, i32 35}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 434, i32 4}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ehrpwm_pwm_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ehrpwm_pwm_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 440, i32 50}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 444, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ehrpwm_pwm_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ehrpwm_pwm_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 457, i32 39}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 459, i32 56}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 463, i32 3}
!39 = !{ptr @ehrpwm_pwm_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ehrpwm_pwm_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 469, i32 3}
!43 = !{ptr @ehrpwm_pwm_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ehrpwm_pwm_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @ehrpwm_pwm_ops, !46, !"ehrpwm_pwm_ops", i1 false, i1 false}
!46 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 404, i32 29}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 396, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ehrpwm_pwm_free._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ehrpwm_pwm_free._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 259, i32 4}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ehrpwm_pwm_config._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ehrpwm_pwm_config._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 271, i32 3}
!59 = !{ptr @ehrpwm_pwm_config._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ehrpwm_pwm_config._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 349, i32 3}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ehrpwm_pwm_enable._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ehrpwm_pwm_enable._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @ehrpwm_of_match, !67, !"ehrpwm_of_match", i1 false, i1 false}
!67 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 413, i32 34}
!68 = !{ptr @ehrpwm_pwm_pm_ops, !69, !"ehrpwm_pwm_pm_ops", i1 false, i1 false}
!69 = !{!"../drivers/pwm/pwm-tiehrpwm.c", i32 567, i32 8}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 714093, i64 714120, i64 714142, i64 714170}
!80 = !{i64 714501, i64 714528, i64 714561, i64 714582, i64 714609, i64 714635}
!81 = !{i64 4942538}
!82 = !{i64 2152602082}
!83 = !{i64 2152602292}
!84 = !{i64 4942338}
!85 = !{i64 2152601435}
!86 = !{i64 2152601054}
