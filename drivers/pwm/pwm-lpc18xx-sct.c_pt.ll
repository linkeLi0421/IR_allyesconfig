; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-lpc18xx-sct.c_pt.bc'
source_filename = "../drivers/pwm/pwm-lpc18xx-sct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.lpc18xx_pwm_chip = type { ptr, %struct.pwm_chip, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_lpc18xx_sct__170_461_lpc18xx_pwm_driver_init6 = internal global ptr @lpc18xx_pwm_driver_init, section ".initcall6.init", align 4
@lpc18xx_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpc18xx_pwm_probe, ptr @lpc18xx_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpc18xx_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lpc18xx_pwm_driver_exit = internal global ptr @lpc18xx_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [71 x i8] c"pwm_lpc18xx_sct.author=Ariel D'Alessandro <ariel@vanguardiasur.com.ar>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [51 x i8] c"pwm_lpc18xx_sct.description=NXP LPC18xx PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [49 x i8] c"pwm_lpc18xx_sct.file=drivers/pwm/pwm-lpc18xx-sct\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [31 x i8] c"pwm_lpc18xx_sct.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lpc18xx-sct-pwm\00", [16 x i8] zeroinitializer }, align 32
@lpc18xx_pwm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc1850-sct-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@lpc18xx_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 344, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get pwm clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpc18xx_pwm_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/pwm/pwm-lpc18xx-sct.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpc18xx_pwm_probe._entry_ptr = internal global ptr @lpc18xx_pwm_probe._entry, section ".printk_index", align 4
@lpc18xx_pwm_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not prepare or enable pwm clock\0A\00", [57 x i8] zeroinitializer }, align 32
@lpc18xx_pwm_probe._entry_ptr.9 = internal global ptr @lpc18xx_pwm_probe._entry.7, section ".printk_index", align 4
@lpc18xx_pwm_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 356, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pwm clock has no frequency\0A\00", [36 x i8] zeroinitializer }, align 32
@lpc18xx_pwm_probe._entry_ptr.12 = internal global ptr @lpc18xx_pwm_probe._entry.10, section ".printk_index", align 4
@lpc18xx_pwm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&lpc18xx_pwm->res_lock\00", [41 x i8] zeroinitializer }, align 32
@lpc18xx_pwm_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&lpc18xx_pwm->period_lock\00", [38 x i8] zeroinitializer }, align 32
@lpc18xx_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @lpc18xx_pwm_request, ptr @lpc18xx_pwm_free, ptr null, ptr null, ptr null, ptr null, ptr @lpc18xx_pwm_config, ptr @lpc18xx_pwm_set_polarity, ptr @lpc18xx_pwm_enable, ptr @lpc18xx_pwm_disable }, [56 x i8] zeroinitializer }, align 32
@lpc18xx_pwm_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 400, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwmchip_add failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@lpc18xx_pwm_probe._entry_ptr.18 = internal global ptr @lpc18xx_pwm_probe._entry.16, section ".printk_index", align 4
@lpc18xx_pwm_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 290, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"maximum number of simultaneous channels reached\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lpc18xx_pwm_request\00", [44 x i8] zeroinitializer }, align 32
@lpc18xx_pwm_request._entry_ptr = internal global ptr @lpc18xx_pwm_request._entry, section ".printk_index", align 4
@lpc18xx_pwm_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"period %d not in range\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lpc18xx_pwm_config\00", [45 x i8] zeroinitializer }, align 32
@lpc18xx_pwm_config._entry_ptr = internal global ptr @lpc18xx_pwm_config._entry, section ".printk_index", align 4
@lpc18xx_pwm_config._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"conflicting period requested for PWM %u\0A\00", [55 x i8] zeroinitializer }, align 32
@lpc18xx_pwm_config._entry_ptr.25 = internal global ptr @lpc18xx_pwm_config._entry.23, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"lpc18xx_pwm_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 453, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 455, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"lpc18xx_pwm_of_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 318, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 342, i32 50 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 344, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 350, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 356, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 361, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 362, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"lpc18xx_pwm_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 308, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 400, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 289, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 189, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [33 x i8] c"../drivers/pwm/pwm-lpc18xx-sct.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 205, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_lpc18xx_pwm_driver_exit, ptr @__initcall__kmod_pwm_lpc18xx_sct__170_461_lpc18xx_pwm_driver_init6, ptr @lpc18xx_pwm_config._entry, ptr @lpc18xx_pwm_config._entry.23, ptr @lpc18xx_pwm_config._entry_ptr, ptr @lpc18xx_pwm_config._entry_ptr.25, ptr @lpc18xx_pwm_driver_exit, ptr @lpc18xx_pwm_probe._entry, ptr @lpc18xx_pwm_probe._entry.10, ptr @lpc18xx_pwm_probe._entry.16, ptr @lpc18xx_pwm_probe._entry.7, ptr @lpc18xx_pwm_probe._entry_ptr, ptr @lpc18xx_pwm_probe._entry_ptr.12, ptr @lpc18xx_pwm_probe._entry_ptr.18, ptr @lpc18xx_pwm_probe._entry_ptr.9, ptr @lpc18xx_pwm_request._entry, ptr @lpc18xx_pwm_request._entry_ptr, ptr @lpc18xx_pwm_driver, ptr @.str, ptr @lpc18xx_pwm_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @lpc18xx_pwm_probe.__key, ptr @.str.13, ptr @lpc18xx_pwm_probe.__key.14, ptr @.str.15, ptr @lpc18xx_pwm_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pwm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pwm_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pwm_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pwm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pwm_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pwm_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pwm_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pwm_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pwm_config._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpc18xx_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpc18xx_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpc18xx_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 256, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup280_crit_edge, label %if.end

