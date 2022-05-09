; ModuleID = '/llk/IR_all_yes/drivers/watchdog/sama5d4_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/sama5d4_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sama5d4_wdt = type { %struct.watchdog_device, ptr, i32, i32, i32, i8, i8 }

@__param_str_wdt_timeout = internal constant [24 x i8] c"sama5d4_wdt.wdt_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@wdt_timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_wdt_timeout = internal constant %struct.kernel_param { ptr @__param_str_wdt_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @wdt_timeout } }, section "__param", align 4
@__UNIQUE_ID_wdt_timeouttype187 = internal constant [37 x i8] c"sama5d4_wdt.parmtype=wdt_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wdt_timeout188 = internal constant [73 x i8] c"sama5d4_wdt.parm=wdt_timeout:Watchdog timeout in seconds. (default = 16)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"sama5d4_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype189 = internal constant [35 x i8] c"sama5d4_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout190 = internal constant [78 x i8] c"sama5d4_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_sama5d4_wdt__191_384_sama5d4_wdt_driver_init6 = internal global ptr @sama5d4_wdt_driver_init, section ".initcall6.init", align 4
@sama5d4_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sama5d4_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sama5d4_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sama5d4_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sama5d4_wdt_driver_exit = internal global ptr @sama5d4_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author192 = internal constant [37 x i8] c"sama5d4_wdt.author=Atmel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [60 x i8] c"sama5d4_wdt.description=Atmel SAMA5D4 Watchdog Timer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [46 x i8] c"sama5d4_wdt.file=drivers/watchdog/sama5d4_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [27 x i8] c"sama5d4_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sama5d4_wdt\00", [20 x i8] zeroinitializer }, align 32
@sama5d4_wdt_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sama5d4_wdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sama5d4_wdt_suspend_late, ptr @sama5d4_wdt_resume_early, ptr @sama5d4_wdt_suspend_late, ptr @sama5d4_wdt_resume_early, ptr @sama5d4_wdt_suspend_late, ptr @sama5d4_wdt_resume_early, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sama5d4_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Atmel SAMA5D4 Watchdog\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@sama5d4_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @sama5d4_wdt_start, ptr @sama5d4_wdt_stop, ptr @sama5d4_wdt_ping, ptr null, ptr @sama5d4_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"microchip,sam9x60-wdt\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"microchip,sama7g5-wdt\00", [42 x i8] zeroinitializer }, align 32
@sama5d4_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 291, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get IRQ from DT\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sama5d4_wdt_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/sama5d4_wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sama5d4_wdt_probe._entry_ptr = internal global ptr @sama5d4_wdt_probe._entry, section ".printk_index", align 4
@sama5d4_wdt_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 301, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot register interrupt handler\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sama5d4_wdt_probe._entry_ptr.11 = internal global ptr @sama5d4_wdt_probe._entry.8, section ".printk_index", align 4
@sama5d4_wdt_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 322, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"initialized (timeout = %d sec, nowayout = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sama5d4_wdt_probe._entry_ptr.15 = internal global ptr @sama5d4_wdt_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel,watchdog-type\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"software\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel,idle-halt\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel,dbg-halt\00", [17 x i8] zeroinitializer }, align 32
@sama5d4_wdt_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\012Atmel Watchdog Software Reset\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sama5d4_wdt_irq_handler\00", [40 x i8] zeroinitializer }, align 32
@sama5d4_wdt_irq_handler._entry_ptr = internal global ptr @sama5d4_wdt_irq_handler._entry, section ".printk_index", align 4
@sama5d4_wdt_irq_handler._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\012Reboot didn't succeed\0A\00", [39 x i8] zeroinitializer }, align 32
@sama5d4_wdt_irq_handler._entry_ptr.24 = internal global ptr @sama5d4_wdt_irq_handler._entry.22, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"wdt_timeout\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 39, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 40, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"sama5d4_wdt_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 376, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 379, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"sama5d4_wdt_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 327, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"sama5d4_wdt_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 371, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"sama5d4_wdt_info\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 152, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"sama5d4_wdt_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 157, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 272, i32 44 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 273, i32 44 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 291, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 301, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 321, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 193, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 194, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 197, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 200, i32 32 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 176, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [34 x i8] c"../drivers/watchdog/sama5d4_wdt.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 178, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__UNIQUE_ID_nowayout190, ptr @__UNIQUE_ID_nowayouttype189, ptr @__UNIQUE_ID_wdt_timeout188, ptr @__UNIQUE_ID_wdt_timeouttype187, ptr @__exitcall_sama5d4_wdt_driver_exit, ptr @__initcall__kmod_sama5d4_wdt__191_384_sama5d4_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_wdt_timeout, ptr @sama5d4_wdt_driver_exit, ptr @sama5d4_wdt_irq_handler._entry, ptr @sama5d4_wdt_irq_handler._entry.22, ptr @sama5d4_wdt_irq_handler._entry_ptr, ptr @sama5d4_wdt_irq_handler._entry_ptr.24, ptr @sama5d4_wdt_probe._entry, ptr @sama5d4_wdt_probe._entry.12, ptr @sama5d4_wdt_probe._entry.8, ptr @sama5d4_wdt_probe._entry_ptr, ptr @sama5d4_wdt_probe._entry_ptr.11, ptr @sama5d4_wdt_probe._entry_ptr.15, ptr @wdt_timeout, ptr @nowayout, ptr @sama5d4_wdt_driver, ptr @.str, ptr @sama5d4_wdt_of_match, ptr @sama5d4_wdt_pm_ops, ptr @sama5d4_wdt_info, ptr @sama5d4_wdt_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_wdt_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_wdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_wdt_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_wdt_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_wdt_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_wdt_irq_handler._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sama5d4_wdt_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sama5d4_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sama5d4_wdt_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tmp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %timeout, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sama5d4_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sama5d4_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %max_timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %last_ping = getelementptr inbounds %struct.sama5d4_wdt, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %last_ping to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %last_ping, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call3 = tail call i32 @of_device_is_compatible(ptr noundef %8, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end9_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %sam9x60_support = getelementptr inbounds %struct.sama5d4_wdt, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %sam9x60_support to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %sam9x60_support, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %lor.lhs.false.if.end9_crit_edge
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %reg_base = getelementptr inbounds %struct.sama5d4_wdt, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call10, ptr %reg_base, align 4
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp.i, align 4, !annotation !86
  %sam9x60_support.i = getelementptr inbounds %struct.sama5d4_wdt, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %sam9x60_support.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sam9x60_support.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %spec.select.i = select i1 %tobool.not.i, i32 32768, i32 4096
  %20 = getelementptr inbounds %struct.sama5d4_wdt, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select.i, ptr %20, align 4
  %call.i105 = call i32 @of_property_read_string(ptr noundef %16, ptr noundef nonnull @.str.16, ptr noundef nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool2.not.i = icmp eq i32 %call.i105, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end14.if.end6.i_crit_edge

if.end14.if.end6.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end14
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tmp.i, align 4
  %call3.i = call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(9) @.str.17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %need_irq.i = getelementptr inbounds %struct.sama5d4_wdt, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %need_irq.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %need_irq.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %land.lhs.true.i.if.end6.i_crit_edge, %if.end14.if.end6.i_crit_edge
  %call.i.i = call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.18, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then8.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %20, align 4
  %or.i = or i32 %26, 536870912
  store i32 %or.i, ptr %20, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end10.i_crit_edge
  %call.i1.i = call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.19, ptr noundef null) #7
  %tobool.i2.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool.i2.not.i, label %if.end10.i.of_sama5d4_wdt_init.exit_crit_edge, label %if.then12.i

