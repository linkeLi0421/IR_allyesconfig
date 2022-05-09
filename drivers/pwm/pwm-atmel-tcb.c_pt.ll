; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-atmel-tcb.c_pt.bc'
source_filename = "../drivers/pwm/pwm-atmel-tcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atmel_tcb_config = type { i32, i8, i8 }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.atmel_tcb_pwm_chip = type { %struct.pwm_chip, %struct.spinlock, i8, i8, ptr, ptr, ptr, ptr, [2 x ptr], %struct.atmel_tcb_channel }
%struct.atmel_tcb_channel = type { i32, i32, i32, i32, i32 }
%struct.atmel_tcb_pwm_device = type { i32, i32, i32, i32 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@atmel_tcb_divisors = dso_local constant { [5 x i8], [27 x i8] } { [5 x i8] c"\02\08 \80\00", [27 x i8] zeroinitializer }, align 32
@__initcall__kmod_pwm_atmel_tcb__187_569_atmel_tcb_pwm_driver_init6 = internal global ptr @atmel_tcb_pwm_driver_init, section ".initcall6.init", align 4
@atmel_tcb_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_tcb_pwm_probe, ptr @atmel_tcb_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_tcb_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_tcb_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_tcb_pwm_driver_exit = internal global ptr @atmel_tcb_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [63 x i8] c"pwm_atmel_tcb.author=Boris BREZILLON <b.brezillon@overkiz.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [76 x i8] c"pwm_atmel_tcb.description=Atmel Timer Counter Pulse Width Modulation Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [45 x i8] c"pwm_atmel_tcb.file=drivers/pwm/pwm-atmel-tcb\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [29 x i8] c"pwm_atmel_tcb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel-tcb-pwm\00", [18 x i8] zeroinitializer }, align 32
@atmel_tcb_pwm_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,tcb-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_tcb_pwm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_tcb_pwm_suspend, ptr @atmel_tcb_pwm_resume, ptr @atmel_tcb_pwm_suspend, ptr @atmel_tcb_pwm_resume, ptr @atmel_tcb_pwm_suspend, ptr @atmel_tcb_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__const.atmel_tcb_pwm_probe.clk_name = private unnamed_addr constant [7 x i8] c"t0_clk\00", align 1
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@atmel_tcb_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 436, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"failed to get Timer Counter Block channel from device tree (error: %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_tcb_pwm_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/pwm/pwm-atmel-tcb.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_tcb_pwm_probe._entry_ptr = internal global ptr @atmel_tcb_pwm_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slow_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"t0_clk\00", [25 x i8] zeroinitializer }, align 32
@atmel_tcb_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_rm9200_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_sam9x5_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_sama5d2_config }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gclk\00", [27 x i8] zeroinitializer }, align 32
@atmel_tcb_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @atmel_tcb_pwm_request, ptr @atmel_tcb_pwm_free, ptr null, ptr @atmel_tcb_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@atmel_tcb_pwm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&tcbpwm->lock\00", [18 x i8] zeroinitializer }, align 32
@tcb_rm9200_config = internal global { %struct.atmel_tcb_config, [24 x i8] } { %struct.atmel_tcb_config { i32 16, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@tcb_sam9x5_config = internal global { %struct.atmel_tcb_config, [24 x i8] } { %struct.atmel_tcb_config { i32 32, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@tcb_sama5d2_config = internal global { %struct.atmel_tcb_config, [24 x i8] } { %struct.atmel_tcb_config { i32 32, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@atmel_tcb_pwm_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"failed to configure period_ns: PWM group already configured with a different value\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel_tcb_pwm_config\00", [43 x i8] zeroinitializer }, align 32
@atmel_tcb_pwm_config._entry_ptr = internal global ptr @atmel_tcb_pwm_config._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"atmel_tcb_divisors\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 64, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"atmel_tcb_pwm_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 560, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 562, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"atmel_tcb_pwm_dt_ids\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 516, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"atmel_tcb_pwm_pm_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 557, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 432, i32 33 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 434, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 444, i32 44 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 451, i32 40 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"atmel_tcb_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 412, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 459, i32 41 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"atmel_tcb_pwm_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 392, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 484, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"tcb_rm9200_config\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 399, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"tcb_sam9x5_config\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 403, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"tcb_sama5d2_config\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 407, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [31 x i8] c"../drivers/pwm/pwm-atmel-tcb.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 356, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_atmel_tcb_pwm_driver_exit, ptr @__initcall__kmod_pwm_atmel_tcb__187_569_atmel_tcb_pwm_driver_init6, ptr @atmel_tcb_pwm_config._entry, ptr @atmel_tcb_pwm_config._entry_ptr, ptr @atmel_tcb_pwm_driver_exit, ptr @atmel_tcb_pwm_probe._entry, ptr @atmel_tcb_pwm_probe._entry_ptr, ptr @atmel_tcb_divisors, ptr @atmel_tcb_pwm_driver, ptr @.str, ptr @atmel_tcb_pwm_dt_ids, ptr @atmel_tcb_pwm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @atmel_tcb_of_match, ptr @.str.9, ptr @atmel_tcb_pwm_ops, ptr @atmel_tcb_pwm_probe.__key, ptr @.str.10, ptr @tcb_rm9200_config, ptr @tcb_sam9x5_config, ptr @tcb_sama5d2_config, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tcb_divisors to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tcb_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tcb_pwm_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tcb_pwm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tcb_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tcb_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tcb_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tcb_pwm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcb_rm9200_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcb_sam9x5_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcb_sama5d2_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tcb_pwm_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_tcb_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_tcb_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_tcb_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_name = alloca [7 x i8], align 1
  %channel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %clk_name) #6
  %2 = call ptr @memcpy(ptr %clk_name, ptr @__const.atmel_tcb_pwm_probe.clk_name, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #6
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %channel, align 4, !annotation !63
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %channel, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %call2 = call ptr @syscon_node_to_regmap(ptr noundef %5) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %call8 = call ptr @of_clk_get_by_name(ptr noundef %8, ptr noundef nonnull @.str.7) #6
  %cmp.i117 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr inbounds [7 x i8], ptr %clk_name, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = trunc i32 %11 to i8
  %conv13 = add i8 %13, %14
  store i8 %conv13, ptr %arrayidx, align 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 4
  %call15 = call ptr @of_clk_get_by_name(ptr noundef %16, ptr noundef nonnull %clk_name) #6
  %cmp.i118 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then17, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 4
  %call19 = call ptr @of_clk_get_by_name(ptr noundef %18, ptr noundef nonnull @.str.8) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end12.if.end20_crit_edge
  %clk.0 = phi ptr [ %call19, %if.then17 ], [ %call15, %if.end12.if.end20_crit_edge ]
  %cmp.i119 = icmp ugt ptr %clk.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %clk.0 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 4
  %call26 = call ptr @of_match_node(ptr noundef nonnull @atmel_tcb_of_match, ptr noundef %21) #6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call26, i32 0, i32 3
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %has_gclk = getelementptr inbounds %struct.atmel_tcb_config, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %has_gclk to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %has_gclk, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.end24.if.end34_crit_edge, label %if.then27

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then27:                                        ; preds = %if.end24
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 4
  %call29 = call ptr @of_clk_get_by_name(ptr noundef %27, ptr noundef nonnull @.str.9) #6
  %cmp.i120 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then31, label %if.then27.if.end34_crit_edge

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.then27.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  %gclk.0 = phi ptr [ %call29, %if.then27.if.end34_crit_edge ], [ null, %if.end24.if.end34_crit_edge ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 128, i32 noundef 3520) #6
  %cmp37 = icmp eq ptr %call.i, null
  br i1 %cmp37, label %if.end34.err_slow_clk_crit_edge, label %if.end40

if.end34.err_slow_clk_crit_edge:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_slow_clk

if.end40:                                         ; preds = %if.end34
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @atmel_tcb_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %npwm, align 4
  %32 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel, align 4
  %conv45 = trunc i32 %33 to i8
  %channel46 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %channel46 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv45, ptr %channel46, align 4
  %regmap47 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %regmap47 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call2, ptr %regmap47, align 4
  %clk48 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %clk48 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %clk.0, ptr %clk48, align 4
  %gclk49 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %gclk49 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %gclk.0, ptr %gclk49, align 4
  %slow_clk50 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %slow_clk50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call8, ptr %slow_clk50, align 4
  %39 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %23, align 4
  %conv51 = trunc i32 %40 to i8
  %width = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv51, ptr %width, align 1
  %call.i121 = call i32 @clk_prepare(ptr noundef %call8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool.not.i = icmp eq i32 %call.i121, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.err_slow_clk_crit_edge

if.end40.err_slow_clk_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_slow_clk

if.end.i:                                         ; preds = %if.end40
  %call1.i = call i32 @clk_enable(ptr noundef %call8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body56, label %if.end.i.err_slow_clk.sink.split_crit_edge

if.end.i.err_slow_clk.sink.split_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_slow_clk.sink.split

do.body56:                                        ; preds = %if.end.i
  %lock = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %call.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @atmel_tcb_pwm_probe.__key, i16 noundef signext 3) #6
  %call61 = call i32 @pwmchip_add(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %err_disable_clk, label %if.end65

if.end65:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_disable_clk:                                  ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %slow_clk50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %slow_clk50, align 4
  call void @clk_disable(ptr noundef %44) #6
  br label %err_slow_clk.sink.split

err_slow_clk.sink.split:                          ; preds = %err_disable_clk, %if.end.i.err_slow_clk.sink.split_crit_edge
  %call8.sink = phi ptr [ %44, %err_disable_clk ], [ %call8, %if.end.i.err_slow_clk.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call61, %err_disable_clk ], [ %call1.i, %if.end.i.err_slow_clk.sink.split_crit_edge ]
  call void @clk_unprepare(ptr noundef %call8.sink) #6
  br label %err_slow_clk

err_slow_clk:                                     ; preds = %err_slow_clk.sink.split, %if.end40.err_slow_clk_crit_edge, %if.end34.err_slow_clk_crit_edge
  %err.0 = phi i32 [ -12, %if.end34.err_slow_clk_crit_edge ], [ %call.i121, %if.end40.err_slow_clk_crit_edge ], [ %err.0.ph, %err_slow_clk.sink.split ]
  call void @clk_put(ptr noundef %call8) #6
  br label %cleanup

cleanup:                                          ; preds = %err_slow_clk, %if.end65, %if.then31, %if.then22, %if.then10, %if.then4, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %6, %if.then4 ], [ %9, %if.then10 ], [ %19, %if.then22 ], [ %28, %if.then31 ], [ %err.0, %err_slow_clk ], [ 0, %if.end65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %clk_name) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #6
  %slow_clk = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %slow_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slow_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %4 = ptrtoint ptr %slow_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slow_clk, align 4
  tail call void @clk_put(ptr noundef %5) #6
  %clk = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_request(ptr noundef %chip, ptr noundef %pwm) #2 align 64 {
entry:
  %cmr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmr) #6
  %0 = ptrtoint ptr %cmr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmr, align 4, !annotation !63
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 5
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call.i80 = tail call i32 @clk_prepare(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %4) #6
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i, %if.end.if.then4_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i80, %if.end.if.then4_crit_edge ]
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  tail call void @devm_kfree(ptr noundef %6, ptr noundef nonnull %call.i) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %call7 = tail call i32 @pwm_set_chip_data(ptr noundef %pwm, ptr noundef nonnull %call.i) #6
  %lock = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 1
  %7 = call ptr @memset(ptr %call.i, i32 0, i32 16)
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %regmap = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %channel = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 2
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel, align 4
  %conv = zext i8 %11 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %add = or i32 %mul, 4
  %call8 = call i32 @regmap_read(ptr noundef %9, i32 noundef %add, ptr noundef nonnull %cmr) #6
  %12 = ptrtoint ptr %cmr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmr, align 4
  %and = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end6.if.end39_crit_edge, label %if.then10

if.end6.if.end39_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %div = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %call.i, i32 0, i32 1
  %period = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %call.i, i32 0, i32 3
  %duty = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %call.i, i32 0, i32 2
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %14 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %channel, align 4
  %conv15 = zext i8 %19 to i32
  %mul16 = shl nuw nsw i32 %conv15, 6
  %. = select i1 %cmp, i32 20, i32 24
  %add24 = or i32 %mul16, %.
  %call26 = call i32 @regmap_read(ptr noundef %17, i32 noundef %add24, ptr noundef %duty) #6
  %20 = ptrtoint ptr %cmr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmr, align 4
  %and28 = and i32 %21, 7
  %22 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and28, ptr %div, align 4
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %channel, align 4
  %conv32 = zext i8 %26 to i32
  %mul33 = shl nuw nsw i32 %conv32, 6
  %add34 = or i32 %mul33, 28
  %call36 = call i32 @regmap_read(ptr noundef %24, i32 noundef %add34, ptr noundef %period) #6
  %27 = ptrtoint ptr %cmr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmr, align 4
  %and37 = and i32 %28, -65529
  %phi.bo = or i32 %and37, 50176
  br label %if.end39

if.end39:                                         ; preds = %if.then10, %if.end6.if.end39_crit_edge
  %storemerge = phi i32 [ %phi.bo, %if.then10 ], [ 50176, %if.end6.if.end39_crit_edge ]
  %29 = ptrtoint ptr %cmr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge, ptr %cmr, align 4
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %32 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %channel, align 4
  %conv42 = zext i8 %33 to i32
  %mul43 = shl nuw nsw i32 %conv42, 6
  %add44 = or i32 %mul43, 4
  %call45 = call i32 @regmap_write(ptr noundef %31, i32 noundef %add44, i32 noundef %storemerge) #6
  call void @_raw_spin_unlock(ptr noundef %lock) #6
  %hwpwm47 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %34 = ptrtoint ptr %hwpwm47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hwpwm47, align 8
  %arrayidx = getelementptr %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 8, i32 %35
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then4 ], [ 0, %if.end39 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_tcb_pwm_free(ptr nocapture noundef %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %clk = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwpwm, align 8
  %arrayidx = getelementptr %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 8, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  tail call void @devm_kfree(ptr noundef %6, ptr noundef %call1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_apply(ptr noundef %chip, ptr noundef %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %cmr.i37 = alloca i32, align 4
  %cmr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %polarity, align 8
  %call.i = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call.i, align 4
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1.i = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmr.i) #6
  %5 = ptrtoint ptr %cmr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cmr.i, align 4, !annotation !63
  %6 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call1.i, align 4
  %duty.i = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %call1.i, i32 0, i32 2
  %8 = ptrtoint ptr %duty.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %duty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %polarity.0.i = select i1 %cmp.i, i32 %lnot.ext.i, i32 %7
  %lock.i = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %regmap.i = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 4
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %channel.i = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 2
  %12 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %channel.i, align 4
  %conv.i = zext i8 %13 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 6
  %add.i = or i32 %mul.i, 4
  %call3.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %add.i, ptr noundef nonnull %cmr.i) #6
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %14 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwpwm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4.i = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %cmr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmr.i, align 4
  br i1 %cmp4.i, label %if.then6.i, label %if.else12.i

if.then6.i:                                       ; preds = %if.then
  %and.i = and i32 %17, -16711681
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %polarity.0.i)
  %cmp7.i = icmp eq i32 %polarity.0.i, 1
  br i1 %cmp7.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %and.i, 8388608
  %18 = ptrtoint ptr %cmr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %cmr.i, align 4
  br label %atmel_tcb_pwm_disable.exit

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %or10.i = or i32 %and.i, 4194304
  %19 = ptrtoint ptr %cmr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or10.i, ptr %cmr.i, align 4
  br label %atmel_tcb_pwm_disable.exit

if.else12.i:                                      ; preds = %if.then
  %and13.i = and i32 %17, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %polarity.0.i)
  %cmp14.i = icmp eq i32 %polarity.0.i, 1
  br i1 %cmp14.i, label %if.then16.i, label %if.else18.i

if.then16.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  %or17.i = or i32 %and13.i, -2147483648
  %20 = ptrtoint ptr %cmr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or17.i, ptr %cmr.i, align 4
  br label %atmel_tcb_pwm_disable.exit

if.else18.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  %or19.i = or i32 %and13.i, 1073741824
  %21 = ptrtoint ptr %cmr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or19.i, ptr %cmr.i, align 4
  br label %atmel_tcb_pwm_disable.exit

atmel_tcb_pwm_disable.exit:                       ; preds = %if.else18.i, %if.then16.i, %if.else.i, %if.then9.i
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %24 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %channel.i, align 4
  %conv24.i = zext i8 %25 to i32
  %mul25.i = shl nuw nsw i32 %conv24.i, 6
  %add26.i = or i32 %mul25.i, 4
  %26 = ptrtoint ptr %cmr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmr.i, align 4
  %call27.i = call i32 @regmap_write(ptr noundef %23, i32 noundef %add26.i, i32 noundef %27) #6
  %28 = ptrtoint ptr %cmr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmr.i, align 4
  %and28.i = and i32 %29, 202113024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %32 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %channel.i, align 4
  %conv33.i = zext i8 %33 to i32
  %mul34.i = shl nuw nsw i32 %conv33.i, 6
  %..i = select i1 %tobool29.not.i, i32 6, i32 4
  %.64.i = zext i1 %tobool29.not.i to i32
  %call43.i = call i32 @regmap_write(ptr noundef %31, i32 noundef %mul34.i, i32 noundef %..i) #6
  %34 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 9
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.64.i, ptr %34, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmr.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %state, align 8
  %38 = tail call i64 @llvm.umin.i64(i64 %37, i64 2147483647)
  %39 = trunc i64 %38 to i32
  %duty_cycle3 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %40 = ptrtoint ptr %duty_cycle3 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %duty_cycle3, align 8
  %42 = tail call i64 @llvm.umin.i64(i64 %41, i64 2147483647)
  %43 = trunc i64 %42 to i32
  %call1.i33 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %clk.i = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 5
  %44 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk.i, align 4
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %45) #6
  %gclk.i = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 6
  %46 = ptrtoint ptr %gclk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gclk.i, align 4
  %tobool.not.i34 = icmp ne ptr %47, null
  %spec.select.i = zext i1 %tobool.not.i34 to i32
  %width.i = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 3
  %arrayidx.i = getelementptr [5 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %spec.select.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i, align 1
  %conv8.i = zext i8 %49 to i64
  %mul.i35 = mul nuw nsw i64 %conv8.i, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i35)
  %cmp164.i.i.i = icmp ult i64 %mul.i35, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !65

if.then168.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i = trunc i64 %mul.i35 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %call2.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %50 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call2.i, i64 %mul.i35) #10, !srcloc !66
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %50, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %51 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %width.i, align 1
  %sh_prom.i = zext i8 %52 to i64
  %shl.i = shl i64 %dividend.addr.0.i.i.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %38)
  %cmp12.not.i = icmp ult i64 %shl.i, %38
  %extract.t = trunc i64 %dividend.addr.0.i.i.i to i32
  br i1 %cmp12.not.i, label %for.inc.i, label %div_u64.exit.i.if.else162.i.i436.i_crit_edge