entry.cleanup280_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup280

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup280

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %pwm_clk = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %pwm_clk, align 4
  %cmp.i421 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i421, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %4 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwm_clk, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup280

if.end18:                                         ; preds = %if.end9
  %call.i422 = tail call i32 @clk_prepare(ptr noundef %call11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i422)
  %tobool.not.i = icmp eq i32 %call.i422, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.clk_prepare_enable.exit_crit_edge

if.end18.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end18
  %call1.i = tail call i32 @clk_enable(ptr noundef %call11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end26_crit_edge, label %if.then3.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call11) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end18.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i422, %if.end18.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end24, label %clk_prepare_enable.exit.if.end26_crit_edge

clk_prepare_enable.exit.if.end26_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end24:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup280

if.end26:                                         ; preds = %clk_prepare_enable.exit.if.end26_crit_edge, %if.end.i.if.end26_crit_edge
  %7 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwm_clk, align 4
  %call28 = tail call i32 @clk_get_rate(ptr noundef %8) #6
  %clk_rate = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call28, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool30.not = icmp eq i32 %call28, 0
  br i1 %tobool30.not, label %do.end34, label %do.body37

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %disable_pwmclk

do.body37:                                        ; preds = %if.end26
  %res_lock = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %res_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @lpc18xx_pwm_probe.__key) #6
  %period_lock = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %period_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @lpc18xx_pwm_probe.__key.14) #6
  %10 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_rate, align 4
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 4294967295000000000) #10, !srcloc !69
  %asmresult1.i = extractvalue { i64, i64 } %12, 1
  %extract.t465 = trunc i64 %asmresult1.i to i32
  %max_period_ns = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %max_period_ns to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %extract.t465, ptr %max_period_ns, align 4
  %sub231 = add i32 %11, 999999999
  %div233 = udiv i32 %sub231, %11
  %min_period_ns = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %min_period_ns to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div233, ptr %min_period_ns, align 4
  %chip = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %chip, align 4
  %ops = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lpc18xx_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %npwm, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 16777216) #6, !srcloc !71
  %event_map = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %event_map) #6
  %period_event = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %period_event to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %period_event, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !71
  %23 = ptrtoint ptr %period_event to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %period_event, align 4
  %or242 = or i32 %24, 4096
  %mul245 = shl i32 %24, 3
  %add246 = add i32 %mul245, 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %or242) #6
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr.i426 = getelementptr i8, ptr %27, i32 %add246
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i426, i32 %25) #6, !srcloc !71
  %28 = ptrtoint ptr %period_event to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %period_event, align 4
  %shl249 = shl nuw i32 1, %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %shl249) #6
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr.i428 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i428, i32 %30) #6, !srcloc !71
  %call251 = tail call i32 @pwmchip_add(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %cmp252 = icmp slt i32 %call251, 0
  br i1 %cmp252, label %do.end257, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.body37
  %33 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp262463.not = icmp eq i32 %34, 0
  br i1 %cmp262463.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pwms = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %call.i, i32 0, i32 1, i32 7
  br label %for.body

do.end257:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call251) #9
  br label %disable_pwmclk

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0464 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %35 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pwms, align 4
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %call.i429 = tail call noalias ptr @devm_kmalloc(ptr noundef %38, i32 noundef 4, i32 noundef 3520) #6
  %tobool267.not = icmp eq ptr %call.i429, null
  br i1 %tobool267.not, label %remove_pwmchip, label %for.inc

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.pwm_device, ptr %36, i32 %i.0464
  %call270 = tail call i32 @pwm_set_chip_data(ptr noundef %arrayidx, ptr noundef nonnull %call.i429) #6
  %inc = add nuw i32 %i.0464, 1
  %39 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %npwm, align 4
  %cmp262 = icmp ult i32 %inc, %40
  br i1 %cmp262, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr.i431 = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i431) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %45 = and i32 %44, 199294975
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr.i433 = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i433, i32 %45) #6, !srcloc !71
  br label %cleanup280