if.end10.i.of_sama5d4_wdt_init.exit_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_sama5d4_wdt_init.exit

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %20, align 4
  %or14.i = or i32 %28, 268435456
  store i32 %or14.i, ptr %20, align 4
  br label %of_sama5d4_wdt_init.exit

of_sama5d4_wdt_init.exit:                         ; preds = %if.then12.i, %if.end10.i.of_sama5d4_wdt_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  %need_irq = getelementptr inbounds %struct.sama5d4_wdt, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %need_irq to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %need_irq, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool20.not = icmp eq i8 %30, 0
  br i1 %tobool20.not, label %of_sama5d4_wdt_init.exit.if.end39_crit_edge, label %if.then21

of_sama5d4_wdt_init.exit.if.end39_crit_edge:      ; preds = %of_sama5d4_wdt_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then21:                                        ; preds = %of_sama5d4_wdt_init.exit
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %call23 = call i32 @irq_of_parse_and_map(ptr noundef %32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end, label %if.end28

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.3) #11
  %33 = ptrtoint ptr %need_irq to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %need_irq, align 4
  br label %if.end39

if.end28:                                         ; preds = %if.then21
  %34 = ptrtoint ptr %need_irq to i32
  call void @__asan_load1_noabort(i32 %34)
  %.pr = load i8, ptr %need_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool30.not = icmp eq i8 %.pr, 0
  br i1 %tobool30.not, label %if.end28.if.end39_crit_edge, label %if.then31

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then31:                                        ; preds = %if.end28
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 8
  %call.i106 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call23, ptr noundef nonnull @sama5d4_wdt_irq_handler, ptr noundef null, i32 noundef 20608, ptr noundef %36, ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool33.not = icmp eq i32 %call.i106, 0
  br i1 %tobool33.not, label %if.then31.if.end39_crit_edge, label %do.end37

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end39:                                         ; preds = %if.then31.if.end39_crit_edge, %if.end28.if.end39_crit_edge, %do.end, %of_sama5d4_wdt_init.exit.if.end39_crit_edge
  %37 = load i32, ptr @wdt_timeout, align 4
  %call40 = call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef %37, ptr noundef %dev1) #7
  call fastcc void @sama5d4_wdt_init(ptr noundef nonnull %call.i)
  %38 = load i8, ptr @nowayout, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool45.not = icmp eq i8 %38, 0
  br i1 %tobool45.not, label %if.end39.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end39.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #7
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end39.watchdog_set_nowayout.exit_crit_edge
  %status.i107 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  call void @_set_bit(i32 noundef 4, ptr noundef %status.i107) #7
  %call46 = call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %watchdog_set_nowayout.exit.cleanup_crit_edge

