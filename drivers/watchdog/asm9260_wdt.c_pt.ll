; ModuleID = '/llk/IR_all_yes/drivers/watchdog/asm9260_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/asm9260_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.asm9260_wdt_priv = type { ptr, %struct.watchdog_device, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_asm9260_wdt__187_372_asm9260_wdt_driver_init6 = internal global ptr @asm9260_wdt_driver_init, section ".initcall6.init", align 4
@asm9260_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asm9260_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @asm9260_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_asm9260_wdt_driver_exit = internal global ptr @asm9260_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [54 x i8] c"asm9260_wdt.description=asm9260 WatchDog Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [59 x i8] c"asm9260_wdt.author=Oleksij Rempel <linux@rempel-privat.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [46 x i8] c"asm9260_wdt.file=drivers/watchdog/asm9260_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [24 x i8] c"asm9260_wdt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"asm9260-wdt\00", [20 x i8] zeroinitializer }, align 32
@asm9260_wdt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"alphascale,asm9260-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@asm9260_wdt_probe.mode_name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3], [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hw\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sw\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wdt_rst\00", [24 x i8] zeroinitializer }, align 32
@asm9260_wdt_ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Alphascale asm9260 Watchdog\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@asm9260_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @asm9260_wdt_enable, ptr @asm9260_wdt_disable, ptr @asm9260_wdt_feed, ptr null, ptr @asm9260_wdt_settimeout, ptr null, ptr @asm9260_wdt_gettimeleft, ptr @asm9260_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@asm9260_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 341, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"asm9260_wdt_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/asm9260_wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@asm9260_wdt_probe._entry_ptr = internal global ptr @asm9260_wdt_probe._entry, section ".printk_index", align 4
@asm9260_wdt_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 355, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Watchdog enabled (timeout: %d sec, mode: %s)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@asm9260_wdt_probe._entry_ptr.13 = internal global ptr @asm9260_wdt_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@asm9260_wdt_get_dt_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 210, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get \22mod\22 clk\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"asm9260_wdt_get_dt_clks\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@asm9260_wdt_get_dt_clks._entry_ptr = internal global ptr @asm9260_wdt_get_dt_clks._entry, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@asm9260_wdt_get_dt_clks._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.7, i32 217, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get \22ahb\22 clk\0A\00", [39 x i8] zeroinitializer }, align 32
@asm9260_wdt_get_dt_clks._entry_ptr.21 = internal global ptr @asm9260_wdt_get_dt_clks._entry.19, section ".printk_index", align 4
@asm9260_wdt_get_dt_clks._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.7, i32 223, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable ahb_clk!\0A\00", [37 x i8] zeroinitializer }, align 32
@asm9260_wdt_get_dt_clks._entry_ptr.24 = internal global ptr @asm9260_wdt_get_dt_clks._entry.22, section ".printk_index", align 4
@asm9260_wdt_get_dt_clks._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.16, ptr @.str.7, i32 234, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to set rate!\0A\00", [43 x i8] zeroinitializer }, align 32
@asm9260_wdt_get_dt_clks._entry_ptr.27 = internal global ptr @asm9260_wdt_get_dt_clks._entry.25, section ".printk_index", align 4
@asm9260_wdt_get_dt_clks._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.16, ptr @.str.7, i32 240, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to enable clk!\0A\00", [41 x i8] zeroinitializer }, align 32
@asm9260_wdt_get_dt_clks._entry_ptr.30 = internal global ptr @asm9260_wdt_get_dt_clks._entry.28, section ".printk_index", align 4
@asm9260_wdt_get_dt_clks._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.16, ptr @.str.7, i32 252, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed, clk is 0!\0A\00", [45 x i8] zeroinitializer }, align 32
@asm9260_wdt_get_dt_clks._entry_ptr.33 = internal global ptr @asm9260_wdt_get_dt_clks._entry.31, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alphascale,mode\00", [16 x i8] zeroinitializer }, align 32
@asm9260_wdt_get_dt_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.7, i32 282, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"unknown reset-type: %s. Using default \22hw\22 mode.\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"asm9260_wdt_get_dt_mode\00", [40 x i8] zeroinitializer }, align 32
@asm9260_wdt_get_dt_mode._entry_ptr = internal global ptr @asm9260_wdt_get_dt_mode._entry, section ".printk_index", align 4
@asm9260_wdt_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.7, i32 163, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Watchdog Timeout. Do nothing.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asm9260_wdt_irq\00", [16 x i8] zeroinitializer }, align 32
@asm9260_wdt_irq._entry_ptr = internal global ptr @asm9260_wdt_irq._entry, section ".printk_index", align 4
@asm9260_wdt_irq._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.7, i32 165, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Watchdog Timeout. Doing SW Reset.\0A\00", [61 x i8] zeroinitializer }, align 32
@asm9260_wdt_irq._entry_ptr.41 = internal global ptr @asm9260_wdt_irq._entry.39, section ".printk_index", align 4
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"asm9260_wdt_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 365, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 367, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"asm9260_wdt_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 359, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [10 x i8] c"mode_name\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 291, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 291, i32 44 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 291, i32 50 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 291, i32 56 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 303, i32 52 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"asm9260_wdt_ident\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 182, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"asm9260_wdt_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 188, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 341, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 354, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 208, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 210, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 215, i32 42 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 217, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 223, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 234, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 240, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 252, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 270, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 281, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 163, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [34 x i8] c"../drivers/watchdog/asm9260_wdt.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 165, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_asm9260_wdt_driver_exit, ptr @__initcall__kmod_asm9260_wdt__187_372_asm9260_wdt_driver_init6, ptr @asm9260_wdt_driver_exit, ptr @asm9260_wdt_get_dt_clks._entry, ptr @asm9260_wdt_get_dt_clks._entry.19, ptr @asm9260_wdt_get_dt_clks._entry.22, ptr @asm9260_wdt_get_dt_clks._entry.25, ptr @asm9260_wdt_get_dt_clks._entry.28, ptr @asm9260_wdt_get_dt_clks._entry.31, ptr @asm9260_wdt_get_dt_clks._entry_ptr, ptr @asm9260_wdt_get_dt_clks._entry_ptr.21, ptr @asm9260_wdt_get_dt_clks._entry_ptr.24, ptr @asm9260_wdt_get_dt_clks._entry_ptr.27, ptr @asm9260_wdt_get_dt_clks._entry_ptr.30, ptr @asm9260_wdt_get_dt_clks._entry_ptr.33, ptr @asm9260_wdt_get_dt_mode._entry, ptr @asm9260_wdt_get_dt_mode._entry_ptr, ptr @asm9260_wdt_irq._entry, ptr @asm9260_wdt_irq._entry.39, ptr @asm9260_wdt_irq._entry_ptr, ptr @asm9260_wdt_irq._entry_ptr.41, ptr @asm9260_wdt_probe._entry, ptr @asm9260_wdt_probe._entry.10, ptr @asm9260_wdt_probe._entry_ptr, ptr @asm9260_wdt_probe._entry_ptr.13, ptr @asm9260_wdt_driver, ptr @.str, ptr @asm9260_wdt_of_match, ptr @asm9260_wdt_probe.mode_name, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @asm9260_wdt_ident, ptr @asm9260_wdt_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_probe.mode_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_get_dt_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_get_dt_clks._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_get_dt_clks._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_get_dt_clks._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_get_dt_clks._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_get_dt_clks._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_get_dt_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_wdt_irq._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @asm9260_wdt_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asm9260_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @asm9260_wdt_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tmp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 140, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %iobase = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %iobase, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i94 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i94, ptr %rst, align 4
  %cmp.i95 = icmp ugt ptr %call.i94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call.i94 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %call.i96 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.14) #7
  %clk1.i = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i96, ptr %clk1.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i96, inttoptr (i32 -4096 to ptr)
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.15) #10
  br label %asm9260_wdt_get_dt_clks.exit