remove_pwmchip:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pwmchip_remove(ptr noundef %chip) #6
  br label %disable_pwmclk

disable_pwmclk:                                   ; preds = %remove_pwmchip, %do.end257, %do.end34
  %ret.2 = phi i32 [ %call251, %do.end257 ], [ -12, %remove_pwmchip ], [ -22, %do.end34 ]
  %48 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pwm_clk, align 4
  tail call void @clk_disable(ptr noundef %49) #6
  tail call void @clk_unprepare(ptr noundef %49) #6
  br label %cleanup280

cleanup280:                                       ; preds = %disable_pwmclk, %for.end, %do.end24, %do.end, %if.then6, %entry.cleanup280_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %6, %do.end ], [ %retval.0.i, %do.end24 ], [ %ret.2, %disable_pwmclk ], [ 0, %for.end ], [ -12, %entry.cleanup280_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %1, i32 0, i32 1
  tail call void @pwmchip_remove(ptr noundef %chip) #6
  %base.i = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %5 = or i32 %4, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %5) #6, !srcloc !71
  %pwm_clk = getelementptr inbounds %struct.lpc18xx_pwm_chip, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_pwm_request(ptr noundef %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %event_map = getelementptr i8, ptr %chip, i32 64
  %call2 = tail call i32 @_find_first_zero_bit_be(ptr noundef %event_map, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call2)
  %cmp = icmp ugt i32 %call2, 15
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef %call2, ptr noundef %event_map) #6
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %call1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc18xx_pwm_free(ptr noundef %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call1, align 4
  %event_map = getelementptr i8, ptr %chip, i32 64
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %event_map) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_pwm_config(ptr noundef %chip, ptr noundef %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %min_period_ns = getelementptr i8, ptr %chip, i32 52
  %0 = ptrtoint ptr %min_period_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_period_ns, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %period_ns)
  %cmp = icmp ugt i32 %1, %period_ns
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %max_period_ns = getelementptr i8, ptr %chip, i32 56
  %2 = ptrtoint ptr %max_period_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_period_ns, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %period_ns)
  %cmp1 = icmp ult i32 %3, %period_ns
  br i1 %cmp1, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %period_ns) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %period_lock = getelementptr i8, ptr %chip, i32 160
  tail call void @mutex_lock_nested(ptr noundef %period_lock, i32 noundef 0) #6
  %event_map = getelementptr i8, ptr %chip, i32 64
  %6 = ptrtoint ptr %event_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_map, align 4
  %and3.i = and i32 %7, 65535
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp3 = icmp sgt i32 %call.i.i.i, 2
  %period_ns4 = getelementptr i8, ptr %chip, i32 48
  %8 = ptrtoint ptr %period_ns4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_ns4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %period_ns)
  %cmp5.not = icmp eq i32 %9, %period_ns
  br i1 %cmp3, label %land.lhs.true, label %land.lhs.true16

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %or.cond = or i1 %cmp5.not, %tobool.not
  br i1 %or.cond, label %land.lhs.true.lor.lhs.false19_crit_edge, label %do.end11