div_u64.exit.i.if.else162.i.i436.i_crit_edge:     ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else162.i.i436.i

for.inc.i:                                        ; preds = %div_u64.exit.i
  %inc.i = select i1 %tobool.not.i34, i32 2, i32 1
  %arrayidx.i.1 = getelementptr [5 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %inc.i
  %53 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.1, align 1
  %conv8.i.1 = zext i8 %54 to i64
  %mul.i35.1 = mul nuw nsw i64 %conv8.i.1, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i35.1)
  %cmp164.i.i.i.1 = icmp ult i64 %mul.i35.1, 4294967296
  br i1 %cmp164.i.i.i.1, label %if.then168.i.i.i.1, label %if.else174.i.i.i.1, !prof !65

if.else174.i.i.i.1:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call2.i, i64 %mul.i35.1) #10, !srcloc !66
  %asmresult1.i.i.i.i.1 = extractvalue { i64, i64 } %55, 1
  br label %div_u64.exit.i.1

if.then168.i.i.i.1:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i.1 = trunc i64 %mul.i35.1 to i32
  %div172.i.i.i.1 = udiv i32 %conv169.i.i.i.1, %call2.i
  %conv173.i.i.i.1 = zext i32 %div172.i.i.i.1 to i64
  br label %div_u64.exit.i.1