watchdog_set_nowayout.exit.cleanup_crit_edge:     ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %40 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %timeout, align 4
  %42 = load i8, ptr @nowayout, align 1, !range !87
  %43 = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %41, i32 noundef %43) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %watchdog_set_nowayout.exit.cleanup_crit_edge, %do.end37, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then12 ], [ %call.i106, %do.end37 ], [ 0, %if.end49 ], [ -12, %entry.cleanup_crit_edge ], [ %call46, %watchdog_set_nowayout.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sam9x60_support = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sam9x60_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sam9x60_support, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %reg_base3 = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !88
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !88
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %7, %if.else ], [ %6, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink)
  %tobool7.not = icmp eq i32 %.sink, 0
  br i1 %tobool7.not, label %if.end.if.end16_crit_edge, label %do.end

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  tail call void @emergency_restart() #7
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sama5d4_wdt_init(ptr nocapture noundef %wdt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mr = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 2
  %0 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mr, align 4
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %entry
  %reg_base = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !88
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %sam9x60_support = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 6
  %6 = ptrtoint ptr %sam9x60_support to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sam9x60_support, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp ne i8 %7, 0
  %and2 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool1.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %or = or i32 %5, 4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_ping.i = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 4
  %9 = ptrtoint ptr %last_ping.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_ping.i, align 4
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 123
  %spec.select.i.neg1.i = select i1 %cmp.i.i, i32 -1073741822, i32 -1
  %add.neg.i = sub i32 %8, %10
  %sub.i = add i32 %add.neg.i, %spec.select.i.neg1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then4.wdt_write_nosleep.exit_crit_edge

if.then4.wdt_write_nosleep.exit_crit_edge:        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write_nosleep.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 26414004) #7
  br label %wdt_write_nosleep.exit

wdt_write_nosleep.exit:                           ; preds = %if.then.i, %if.then4.wdt_write_nosleep.exit_crit_edge
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #7, !srcloc !89
  br label %if.end13.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  %and8 = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond1 = select i1 %tobool6.not, i1 %tobool9.not, i1 false
  br i1 %or.cond1, label %if.then10, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.else
  %or11 = or i32 %5, 32768
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %last_ping.i2 = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 4
  %16 = ptrtoint ptr %last_ping.i2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_ping.i2, align 4
  %call.i.i3 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i.i3)
  %cmp.i.i4 = icmp ult i32 %call.i.i3, 123
  %spec.select.i.neg1.i5 = select i1 %cmp.i.i4, i32 -1073741822, i32 -1
  %add.neg.i6 = sub i32 %15, %17
  %sub.i7 = add i32 %add.neg.i6, %spec.select.i.neg1.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i7)
  %cmp.i8 = icmp slt i32 %sub.i7, 0
  br i1 %cmp.i8, label %if.then.i9, label %if.then10.wdt_write_nosleep.exit12_crit_edge