land.lhs.true.lor.lhs.false19_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false19

do.end11:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %12 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwpwm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef %13) #9
  tail call void @mutex_unlock(ptr noundef %period_lock) #6
  br label %cleanup

land.lhs.true16:                                  ; preds = %if.end
  br i1 %cmp5.not, label %land.lhs.true16.lor.lhs.false19_crit_edge, label %land.lhs.true16.if.then22_crit_edge

land.lhs.true16.if.then22_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

land.lhs.true16.lor.lhs.false19_crit_edge:        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true16.lor.lhs.false19_crit_edge, %land.lhs.true.lor.lhs.false19_crit_edge
  %period_ns20 = getelementptr i8, ptr %chip, i32 48
  %14 = ptrtoint ptr %period_ns20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %period_ns20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %lor.lhs.false19.if.then22_crit_edge, label %lor.lhs.false19.if.end25_crit_edge

lor.lhs.false19.if.end25_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

lor.lhs.false19.if.then22_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false19.if.then22_crit_edge, %land.lhs.true16.if.then22_crit_edge
  %period_ns23 = getelementptr i8, ptr %chip, i32 48
  %16 = ptrtoint ptr %period_ns23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %period_ns, ptr %period_ns23, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %chip, i32 0, i32 3
  %17 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2468.not = icmp eq i32 %18, 0
  br i1 %cmp2468.not, label %if.then22.for.end_crit_edge, label %for.body.lr.ph

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = sext i32 %period_ns to i64
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then22
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %chip, i32 0, i32 7
  %conv = sext i32 %period_ns to i64
  br label %for.body

for.body:                                         ; preds = %pwm_set_period.exit.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %pwm_set_period.exit.for.body_crit_edge ]
  %19 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pwms, align 4
  %arrayidx = getelementptr %struct.pwm_device, ptr %20, i32 %i.069
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i, label %for.body.pwm_set_period.exit_crit_edge, label %if.then.i

for.body.pwm_set_period.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_set_period.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %state.i = getelementptr %struct.pwm_device, ptr %20, i32 %i.069, i32 7
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %state.i, align 8
  br label %pwm_set_period.exit

pwm_set_period.exit:                              ; preds = %if.then.i, %for.body.pwm_set_period.exit_crit_edge
  %inc = add nuw i32 %i.069, 1
  %22 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %npwm, align 4
  %cmp24 = icmp ult i32 %inc, %23
  br i1 %cmp24, label %pwm_set_period.exit.for.body_crit_edge, label %pwm_set_period.exit.for.end_crit_edge

pwm_set_period.exit.for.end_crit_edge:            ; preds = %pwm_set_period.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