div_u64.exit.i.1:                                 ; preds = %if.then168.i.i.i.1, %if.else174.i.i.i.1
  %dividend.addr.0.i.i.i.1 = phi i64 [ %conv173.i.i.i.1, %if.then168.i.i.i.1 ], [ %asmresult1.i.i.i.i.1, %if.else174.i.i.i.1 ]
  %56 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %width.i, align 1
  %sh_prom.i.1 = zext i8 %57 to i64
  %shl.i.1 = shl i64 %dividend.addr.0.i.i.i.1, %sh_prom.i.1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.1, i64 %38)
  %cmp12.not.i.1 = icmp ult i64 %shl.i.1, %38
  %extract.t74 = trunc i64 %dividend.addr.0.i.i.i.1 to i32
  br i1 %cmp12.not.i.1, label %for.inc.i.1, label %div_u64.exit.i.1.if.else162.i.i436.i_crit_edge

div_u64.exit.i.1.if.else162.i.i436.i_crit_edge:   ; preds = %div_u64.exit.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else162.i.i436.i

for.inc.i.1:                                      ; preds = %div_u64.exit.i.1
  %inc.i.1 = add nuw nsw i32 %inc.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i.1)
  %cmp3.i.1 = icmp eq i32 %inc.i.1, 4
  br i1 %cmp3.i.1, label %for.inc.i.1.if.then18.i_crit_edge, label %if.end6.i.2

