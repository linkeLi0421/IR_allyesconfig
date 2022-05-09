; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-lpc18xx.c_pt.bc'
source_filename = "../drivers/reset/reset-lpc18xx.c"
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
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.lpc18xx_rgu_data = type { %struct.reset_controller_dev, %struct.notifier_block, ptr, ptr, ptr, %struct.spinlock, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_reset_lpc18xx__170_230_lpc18xx_rgu_driver_init6 = internal global ptr @lpc18xx_rgu_driver_init, section ".initcall6.init", align 4
@lpc18xx_rgu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpc18xx_rgu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @lpc18xx_rgu_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpc18xx-reset\00", [18 x i8] zeroinitializer }, align 32
@lpc18xx_rgu_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc1850-rgu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@lpc18xx_rgu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 157, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg clock not found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpc18xx_rgu_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/reset/reset-lpc18xx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpc18xx_rgu_probe._entry_ptr = internal global ptr @lpc18xx_rgu_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"delay\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_rgu_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"delay clock not found\0A\00", [41 x i8] zeroinitializer }, align 32
@lpc18xx_rgu_probe._entry_ptr.10 = internal global ptr @lpc18xx_rgu_probe._entry.8, section ".printk_index", align 4
@lpc18xx_rgu_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 169, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to enable reg clock\0A\00", [36 x i8] zeroinitializer }, align 32
@lpc18xx_rgu_probe._entry_ptr.13 = internal global ptr @lpc18xx_rgu_probe._entry.11, section ".printk_index", align 4
@lpc18xx_rgu_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 175, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to enable delay clock\0A\00", [34 x i8] zeroinitializer }, align 32
@lpc18xx_rgu_probe._entry_ptr.16 = internal global ptr @lpc18xx_rgu_probe._entry.14, section ".printk_index", align 4
@lpc18xx_rgu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rc->lock\00", [22 x i8] zeroinitializer }, align 32
@lpc18xx_rgu_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @lpc18xx_rgu_reset, ptr @lpc18xx_rgu_assert, ptr @lpc18xx_rgu_deassert, ptr @lpc18xx_rgu_status }, [16 x i8] zeroinitializer }, align 32
@lpc18xx_rgu_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 197, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to register device\0A\00", [37 x i8] zeroinitializer }, align 32
@lpc18xx_rgu_probe._entry_ptr.20 = internal global ptr @lpc18xx_rgu_probe._entry.18, section ".printk_index", align 4
@lpc18xx_rgu_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 205, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register restart handler\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lpc18xx_rgu_probe._entry_ptr.24 = internal global ptr @lpc18xx_rgu_probe._entry.21, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@lpc18xx_rgu_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\010%s: unable to restart system\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lpc18xx_rgu_restart\00", [44 x i8] zeroinitializer }, align 32
@lpc18xx_rgu_restart._entry_ptr = internal global ptr @lpc18xx_rgu_restart._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 56]
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"lpc18xx_rgu_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 222, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 225, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"lpc18xx_rgu_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 217, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 155, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 157, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 161, i32 43 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 163, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 169, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 175, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 186, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"lpc18xx_rgu_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 132, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 197, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 205, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [33 x i8] c"../drivers/reset/reset-lpc18xx.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 53, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__initcall__kmod_reset_lpc18xx__170_230_lpc18xx_rgu_driver_init6, ptr @lpc18xx_rgu_probe._entry, ptr @lpc18xx_rgu_probe._entry.11, ptr @lpc18xx_rgu_probe._entry.14, ptr @lpc18xx_rgu_probe._entry.18, ptr @lpc18xx_rgu_probe._entry.21, ptr @lpc18xx_rgu_probe._entry.8, ptr @lpc18xx_rgu_probe._entry_ptr, ptr @lpc18xx_rgu_probe._entry_ptr.10, ptr @lpc18xx_rgu_probe._entry_ptr.13, ptr @lpc18xx_rgu_probe._entry_ptr.16, ptr @lpc18xx_rgu_probe._entry_ptr.20, ptr @lpc18xx_rgu_probe._entry_ptr.24, ptr @lpc18xx_rgu_restart._entry, ptr @lpc18xx_rgu_restart._entry_ptr, ptr @lpc18xx_rgu_driver, ptr @.str, ptr @lpc18xx_rgu_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @lpc18xx_rgu_probe.__key, ptr @.str.17, ptr @lpc18xx_rgu_ops, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_rgu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_rgu_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_rgu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_rgu_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_rgu_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_rgu_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_rgu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_rgu_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_rgu_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_rgu_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_rgu_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_rgu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpc18xx_rgu_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_rgu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #5
  %base = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %clk_reg = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %clk_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %clk_reg, align 4
  %cmp.i143 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %3 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_reg, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call20 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #5
  %clk_delay = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %clk_delay to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call20, ptr %clk_delay, align 4
  %cmp.i144 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %do.end26, label %if.end30

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  %7 = ptrtoint ptr %clk_delay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_delay, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %10 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_reg, align 4
  %call.i145 = tail call i32 @clk_prepare(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.do.end37_crit_edge

if.end30.do.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end39, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %do.end37

do.end37:                                         ; preds = %if.then3.i, %if.end30.do.end37_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i145, %if.end30.do.end37_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end.i
  %12 = ptrtoint ptr %clk_delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_delay, align 4
  %call.i146 = tail call i32 @clk_prepare(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i147 = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i147, label %if.end.i150, label %if.end39.do.end46_crit_edge

if.end39.do.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

if.end.i150:                                      ; preds = %if.end39
  %call1.i148 = tail call i32 @clk_enable(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i148)
  %tobool2.not.i149 = icmp eq i32 %call1.i148, 0
  br i1 %tobool2.not.i149, label %if.end48, label %if.then3.i151

if.then3.i151:                                    ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %13) #5
  br label %do.end46

do.end46:                                         ; preds = %if.then3.i151, %if.end39.do.end46_crit_edge
  %retval.0.i152.ph = phi i32 [ %call1.i148, %if.then3.i151 ], [ %call.i146, %if.end39.do.end46_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %dis_clk_reg

if.end48:                                         ; preds = %if.end.i150
  %14 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_reg, align 4
  %call50 = tail call i32 @clk_get_rate(ptr noundef %15) #5
  %16 = ptrtoint ptr %clk_delay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_delay, align 4
  %call52 = tail call i32 @clk_get_rate(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call50)
  %18 = icmp ult i32 %call50, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call52)
  %19 = icmp ult i32 %call52, 1000000
  %or.cond = select i1 %18, i1 true, i1 %19
  br i1 %or.cond, label %if.end48.do.body60_crit_edge, label %if.else

if.end48.do.body60_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

if.else:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %div53 = udiv i32 %call52, 1000000
  %div = udiv i32 %call50, 1000000
  %mul = mul nuw nsw i32 %div53, %div53
  %add = add nsw i32 %div, -1
  %sub = add nuw nsw i32 %add, %mul
  %div57 = udiv i32 %sub, %mul
  br label %do.body60

do.body60:                                        ; preds = %if.else, %if.end48.do.body60_crit_edge
  %div57.sink = phi i32 [ %div57, %if.else ], [ 2, %if.end48.do.body60_crit_edge ]
  %20 = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div57.sink, ptr %20, align 4
  %lock = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @lpc18xx_rgu_probe.__key, i16 noundef signext 3) #5
  %owner = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %owner, align 4
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 64, ptr %nr_resets, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @lpc18xx_rgu_ops, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %of_node68 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %of_node68 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %of_node68, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call70 = tail call i32 @reset_controller_register(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end77, label %do.end75

do.end75:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  %29 = ptrtoint ptr %clk_delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk_delay, align 4
  tail call void @clk_disable(ptr noundef %30) #5
  tail call void @clk_unprepare(ptr noundef %30) #5
  br label %dis_clk_reg

if.end77:                                         ; preds = %do.body60
  %restart_nb = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %call.i, i32 0, i32 1
  %priority = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %call.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 192, ptr %priority, align 4
  %32 = ptrtoint ptr %restart_nb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @lpc18xx_rgu_restart, ptr %restart_nb, align 4
  %call80 = tail call i32 @register_restart_handler(ptr noundef %restart_nb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end77.cleanup_crit_edge, label %do.end85

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end85:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  br label %cleanup

dis_clk_reg:                                      ; preds = %do.end75, %do.end46
  %ret.0 = phi i32 [ %retval.0.i152.ph, %do.end46 ], [ %call70, %do.end75 ]
  %33 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk_reg, align 4
  tail call void @clk_disable(ptr noundef %34) #5
  tail call void @clk_unprepare(ptr noundef %34) #5
  br label %cleanup

cleanup:                                          ; preds = %dis_clk_reg, %do.end85, %if.end77.cleanup_crit_edge, %do.end37, %do.end26, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %5, %do.end ], [ %9, %do.end26 ], [ %retval.0.i.ph, %do.end37 ], [ %ret.0, %dis_clk_reg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end85 ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_rgu_restart(ptr nocapture noundef readonly %nb, i32 noundef %mode, ptr nocapture noundef readnone %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %base = getelementptr i8, ptr %nb, i32 20
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 16777216) #5, !srcloc !61
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.06 = phi i32 [ 2000, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.06, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #5
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_rgu_reset(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %id, 3
  %mul.i.i = and i32 %0, 536870908
  %add.i.i = add nuw nsw i32 %mul.i.i, 336
  %add3.i.i = add nuw nsw i32 %mul.i.i, 256
  %rem.i.i = and i32 %id, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %lock.i.i = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %rcdev, i32 0, i32 5
  %call6.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #5
  %base.i.i = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %rcdev, i32 0, i32 4
  %1 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %2, i32 %add.i.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %4 = xor i32 %3, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %or.i.i = or i32 %5, %shl.i.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %8, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i, i32 %6) #5, !srcloc !61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call6.i.i) #5
  %delay_us = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %rcdev, i32 0, i32 6
  %9 = ptrtoint ptr %delay_us to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay_us, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #5
  %12 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %id, label %entry.sw.epilog_crit_edge [
    i32 12, label %entry.sw.bb_crit_edge
    i32 56, label %entry.sw.bb_crit_edge15
  ]

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #5
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %14, i32 %add.i.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %16 = xor i32 %15, -1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %neg21.i = xor i32 %shl.i.i, -1
  %and.i = and i32 %17, %neg21.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %20, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %18) #5, !srcloc !61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call6.i) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_rgu_assert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %id, 3
  %mul.i = and i32 %0, 536870908
  %add.i = add nuw nsw i32 %mul.i, 336
  %add3.i = add nuw nsw i32 %mul.i, 256
  %rem.i = and i32 %id, 31
  %shl.i = shl nuw i32 1, %rem.i
  %lock.i = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %rcdev, i32 0, i32 5
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %base.i = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %rcdev, i32 0, i32 4
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %2, i32 %add.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %4 = xor i32 %3, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %or.i = or i32 %5, %shl.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %8, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %6) #5, !srcloc !61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_rgu_deassert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %id, 3
  %mul.i = and i32 %0, 536870908
  %add.i = add nuw nsw i32 %mul.i, 336
  %add3.i = add nuw nsw i32 %mul.i, 256
  %rem.i = and i32 %id, 31
  %shl.i = shl nuw i32 1, %rem.i
  %lock.i = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %rcdev, i32 0, i32 5
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %base.i = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %rcdev, i32 0, i32 4
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %2, i32 %add.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %4 = xor i32 %3, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %neg21.i = xor i32 %shl.i, -1
  %and.i = and i32 %5, %neg21.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %8, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %6) #5, !srcloc !61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_rgu_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %id, 3
  %mul = and i32 %0, 536870908
  %add = add nuw nsw i32 %mul, 336
  %rem = and i32 %id, 31
  %base = getelementptr inbounds %struct.lpc18xx_rgu_data, ptr %rcdev, i32 0, i32 4
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %2, i32 %add
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %4 = xor i32 %3, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = lshr i32 %5, %rem
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_reset_lpc18xx__170_230_lpc18xx_rgu_driver_init6, !1, !"__initcall__kmod_reset_lpc18xx__170_230_lpc18xx_rgu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-lpc18xx.c", i32 230, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/reset/reset-lpc18xx.c", i32 225, i32 13}
!4 = !{ptr @lpc18xx_rgu_driver, !5, !"lpc18xx_rgu_driver", i1 false, i1 false}
!5 = !{!"../drivers/reset/reset-lpc18xx.c", i32 222, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/reset/reset-lpc18xx.c", i32 155, i32 41}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/reset/reset-lpc18xx.c", i32 157, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @lpc18xx_rgu_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @lpc18xx_rgu_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/reset/reset-lpc18xx.c", i32 161, i32 43}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/reset/reset-lpc18xx.c", i32 163, i32 3}
!20 = !{ptr @lpc18xx_rgu_probe._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @lpc18xx_rgu_probe._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/reset/reset-lpc18xx.c", i32 169, i32 3}
!24 = !{ptr @lpc18xx_rgu_probe._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @lpc18xx_rgu_probe._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/reset/reset-lpc18xx.c", i32 175, i32 3}
!28 = !{ptr @lpc18xx_rgu_probe._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @lpc18xx_rgu_probe._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @lpc18xx_rgu_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/reset/reset-lpc18xx.c", i32 186, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/reset/reset-lpc18xx.c", i32 197, i32 3}
!35 = !{ptr @lpc18xx_rgu_probe._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @lpc18xx_rgu_probe._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/reset/reset-lpc18xx.c", i32 205, i32 3}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @lpc18xx_rgu_probe._entry.21, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @lpc18xx_rgu_probe._entry_ptr.24, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @lpc18xx_rgu_ops, !43, !"lpc18xx_rgu_ops", i1 false, i1 false}
!43 = !{!"../drivers/reset/reset-lpc18xx.c", i32 132, i32 39}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/reset/reset-lpc18xx.c", i32 53, i32 2}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @lpc18xx_rgu_restart._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @lpc18xx_rgu_restart._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @lpc18xx_rgu_match, !50, !"lpc18xx_rgu_match", i1 false, i1 false}
!50 = !{!"../drivers/reset/reset-lpc18xx.c", i32 217, i32 34}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2152502106}
!61 = !{i64 3073381}
!62 = !{i64 3073799}
!63 = !{i64 2152507430}
!64 = !{i64 2152511994}