if.then10.wdt_write_nosleep.exit12_crit_edge:     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write_nosleep.exit12

if.then.i9:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 26414004) #7
  br label %wdt_write_nosleep.exit12

wdt_write_nosleep.exit12:                         ; preds = %if.then.i9, %if.then10.wdt_write_nosleep.exit12_crit_edge
  %19 = tail call i32 @llvm.bswap.i32(i32 %or11) #7
  %20 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base, align 4
  %add.ptr.i11 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %19) #7, !srcloc !89
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %wdt_write_nosleep.exit12, %wdt_write_nosleep.exit
  %last_ping.i.sink = phi ptr [ %last_ping.i, %wdt_write_nosleep.exit ], [ %last_ping.i2, %wdt_write_nosleep.exit12 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %last_ping.i.sink to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_ping.i.sink, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else.if.end13_crit_edge, %entry.if.end13_crit_edge
  %sam9x60_support14 = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 6
  %24 = ptrtoint ptr %sam9x60_support14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sam9x60_support14, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool15.not = icmp eq i8 %25, 0
  br i1 %tobool15.not, label %if.else25, label %if.then16

if.then16:                                        ; preds = %if.end13
  %need_irq = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 5
  %26 = ptrtoint ptr %need_irq to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %need_irq, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool17.not = icmp eq i8 %27, 0
  br i1 %tobool17.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %ir = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 3
  %28 = ptrtoint ptr %ir to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %ir, align 4
  br label %if.end22

if.else19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mr, align 4
  %or21 = or i32 %30, 16
  store i32 %or21, ptr %mr, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.then18
  %ir23 = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 3
  %31 = ptrtoint ptr %ir23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ir23, align 4
  %last_ping.i13 = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %34 = ptrtoint ptr %last_ping.i13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_ping.i13, align 4
  %call.i4.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i4.i)
  %cmp.i5.i = icmp ult i32 %call.i4.i, 123
  %spec.select.i6.neg.i = select i1 %cmp.i5.i, i32 -1073741822, i32 -1
  %add.neg9.i = sub i32 %33, %35
  %sub10.i = add i32 %add.neg9.i, %spec.select.i6.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp11.i = icmp slt i32 %sub10.i, 0
  br i1 %cmp11.i, label %if.end22.while.body.i_crit_edge, label %if.end22.wdt_write.exit_crit_edge

if.end22.wdt_write.exit_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit

if.end22.while.body.i_crit_edge:                  ; preds = %if.end22
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end22.while.body.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %37 = ptrtoint ptr %last_ping.i13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last_ping.i13, align 4
  %call.i.i14 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i.i14)
  %cmp.i.i15 = icmp ult i32 %call.i.i14, 123
  %spec.select.i.neg12.i = select i1 %cmp.i.i15, i32 -1073741822, i32 -1
  %add.neg.i16 = sub i32 %36, %38
  %sub.i17 = add i32 %add.neg.i16, %spec.select.i.neg12.i
  %cmp.i18 = icmp slt i32 %sub.i17, 0
  br i1 %cmp.i18, label %while.body.i.while.body.i_crit_edge, label %while.body.i.wdt_write.exit_crit_edge

while.body.i.wdt_write.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

wdt_write.exit:                                   ; preds = %while.body.i.wdt_write.exit_crit_edge, %if.end22.wdt_write.exit_crit_edge
  %39 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %reg_base.i19 = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 1
  %40 = ptrtoint ptr %reg_base.i19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base.i19, align 4
  %add.ptr.i20 = getelementptr i8, ptr %41, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %39) #7, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %43 = ptrtoint ptr %last_ping.i13 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %last_ping.i13, align 4
  %44 = load volatile i32, ptr @jiffies, align 128
  %call.i4.i22 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i4.i22)
  %cmp.i5.i23 = icmp ult i32 %call.i4.i22, 123
  %spec.select.i6.neg.i24 = select i1 %cmp.i5.i23, i32 -1073741822, i32 -1
  %add.neg9.i25 = sub i32 %44, %42
  %sub10.i26 = add i32 %add.neg9.i25, %spec.select.i6.neg.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i26)
  %cmp11.i27 = icmp slt i32 %sub10.i26, 0
  br i1 %cmp11.i27, label %wdt_write.exit.while.body.i34_crit_edge, label %wdt_write.exit.wdt_write.exit37_crit_edge