for.inc.i.1.if.then18.i_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18.i

if.end6.i.2:                                      ; preds = %for.inc.i.1
  %arrayidx.i.2 = getelementptr [5 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %inc.i.1
  %58 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.2, align 1
  %conv8.i.2 = zext i8 %59 to i64
  %mul.i35.2 = mul nuw nsw i64 %conv8.i.2, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i35.2)
  %cmp164.i.i.i.2 = icmp ult i64 %mul.i35.2, 4294967296
  br i1 %cmp164.i.i.i.2, label %if.then168.i.i.i.2, label %if.else174.i.i.i.2, !prof !65

if.else174.i.i.i.2:                               ; preds = %if.end6.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %60 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call2.i, i64 %mul.i35.2) #10, !srcloc !66
  %asmresult1.i.i.i.i.2 = extractvalue { i64, i64 } %60, 1
  br label %div_u64.exit.i.2

if.then168.i.i.i.2:                               ; preds = %if.end6.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i.2 = trunc i64 %mul.i35.2 to i32
  %div172.i.i.i.2 = udiv i32 %conv169.i.i.i.2, %call2.i
  %conv173.i.i.i.2 = zext i32 %div172.i.i.i.2 to i64
  br label %div_u64.exit.i.2

div_u64.exit.i.2:                                 ; preds = %if.then168.i.i.i.2, %if.else174.i.i.i.2
  %dividend.addr.0.i.i.i.2 = phi i64 [ %conv173.i.i.i.2, %if.then168.i.i.i.2 ], [ %asmresult1.i.i.i.i.2, %if.else174.i.i.i.2 ]
  %61 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %width.i, align 1
  %sh_prom.i.2 = zext i8 %62 to i64
  %shl.i.2 = shl i64 %dividend.addr.0.i.i.i.2, %sh_prom.i.2
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.2, i64 %38)
  %cmp12.not.i.2 = icmp ult i64 %shl.i.2, %38
  %extract.t75 = trunc i64 %dividend.addr.0.i.i.i.2 to i32
  br i1 %cmp12.not.i.2, label %for.inc.i.2, label %div_u64.exit.i.2.if.else162.i.i436.i_crit_edge