if.end.i:                                         ; preds = %if.end16
  %call8.i = tail call ptr @devm_clk_get(ptr noundef %9, ptr noundef nonnull @.str.18) #7
  %clk_ahb.i = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %clk_ahb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i, ptr %clk_ahb.i, align 4
  %cmp.i100.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100.i, label %do.end14.i, label %if.end18.i

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.20) #10
  br label %asm9260_wdt_get_dt_clks.exit

if.end18.i:                                       ; preds = %if.end.i
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call8.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end18.i.do.end24.i_crit_edge

if.end18.i.do.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24.i

if.end.i.i:                                       ; preds = %if.end18.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call8.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end26.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call8.i) #7
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then3.i.i, %if.end18.i.do.end24.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end18.i.do.end24.i_crit_edge ]
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end26.i:                                       ; preds = %if.end.i.i
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %17 = ptrtoint ptr %clk_ahb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_ahb.i, align 4
  %call.i101.i = tail call i32 @devm_add_action(ptr noundef %16, ptr noundef nonnull @asm9260_clk_disable_unprepare, ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %tobool.not.i102.i = icmp eq i32 %call.i101.i, 0
  br i1 %tobool.not.i102.i, label %if.end32.i, label %devm_add_action_or_reset.exit.i

devm_add_action_or_reset.exit.i:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %18) #7
  tail call void @clk_unprepare(ptr noundef %18) #7
  br label %cleanup