pwm_set_period.exit.for.body_crit_edge:           ; preds = %pwm_set_period.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %pwm_set_period.exit.for.end_crit_edge, %if.then22.for.end_crit_edge
  %conv.i.pre-phi = phi i64 [ %.pre, %if.then22.for.end_crit_edge ], [ %conv, %pwm_set_period.exit.for.end_crit_edge ]
  %clk_rate.i = getelementptr i8, ptr %chip, i32 44
  %24 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clk_rate.i, align 4
  %conv1.i = zext i32 %25 to i64
  %mul.i = mul nsw i64 %conv.i.pre-phi, %conv1.i
  %26 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i, i32 0) #10, !srcloc !74
  %asmresult.i.i = extractvalue { i64, i32 } %26, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %26, 1
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #10, !srcloc !75
  %asmresult10.i.i = extractvalue { i64, i32 } %27, 0
  %val.0.i = lshr i64 %asmresult10.i.i, 29
  %period_event.i = getelementptr i8, ptr %chip, i32 60
  %28 = ptrtoint ptr %period_event.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %period_event.i, align 4
  %mul185.i = shl i32 %29, 2
  %add186.i = add i32 %mul185.i, 256
  %conv187.i = trunc i64 %val.0.i to i32
  %sub188.i = add i32 %conv187.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %sub188.i) #6
  %base.i.i = getelementptr i8, ptr %chip, i32 36
  %31 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i278.i = getelementptr i8, ptr %32, i32 %add186.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278.i, i32 %30) #6, !srcloc !71
  %33 = ptrtoint ptr %period_event.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %period_event.i, align 4
  %mul190.i = shl i32 %34, 2
  %add191.i = add i32 %mul190.i, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i280.i = getelementptr i8, ptr %36, i32 %add191.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280.i, i32 %30) #6, !srcloc !71
  br label %if.end25

