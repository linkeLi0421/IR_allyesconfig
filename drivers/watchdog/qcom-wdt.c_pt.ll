; ModuleID = '/llk/IR_all_yes/drivers/watchdog/qcom-wdt.c_pt.bc'
source_filename = "../drivers/watchdog/qcom-wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qcom_wdt_match_data = type { ptr, i8 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.qcom_wdt = type { %struct.watchdog_device, i32, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_qcom_wdt__189_352_qcom_watchdog_driver_init6 = internal global ptr @qcom_watchdog_driver_init, section ".initcall6.init", align 4
@qcom_watchdog_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_wdt_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_watchdog_driver_exit = internal global ptr @qcom_watchdog_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description190 = internal constant [47 x i8] c"qcom_wdt.description=QCOM KPSS Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [40 x i8] c"qcom_wdt.file=drivers/watchdog/qcom-wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [24 x i8] c"qcom_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom_wdt\00", [23 x i8] zeroinitializer }, align 32
@qcom_wdt_of_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,kpss-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_data_apcs_tmr }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scss-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_data_apcs_tmr }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,kpss-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_data_kpss }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@qcom_wdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_wdt_suspend, ptr @qcom_wdt_resume, ptr @qcom_wdt_suspend, ptr @qcom_wdt_resume, ptr @qcom_wdt_suspend, ptr @qcom_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@qcom_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported QCOM WDT module\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_wdt_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/watchdog/qcom-wdt.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_wdt_probe._entry_ptr = internal global ptr @qcom_wdt_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu-offset\00", [21 x i8] zeroinitializer }, align 32
@qcom_wdt_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get input clock\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_wdt_probe._entry_ptr.9 = internal global ptr @qcom_wdt_probe._entry.7, section ".printk_index", align 4
@qcom_wdt_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to setup clock\0A\00", [41 x i8] zeroinitializer }, align 32
@qcom_wdt_probe._entry_ptr.12 = internal global ptr @qcom_wdt_probe._entry.10, section ".printk_index", align 4
@qcom_wdt_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid clock rate\0A\00", [44 x i8] zeroinitializer }, align 32
@qcom_wdt_probe._entry_ptr.15 = internal global ptr @qcom_wdt_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wdt_bark\00", [23 x i8] zeroinitializer }, align 32
@qcom_wdt_pt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33696, i32 0, [32 x i8] c"qcom_wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@qcom_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33184, i32 0, [32 x i8] c"qcom_wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@qcom_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @qcom_wdt_start, ptr @qcom_wdt_stop, ptr @qcom_wdt_ping, ptr null, ptr @qcom_wdt_set_timeout, ptr @qcom_wdt_set_pretimeout, ptr null, ptr @qcom_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@match_data_apcs_tmr = internal constant { %struct.qcom_wdt_match_data, [24 x i8] } { %struct.qcom_wdt_match_data { ptr @reg_offset_data_apcs_tmr, i8 0 }, [24 x i8] zeroinitializer }, align 32
@match_data_kpss = internal constant { %struct.qcom_wdt_match_data, [24 x i8] } { %struct.qcom_wdt_match_data { ptr @reg_offset_data_kpss, i8 1 }, [24 x i8] zeroinitializer }, align 32
@reg_offset_data_apcs_tmr = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 56, i32 64, i32 68, i32 76, i32 92], [44 x i8] zeroinitializer }, align 32
@reg_offset_data_kpss = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 8, i32 12, i32 16, i32 20], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"qcom_watchdog_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 344, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 347, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"qcom_wdt_of_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 336, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"qcom_wdt_pm_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 332, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 206, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 219, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 231, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 237, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 255, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 263, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"qcom_wdt_pt_info\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 169, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"qcom_wdt_info\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 161, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"qcom_wdt_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 151, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"match_data_apcs_tmr\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 183, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"match_data_kpss\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 188, i32 41 }
@___asan_gen_.86 = private unnamed_addr constant [25 x i8] c"reg_offset_data_apcs_tmr\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 26, i32 18 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"reg_offset_data_kpss\00", align 1
@___asan_gen_.90 = private constant [31 x i8] c"../drivers/watchdog/qcom-wdt.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 34, i32 18 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_qcom_watchdog_driver_exit, ptr @__initcall__kmod_qcom_wdt__189_352_qcom_watchdog_driver_init6, ptr @qcom_watchdog_driver_exit, ptr @qcom_wdt_probe._entry, ptr @qcom_wdt_probe._entry.10, ptr @qcom_wdt_probe._entry.13, ptr @qcom_wdt_probe._entry.7, ptr @qcom_wdt_probe._entry_ptr, ptr @qcom_wdt_probe._entry_ptr.12, ptr @qcom_wdt_probe._entry_ptr.15, ptr @qcom_wdt_probe._entry_ptr.9, ptr @qcom_watchdog_driver, ptr @.str, ptr @qcom_wdt_of_table, ptr @qcom_wdt_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @qcom_wdt_pt_info, ptr @qcom_wdt_info, ptr @qcom_wdt_ops, ptr @match_data_apcs_tmr, ptr @match_data_kpss, ptr @reg_offset_data_apcs_tmr, ptr @reg_offset_data_kpss], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_watchdog_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_wdt_of_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_wdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_wdt_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_wdt_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_wdt_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_wdt_pt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_data_apcs_tmr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_data_kpss to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_offset_data_apcs_tmr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_offset_data_kpss to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_watchdog_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_watchdog_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_watchdog_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_watchdog_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %percpu_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %percpu_offset) #6
  %2 = ptrtoint ptr %percpu_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %percpu_offset, align 4, !annotation !63
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %percpu_offset, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool11.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %percpu_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %percpu_offset, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %4 = ptrtoint ptr %percpu_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %percpu_offset, align 4
  %6 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call6, align 4
  %add = add i32 %7, %5
  store i32 %add, ptr %call6, align 4
  %8 = load i32, ptr %percpu_offset, align 4
  %end = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end, align 4
  %add14 = add i32 %10, %8
  store i32 %add14, ptr %end, align 4
  %call15 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call6) #6
  %base = getelementptr inbounds %struct.qcom_wdt, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call22 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %cmp.i170 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  %13 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %call.i171 = call i32 @clk_prepare(ptr noundef %call22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool.not.i = icmp eq i32 %call.i171, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.do.end35_crit_edge

if.end29.do.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

if.end.i:                                         ; preds = %if.end29
  %call1.i = call i32 @clk_enable(ptr noundef %call22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end36, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call22) #6
  br label %do.end35

do.end35:                                         ; preds = %if.then3.i, %if.end29.do.end35_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i171, %if.end29.do.end35_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end.i
  %call.i172 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @qcom_clk_disable_unprepare, ptr noundef %call22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool.not.i173 = icmp eq i32 %call.i172, 0
  br i1 %tobool.not.i173, label %if.end40, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_disable(ptr noundef %call22) #6
  call void @clk_unprepare(ptr noundef %call22) #6
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @clk_get_rate(ptr noundef %call22) #6
  %rate = getelementptr inbounds %struct.qcom_wdt, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call41, ptr %rate, align 4
  %15 = add i32 %call41, -268435457
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %15)
  %16 = icmp ult i32 %15, -268435456
  br i1 %16, label %do.end48, label %if.end49

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end49:                                         ; preds = %if.end40
  %call50 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #6
  %pretimeout = getelementptr inbounds %struct.qcom_wdt_match_data, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pretimeout, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool51.not = icmp ne i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp52 = icmp sgt i32 %call50, 0
  %or.cond169 = select i1 %tobool51.not, i1 %cmp52, i1 false
  br i1 %or.cond169, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end49
  %call.i175 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call50, ptr noundef nonnull @qcom_wdt_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool55.not = icmp eq i32 %call.i175, 0
  br i1 %tobool55.not, label %if.end57, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @qcom_wdt_pt_info, ptr %info, align 4
  %pretimeout60 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %pretimeout60 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %pretimeout60, align 4
  br label %if.end66