wdt_write.exit.wdt_write.exit37_crit_edge:        ; preds = %wdt_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit37

wdt_write.exit.while.body.i34_crit_edge:          ; preds = %wdt_write.exit
  br label %while.body.i34

while.body.i34:                                   ; preds = %while.body.i34.while.body.i34_crit_edge, %wdt_write.exit.while.body.i34_crit_edge
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %46 = ptrtoint ptr %last_ping.i13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %last_ping.i13, align 4
  %call.i.i28 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i.i28)
  %cmp.i.i29 = icmp ult i32 %call.i.i28, 123
  %spec.select.i.neg12.i30 = select i1 %cmp.i.i29, i32 -1073741822, i32 -1
  %add.neg.i31 = sub i32 %45, %47
  %sub.i32 = add i32 %add.neg.i31, %spec.select.i.neg12.i30
  %cmp.i33 = icmp slt i32 %sub.i32, 0
  br i1 %cmp.i33, label %while.body.i34.while.body.i34_crit_edge, label %while.body.i34.wdt_write.exit37_crit_edge

while.body.i34.wdt_write.exit37_crit_edge:        ; preds = %while.body.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit37

while.body.i34.while.body.i34_crit_edge:          ; preds = %while.body.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i34

wdt_write.exit37:                                 ; preds = %while.body.i34.wdt_write.exit37_crit_edge, %wdt_write.exit.wdt_write.exit37_crit_edge
  %48 = ptrtoint ptr %reg_base.i19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base.i19, align 4
  %add.ptr.i36 = getelementptr i8, ptr %49, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 -15794176) #7, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %51 = ptrtoint ptr %last_ping.i13 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %last_ping.i13, align 4
  br label %if.end40

if.else25:                                        ; preds = %if.end13
  %52 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mr, align 4
  %need_irq31 = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 5
  %54 = ptrtoint ptr %need_irq31 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %need_irq31, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool32.not = icmp eq i8 %55, 0
  br i1 %tobool32.not, label %if.else36, label %if.then33

if.then33:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  %or35 = or i32 %53, 268378111
  %56 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or35, ptr %mr, align 4
  br label %if.end40

if.else36:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  %or38 = or i32 %53, 268382207
  %57 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or38, ptr %mr, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %if.then33, %wdt_write.exit37
  %58 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %last_ping.i38 = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 4
  %61 = ptrtoint ptr %last_ping.i38 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %last_ping.i38, align 4
  %call.i.i39 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i.i39)
  %cmp.i.i40 = icmp ult i32 %call.i.i39, 123
  %spec.select.i.neg1.i41 = select i1 %cmp.i.i40, i32 -1073741822, i32 -1
  %add.neg.i42 = sub i32 %60, %62
  %sub.i43 = add i32 %add.neg.i42, %spec.select.i.neg1.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i43)
  %cmp.i44 = icmp slt i32 %sub.i43, 0
  br i1 %cmp.i44, label %if.then.i45, label %if.end40.wdt_write_nosleep.exit48_crit_edge

if.end40.wdt_write_nosleep.exit48_crit_edge:      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write_nosleep.exit48

if.then.i45:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 26414004) #7
  br label %wdt_write_nosleep.exit48