div_u64.exit.i.2.if.else162.i.i436.i_crit_edge:   ; preds = %div_u64.exit.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else162.i.i436.i

for.inc.i.2:                                      ; preds = %div_u64.exit.i.2
  %inc.i.2 = add nuw nsw i32 %inc.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i.2)
  %cmp3.i.2 = icmp eq i32 %inc.i.2, 4
  br i1 %cmp3.i.2, label %for.inc.i.2.if.then18.i_crit_edge, label %if.end6.i.3

for.inc.i.2.if.then18.i_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18.i

if.end6.i.3:                                      ; preds = %for.inc.i.2
  %arrayidx.i.3 = getelementptr [5 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %inc.i.2
  %63 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i.3, align 1
  %conv8.i.3 = zext i8 %64 to i64
  %mul.i35.3 = mul nuw nsw i64 %conv8.i.3, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i35.3)
  %cmp164.i.i.i.3 = icmp ult i64 %mul.i35.3, 4294967296
  br i1 %cmp164.i.i.i.3, label %if.then168.i.i.i.3, label %if.else174.i.i.i.3, !prof !65

if.else174.i.i.i.3:                               ; preds = %if.end6.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %65 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call2.i, i64 %mul.i35.3) #10, !srcloc !66
  %asmresult1.i.i.i.i.3 = extractvalue { i64, i64 } %65, 1
  br label %div_u64.exit.i.3

if.then168.i.i.i.3:                               ; preds = %if.end6.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i.3 = trunc i64 %mul.i35.3 to i32
  %div172.i.i.i.3 = udiv i32 %conv169.i.i.i.3, %call2.i
  %conv173.i.i.i.3 = zext i32 %div172.i.i.i.3 to i64
  br label %div_u64.exit.i.3

div_u64.exit.i.3:                                 ; preds = %if.then168.i.i.i.3, %if.else174.i.i.i.3
  %dividend.addr.0.i.i.i.3 = phi i64 [ %conv173.i.i.i.3, %if.then168.i.i.i.3 ], [ %asmresult1.i.i.i.i.3, %if.else174.i.i.i.3 ]
  %66 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %width.i, align 1
  %sh_prom.i.3 = zext i8 %67 to i64
  %shl.i.3 = shl i64 %dividend.addr.0.i.i.i.3, %sh_prom.i.3
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.3, i64 %38)
  %cmp12.not.i.3 = icmp ult i64 %shl.i.3, %38
  %extract.t76 = trunc i64 %dividend.addr.0.i.i.i.3 to i32
  br i1 %cmp12.not.i.3, label %div_u64.exit.i.3.if.then18.i_crit_edge, label %div_u64.exit.i.3.if.else162.i.i436.i_crit_edge

div_u64.exit.i.3.if.else162.i.i436.i_crit_edge:   ; preds = %div_u64.exit.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else162.i.i436.i

div_u64.exit.i.3.if.then18.i_crit_edge:           ; preds = %div_u64.exit.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18.i

if.then18.i:                                      ; preds = %div_u64.exit.i.3.if.then18.i_crit_edge, %for.inc.i.2.if.then18.i_crit_edge, %for.inc.i.1.if.then18.i_crit_edge
  %slow_clk.i = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 7
  %68 = ptrtoint ptr %slow_clk.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %slow_clk.i, align 4
  %call19.i = tail call i32 @clk_get_rate(ptr noundef %69) #6
  %div172.i.i217.i = udiv i32 1000000000, %call19.i
  %conv173.i.i218.i = zext i32 %div172.i.i217.i to i64
  %70 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %width.i, align 1
  %sh_prom23.i = zext i8 %71 to i64
  %shl24.i = shl i64 %conv173.i.i218.i, %sh_prom23.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl24.i, i64 %38)
  %cmp26.i = icmp ult i64 %shl24.i, %38
  br i1 %cmp26.i, label %if.then18.i.cleanup_crit_edge, label %if.then18.i.if.else162.i.i436.i_crit_edge

if.then18.i.if.else162.i.i436.i_crit_edge:        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else162.i.i436.i