if.else:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call50)
  %cmp61 = icmp eq i32 %call50, -517
  br i1 %cmp61, label %if.else.cleanup_crit_edge, label %if.end63

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %info65 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %info65 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @qcom_wdt_info, ptr %info65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end63, %if.end57
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @qcom_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %23 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %min_timeout, align 4
  %24 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rate, align 4
  %div = udiv i32 268435456, %25
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div, ptr %max_timeout, align 4
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev1, ptr %parent, align 4
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call, align 4
  %layout = getelementptr inbounds %struct.qcom_wdt, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %layout to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %layout, align 4
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %arrayidx.i = getelementptr i32, ptr %29, i32 2
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 %34
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool75.not = icmp eq i32 %36, 0
  br i1 %tobool75.not, label %if.end66.if.end78_crit_edge, label %if.then76

if.end66.if.end78_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then76:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %bootstatus = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %bootstatus to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 32, ptr %bootstatus, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end66.if.end78_crit_edge
  %38 = ptrtoint ptr %max_timeout to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_timeout, align 4
  %40 = call i32 @llvm.umin.i32(i32 %39, i32 30)
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %41 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %timeout, align 4
  %call85 = call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %dev1) #6
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %44 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %layout, align 4
  %arrayidx.i.i = getelementptr i32, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %47
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %49 = and i32 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool88.not = icmp eq i32 %49, 0
  br i1 %tobool88.not, label %if.end78.if.end93_crit_edge, label %if.then89

