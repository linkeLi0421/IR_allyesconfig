; ModuleID = '/llk/IR_all_yes/drivers/watchdog/armada_37xx_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/armada_37xx_wdt.c"
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
%struct.armada_37xx_watchdog = type { %struct.watchdog_device, ptr, ptr, i64, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__param_str_timeout = internal constant [24 x i8] c"armada_37xx_wdt.timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype187 = internal constant [37 x i8] c"armada_37xx_wdt.parmtype=timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout188 = internal constant [57 x i8] c"armada_37xx_wdt.parm=timeout:Watchdog timeout in seconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [25 x i8] c"armada_37xx_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype189 = internal constant [39 x i8] c"armada_37xx_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout190 = internal constant [82 x i8] c"armada_37xx_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_armada_37xx_wdt__191_367_armada_37xx_wdt_driver_init6 = internal global ptr @armada_37xx_wdt_driver_init, section ".initcall6.init", align 4
@armada_37xx_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @armada_37xx_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @armada_37xx_wdt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_37xx_wdt_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_armada_37xx_wdt_driver_exit = internal global ptr @armada_37xx_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author192 = internal constant [54 x i8] c"armada_37xx_wdt.author=Marek Behun <kabel@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [53 x i8] c"armada_37xx_wdt.description=Armada 37xx CPU Watchdog\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [54 x i8] c"armada_37xx_wdt.file=drivers/watchdog/armada_37xx_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [31 x i8] c"armada_37xx_wdt.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias196 = internal constant [47 x i8] c"armada_37xx_wdt.alias=platform:armada_37xx_wdt\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armada_37xx_wdt\00", [16 x i8] zeroinitializer }, align 32
@armada_37xx_wdt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@armada_37xx_wdt_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @armada_37xx_wdt_suspend, ptr @armada_37xx_wdt_resume, ptr @armada_37xx_wdt_suspend, ptr @armada_37xx_wdt_resume, ptr @armada_37xx_wdt_suspend, ptr @armada_37xx_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@armada_37xx_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Armada 37xx Watchdog\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@armada_37xx_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @armada_37xx_wdt_start, ptr @armada_37xx_wdt_stop, ptr @armada_37xx_wdt_ping, ptr null, ptr @armada_37xx_wdt_set_timeout, ptr null, ptr @armada_37xx_wdt_get_timeleft, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"marvell,system-controller\00", [38 x i8] zeroinitializer }, align 32
@armada_37xx_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Initial timeout %d sec%s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"armada_37xx_wdt_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/watchdog/armada_37xx_wdt.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@armada_37xx_wdt_probe._entry_ptr = internal global ptr @armada_37xx_wdt_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", nowayout\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@___asan_gen_.9 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 67, i32 21 }
@___asan_gen_.12 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 71, i32 13 }
@___asan_gen_.15 = private unnamed_addr constant [23 x i8] c"armada_37xx_wdt_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 358, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 361, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"armada_37xx_wdt_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 351, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"armada_37xx_wdt_dev_pm_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 345, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"armada_37xx_wdt_info\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 233, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"armada_37xx_wdt_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 238, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 268, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [38 x i8] c"../drivers/watchdog/armada_37xx_wdt.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 322, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_alias196, ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__UNIQUE_ID_nowayout190, ptr @__UNIQUE_ID_nowayouttype189, ptr @__UNIQUE_ID_timeout188, ptr @__UNIQUE_ID_timeouttype187, ptr @__exitcall_armada_37xx_wdt_driver_exit, ptr @__initcall__kmod_armada_37xx_wdt__191_367_armada_37xx_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_timeout, ptr @armada_37xx_wdt_driver_exit, ptr @armada_37xx_wdt_probe._entry, ptr @armada_37xx_wdt_probe._entry_ptr, ptr @timeout, ptr @nowayout, ptr @armada_37xx_wdt_driver, ptr @.str, ptr @armada_37xx_wdt_match, ptr @armada_37xx_wdt_dev_pm_ops, ptr @armada_37xx_wdt_info, ptr @armada_37xx_wdt_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_37xx_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_37xx_wdt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_37xx_wdt_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_37xx_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_37xx_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_37xx_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_37xx_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @armada_37xx_wdt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada_37xx_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @armada_37xx_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_37xx_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 136, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armada_37xx_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armada_37xx_wdt_ops, ptr %ops, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %cpu_misc = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %cpu_misc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %cpu_misc, align 4
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call9, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call9, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %call15 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %7, i32 noundef %add.i) #6
  %reg = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call15, ptr %reg, align 8
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %clk, align 4
  %cmp.i122 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %call.i123 = tail call i32 @clk_prepare(ptr noundef %call17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not.i = icmp eq i32 %call.i123, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  %call1.i = tail call i32 @clk_enable(ptr noundef %call17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end28, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call17) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end.i
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call.i124 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @armada_clk_disable_unprepare, ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool.not.i125 = icmp eq i32 %call.i124, 0
  br i1 %tobool.not.i125, label %if.end34, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %call36 = tail call i32 @clk_get_rate(ptr noundef %16) #6
  %clk_rate = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call36, ptr %clk_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool38.not = icmp eq i32 %call36, 0
  br i1 %tobool38.not, label %if.end34.cleanup_crit_edge, label %if.end40

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %max_timeout, align 8
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev1, ptr %parent, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 120, ptr %timeout, align 4
  %22 = load i32, ptr @timeout, align 4
  %call48 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef %22, ptr noundef %dev1) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i, align 4
  %25 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout, align 4
  %27 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clk_rate, align 8
  %conv.i = zext i32 %28 to i64
  %conv2.i = zext i32 %26 to i64
  %mul.i = mul nuw i64 %conv.i, %conv2.i
  %timeout3.i = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %call.i, i32 0, i32 3
  %shr.i = lshr i64 %mul.i, 1
  %29 = ptrtoint ptr %timeout3.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %shr.i, ptr %timeout3.i, align 8
  %call55 = tail call fastcc zeroext i1 @armada_37xx_wdt_is_running(ptr noundef nonnull %call.i)
  br i1 %call55, label %if.then56, label %if.end40.if.end58_crit_edge