if.then18.i.cleanup_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else162.i.i436.i:                              ; preds = %if.then18.i.if.else162.i.i436.i_crit_edge, %div_u64.exit.i.3.if.else162.i.i436.i_crit_edge, %div_u64.exit.i.2.if.else162.i.i436.i_crit_edge, %div_u64.exit.i.1.if.else162.i.i436.i_crit_edge, %div_u64.exit.i.if.else162.i.i436.i_crit_edge
  %i.1459.i64 = phi i32 [ 4, %if.then18.i.if.else162.i.i436.i_crit_edge ], [ %spec.select.i, %div_u64.exit.i.if.else162.i.i436.i_crit_edge ], [ %inc.i, %div_u64.exit.i.1.if.else162.i.i436.i_crit_edge ], [ %inc.i.1, %div_u64.exit.i.2.if.else162.i.i436.i_crit_edge ], [ %inc.i.2, %div_u64.exit.i.3.if.else162.i.i436.i_crit_edge ]
  %min.3.off0.i = phi i32 [ %div172.i.i217.i, %if.then18.i.if.else162.i.i436.i_crit_edge ], [ %extract.t, %div_u64.exit.i.if.else162.i.i436.i_crit_edge ], [ %extract.t74, %div_u64.exit.i.1.if.else162.i.i436.i_crit_edge ], [ %extract.t75, %div_u64.exit.i.2.if.else162.i.i436.i_crit_edge ], [ %extract.t76, %div_u64.exit.i.3.if.else162.i.i436.i_crit_edge ]
  %div172.i.i327.i = udiv i32 %43, %min.3.off0.i
  %div172.i.i437.i = udiv i32 %39, %min.3.off0.i
  %hwpwm.i36 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %72 = ptrtoint ptr %hwpwm.i36 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hwpwm.i36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp39.i = icmp eq i32 %73, 0
  %arrayidx42.i = getelementptr %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 8, i32 1
  %pwms43.i = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 8
  %atcbpwm.0.in.i = select i1 %cmp39.i, ptr %arrayidx42.i, ptr %pwms43.i
  %74 = ptrtoint ptr %atcbpwm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %atcbpwm.0.i = load ptr, ptr %atcbpwm.0.in.i, align 4
  %tobool46.not.i = icmp eq ptr %atcbpwm.0.i, null
  br i1 %tobool46.not.i, label %if.else162.i.i436.i.if.end15_crit_edge, label %land.lhs.true.i

if.else162.i.i436.i.if.end15_crit_edge:           ; preds = %if.else162.i.i436.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true.i:                                  ; preds = %if.else162.i.i436.i
  %duty47.i = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %atcbpwm.0.i, i32 0, i32 2
  %75 = ptrtoint ptr %duty47.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %duty47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp48.not.i = icmp eq i32 %76, 0
  br i1 %cmp48.not.i, label %land.lhs.true.i.if.end15_crit_edge, label %land.lhs.true50.i

land.lhs.true.i.if.end15_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true50.i:                                ; preds = %land.lhs.true.i
  %period52.i = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %atcbpwm.0.i, i32 0, i32 3
  %77 = ptrtoint ptr %period52.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %period52.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp53.not.i = icmp eq i32 %76, %78
  br i1 %cmp53.not.i, label %land.lhs.true50.i.if.end15_crit_edge, label %land.lhs.true55.i

land.lhs.true50.i.if.end15_crit_edge:             ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true55.i:                                ; preds = %land.lhs.true50.i
  %div.i = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %atcbpwm.0.i, i32 0, i32 1
  %79 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %div.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %i.1459.i64)
  %cmp56.not.i = icmp eq i32 %80, %i.1459.i64
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %div172.i.i437.i)
  %cmp59.not.i = icmp eq i32 %78, %div172.i.i437.i
  %or.cond.i = select i1 %cmp56.not.i, i1 %cmp59.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true55.i.if.end15_crit_edge, label %do.end.i

land.lhs.true55.i.if.end15_crit_edge:             ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end.i:                                         ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true55.i.if.end15_crit_edge, %land.lhs.true50.i.if.end15_crit_edge, %land.lhs.true.i.if.end15_crit_edge, %if.else162.i.i436.i.if.end15_crit_edge
  %period63.i = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %call1.i33, i32 0, i32 3
  %83 = ptrtoint ptr %period63.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %div172.i.i437.i, ptr %period63.i, align 4
  %div64.i = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %call1.i33, i32 0, i32 1
  %84 = ptrtoint ptr %div64.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %i.1459.i64, ptr %div64.i, align 4
  %duty65.i = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %call1.i33, i32 0, i32 2
  %85 = ptrtoint ptr %duty65.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %div172.i.i327.i, ptr %duty65.i, align 4
  %call1.i38 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmr.i37) #6
  %86 = ptrtoint ptr %cmr.i37 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %cmr.i37, align 4, !annotation !63
  %87 = ptrtoint ptr %call1.i38 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %call1.i38, align 4
  %duty.i39 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %call1.i38, i32 0, i32 2
  %89 = ptrtoint ptr %duty.i39 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %duty.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i40 = icmp eq i32 %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i41 = icmp eq i32 %88, 0
  %lnot.ext.i42 = zext i1 %tobool.not.i41 to i32
  %polarity.0.i43 = select i1 %cmp.i40, i32 %lnot.ext.i42, i32 %88
  %lock.i44 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i44) #6
  %regmap.i45 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 4
  %91 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap.i45, align 4
  %channel.i46 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 2
  %93 = ptrtoint ptr %channel.i46 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %channel.i46, align 4
  %conv.i47 = zext i8 %94 to i32
  %mul.i48 = shl nuw nsw i32 %conv.i47, 6
  %add.i49 = or i32 %mul.i48, 4
  %call3.i50 = call i32 @regmap_read(ptr noundef %92, i32 noundef %add.i49, ptr noundef nonnull %cmr.i37) #6
  %95 = ptrtoint ptr %cmr.i37 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cmr.i37, align 4
  %97 = ptrtoint ptr %hwpwm.i36 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hwpwm.i36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp4.i52 = icmp eq i32 %98, 0
  br i1 %cmp4.i52, label %if.then6.i53, label %if.else13.i