if.end78.if.end93_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then89:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %call91 = call i32 @qcom_wdt_start(ptr noundef nonnull %call.i)
  %status = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  call void @_set_bit(i32 noundef 3, ptr noundef %status) #6
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.end78.if.end93_crit_edge
  %call95 = call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end98:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.end93.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %do.end48, %devm_add_action_or_reset.exit, %do.end35, %do.end27, %if.then18, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %12, %if.then18 ], [ %13, %do.end27 ], [ %retval.0.i.ph, %do.end35 ], [ -22, %do.end48 ], [ 0, %if.end98 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call.i172, %devm_add_action_or_reset.exit ], [ %call.i175, %if.then53.cleanup_crit_edge ], [ -517, %if.else.cleanup_crit_edge ], [ %call95, %if.end93.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %percpu_offset) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #6
  tail call void @clk_unprepare(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_wdt_isr(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @watchdog_notify_pretimeout(ptr noundef %arg) #6
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_wdt_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 8
  %2 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pretimeout, align 4
  %sub = sub i32 %1, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.qcom_wdt, ptr %wdd, i32 0, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %layout.i = getelementptr inbounds %struct.qcom_wdt, ptr %wdd, i32 0, i32 3
  %6 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %layout.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add.ptr.i32 = getelementptr i8, ptr %11, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 16777216) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %rate = getelementptr inbounds %struct.qcom_wdt, ptr %wdd, i32 0, i32 1
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  %mul = mul i32 %17, %sub
  %18 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %21 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %layout.i, align 4
  %arrayidx.i35 = getelementptr i32, ptr %22, i32 3
  %23 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i35, align 4
  %add.ptr.i36 = getelementptr i8, ptr %20, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %18) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout, align 4
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate, align 4
  %mul15 = mul i32 %28, %26
  %29 = tail call i32 @llvm.bswap.i32(i32 %mul15)
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %32 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %layout.i, align 4
  %arrayidx.i39 = getelementptr i32, ptr %33, i32 4
  %34 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i39, align 4
  %add.ptr.i40 = getelementptr i8, ptr %31, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %29) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %38 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %layout.i, align 4
  %arrayidx.i43 = getelementptr i32, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i43, align 4
  %add.ptr.i44 = getelementptr i8, ptr %37, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 16777216) #6, !srcloc !69
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_notify_pretimeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.qcom_wdt, ptr %wdd, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %layout.i = getelementptr inbounds %struct.qcom_wdt, ptr %wdd, i32 0, i32 3
  %2 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !69
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_wdt_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.qcom_wdt, ptr %wdd, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %layout.i = getelementptr inbounds %struct.qcom_wdt, ptr %wdd, i32 0, i32 3
  %2 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layout.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !69
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_wdt_set_timeout(ptr nocapture noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %timeout, ptr %timeout1, align 4
  %call = tail call i32 @qcom_wdt_start(ptr noundef %wdd)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_wdt_set_pretimeout(ptr nocapture noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 8
  %0 = ptrtoint ptr %pretimeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %timeout, ptr %pretimeout, align 4
  %call = tail call i32 @qcom_wdt_start(ptr noundef %wdd)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_wdt_restart(ptr nocapture noundef readonly %wdd, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr inbounds %struct.qcom_wdt, ptr %wdd, i32 0, i32 1
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  %mul = shl i32 %1, 7
  %div = udiv i32 %mul, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.qcom_wdt, ptr %wdd, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %layout.i = getelementptr inbounds %struct.qcom_wdt, ptr %wdd, i32 0, i32 3
  %4 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %layout.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add.ptr.i29 = getelementptr i8, ptr %9, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 16777216) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %div)
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %17 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %layout.i, align 4
  %arrayidx.i32 = getelementptr i32, ptr %18, i32 3
  %19 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %16, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %14) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %23 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %layout.i, align 4
  %arrayidx.i36 = getelementptr i32, ptr %24, i32 4
  %25 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i36, align 4
  %add.ptr.i37 = getelementptr i8, ptr %22, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %14) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %29 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %layout.i, align 4
  %arrayidx.i40 = getelementptr i32, ptr %30, i32 1
  %31 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i40, align 4
  %add.ptr.i41 = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 16777216) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.042 = phi i32 [ 150, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.042, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_wdt_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %base.i.i = getelementptr inbounds %struct.qcom_wdt, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %layout.i.i = getelementptr inbounds %struct.qcom_wdt, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layout.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !69
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_wdt_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @qcom_wdt_start(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_qcom_wdt__189_352_qcom_watchdog_driver_init6, !1, !"__initcall__kmod_qcom_wdt__189_352_qcom_watchdog_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/qcom-wdt.c", i32 352, i32 1}
!2 = !{ptr @__exitcall_qcom_watchdog_driver_exit, !1, !"__exitcall_qcom_watchdog_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description190, !4, !"__UNIQUE_ID_description190", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/qcom-wdt.c", i32 354, i32 1}
!5 = !{ptr @__UNIQUE_ID_file191, !6, !"__UNIQUE_ID_file191", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/qcom-wdt.c", i32 355, i32 1}
!7 = !{ptr @__UNIQUE_ID_license192, !6, !"__UNIQUE_ID_license192", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/qcom-wdt.c", i32 347, i32 12}
!10 = !{ptr @qcom_watchdog_driver, !11, !"qcom_watchdog_driver", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/qcom-wdt.c", i32 344, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/qcom-wdt.c", i32 206, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @qcom_wdt_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @qcom_wdt_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/qcom-wdt.c", i32 219, i32 31}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/qcom-wdt.c", i32 231, i32 3}
!24 = !{ptr @qcom_wdt_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qcom_wdt_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/qcom-wdt.c", i32 237, i32 3}
!28 = !{ptr @qcom_wdt_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qcom_wdt_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/qcom-wdt.c", i32 255, i32 3}
!32 = !{ptr @qcom_wdt_probe._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @qcom_wdt_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/qcom-wdt.c", i32 263, i32 12}
!36 = !{ptr @qcom_wdt_pt_info, !37, !"qcom_wdt_pt_info", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/qcom-wdt.c", i32 169, i32 35}
!38 = !{ptr @qcom_wdt_info, !39, !"qcom_wdt_info", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/qcom-wdt.c", i32 161, i32 35}
!40 = !{ptr @qcom_wdt_ops, !41, !"qcom_wdt_ops", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/qcom-wdt.c", i32 151, i32 34}
!42 = !{ptr @qcom_wdt_of_table, !43, !"qcom_wdt_of_table", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/qcom-wdt.c", i32 336, i32 34}
!44 = !{ptr @match_data_apcs_tmr, !45, !"match_data_apcs_tmr", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/qcom-wdt.c", i32 183, i32 41}
!46 = !{ptr @reg_offset_data_apcs_tmr, !47, !"reg_offset_data_apcs_tmr", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/qcom-wdt.c", i32 26, i32 18}
!48 = !{ptr @match_data_kpss, !49, !"match_data_kpss", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/qcom-wdt.c", i32 188, i32 41}
!50 = !{ptr @reg_offset_data_kpss, !51, !"reg_offset_data_kpss", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/qcom-wdt.c", i32 34, i32 18}
!52 = !{ptr @qcom_wdt_pm_ops, !53, !"qcom_wdt_pm_ops", i1 false, i1 false}
!53 = !{!"../drivers/watchdog/qcom-wdt.c", i32 332, i32 32}
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
!65 = !{i64 4244072}
!66 = !{i64 2153207754}
!67 = !{i64 2153200485}
!68 = !{i64 2153193441}
!69 = !{i64 4243654}
!70 = !{i64 2153193831}
!71 = !{i64 2153194243}
!72 = !{i64 2153194714}
!73 = !{i64 2153195287}
!74 = !{i64 2153195754}
!75 = !{i64 2153196144}
!76 = !{i64 2153196534}
!77 = !{i64 2153196924}
!78 = !{i64 2153197327}
!79 = !{i64 2153197754}
!80 = !{i64 2153198276}
!81 = !{i64 2153198675}