wdt_write_nosleep.exit48:                         ; preds = %if.then.i45, %if.end40.wdt_write_nosleep.exit48_crit_edge
  %64 = tail call i32 @llvm.bswap.i32(i32 %59) #7
  %reg_base.i46 = getelementptr inbounds %struct.sama5d4_wdt, ptr %wdt, i32 0, i32 1
  %65 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_base.i46, align 4
  %add.ptr.i47 = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %64) #7, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %68 = ptrtoint ptr %last_ping.i38 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %last_ping.i38, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sam9x60_support = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sam9x60_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sam9x60_support, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ir = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ir, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %reg_base = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !89
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink11 = phi i32 [ -4097, %if.then ], [ -32769, %entry.if.end_crit_edge ]
  %mr1 = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mr1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mr1, align 4
  %and2 = and i32 %10, %.sink11
  store i32 %and2, ptr %mr1, align 4
  %last_ping.i = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %last_ping.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_ping.i, align 4
  %call.i4.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i4.i)
  %cmp.i5.i = icmp ult i32 %call.i4.i, 123
  %spec.select.i6.neg.i = select i1 %cmp.i5.i, i32 -1073741822, i32 -1
  %add.neg9.i = sub i32 %11, %13
  %sub10.i = add i32 %add.neg9.i, %spec.select.i6.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp11.i = icmp slt i32 %sub10.i, 0
  br i1 %cmp11.i, label %if.end.while.body.i_crit_edge, label %if.end.wdt_write.exit_crit_edge

if.end.wdt_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = ptrtoint ptr %last_ping.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_ping.i, align 4
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 123
  %spec.select.i.neg12.i = select i1 %cmp.i.i, i32 -1073741822, i32 -1
  %add.neg.i = sub i32 %14, %16
  %sub.i = add i32 %add.neg.i, %spec.select.i.neg12.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.wdt_write.exit_crit_edge

while.body.i.wdt_write.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

wdt_write.exit:                                   ; preds = %while.body.i.wdt_write.exit_crit_edge, %if.end.wdt_write.exit_crit_edge
  %17 = tail call i32 @llvm.bswap.i32(i32 %and2) #7
  %reg_base.i = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #7, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %21 = ptrtoint ptr %last_ping.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_ping.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sam9x60_support = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sam9x60_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sam9x60_support, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ir = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ir, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %reg_base = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !89
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink11 = phi i32 [ 4096, %if.then ], [ 32768, %entry.if.end_crit_edge ]
  %mr1 = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mr1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mr1, align 4
  %or2 = or i32 %10, %.sink11
  store i32 %or2, ptr %mr1, align 4
  %last_ping.i = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %last_ping.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_ping.i, align 4
  %call.i4.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i4.i)
  %cmp.i5.i = icmp ult i32 %call.i4.i, 123
  %spec.select.i6.neg.i = select i1 %cmp.i5.i, i32 -1073741822, i32 -1
  %add.neg9.i = sub i32 %11, %13
  %sub10.i = add i32 %add.neg9.i, %spec.select.i6.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp11.i = icmp slt i32 %sub10.i, 0
  br i1 %cmp11.i, label %if.end.while.body.i_crit_edge, label %if.end.wdt_write.exit_crit_edge

if.end.wdt_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = ptrtoint ptr %last_ping.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_ping.i, align 4
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 123
  %spec.select.i.neg12.i = select i1 %cmp.i.i, i32 -1073741822, i32 -1
  %add.neg.i = sub i32 %14, %16
  %sub.i = add i32 %add.neg.i, %spec.select.i.neg12.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.wdt_write.exit_crit_edge

while.body.i.wdt_write.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

wdt_write.exit:                                   ; preds = %while.body.i.wdt_write.exit_crit_edge, %if.end.wdt_write.exit_crit_edge
  %17 = tail call i32 @llvm.bswap.i32(i32 %or2) #7
  %reg_base.i = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #7, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %21 = ptrtoint ptr %last_ping.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_ping.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %last_ping.i = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = ptrtoint ptr %last_ping.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_ping.i, align 4
  %call.i4.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i4.i)
  %cmp.i5.i = icmp ult i32 %call.i4.i, 123
  %spec.select.i6.neg.i = select i1 %cmp.i5.i, i32 -1073741822, i32 -1
  %add.neg9.i = sub i32 %2, %4
  %sub10.i = add i32 %add.neg9.i, %spec.select.i6.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp11.i = icmp slt i32 %sub10.i, 0
  br i1 %cmp11.i, label %entry.while.body.i_crit_edge, label %entry.wdt_write.exit_crit_edge

entry.wdt_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %6 = ptrtoint ptr %last_ping.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_ping.i, align 4
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 123
  %spec.select.i.neg12.i = select i1 %cmp.i.i, i32 -1073741822, i32 -1
  %add.neg.i = sub i32 %5, %7
  %sub.i = add i32 %add.neg.i, %spec.select.i.neg12.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.wdt_write.exit_crit_edge