if.end32.i:                                       ; preds = %if.end26.i
  %19 = ptrtoint ptr %clk1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk1.i, align 4
  %call34.i = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef 1000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end41.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end41.i:                                       ; preds = %if.end32.i
  %23 = ptrtoint ptr %clk1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk1.i, align 4
  %call.i104.i = tail call i32 @clk_prepare(ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i)
  %tobool.not.i105.i = icmp eq i32 %call.i104.i, 0
  br i1 %tobool.not.i105.i, label %if.end.i108.i, label %if.end41.i.do.end48.i_crit_edge

if.end41.i.do.end48.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48.i

if.end.i108.i:                                    ; preds = %if.end41.i
  %call1.i106.i = tail call i32 @clk_enable(ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i106.i)
  %tobool2.not.i107.i = icmp eq i32 %call1.i106.i, 0
  br i1 %tobool2.not.i107.i, label %if.end50.i, label %if.then3.i109.i

if.then3.i109.i:                                  ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %24) #7
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then3.i109.i, %if.end41.i.do.end48.i_crit_edge
  %retval.0.i110.ph.i = phi i32 [ %call1.i106.i, %if.then3.i109.i ], [ %call.i104.i, %if.end41.i.do.end48.i_crit_edge ]
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.29) #10
  br label %cleanup

if.end50.i:                                       ; preds = %if.end.i108.i
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %29 = ptrtoint ptr %clk1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk1.i, align 4
  %call.i112.i = tail call i32 @devm_add_action(ptr noundef %28, ptr noundef nonnull @asm9260_clk_disable_unprepare, ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %tobool.not.i113.i = icmp eq i32 %call.i112.i, 0
  br i1 %tobool.not.i113.i, label %if.end56.i, label %devm_add_action_or_reset.exit116.i

devm_add_action_or_reset.exit116.i:               ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %30) #7
  tail call void @clk_unprepare(ptr noundef %30) #7
  br label %cleanup

if.end56.i:                                       ; preds = %if.end50.i
  %31 = ptrtoint ptr %clk1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk1.i, align 4
  %call58.i = tail call i32 @clk_get_rate(ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %do.end63.i, label %asm9260_wdt_get_dt_clks.exit.thread105

do.end63.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.32) #10
  br label %cleanup

asm9260_wdt_get_dt_clks.exit.thread105:           ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  %div99.i = lshr i32 %call58.i, 1
  %wdt_freq.i = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %wdt_freq.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div99.i, ptr %wdt_freq.i, align 4
  br label %if.end20