if.then6.i53:                                     ; preds = %if.end15
  %and7.i = and i32 %96, -16711688
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %polarity.0.i43)
  %cmp8.i = icmp eq i32 %polarity.0.i43, 1
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i55

if.then10.i:                                      ; preds = %if.then6.i53
  call void @__sanitizer_cov_trace_pc() #8
  %or.i54 = or i32 %and7.i, 8388608
  %99 = ptrtoint ptr %cmr.i37 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or.i54, ptr %cmr.i37, align 4
  br label %if.end22.i

if.else.i55:                                      ; preds = %if.then6.i53
  call void @__sanitizer_cov_trace_pc() #8
  %or11.i = or i32 %and7.i, 4194304
  %100 = ptrtoint ptr %cmr.i37 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or11.i, ptr %cmr.i37, align 4
  br label %if.end22.i

if.else13.i:                                      ; preds = %if.end15
  %and14.i = and i32 %96, 16777208
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %polarity.0.i43)
  %cmp15.i = icmp eq i32 %polarity.0.i43, 1
  br i1 %cmp15.i, label %if.then17.i, label %if.else19.i

if.then17.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #8
  %or18.i = or i32 %and14.i, -2147483648
  %101 = ptrtoint ptr %cmr.i37 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or18.i, ptr %cmr.i37, align 4
  br label %if.end22.i

if.else19.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #8
  %or20.i = or i32 %and14.i, 1073741824
  %102 = ptrtoint ptr %cmr.i37 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or20.i, ptr %cmr.i37, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else19.i, %if.then17.i, %if.else.i55, %if.then10.i
  %103 = ptrtoint ptr %duty.i39 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %duty.i39, align 4
  %period.i = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %call1.i38, i32 0, i32 3
  %105 = ptrtoint ptr %period.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %period.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp24.not.i = icmp eq i32 %104, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp27.not.i = icmp eq i32 %104, 0
  %or.cond.i56 = or i1 %cmp27.not.i, %cmp24.not.i
  br i1 %or.cond.i56, label %if.end22.i.atmel_tcb_pwm_enable.exit_crit_edge, label %if.then29.i

if.end22.i.atmel_tcb_pwm_enable.exit_crit_edge:   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tcb_pwm_enable.exit

if.then29.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %polarity.0.i43)
  %cmp34.i = icmp eq i32 %polarity.0.i43, 1
  %107 = ptrtoint ptr %cmr.i37 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cmr.i37, align 4
  br i1 %cmp4.i52, label %if.then33.i, label %if.else41.i

if.then33.i:                                      ; preds = %if.then29.i
  br i1 %cmp34.i, label %if.then36.i, label %if.else38.i

if.then36.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  %or37.i = or i32 %108, 589824
  %109 = ptrtoint ptr %cmr.i37 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or37.i, ptr %cmr.i37, align 4
  br label %atmel_tcb_pwm_enable.exit

if.else38.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  %or39.i = or i32 %108, 393216
  %110 = ptrtoint ptr %cmr.i37 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or39.i, ptr %cmr.i37, align 4
  br label %atmel_tcb_pwm_enable.exit

if.else41.i:                                      ; preds = %if.then29.i
  br i1 %cmp34.i, label %if.then44.i, label %if.else46.i

if.then44.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #8
  %or45.i = or i32 %108, 150994944
  %111 = ptrtoint ptr %cmr.i37 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or45.i, ptr %cmr.i37, align 4
  br label %atmel_tcb_pwm_enable.exit

if.else46.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #8
  %or47.i = or i32 %108, 100663296
  %112 = ptrtoint ptr %cmr.i37 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or47.i, ptr %cmr.i37, align 4
  br label %atmel_tcb_pwm_enable.exit

atmel_tcb_pwm_enable.exit:                        ; preds = %if.else46.i, %if.then44.i, %if.else38.i, %if.then36.i, %if.end22.i.atmel_tcb_pwm_enable.exit_crit_edge
  %div.i57 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %call1.i38, i32 0, i32 1
  %113 = ptrtoint ptr %div.i57 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %div.i57, align 4
  %and51.i = and i32 %114, 7
  %115 = ptrtoint ptr %cmr.i37 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cmr.i37, align 4
  %or52.i = or i32 %116, %and51.i
  store i32 %or52.i, ptr %cmr.i37, align 4
  %117 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap.i45, align 4
  %119 = ptrtoint ptr %channel.i46 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %channel.i46, align 4
  %conv55.i = zext i8 %120 to i32
  %mul56.i = shl nuw nsw i32 %conv55.i, 6
  %add57.i = or i32 %mul56.i, 4
  %call58.i = call i32 @regmap_write(ptr noundef %118, i32 noundef %add57.i, i32 noundef %or52.i) #6
  %121 = ptrtoint ptr %hwpwm.i36 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %hwpwm.i36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp60.i = icmp eq i32 %122, 0
  %123 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap.i45, align 4
  %125 = ptrtoint ptr %channel.i46 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %channel.i46, align 4
  %conv65.i = zext i8 %126 to i32
  %mul66.i = shl nuw nsw i32 %conv65.i, 6
  %..i58 = select i1 %cmp60.i, i32 20, i32 24
  %add75.i = or i32 %mul66.i, %..i58
  %127 = ptrtoint ptr %duty.i39 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %duty.i39, align 4
  %call77.i = call i32 @regmap_write(ptr noundef %124, i32 noundef %add75.i, i32 noundef %128) #6
  %129 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regmap.i45, align 4
  %131 = ptrtoint ptr %channel.i46 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %channel.i46, align 4
  %conv81.i = zext i8 %132 to i32
  %mul82.i = shl nuw nsw i32 %conv81.i, 6
  %add83.i = or i32 %mul82.i, 28
  %133 = ptrtoint ptr %period.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %period.i, align 4
  %call85.i = call i32 @regmap_write(ptr noundef %130, i32 noundef %add83.i, i32 noundef %134) #6
  %135 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regmap.i45, align 4
  %137 = ptrtoint ptr %channel.i46 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %channel.i46, align 4
  %conv88.i = zext i8 %138 to i32
  %mul89.i = shl nuw nsw i32 %conv88.i, 6
  %call91.i = call i32 @regmap_write(ptr noundef %136, i32 noundef %mul89.i, i32 noundef 5) #6
  %bkup.i = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %chip, i32 0, i32 9
  %139 = ptrtoint ptr %bkup.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %bkup.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i44) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmr.i37) #6
  br label %cleanup