while.body.i.wdt_write.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

wdt_write.exit:                                   ; preds = %while.body.i.wdt_write.exit_crit_edge, %entry.wdt_write.exit_crit_edge
  %reg_base.i = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 16777381) #7, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %last_ping.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %last_ping.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_set_timeout(ptr nocapture noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not = icmp eq i32 %timeout, 0
  %shl = shl i32 %timeout, 8
  %sub = add i32 %shl, 4095
  %phi.bo = and i32 %sub, 4095
  %cond = select i1 %tobool.not, i32 0, i32 %phi.bo
  %sam9x60_support = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sam9x60_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sam9x60_support, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %last_ping.i = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %5 = ptrtoint ptr %last_ping.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_ping.i, align 4
  %call.i4.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i4.i)
  %cmp.i5.i = icmp ult i32 %call.i4.i, 123
  %spec.select.i6.neg.i = select i1 %cmp.i5.i, i32 -1073741822, i32 -1
  %add.neg9.i = sub i32 %4, %6
  %sub10.i = add i32 %add.neg9.i, %spec.select.i6.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp11.i = icmp slt i32 %sub10.i, 0
  br i1 %cmp11.i, label %if.then.while.body.i_crit_edge, label %if.then.wdt_write.exit_crit_edge

if.then.wdt_write.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = ptrtoint ptr %last_ping.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_ping.i, align 4
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 123
  %spec.select.i.neg12.i = select i1 %cmp.i.i, i32 -1073741822, i32 -1
  %add.neg.i = sub i32 %7, %9
  %sub.i = add i32 %add.neg.i, %spec.select.i.neg12.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.wdt_write.exit_crit_edge

while.body.i.wdt_write.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

wdt_write.exit:                                   ; preds = %while.body.i.wdt_write.exit_crit_edge, %if.then.wdt_write.exit_crit_edge
  %10 = tail call i32 @llvm.bswap.i32(i32 %cond) #7
  %reg_base.i = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !89
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %mr = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mr, align 4
  %and3 = and i32 %14, -4096
  %or = or i32 %and3, %cond
  store i32 %or, ptr %mr, align 4
  %and7 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %and11 = and i32 %or, -32769
  %last_ping.i27 = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %last_ping.i27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_ping.i27, align 4
  %call.i4.i28 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i4.i28)
  %cmp.i5.i29 = icmp ult i32 %call.i4.i28, 123
  %spec.select.i6.neg.i30 = select i1 %cmp.i5.i29, i32 -1073741822, i32 -1
  %add.neg9.i31 = sub i32 %15, %17
  %sub10.i32 = add i32 %add.neg9.i31, %spec.select.i6.neg.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i32)
  %cmp11.i33 = icmp slt i32 %sub10.i32, 0
  br i1 %cmp11.i33, label %if.then9.while.body.i40_crit_edge, label %if.then9.wdt_write.exit43_crit_edge

if.then9.wdt_write.exit43_crit_edge:              ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit43

if.then9.while.body.i40_crit_edge:                ; preds = %if.then9
  br label %while.body.i40

while.body.i40:                                   ; preds = %while.body.i40.while.body.i40_crit_edge, %if.then9.while.body.i40_crit_edge
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %last_ping.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_ping.i27, align 4
  %call.i.i34 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call.i.i34)
  %cmp.i.i35 = icmp ult i32 %call.i.i34, 123
  %spec.select.i.neg12.i36 = select i1 %cmp.i.i35, i32 -1073741822, i32 -1
  %add.neg.i37 = sub i32 %18, %20
  %sub.i38 = add i32 %add.neg.i37, %spec.select.i.neg12.i36
  %cmp.i39 = icmp slt i32 %sub.i38, 0
  br i1 %cmp.i39, label %while.body.i40.while.body.i40_crit_edge, label %while.body.i40.wdt_write.exit43_crit_edge

while.body.i40.wdt_write.exit43_crit_edge:        ; preds = %while.body.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_write.exit43

while.body.i40.while.body.i40_crit_edge:          ; preds = %while.body.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i40