if.end40.if.end58_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then56:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %status = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end40.if.end58_crit_edge
  %30 = load i8, ptr @nowayout, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool60.not = icmp eq i8 %30, 0
  br i1 %tobool60.not, label %if.end58.watchdog_set_nowayout.exit_crit_edge, label %if.then.i128

if.end58.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_set_nowayout.exit

if.then.i128:                                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #6
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i128, %if.end58.watchdog_set_nowayout.exit_crit_edge
  %status.i130 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i130) #6
  %call64 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.end, label %watchdog_set_nowayout.exit.cleanup_crit_edge

watchdog_set_nowayout.exit.cleanup_crit_edge:     ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %timeout, align 4
  %33 = load i8, ptr @nowayout, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool71.not = icmp eq i8 %33, 0
  %cond = select i1 %tobool71.not, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %32, ptr noundef nonnull %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %watchdog_set_nowayout.exit.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then3.i, %if.end23.cleanup_crit_edge, %if.then20, %if.end8.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then6 ], [ %12, %if.then20 ], [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ], [ %call.i124, %devm_add_action_or_reset.exit ], [ -22, %if.end34.cleanup_crit_edge ], [ %call64, %watchdog_set_nowayout.exit.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i123, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
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
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_37xx_wdt_set_timeout(ptr nocapture noundef %wdt, i32 noundef %timeout) #2 align 64 {
if.end196:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 7
  %2 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %timeout, ptr %timeout1, align 4
  %clk_rate = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clk_rate, align 8
  %conv = zext i32 %4 to i64
  %conv2 = zext i32 %timeout to i64
  %mul = mul nuw i64 %conv, %conv2
  %timeout3 = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %1, i32 0, i32 3
  %shr = lshr i64 %mul, 1
  %5 = ptrtoint ptr %timeout3 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %shr, ptr %timeout3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @armada_37xx_wdt_is_running(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !62
  %cpu_misc = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %cpu_misc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpu_misc, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 100, ptr noundef nonnull %reg) #6
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.not = icmp eq i32 %and, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reg1 = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg1, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 16
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %8 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool = icmp ne i32 %8, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_37xx_wdt_start(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cpu_misc = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cpu_misc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_misc, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 100, i32 noundef 2) #6
  %reg1.i = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %7 = and i32 %6, 50397183
  %8 = or i32 %7, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg1.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #6, !srcloc !67
  %15 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg1.i, align 8
  %add.ptr.i10 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %18 = and i32 %17, 50397183
  %19 = or i32 %18, 1543634944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg1.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %19) #6, !srcloc !67
  %timeout = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %timeout, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %conv.i = trunc i64 %23 to i32
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #6
  %25 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg1.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %24) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %shr.i = lshr i64 %23, 32
  %conv3.i = trunc i64 %shr.i to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  %28 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg1.i, align 8
  %add.ptr7.i14 = getelementptr i8, ptr %29, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i14, i32 %27) #6, !srcloc !67
  %30 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg1.i, align 8
  %add.ptr.i16 = getelementptr i8, ptr %31, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %33 = or i32 %32, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg1.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %33) #6, !srcloc !67
  %36 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg1.i, align 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %39 = or i32 %38, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #6, !srcloc !67
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_37xx_wdt_stop(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg1.i = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg1.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %5) #6, !srcloc !67
  %8 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg1.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !67
  %cpu_misc = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %cpu_misc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu_misc, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 100, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_37xx_wdt_ping(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg1.i = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg1.i, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !67
  %8 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg1.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %11 = or i32 %10, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !67
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_37xx_wdt_get_timeleft(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg.i = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %8 = zext i32 %7 to i64
  %9 = zext i32 %4 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #6
  %mul = shl i64 %12, 1
  %clk_rate = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp167 = icmp ult i64 %mul, 4294967296
  br i1 %cmp167, label %if.then171, label %if.else177, !prof !76

if.then171:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv172 = trunc i64 %mul to i32
  %div175 = udiv i32 %conv172, %14
  br label %if.end181

if.else177:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %mul) #10, !srcloc !77
  %asmresult1.i = extractvalue { i64, i64 } %15, 1
  %extract.t289 = trunc i64 %asmresult1.i to i32
  br label %if.end181

if.end181:                                        ; preds = %if.else177, %if.then171
  %res.0.off0 = phi i32 [ %div175, %if.then171 ], [ %extract.t289, %if.else177 ]
  ret i32 %res.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_37xx_wdt_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %reg1.i.i = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg1.i.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %7) #6, !srcloc !67
  %10 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg1.i.i, align 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %13 = and i32 %12, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg1.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !67
  %cpu_misc.i = getelementptr inbounds %struct.armada_37xx_watchdog, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %cpu_misc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpu_misc.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 100, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_37xx_wdt_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @armada_37xx_wdt_start(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__param_timeout, !1, !"__param_timeout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 68, i32 1}
!2 = !{ptr @__UNIQUE_ID_timeouttype187, !1, !"__UNIQUE_ID_timeouttype187", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_timeout188, !4, !"__UNIQUE_ID_timeout188", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 69, i32 1}
!5 = !{ptr @__param_nowayout, !6, !"__param_nowayout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 72, i32 1}
!7 = !{ptr @__UNIQUE_ID_nowayouttype189, !6, !"__UNIQUE_ID_nowayouttype189", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nowayout190, !9, !"__UNIQUE_ID_nowayout190", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 73, i32 1}
!10 = !{ptr @__initcall__kmod_armada_37xx_wdt__191_367_armada_37xx_wdt_driver_init6, !11, !"__initcall__kmod_armada_37xx_wdt__191_367_armada_37xx_wdt_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 367, i32 1}
!12 = !{ptr @__exitcall_armada_37xx_wdt_driver_exit, !11, !"__exitcall_armada_37xx_wdt_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author192, !14, !"__UNIQUE_ID_author192", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 369, i32 1}
!15 = !{ptr @__UNIQUE_ID_description193, !16, !"__UNIQUE_ID_description193", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 370, i32 1}
!17 = !{ptr @__UNIQUE_ID_file194, !18, !"__UNIQUE_ID_file194", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 372, i32 1}
!19 = !{ptr @__UNIQUE_ID_license195, !18, !"__UNIQUE_ID_license195", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias196, !21, !"__UNIQUE_ID_alias196", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 373, i32 1}
!22 = !{ptr @timeout, !23, !"timeout", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 67, i32 21}
!24 = !{ptr @__param_str_timeout, !1, !"__param_str_timeout", i1 false, i1 false}
!25 = !{ptr @__param_str_nowayout, !6, !"__param_str_nowayout", i1 false, i1 false}
!26 = !{ptr @nowayout, !27, !"nowayout", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 71, i32 13}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 361, i32 11}
!30 = !{ptr @armada_37xx_wdt_driver, !31, !"armada_37xx_wdt_driver", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 358, i32 31}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 268, i32 8}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 322, i32 2}
!36 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @armada_37xx_wdt_probe._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @armada_37xx_wdt_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @armada_37xx_wdt_info, !45, !"armada_37xx_wdt_info", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 233, i32 35}
!46 = !{ptr @armada_37xx_wdt_ops, !47, !"armada_37xx_wdt_ops", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 238, i32 34}
!48 = !{ptr @armada_37xx_wdt_match, !49, !"armada_37xx_wdt_match", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 351, i32 34}
!50 = !{ptr @armada_37xx_wdt_dev_pm_ops, !51, !"armada_37xx_wdt_dev_pm_ops", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/armada_37xx_wdt.c", i32 345, i32 32}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{!"auto-init"}
!63 = !{i64 4238258}
!64 = !{i64 2153295417}
!65 = !{i64 2153284056}
!66 = !{i64 2153284335}
!67 = !{i64 4237840}
!68 = !{i64 2153280854}
!69 = !{i64 2153281366}
!70 = !{i64 2153282116}
!71 = !{i64 2153282363}
!72 = !{i64 2153283086}
!73 = !{i64 2153283333}
!74 = !{i64 2153279967}
!75 = !{i64 2153280567}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2148638846, i64 2148639126, i64 2148639460, i64 2148639794}