asm9260_wdt_get_dt_clks.exit:                     ; preds = %do.end14.i, %do.end.i
  %retval.0.i.in.in = phi ptr [ %clk1.i, %do.end.i ], [ %clk_ahb.i, %do.end14.i ]
  %36 = ptrtoint ptr %retval.0.i.in.in to i32
  call void @__asan_load4_noabort(i32 %36)
  %retval.0.i.in = load ptr, ptr %retval.0.i.in.in, align 4
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool18.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool18.not, label %asm9260_wdt_get_dt_clks.exit.if.end20_crit_edge, label %asm9260_wdt_get_dt_clks.exit.cleanup_crit_edge

asm9260_wdt_get_dt_clks.exit.cleanup_crit_edge:   ; preds = %asm9260_wdt_get_dt_clks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

asm9260_wdt_get_dt_clks.exit.if.end20_crit_edge:  ; preds = %asm9260_wdt_get_dt_clks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %asm9260_wdt_get_dt_clks.exit.if.end20_crit_edge, %asm9260_wdt_get_dt_clks.exit.thread105
  %wdd21 = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 1
  %info = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @asm9260_wdt_ident, ptr %info, align 4
  %ops = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @asm9260_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 1, i32 9
  %39 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %min_timeout, align 4
  %wdt_freq = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 7
  %40 = ptrtoint ptr %wdt_freq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wdt_freq, align 4
  %div = udiv i32 2147483647, %41
  %max_timeout = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 1, i32 10
  %42 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div, ptr %max_timeout, align 4
  %parent = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev1, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 1, i32 16
  %44 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i, align 4
  %timeout = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 1, i32 7
  %45 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 30, ptr %timeout, align 4
  %call22 = tail call i32 @watchdog_init_timeout(ptr noundef %wdd21, i32 noundef 0, ptr noundef %dev1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %46 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp.i, align 4, !annotation !98
  %mode.i = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 8
  %47 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %mode.i, align 4
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node.i, align 8
  %call.i97 = call i32 @of_property_read_string(ptr noundef %51, ptr noundef nonnull @.str.34, ptr noundef nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp.i98 = icmp slt i32 %call.i97, 0
  br i1 %cmp.i98, label %if.end20.asm9260_wdt_get_dt_mode.exit_crit_edge, label %if.end.i99

if.end20.asm9260_wdt_get_dt_mode.exit_crit_edge:  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %asm9260_wdt_get_dt_mode.exit

if.end.i99:                                       ; preds = %if.end20
  %52 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tmp.i, align 4
  %call1.i = call i32 @strcmp(ptr noundef %53, ptr noundef nonnull dereferenceable(3) @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %asm9260_wdt_get_dt_mode.exit.thread109, label %if.else.i

asm9260_wdt_get_dt_mode.exit.thread109:           ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %mode.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %if.end25

if.else.i:                                        ; preds = %if.end.i99
  %call4.i = call i32 @strcmp(ptr noundef %53, ptr noundef nonnull dereferenceable(3) @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.else.i.asm9260_wdt_get_dt_mode.exit.thread_crit_edge, label %if.else8.i

if.else.i.asm9260_wdt_get_dt_mode.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %asm9260_wdt_get_dt_mode.exit.thread

if.else8.i:                                       ; preds = %if.else.i
  %call9.i = call i32 @strcmp(ptr noundef %53, ptr noundef nonnull dereferenceable(6) @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.else8.i.asm9260_wdt_get_dt_mode.exit.thread_crit_edge, label %do.end.i100

if.else8.i.asm9260_wdt_get_dt_mode.exit.thread_crit_edge: ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %asm9260_wdt_get_dt_mode.exit.thread

do.end.i100:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.35, ptr noundef %53) #10
  br label %asm9260_wdt_get_dt_mode.exit

asm9260_wdt_get_dt_mode.exit.thread:              ; preds = %if.else8.i.asm9260_wdt_get_dt_mode.exit.thread_crit_edge, %if.else.i.asm9260_wdt_get_dt_mode.exit.thread_crit_edge
  %storemerge = phi i32 [ 1, %if.else.i.asm9260_wdt_get_dt_mode.exit.thread_crit_edge ], [ 2, %if.else8.i.asm9260_wdt_get_dt_mode.exit.thread_crit_edge ]
  %57 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %storemerge, ptr %mode.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %if.then23

asm9260_wdt_get_dt_mode.exit:                     ; preds = %do.end.i100, %if.end20.asm9260_wdt_get_dt_mode.exit_crit_edge
  %58 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr = load i32, ptr %mode.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not = icmp eq i32 %.pr, 0
  br i1 %cmp.not, label %asm9260_wdt_get_dt_mode.exit.if.end25_crit_edge, label %asm9260_wdt_get_dt_mode.exit.if.then23_crit_edge

asm9260_wdt_get_dt_mode.exit.if.then23_crit_edge: ; preds = %asm9260_wdt_get_dt_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

asm9260_wdt_get_dt_mode.exit.if.end25_crit_edge:  ; preds = %asm9260_wdt_get_dt_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %asm9260_wdt_get_dt_mode.exit.if.then23_crit_edge, %asm9260_wdt_get_dt_mode.exit.thread
  %call24 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 6
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call24, ptr %irq, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %asm9260_wdt_get_dt_mode.exit.if.end25_crit_edge, %asm9260_wdt_get_dt_mode.exit.thread109
  %irq26 = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 6
  %60 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp27 = icmp sgt i32 %61, 0
  br i1 %cmp27, label %if.then28, label %if.end25.if.end34_crit_edge

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then28:                                        ; preds = %if.end25
  %62 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev, align 8
  %call.i101 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %61, ptr noundef nonnull @asm9260_wdt_irq, ptr noundef null, i32 noundef 0, ptr noundef %63, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp31 = icmp slt i32 %call.i101, 0
  br i1 %cmp31, label %do.end, label %if.then28.if.end34_crit_edge

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end:                                           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.5) #10
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.then28.if.end34_crit_edge, %if.end25.if.end34_crit_edge
  call void @watchdog_set_restart_priority(ptr noundef %wdd21, i32 noundef 128) #7
  %status.i = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %call.i, i32 0, i32 1, i32 18
  call void @_set_bit(i32 noundef 2, ptr noundef %status.i) #7
  call void @_set_bit(i32 noundef 4, ptr noundef %status.i) #7
  %call35 = call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef %wdd21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %65 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %timeout, align 4
  %67 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mode.i, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @asm9260_wdt_probe.mode_name, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %66, ptr noundef %70) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end34.cleanup_crit_edge, %asm9260_wdt_get_dt_clks.exit.cleanup_crit_edge, %do.end63.i, %devm_add_action_or_reset.exit116.i, %do.end48.i, %do.end39.i, %devm_add_action_or_reset.exit.i, %do.end24.i, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %4, %if.then13 ], [ 0, %if.end38 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %asm9260_wdt_get_dt_clks.exit.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call.i112.i, %devm_add_action_or_reset.exit116.i ], [ %call.i101.i, %devm_add_action_or_reset.exit.i ], [ -22, %do.end63.i ], [ %retval.0.i110.ph.i, %do.end48.i ], [ %call34.i, %do.end39.i ], [ %retval.0.i.ph.i, %do.end24.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_wdt_irq(i32 noundef %irq, ptr nocapture noundef readonly %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %devid, i32 0, i32 5
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %devid, i32 0, i32 8
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  %6 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devid, align 4
  br i1 %cmp, label %do.end, label %do.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.37) #10
  br label %cleanup

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.40) #10
  tail call fastcc void @asm9260_wdt_sys_reset(ptr noundef %devid)
  br label %cleanup

cleanup:                                          ; preds = %do.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.end4 ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asm9260_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #7
  tail call void @clk_unprepare(ptr noundef %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_wdt_enable(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode1 = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %or = select i1 %cmp, i32 50331648, i32 16777216
  %iobase = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %or) #7, !srcloc !102
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %8 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout.i, align 4
  %wdt_freq.i = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %wdt_freq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wdt_freq.i, align 4
  %mul.i = mul i32 %11, %9
  %iobase.i = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !102
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i, align 4
  %iobase.i8 = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %iobase.i8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 -1442840576) #7, !srcloc !102
  %19 = ptrtoint ptr %iobase.i8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i8, align 4
  %add.ptr2.i = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 1426063360) #7, !srcloc !102
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_wdt_disable(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rst = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #7
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_wdt_feed(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %iobase = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1442840576) #7, !srcloc !102
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 1426063360) #7, !srcloc !102
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_wdt_settimeout(ptr nocapture noundef %wdd, i32 noundef %to) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %to, ptr %timeout, align 4
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %wdt_freq.i = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %wdt_freq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wdt_freq.i, align 4
  %mul.i = mul i32 %4, %to
  %iobase.i = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #7, !srcloc !102
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_wdt_gettimeleft(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %iobase = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !99
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %wdt_freq = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %wdt_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wdt_freq, align 4
  %div = udiv i32 %5, %7
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_restart(ptr nocapture noundef readonly %wdd, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @asm9260_wdt_sys_reset(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asm9260_wdt_sys_reset(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 50331648) #7, !srcloc !102
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -16777216) #7, !srcloc !102
  %driver_data.i.i = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %priv, i32 0, i32 1, i32 16
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %iobase.i = getelementptr inbounds %struct.asm9260_wdt_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1442840576) #7, !srcloc !102
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 1426063360) #7, !srcloc !102
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase, align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -16777216) #7, !srcloc !102
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.08 = phi i32 [ 1000, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.08, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
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
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_asm9260_wdt__187_372_asm9260_wdt_driver_init6, !1, !"__initcall__kmod_asm9260_wdt__187_372_asm9260_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 372, i32 1}
!2 = !{ptr @__exitcall_asm9260_wdt_driver_exit, !1, !"__exitcall_asm9260_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description188, !4, !"__UNIQUE_ID_description188", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 374, i32 1}
!5 = !{ptr @__UNIQUE_ID_author189, !6, !"__UNIQUE_ID_author189", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 375, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 376, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 367, i32 11}
!12 = !{ptr @asm9260_wdt_driver, !13, !"asm9260_wdt_driver", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 365, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 291, i32 44}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 291, i32 50}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 291, i32 56}
!20 = !{ptr @asm9260_wdt_probe.mode_name, !21, !"mode_name", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 291, i32 28}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 303, i32 52}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 341, i32 4}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @asm9260_wdt_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @asm9260_wdt_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 354, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @asm9260_wdt_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @asm9260_wdt_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 208, i32 38}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 210, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @asm9260_wdt_get_dt_clks._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @asm9260_wdt_get_dt_clks._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 215, i32 42}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 217, i32 3}
!49 = !{ptr @asm9260_wdt_get_dt_clks._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @asm9260_wdt_get_dt_clks._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 223, i32 3}
!53 = !{ptr @asm9260_wdt_get_dt_clks._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @asm9260_wdt_get_dt_clks._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 234, i32 3}
!57 = !{ptr @asm9260_wdt_get_dt_clks._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @asm9260_wdt_get_dt_clks._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 240, i32 3}
!61 = !{ptr @asm9260_wdt_get_dt_clks._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @asm9260_wdt_get_dt_clks._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 252, i32 3}
!65 = !{ptr @asm9260_wdt_get_dt_clks._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @asm9260_wdt_get_dt_clks._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @asm9260_wdt_ident, !68, !"asm9260_wdt_ident", i1 false, i1 false}
!68 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 182, i32 35}
!69 = !{ptr @asm9260_wdt_ops, !70, !"asm9260_wdt_ops", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 188, i32 34}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 270, i32 11}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 281, i32 3}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @asm9260_wdt_get_dt_mode._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @asm9260_wdt_get_dt_mode._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 163, i32 3}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @asm9260_wdt_irq._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @asm9260_wdt_irq._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 165, i32 3}
!85 = !{ptr @asm9260_wdt_irq._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @asm9260_wdt_irq._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @asm9260_wdt_of_match, !88, !"asm9260_wdt_of_match", i1 false, i1 false}
!88 = !{!"../drivers/watchdog/asm9260_wdt.c", i32 359, i32 34}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{i64 4244418}
!100 = !{i64 2151784767}
!101 = !{i64 2151786122}
!102 = !{i64 4244000}