cleanup:                                          ; preds = %atmel_tcb_pwm_enable.exit, %do.end.i, %if.then18.i.cleanup_crit_edge, %atmel_tcb_pwm_disable.exit
  %retval.0 = phi i32 [ 0, %atmel_tcb_pwm_enable.exit ], [ 0, %atmel_tcb_pwm_disable.exit ], [ -34, %if.then18.i.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channel1 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %channel1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel1, align 4
  %conv = zext i8 %3 to i32
  %regmap = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %mul = shl nuw nsw i32 %conv, 6
  %add = or i32 %mul, 4
  %cmr = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 9, i32 1
  %call2 = tail call i32 @regmap_read(ptr noundef %5, i32 noundef %add, ptr noundef %cmr) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %add5 = or i32 %mul, 20
  %ra = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 9, i32 2
  %call6 = tail call i32 @regmap_read(ptr noundef %7, i32 noundef %add5, ptr noundef %ra) #6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %add9 = or i32 %mul, 24
  %rb = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 9, i32 3
  %call10 = tail call i32 @regmap_read(ptr noundef %9, i32 noundef %add9, ptr noundef %rb) #6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %add13 = or i32 %mul, 28
  %rc = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 9, i32 4
  %call14 = tail call i32 @regmap_read(ptr noundef %11, i32 noundef %add13, ptr noundef %rc) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bkup = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 9
  %channel1 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %channel1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel1, align 4
  %conv = zext i8 %3 to i32
  %regmap = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %mul = shl nuw nsw i32 %conv, 6
  %add = or i32 %mul, 4
  %cmr = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %cmr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmr, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %7) #6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %add5 = or i32 %mul, 20
  %ra = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ra, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add5, i32 noundef %11) #6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %add9 = or i32 %mul, 24
  %rb = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 9, i32 3
  %14 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rb, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %add9, i32 noundef %15) #6
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %add13 = or i32 %mul, 28
  %rc = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %1, i32 0, i32 9, i32 4
  %18 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rc, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %add13, i32 noundef %19) #6
  %20 = ptrtoint ptr %bkup to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bkup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 5, i32 noundef %mul) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @atmel_tcb_divisors, !1, !"atmel_tcb_divisors", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 64, i32 10}
!2 = !{ptr @__initcall__kmod_pwm_atmel_tcb__187_569_atmel_tcb_pwm_driver_init6, !3, !"__initcall__kmod_pwm_atmel_tcb__187_569_atmel_tcb_pwm_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 569, i32 1}
!4 = !{ptr @__exitcall_atmel_tcb_pwm_driver_exit, !3, !"__exitcall_atmel_tcb_pwm_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author188, !6, !"__UNIQUE_ID_author188", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 571, i32 1}
!7 = !{ptr @__UNIQUE_ID_description189, !8, !"__UNIQUE_ID_description189", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 572, i32 1}
!9 = !{ptr @__UNIQUE_ID_file190, !10, !"__UNIQUE_ID_file190", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 573, i32 1}
!11 = !{ptr @__UNIQUE_ID_license191, !10, !"__UNIQUE_ID_license191", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 562, i32 11}
!14 = !{ptr @atmel_tcb_pwm_driver, !15, !"atmel_tcb_pwm_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 560, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 432, i32 33}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 434, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @atmel_tcb_pwm_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @atmel_tcb_pwm_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 444, i32 44}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 451, i32 40}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 459, i32 41}
!32 = !{ptr @atmel_tcb_pwm_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 484, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @atmel_tcb_of_match, !36, !"atmel_tcb_of_match", i1 false, i1 false}
!36 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 412, i32 34}
!37 = !{ptr @tcb_rm9200_config, !38, !"tcb_rm9200_config", i1 false, i1 false}
!38 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 399, i32 32}
!39 = !{ptr @tcb_sam9x5_config, !40, !"tcb_sam9x5_config", i1 false, i1 false}
!40 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 403, i32 32}
!41 = !{ptr @tcb_sama5d2_config, !42, !"tcb_sama5d2_config", i1 false, i1 false}
!42 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 407, i32 32}
!43 = !{ptr @atmel_tcb_pwm_ops, !44, !"atmel_tcb_pwm_ops", i1 false, i1 false}
!44 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 392, i32 29}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 356, i32 3}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @atmel_tcb_pwm_config._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @atmel_tcb_pwm_config._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @atmel_tcb_pwm_dt_ids, !51, !"atmel_tcb_pwm_dt_ids", i1 false, i1 false}
!51 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 516, i32 34}
!52 = !{ptr @atmel_tcb_pwm_pm_ops, !53, !"atmel_tcb_pwm_pm_ops", i1 false, i1 false}
!53 = !{!"../drivers/pwm/pwm-atmel-tcb.c", i32 557, i32 8}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i8 0, i8 2}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2148199631, i64 2148199911, i64 2148200245, i64 2148200579}