wdt_write.exit43:                                 ; preds = %while.body.i40.wdt_write.exit43_crit_edge, %if.then9.wdt_write.exit43_crit_edge
  %21 = tail call i32 @llvm.bswap.i32(i32 %and11) #7
  %reg_base.i41 = getelementptr inbounds %struct.sama5d4_wdt, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %reg_base.i41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %21) #7, !srcloc !89
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %wdt_write.exit43, %wdt_write.exit
  %last_ping.i27.sink = phi ptr [ %last_ping.i27, %wdt_write.exit43 ], [ %last_ping.i, %wdt_write.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %25 = ptrtoint ptr %last_ping.i27.sink to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %last_ping.i27.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %timeout13 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %26 = ptrtoint ptr %timeout13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %timeout, ptr %timeout13, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_suspend_late(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @sama5d4_wdt_stop(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_resume_early(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @sama5d4_wdt_init(ptr noundef %1)
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @sama5d4_wdt_start(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__param_wdt_timeout, !1, !"__param_wdt_timeout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_wdt_timeouttype187, !1, !"__UNIQUE_ID_wdt_timeouttype187", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_wdt_timeout188, !4, !"__UNIQUE_ID_wdt_timeout188", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 43, i32 1}
!5 = !{ptr @__param_nowayout, !6, !"__param_nowayout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 47, i32 1}
!7 = !{ptr @__UNIQUE_ID_nowayouttype189, !6, !"__UNIQUE_ID_nowayouttype189", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nowayout190, !9, !"__UNIQUE_ID_nowayout190", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 48, i32 1}
!10 = !{ptr @__initcall__kmod_sama5d4_wdt__191_384_sama5d4_wdt_driver_init6, !11, !"__initcall__kmod_sama5d4_wdt__191_384_sama5d4_wdt_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 384, i32 1}
!12 = !{ptr @__exitcall_sama5d4_wdt_driver_exit, !11, !"__exitcall_sama5d4_wdt_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author192, !14, !"__UNIQUE_ID_author192", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 386, i32 1}
!15 = !{ptr @__UNIQUE_ID_description193, !16, !"__UNIQUE_ID_description193", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 387, i32 1}
!17 = !{ptr @__UNIQUE_ID_file194, !18, !"__UNIQUE_ID_file194", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 388, i32 1}
!19 = !{ptr @__UNIQUE_ID_license195, !18, !"__UNIQUE_ID_license195", i1 false, i1 false}
!20 = !{ptr @wdt_timeout, !21, !"wdt_timeout", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 39, i32 12}
!22 = !{ptr @__param_str_wdt_timeout, !1, !"__param_str_wdt_timeout", i1 false, i1 false}
!23 = !{ptr @__param_str_nowayout, !6, !"__param_str_nowayout", i1 false, i1 false}
!24 = !{ptr @nowayout, !25, !"nowayout", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 40, i32 13}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 379, i32 11}
!28 = !{ptr @sama5d4_wdt_driver, !29, !"sama5d4_wdt_driver", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 376, i32 31}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 272, i32 44}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 273, i32 44}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 291, i32 4}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sama5d4_wdt_probe._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @sama5d4_wdt_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 301, i32 4}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sama5d4_wdt_probe._entry.8, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @sama5d4_wdt_probe._entry_ptr.11, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 321, i32 2}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sama5d4_wdt_probe._entry.12, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @sama5d4_wdt_probe._entry_ptr.15, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @sama5d4_wdt_info, !53, !"sama5d4_wdt_info", i1 false, i1 false}
!53 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 152, i32 35}
!54 = !{ptr @sama5d4_wdt_ops, !55, !"sama5d4_wdt_ops", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 157, i32 34}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 193, i32 35}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 194, i32 19}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 197, i32 32}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 200, i32 32}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 176, i32 3}
!66 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sama5d4_wdt_irq_handler._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @sama5d4_wdt_irq_handler._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 178, i32 3}
!71 = !{ptr @sama5d4_wdt_irq_handler._entry.22, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @sama5d4_wdt_irq_handler._entry_ptr.24, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @sama5d4_wdt_of_match, !74, !"sama5d4_wdt_of_match", i1 false, i1 false}
!74 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 327, i32 34}
!75 = !{ptr @sama5d4_wdt_pm_ops, !76, !"sama5d4_wdt_pm_ops", i1 false, i1 false}
!76 = !{!"../drivers/watchdog/sama5d4_wdt.c", i32 371, i32 32}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i8 0, i8 2}
!88 = !{i64 4213552}
!89 = !{i64 4213134}