if.end25:                                         ; preds = %for.end, %lor.lhs.false19.if.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %period_lock) #6
  %call1.i = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %conv.i56 = sext i32 %duty_ns to i64
  %clk_rate.i57 = getelementptr i8, ptr %chip, i32 44
  %37 = ptrtoint ptr %clk_rate.i57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clk_rate.i57, align 4
  %conv2.i = zext i32 %38 to i64
  %mul.i58 = mul nsw i64 %conv2.i, %conv.i56
  %39 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i58, i32 0) #10, !srcloc !74
  %asmresult.i.i59 = extractvalue { i64, i32 } %39, 0
  %asmresult4.i.i60 = extractvalue { i64, i32 } %39, 1
  %40 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i58, i64 %asmresult.i.i59, i32 %asmresult4.i.i60) #10, !srcloc !75
  %asmresult10.i.i61 = extractvalue { i64, i32 } %40, 0
  %val.0.i62 = lshr i64 %asmresult10.i.i61, 29
  %41 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call1.i, align 4
  %mul186.i = shl i32 %42, 2
  %add187.i = add i32 %mul186.i, 256
  %conv188.i = trunc i64 %val.0.i62 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %43 = tail call i32 @llvm.bswap.i32(i32 %conv188.i) #6
  %base.i.i63 = getelementptr i8, ptr %chip, i32 36
  %44 = ptrtoint ptr %base.i.i63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i63, align 4
  %add.ptr.i276.i = getelementptr i8, ptr %45, i32 %add187.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276.i, i32 %43) #6, !srcloc !71
  %46 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call1.i, align 4
  %mul190.i64 = shl i32 %47, 2
  %add191.i65 = add i32 %mul190.i64, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %base.i.i63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i63, align 4
  %add.ptr.i278.i66 = getelementptr i8, ptr %49, i32 %add191.i65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278.i66, i32 %43) #6, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end11, %do.end
  %retval.0 = phi i32 [ -34, %do.end ], [ -16, %do.end11 ], [ 0, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc18xx_pwm_set_polarity(ptr nocapture noundef readnone %chip, ptr nocapture noundef readnone %pwm, i32 noundef %polarity) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_pwm_enable(ptr noundef %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call1, align 4
  %mul = shl i32 %1, 3
  %add = add i32 %mul, 772
  %or = or i32 %1, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %base.i = getelementptr i8, ptr %chip, i32 36
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %2) #6, !srcloc !71
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call1, align 4
  %mul4 = shl i32 %6, 3
  %add5 = add i32 %mul4, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %8, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 -1) #6, !srcloc !71
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %state.sroa.4.0.copyload1.i = load i32, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.sroa.4.0.copyload1.i)
  %cmp = icmp eq i32 %state.sroa.4.0.copyload1.i, 0
  %period_event = getelementptr i8, ptr %chip, i32 60
  %res_action.0 = select i1 %cmp, i32 1, i32 2
  %set_event.0.in = select i1 %cmp, ptr %period_event, ptr %call1
  %clear_event.0.in = select i1 %cmp, ptr %call1, ptr %period_event
  %10 = ptrtoint ptr %clear_event.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %clear_event.0 = load i32, ptr %clear_event.0.in, align 4
  %11 = ptrtoint ptr %set_event.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %set_event.0 = load i32, ptr %set_event.0.in, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %12 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwpwm, align 8
  %mul10 = shl i32 %13, 3
  %add11 = add i32 %mul10, 1280
  %shl = shl nuw i32 1, %set_event.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %16, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %14) #6, !srcloc !71
  %17 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwpwm, align 8
  %mul13 = shl i32 %18, 3
  %add14 = add i32 %mul13, 1284
  %shl15 = shl nuw i32 1, %clear_event.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl15) #6
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %21, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %19) #6, !srcloc !71
  %res_lock.i = getelementptr i8, ptr %chip, i32 68
  tail call void @mutex_lock_nested(ptr noundef %res_lock.i, i32 noundef 0) #6
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 88
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !72
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %26 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hwpwm, align 8
  %mul.i = shl i32 %27, 1
  %shl.i = shl i32 3, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %25, %neg.i
  %shl3.i = shl i32 %res_action.0, %mul.i
  %or.i = or i32 %and.i, %shl3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %30, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %28) #6, !srcloc !71
  tail call void @mutex_unlock(ptr noundef %res_lock.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc18xx_pwm_disable(ptr nocapture noundef readonly %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call1, align 4
  %mul = shl i32 %1, 3
  %add = add i32 %mul, 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr i8, ptr %chip, i32 36
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #6, !srcloc !71
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  %mul2 = shl i32 %5, 3
  %add3 = add i32 %mul2, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %7, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #6, !srcloc !71
  %8 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwpwm, align 8
  %mul5 = shl i32 %9, 3
  %add6 = add i32 %mul5, 1284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %11, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #6, !srcloc !71
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_pwm_lpc18xx_sct__170_461_lpc18xx_pwm_driver_init6, !1, !"__initcall__kmod_pwm_lpc18xx_sct__170_461_lpc18xx_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 461, i32 1}
!2 = !{ptr @__exitcall_lpc18xx_pwm_driver_exit, !1, !"__exitcall_lpc18xx_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 463, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 464, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 465, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 455, i32 11}
!12 = !{ptr @lpc18xx_pwm_driver, !13, !"lpc18xx_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 453, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 342, i32 50}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 344, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lpc18xx_pwm_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lpc18xx_pwm_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 350, i32 3}
!26 = !{ptr @lpc18xx_pwm_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lpc18xx_pwm_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 356, i32 3}
!30 = !{ptr @lpc18xx_pwm_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lpc18xx_pwm_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @lpc18xx_pwm_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 361, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lpc18xx_pwm_probe.__key.14, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 362, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 400, i32 3}
!40 = !{ptr @lpc18xx_pwm_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @lpc18xx_pwm_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @lpc18xx_pwm_ops, !43, !"lpc18xx_pwm_ops", i1 false, i1 false}
!43 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 308, i32 29}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 289, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @lpc18xx_pwm_request._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @lpc18xx_pwm_request._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 189, i32 3}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lpc18xx_pwm_config._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @lpc18xx_pwm_config._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 205, i32 3}
!56 = !{ptr @lpc18xx_pwm_config._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @lpc18xx_pwm_config._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @lpc18xx_pwm_of_match, !59, !"lpc18xx_pwm_of_match", i1 false, i1 false}
!59 = !{!"../drivers/pwm/pwm-lpc18xx-sct.c", i32 318, i32 34}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2148642068, i64 2148642348, i64 2148642682, i64 2148643016}
!70 = !{i64 2152525063}
!71 = !{i64 2040439}
!72 = !{i64 2040857}
!73 = !{i64 2152525923}
!74 = !{i64 1156524, i64 1156551, i64 1156573, i64 1156601}
!75 = !{i64 1156932, i64 1156959, i64 1156992, i64 1157013, i64 1157040, i64 1157066}
