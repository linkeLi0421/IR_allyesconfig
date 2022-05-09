; ModuleID = '/llk/IR_all_yes/drivers/watchdog/omap_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/omap_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.omap_wdt_dev = type { %struct.watchdog_device, ptr, ptr, i8, i32, %struct.mutex }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_nowayout = internal constant [18 x i8] c"omap_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype229 = internal constant [32 x i8] c"omap_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout230 = internal constant [75 x i8] c"omap_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__param_str_timer_margin = internal constant [22 x i8] c"omap_wdt.timer_margin\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timer_margin = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timer_margin = internal constant %struct.kernel_param { ptr @__param_str_timer_margin, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @timer_margin } }, section "__param", align 4
@__UNIQUE_ID_timer_margintype231 = internal constant [36 x i8] c"omap_wdt.parmtype=timer_margin:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timer_margin232 = internal constant [65 x i8] c"omap_wdt.parm=timer_margin:initial watchdog timeout (in seconds)\00", section ".modinfo", align 1
@__param_str_early_enable = internal constant [22 x i8] c"omap_wdt.early_enable\00", align 1
@early_enable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_early_enable = internal constant %struct.kernel_param { ptr @__param_str_early_enable, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @early_enable } }, section "__param", align 4
@__UNIQUE_ID_early_enabletype233 = internal constant [36 x i8] c"omap_wdt.parmtype=early_enable:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_early_enable234 = internal constant [79 x i8] c"omap_wdt.parm=early_enable:Watchdog is started on module insertion (default=0)\00", section ".modinfo", align 1
@__initcall__kmod_omap_wdt__235_379_omap_wdt_driver_init6 = internal global ptr @omap_wdt_driver_init, section ".initcall6.init", align 4
@omap_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_wdt_probe, ptr @omap_wdt_remove, ptr @omap_wdt_shutdown, ptr @omap_wdt_suspend, ptr @omap_wdt_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_wdt_driver_exit = internal global ptr @omap_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [32 x i8] c"omap_wdt.author=George G. Davis\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [40 x i8] c"omap_wdt.file=drivers/watchdog/omap_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [21 x i8] c"omap_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [33 x i8] c"omap_wdt.alias=platform:omap_wdt\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap_wdt\00", [23 x i8] zeroinitializer }, align 32
@omap_wdt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@omap_wdt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&wdev->lock\00", [20 x i8] zeroinitializer }, align 32
@omap_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"OMAP Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@omap_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @omap_wdt_start, ptr @omap_wdt_stop, ptr @omap_wdt_ping, ptr null, ptr @omap_wdt_set_timeout, ptr null, ptr @omap_wdt_get_timeleft, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@omap_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016omap_wdt: OMAP Watchdog Timer Rev 0x%02x: initial timeout %d sec\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_wdt_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/watchdog/omap_wdt.c\00", [36 x i8] zeroinitializer }, align 32
@omap_wdt_probe._entry_ptr = internal global ptr @omap_wdt_probe._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 46, i32 13 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"timer_margin\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 51, i32 17 }
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"early_enable\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 57, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"omap_wdt_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 367, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 374, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"omap_wdt_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 361, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 242, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"omap_wdt_info\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 215, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"omap_wdt_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 220, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [31 x i8] c"../drivers/watchdog/omap_wdt.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 285, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_early_enable234, ptr @__UNIQUE_ID_early_enabletype233, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__UNIQUE_ID_nowayout230, ptr @__UNIQUE_ID_nowayouttype229, ptr @__UNIQUE_ID_timer_margin232, ptr @__UNIQUE_ID_timer_margintype231, ptr @__exitcall_omap_wdt_driver_exit, ptr @__initcall__kmod_omap_wdt__235_379_omap_wdt_driver_init6, ptr @__param_early_enable, ptr @__param_nowayout, ptr @__param_timer_margin, ptr @omap_wdt_driver_exit, ptr @omap_wdt_probe._entry, ptr @omap_wdt_probe._entry_ptr, ptr @nowayout, ptr @timer_margin, ptr @early_enable, ptr @omap_wdt_driver, ptr @.str, ptr @omap_wdt_of_match, ptr @omap_wdt_probe.__key, ptr @.str.1, ptr @omap_wdt_info, ptr @omap_wdt_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_margin to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_wdt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_wdt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_wdt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 216, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %omap_wdt_users = getelementptr inbounds %struct.omap_wdt_dev, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %omap_wdt_users to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %omap_wdt_users, align 4
  %dev4 = getelementptr inbounds %struct.omap_wdt_dev, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev4, align 4
  %wdt_trgr_pattern = getelementptr inbounds %struct.omap_wdt_dev, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %wdt_trgr_pattern to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4660, ptr %wdt_trgr_pattern, align 4
  %lock = getelementptr inbounds %struct.omap_wdt_dev, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @omap_wdt_probe.__key) #5
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.omap_wdt_dev, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @omap_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @omap_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %10 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 86400, ptr %max_timeout, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 60, ptr %timeout, align 4
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent, align 4
  %13 = load i32, ptr @timer_margin, align 4
  %call20 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef %13, ptr noundef %dev) #5
  %14 = load i8, ptr @nowayout, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool22.not = icmp eq i8 %14, 0
  br i1 %tobool22.not, label %if.end11.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end11.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #5
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end11.watchdog_set_nowayout.exit_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %16 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev4, align 4
  tail call void @pm_runtime_enable(ptr noundef %17) #5
  %18 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev4, align 4
  %call.i107 = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #5
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %watchdog_set_nowayout.exit.if.end35_crit_edge, label %land.lhs.true

watchdog_set_nowayout.exit.if.end35_crit_edge:    ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

land.lhs.true:                                    ; preds = %watchdog_set_nowayout.exit
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %tobool27.not = icmp eq ptr %21, null
  br i1 %tobool27.not, label %land.lhs.true.if.end35_crit_edge, label %if.then28

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then28:                                        ; preds = %land.lhs.true
  %call30 = tail call i32 %21() #5
  %and = and i32 %call30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.then28.if.end35_crit_edge, label %if.then32

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %bootstatus = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %bootstatus to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %bootstatus, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then28.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %watchdog_set_nowayout.exit.if.end35_crit_edge
  %23 = load i8, ptr @early_enable, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool36.not = icmp eq i8 %23, 0
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 @omap_wdt_start(ptr noundef nonnull %call.i)
  %status = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #5
  br label %if.end41

if.else:                                          ; preds = %if.end35
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1431699456) #5, !srcloc !63
  %add.ptr2.i = getelementptr i8, ptr %25, i32 52
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %27 = and i32 %26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not31.i = icmp eq i32 %27, 0
  br i1 %tobool.not31.i, label %if.else.while.end.i_crit_edge, label %if.else.do.end.i_crit_edge

if.else.do.end.i_crit_edge:                       ; preds = %if.else
  br label %do.end.i

if.else.while.end.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.else.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !66
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %29 = and i32 %28, 268435456
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %if.else.while.end.i_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1431633920) #5, !srcloc !63
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %31 = and i32 %30, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool16.not32.i = icmp eq i32 %31, 0
  br i1 %tobool16.not32.i, label %while.end.i.if.end41_crit_edge, label %while.end.i.do.end22.i_crit_edge

while.end.i.do.end22.i_crit_edge:                 ; preds = %while.end.i
  br label %do.end22.i

while.end.i.if.end41_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

do.end22.i:                                       ; preds = %do.end22.i.do.end22.i_crit_edge, %while.end.i.do.end22.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !68
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %33 = and i32 %32, 268435456
  %tobool16.not.i = icmp eq i32 %33, 0
  br i1 %tobool16.not.i, label %do.end22.i.if.end41_crit_edge, label %do.end22.i.do.end22.i_crit_edge

do.end22.i.do.end22.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.i

do.end22.i.if.end41_crit_edge:                    ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end41:                                         ; preds = %do.end22.i.if.end41_crit_edge, %while.end.i.if.end41_crit_edge, %if.then37
  %call43 = tail call i32 @watchdog_register_device(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end52, label %if.then45

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev4, align 4
  %call.i108 = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 5) #5
  %36 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev4, align 4
  tail call void @__pm_runtime_disable(ptr noundef %37, i1 noundef zeroext true) #5
  br label %cleanup

do.end52:                                         ; preds = %if.end41
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !64
  %41 = lshr i32 %40, 24
  %42 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %timeout, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %41, i32 noundef %43) #8
  %44 = load i8, ptr @early_enable, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool60.not = icmp eq i8 %44, 0
  br i1 %tobool60.not, label %do.end52.if.end64_crit_edge, label %if.then61

do.end52.if.end64_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then61:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  %call63 = tail call i32 @omap_wdt_start(ptr noundef nonnull %call.i)
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %do.end52.if.end64_crit_edge
  %45 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev4, align 4
  %call.i109 = tail call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then45, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then8 ], [ %call43, %if.then45 ], [ 0, %if.end64 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_wdt_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #5
  tail call void @watchdog_unregister_device(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_wdt_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %omap_wdt_users = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %omap_wdt_users to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %omap_wdt_users, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %base1.i = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1431699456) #5, !srcloc !63
  %add.ptr2.i = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %7 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not31.i = icmp eq i32 %7, 0
  br i1 %tobool.not31.i, label %if.then.while.end.i_crit_edge, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  br label %do.end.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !66
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %9 = and i32 %8, 268435456
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1431633920) #5, !srcloc !63
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not32.i = icmp eq i32 %11, 0
  br i1 %tobool16.not32.i, label %while.end.i.omap_wdt_disable.exit_crit_edge, label %while.end.i.do.end22.i_crit_edge

while.end.i.do.end22.i_crit_edge:                 ; preds = %while.end.i
  br label %do.end22.i

while.end.i.omap_wdt_disable.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_disable.exit

do.end22.i:                                       ; preds = %do.end22.i.do.end22.i_crit_edge, %while.end.i.do.end22.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !68
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %13 = and i32 %12, 268435456
  %tobool16.not.i = icmp eq i32 %13, 0
  br i1 %tobool16.not.i, label %do.end22.i.omap_wdt_disable.exit_crit_edge, label %do.end22.i.do.end22.i_crit_edge

do.end22.i.do.end22.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.i

do.end22.i.omap_wdt_disable.exit_crit_edge:       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_disable.exit

omap_wdt_disable.exit:                            ; preds = %do.end22.i.omap_wdt_disable.exit_crit_edge, %while.end.i.omap_wdt_disable.exit_crit_edge
  %dev = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 4) #5
  br label %if.end

if.end:                                           ; preds = %omap_wdt_disable.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_wdt_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %omap_wdt_users = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %omap_wdt_users to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %omap_wdt_users, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %base1.i = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1431699456) #5, !srcloc !63
  %add.ptr2.i = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %7 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not31.i = icmp eq i32 %7, 0
  br i1 %tobool.not31.i, label %if.then.while.end.i_crit_edge, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  br label %do.end.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !66
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %9 = and i32 %8, 268435456
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1431633920) #5, !srcloc !63
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not32.i = icmp eq i32 %11, 0
  br i1 %tobool16.not32.i, label %while.end.i.omap_wdt_disable.exit_crit_edge, label %while.end.i.do.end22.i_crit_edge

while.end.i.do.end22.i_crit_edge:                 ; preds = %while.end.i
  br label %do.end22.i

while.end.i.omap_wdt_disable.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_disable.exit

do.end22.i:                                       ; preds = %do.end22.i.do.end22.i_crit_edge, %while.end.i.do.end22.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !68
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %13 = and i32 %12, 268435456
  %tobool16.not.i = icmp eq i32 %13, 0
  br i1 %tobool16.not.i, label %do.end22.i.omap_wdt_disable.exit_crit_edge, label %do.end22.i.do.end22.i_crit_edge

do.end22.i.do.end22.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.i

do.end22.i.omap_wdt_disable.exit_crit_edge:       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_disable.exit

omap_wdt_disable.exit:                            ; preds = %do.end22.i.omap_wdt_disable.exit_crit_edge, %while.end.i.omap_wdt_disable.exit_crit_edge
  %dev = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 4) #5
  br label %if.end

if.end:                                           ; preds = %omap_wdt_disable.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_wdt_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %omap_wdt_users = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %omap_wdt_users to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %omap_wdt_users, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #5
  %base1.i = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1145372672) #5, !srcloc !63
  %add.ptr2.i = getelementptr i8, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not31.i = icmp eq i32 %9, 0
  br i1 %tobool.not31.i, label %if.then.while.end.i_crit_edge, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  br label %do.end.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !70
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %11 = and i32 %10, 268435456
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1145307136) #5, !srcloc !63
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %13 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not32.i = icmp eq i32 %13, 0
  br i1 %tobool16.not32.i, label %while.end.i.omap_wdt_enable.exit_crit_edge, label %while.end.i.do.end22.i_crit_edge

while.end.i.do.end22.i_crit_edge:                 ; preds = %while.end.i
  br label %do.end22.i

while.end.i.omap_wdt_enable.exit_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_enable.exit

do.end22.i:                                       ; preds = %do.end22.i.do.end22.i_crit_edge, %while.end.i.do.end22.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !72
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %15 = and i32 %14, 268435456
  %tobool16.not.i = icmp eq i32 %15, 0
  br i1 %tobool16.not.i, label %do.end22.i.omap_wdt_enable.exit_crit_edge, label %do.end22.i.do.end22.i_crit_edge

do.end22.i.do.end22.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.i

do.end22.i.omap_wdt_enable.exit_crit_edge:        ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_enable.exit

omap_wdt_enable.exit:                             ; preds = %do.end22.i.omap_wdt_enable.exit_crit_edge, %while.end.i.omap_wdt_enable.exit_crit_edge
  %16 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base1.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %17, i32 52
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #5, !srcloc !64
  %19 = and i32 %18, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not34.i = icmp eq i32 %19, 0
  br i1 %tobool.not34.i, label %omap_wdt_enable.exit.while.end.i12_crit_edge, label %omap_wdt_enable.exit.do.end.i11_crit_edge

omap_wdt_enable.exit.do.end.i11_crit_edge:        ; preds = %omap_wdt_enable.exit
  br label %do.end.i11

omap_wdt_enable.exit.while.end.i12_crit_edge:     ; preds = %omap_wdt_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i12

do.end.i11:                                       ; preds = %do.end.i11.do.end.i11_crit_edge, %omap_wdt_enable.exit.do.end.i11_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !74
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #5, !srcloc !64
  %21 = and i32 %20, 134217728
  %tobool.not.i10 = icmp eq i32 %21, 0
  br i1 %tobool.not.i10, label %do.end.i11.while.end.i12_crit_edge, label %do.end.i11.do.end.i11_crit_edge

do.end.i11.do.end.i11_crit_edge:                  ; preds = %do.end.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i11

do.end.i11.while.end.i12_crit_edge:               ; preds = %do.end.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i12

while.end.i12:                                    ; preds = %do.end.i11.while.end.i12_crit_edge, %omap_wdt_enable.exit.while.end.i12_crit_edge
  %wdt_trgr_pattern.i = getelementptr inbounds %struct.omap_wdt_dev, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %wdt_trgr_pattern.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wdt_trgr_pattern.i, align 4
  %neg.i = xor i32 %23, -1
  store i32 %neg.i, ptr %wdt_trgr_pattern.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #5
  %add.ptr10.i = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %24) #5, !srcloc !63
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #5, !srcloc !64
  %26 = and i32 %25, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool17.not35.i = icmp eq i32 %26, 0
  br i1 %tobool17.not35.i, label %while.end.i12.if.end_crit_edge, label %while.end.i12.do.end23.i_crit_edge

while.end.i12.do.end23.i_crit_edge:               ; preds = %while.end.i12
  br label %do.end23.i

while.end.i12.if.end_crit_edge:                   ; preds = %while.end.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end23.i:                                       ; preds = %do.end23.i.do.end23.i_crit_edge, %while.end.i12.do.end23.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !76
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #5, !srcloc !64
  %28 = and i32 %27, 134217728
  %tobool17.not.i = icmp eq i32 %28, 0
  br i1 %tobool17.not.i, label %do.end23.i.if.end_crit_edge, label %do.end23.i.do.end23.i_crit_edge

do.end23.i.do.end23.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

do.end23.i.if.end_crit_edge:                      ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.end23.i.if.end_crit_edge, %while.end.i12.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_wdt_start(ptr noundef %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %lock = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %omap_wdt_users = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 3
  %2 = ptrtoint ptr %omap_wdt_users to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %omap_wdt_users, align 4
  %dev = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #5
  %5 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base1, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1431699456) #5, !srcloc !63
  %add.ptr2.i = getelementptr i8, ptr %6, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %8 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not31.i = icmp eq i32 %8, 0
  br i1 %tobool.not31.i, label %entry.while.end.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !66
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %10 = and i32 %9, 268435456
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1431633920) #5, !srcloc !63
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %12 = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not32.i = icmp eq i32 %12, 0
  br i1 %tobool16.not32.i, label %while.end.i.omap_wdt_disable.exit_crit_edge, label %while.end.i.do.end22.i_crit_edge

while.end.i.do.end22.i_crit_edge:                 ; preds = %while.end.i
  br label %do.end22.i

while.end.i.omap_wdt_disable.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_disable.exit

do.end22.i:                                       ; preds = %do.end22.i.do.end22.i_crit_edge, %while.end.i.do.end22.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !68
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %14 = and i32 %13, 268435456
  %tobool16.not.i = icmp eq i32 %14, 0
  br i1 %tobool16.not.i, label %do.end22.i.omap_wdt_disable.exit_crit_edge, label %do.end22.i.do.end22.i_crit_edge

do.end22.i.do.end22.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.i

do.end22.i.omap_wdt_disable.exit_crit_edge:       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_disable.exit

omap_wdt_disable.exit:                            ; preds = %do.end22.i.omap_wdt_disable.exit_crit_edge, %while.end.i.omap_wdt_disable.exit_crit_edge
  %add.ptr2 = getelementptr i8, ptr %1, i32 52
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !64
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not62 = icmp eq i32 %16, 0
  br i1 %tobool.not62, label %omap_wdt_disable.exit.while.end_crit_edge, label %omap_wdt_disable.exit.do.end_crit_edge

omap_wdt_disable.exit.do.end_crit_edge:           ; preds = %omap_wdt_disable.exit
  br label %do.end

omap_wdt_disable.exit.while.end_crit_edge:        ; preds = %omap_wdt_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %omap_wdt_disable.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !78
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !64
  %18 = and i32 %17, 16777216
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %omap_wdt_disable.exit.while.end_crit_edge
  %add.ptr11 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 536870912) #5, !srcloc !63
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !64
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not63 = icmp eq i32 %20, 0
  br i1 %tobool18.not63, label %while.end.while.end29_crit_edge, label %while.end.do.end24_crit_edge

while.end.do.end24_crit_edge:                     ; preds = %while.end
  br label %do.end24

while.end.while.end29_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end29

do.end24:                                         ; preds = %do.end24.do.end24_crit_edge, %while.end.do.end24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !80
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !64
  %22 = and i32 %21, 16777216
  %tobool18.not = icmp eq i32 %22, 0
  br i1 %tobool18.not, label %do.end24.while.end29_crit_edge, label %do.end24.do.end24_crit_edge

do.end24.do.end24_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

do.end24.while.end29_crit_edge:                   ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end29

while.end29:                                      ; preds = %do.end24.while.end29_crit_edge, %while.end.while.end29_crit_edge
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %23 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %timeout, align 4
  %mul.neg.i = mul i32 %24, -32768
  %25 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base1, align 4
  %add.ptr.i43 = getelementptr i8, ptr %26, i32 52
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #5, !srcloc !64
  %28 = and i32 %27, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not29.i = icmp eq i32 %28, 0
  br i1 %tobool.not29.i, label %while.end29.while.end.i46_crit_edge, label %while.end29.do.end.i45_crit_edge

while.end29.do.end.i45_crit_edge:                 ; preds = %while.end29
  br label %do.end.i45

while.end29.while.end.i46_crit_edge:              ; preds = %while.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i46

do.end.i45:                                       ; preds = %do.end.i45.do.end.i45_crit_edge, %while.end29.do.end.i45_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !82
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #5, !srcloc !64
  %30 = and i32 %29, 67108864
  %tobool.not.i44 = icmp eq i32 %30, 0
  br i1 %tobool.not.i44, label %do.end.i45.while.end.i46_crit_edge, label %do.end.i45.do.end.i45_crit_edge

do.end.i45.do.end.i45_crit_edge:                  ; preds = %do.end.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i45

do.end.i45.while.end.i46_crit_edge:               ; preds = %do.end.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i46

while.end.i46:                                    ; preds = %do.end.i45.while.end.i46_crit_edge, %while.end29.while.end.i46_crit_edge
  %31 = tail call i32 @llvm.bswap.i32(i32 %mul.neg.i) #5
  %add.ptr8.i = getelementptr i8, ptr %26, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %31) #5, !srcloc !63
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #5, !srcloc !64
  %33 = and i32 %32, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool15.not30.i = icmp eq i32 %33, 0
  br i1 %tobool15.not30.i, label %while.end.i46.omap_wdt_set_timer.exit_crit_edge, label %while.end.i46.do.end21.i_crit_edge

while.end.i46.do.end21.i_crit_edge:               ; preds = %while.end.i46
  br label %do.end21.i

while.end.i46.omap_wdt_set_timer.exit_crit_edge:  ; preds = %while.end.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_set_timer.exit

do.end21.i:                                       ; preds = %do.end21.i.do.end21.i_crit_edge, %while.end.i46.do.end21.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !84
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #5, !srcloc !64
  %35 = and i32 %34, 67108864
  %tobool15.not.i = icmp eq i32 %35, 0
  br i1 %tobool15.not.i, label %do.end21.i.omap_wdt_set_timer.exit_crit_edge, label %do.end21.i.do.end21.i_crit_edge

do.end21.i.do.end21.i_crit_edge:                  ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21.i

do.end21.i.omap_wdt_set_timer.exit_crit_edge:     ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_set_timer.exit

omap_wdt_set_timer.exit:                          ; preds = %do.end21.i.omap_wdt_set_timer.exit_crit_edge, %while.end.i46.omap_wdt_set_timer.exit_crit_edge
  %36 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base1, align 4
  %add.ptr.i48 = getelementptr i8, ptr %37, i32 52
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #5, !srcloc !64
  %39 = and i32 %38, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not34.i = icmp eq i32 %39, 0
  br i1 %tobool.not34.i, label %omap_wdt_set_timer.exit.while.end.i51_crit_edge, label %omap_wdt_set_timer.exit.do.end.i50_crit_edge

omap_wdt_set_timer.exit.do.end.i50_crit_edge:     ; preds = %omap_wdt_set_timer.exit
  br label %do.end.i50

omap_wdt_set_timer.exit.while.end.i51_crit_edge:  ; preds = %omap_wdt_set_timer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i51

do.end.i50:                                       ; preds = %do.end.i50.do.end.i50_crit_edge, %omap_wdt_set_timer.exit.do.end.i50_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !74
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #5, !srcloc !64
  %41 = and i32 %40, 134217728
  %tobool.not.i49 = icmp eq i32 %41, 0
  br i1 %tobool.not.i49, label %do.end.i50.while.end.i51_crit_edge, label %do.end.i50.do.end.i50_crit_edge

do.end.i50.do.end.i50_crit_edge:                  ; preds = %do.end.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i50

do.end.i50.while.end.i51_crit_edge:               ; preds = %do.end.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i51

while.end.i51:                                    ; preds = %do.end.i50.while.end.i51_crit_edge, %omap_wdt_set_timer.exit.while.end.i51_crit_edge
  %wdt_trgr_pattern.i = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 4
  %42 = ptrtoint ptr %wdt_trgr_pattern.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wdt_trgr_pattern.i, align 4
  %neg.i = xor i32 %43, -1
  store i32 %neg.i, ptr %wdt_trgr_pattern.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #5
  %add.ptr10.i = getelementptr i8, ptr %37, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %44) #5, !srcloc !63
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #5, !srcloc !64
  %46 = and i32 %45, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool17.not35.i = icmp eq i32 %46, 0
  br i1 %tobool17.not35.i, label %while.end.i51.omap_wdt_reload.exit_crit_edge, label %while.end.i51.do.end23.i_crit_edge

while.end.i51.do.end23.i_crit_edge:               ; preds = %while.end.i51
  br label %do.end23.i

while.end.i51.omap_wdt_reload.exit_crit_edge:     ; preds = %while.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_reload.exit

do.end23.i:                                       ; preds = %do.end23.i.do.end23.i_crit_edge, %while.end.i51.do.end23.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !76
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #5, !srcloc !64
  %48 = and i32 %47, 134217728
  %tobool17.not.i = icmp eq i32 %48, 0
  br i1 %tobool17.not.i, label %do.end23.i.omap_wdt_reload.exit_crit_edge, label %do.end23.i.do.end23.i_crit_edge

do.end23.i.do.end23.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

do.end23.i.omap_wdt_reload.exit_crit_edge:        ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_reload.exit

omap_wdt_reload.exit:                             ; preds = %do.end23.i.omap_wdt_reload.exit_crit_edge, %while.end.i51.omap_wdt_reload.exit_crit_edge
  %49 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base1, align 4
  %add.ptr.i53 = getelementptr i8, ptr %50, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 -1145372672) #5, !srcloc !63
  %add.ptr2.i54 = getelementptr i8, ptr %50, i32 52
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i54) #5, !srcloc !64
  %52 = and i32 %51, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not31.i55 = icmp eq i32 %52, 0
  br i1 %tobool.not31.i55, label %omap_wdt_reload.exit.while.end.i59_crit_edge, label %omap_wdt_reload.exit.do.end.i57_crit_edge

omap_wdt_reload.exit.do.end.i57_crit_edge:        ; preds = %omap_wdt_reload.exit
  br label %do.end.i57

omap_wdt_reload.exit.while.end.i59_crit_edge:     ; preds = %omap_wdt_reload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i59

do.end.i57:                                       ; preds = %do.end.i57.do.end.i57_crit_edge, %omap_wdt_reload.exit.do.end.i57_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !70
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i54) #5, !srcloc !64
  %54 = and i32 %53, 268435456
  %tobool.not.i56 = icmp eq i32 %54, 0
  br i1 %tobool.not.i56, label %do.end.i57.while.end.i59_crit_edge, label %do.end.i57.do.end.i57_crit_edge

do.end.i57.do.end.i57_crit_edge:                  ; preds = %do.end.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i57

do.end.i57.while.end.i59_crit_edge:               ; preds = %do.end.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i59

while.end.i59:                                    ; preds = %do.end.i57.while.end.i59_crit_edge, %omap_wdt_reload.exit.while.end.i59_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 1145307136) #5, !srcloc !63
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i54) #5, !srcloc !64
  %56 = and i32 %55, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool16.not32.i58 = icmp eq i32 %56, 0
  br i1 %tobool16.not32.i58, label %while.end.i59.omap_wdt_enable.exit_crit_edge, label %while.end.i59.do.end22.i61_crit_edge

while.end.i59.do.end22.i61_crit_edge:             ; preds = %while.end.i59
  br label %do.end22.i61

while.end.i59.omap_wdt_enable.exit_crit_edge:     ; preds = %while.end.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_enable.exit

do.end22.i61:                                     ; preds = %do.end22.i61.do.end22.i61_crit_edge, %while.end.i59.do.end22.i61_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !72
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i54) #5, !srcloc !64
  %58 = and i32 %57, 268435456
  %tobool16.not.i60 = icmp eq i32 %58, 0
  br i1 %tobool16.not.i60, label %do.end22.i61.omap_wdt_enable.exit_crit_edge, label %do.end22.i61.do.end22.i61_crit_edge

do.end22.i61.do.end22.i61_crit_edge:              ; preds = %do.end22.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.i61

do.end22.i61.omap_wdt_enable.exit_crit_edge:      ; preds = %do.end22.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_enable.exit

omap_wdt_enable.exit:                             ; preds = %do.end22.i61.omap_wdt_enable.exit_crit_edge, %while.end.i59.omap_wdt_enable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_wdt_stop(ptr noundef %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %base1.i = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 1
  %0 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1431699456) #5, !srcloc !63
  %add.ptr2.i = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not31.i = icmp eq i32 %3, 0
  br i1 %tobool.not31.i, label %entry.while.end.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !66
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %5 = and i32 %4, 268435456
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1431633920) #5, !srcloc !63
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %7 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not32.i = icmp eq i32 %7, 0
  br i1 %tobool16.not32.i, label %while.end.i.omap_wdt_disable.exit_crit_edge, label %while.end.i.do.end22.i_crit_edge

while.end.i.do.end22.i_crit_edge:                 ; preds = %while.end.i
  br label %do.end22.i

while.end.i.omap_wdt_disable.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_disable.exit

do.end22.i:                                       ; preds = %do.end22.i.do.end22.i_crit_edge, %while.end.i.do.end22.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !68
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %9 = and i32 %8, 268435456
  %tobool16.not.i = icmp eq i32 %9, 0
  br i1 %tobool16.not.i, label %do.end22.i.omap_wdt_disable.exit_crit_edge, label %do.end22.i.do.end22.i_crit_edge

do.end22.i.do.end22.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.i

do.end22.i.omap_wdt_disable.exit_crit_edge:       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_disable.exit

omap_wdt_disable.exit:                            ; preds = %do.end22.i.omap_wdt_disable.exit_crit_edge, %while.end.i.omap_wdt_disable.exit_crit_edge
  %dev = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #5
  %omap_wdt_users = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 3
  %12 = ptrtoint ptr %omap_wdt_users to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %omap_wdt_users, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_wdt_ping(ptr noundef %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %base1.i = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 1
  %0 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not34.i = icmp eq i32 %3, 0
  br i1 %tobool.not34.i, label %entry.while.end.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !74
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  %5 = and i32 %4, 134217728
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %wdt_trgr_pattern.i = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 4
  %6 = ptrtoint ptr %wdt_trgr_pattern.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wdt_trgr_pattern.i, align 4
  %neg.i = xor i32 %7, -1
  store i32 %neg.i, ptr %wdt_trgr_pattern.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #5
  %add.ptr10.i = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %8) #5, !srcloc !63
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  %10 = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not35.i = icmp eq i32 %10, 0
  br i1 %tobool17.not35.i, label %while.end.i.omap_wdt_reload.exit_crit_edge, label %while.end.i.do.end23.i_crit_edge

while.end.i.do.end23.i_crit_edge:                 ; preds = %while.end.i
  br label %do.end23.i

while.end.i.omap_wdt_reload.exit_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_reload.exit

do.end23.i:                                       ; preds = %do.end23.i.do.end23.i_crit_edge, %while.end.i.do.end23.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !76
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  %12 = and i32 %11, 134217728
  %tobool17.not.i = icmp eq i32 %12, 0
  br i1 %tobool17.not.i, label %do.end23.i.omap_wdt_reload.exit_crit_edge, label %do.end23.i.do.end23.i_crit_edge

do.end23.i.do.end23.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

do.end23.i.omap_wdt_reload.exit_crit_edge:        ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_reload.exit

omap_wdt_reload.exit:                             ; preds = %do.end23.i.omap_wdt_reload.exit_crit_edge, %while.end.i.omap_wdt_reload.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_wdt_set_timeout(ptr noundef %wdog, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %base1.i = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 1
  %0 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1431699456) #5, !srcloc !63
  %add.ptr2.i = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not31.i = icmp eq i32 %3, 0
  br i1 %tobool.not31.i, label %entry.while.end.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !66
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %5 = and i32 %4, 268435456
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1431633920) #5, !srcloc !63
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %7 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not32.i = icmp eq i32 %7, 0
  br i1 %tobool16.not32.i, label %while.end.i.omap_wdt_disable.exit_crit_edge, label %while.end.i.do.end22.i_crit_edge

while.end.i.do.end22.i_crit_edge:                 ; preds = %while.end.i
  br label %do.end22.i

while.end.i.omap_wdt_disable.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_disable.exit

do.end22.i:                                       ; preds = %do.end22.i.do.end22.i_crit_edge, %while.end.i.do.end22.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !68
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !64
  %9 = and i32 %8, 268435456
  %tobool16.not.i = icmp eq i32 %9, 0
  br i1 %tobool16.not.i, label %do.end22.i.omap_wdt_disable.exit_crit_edge, label %do.end22.i.do.end22.i_crit_edge

do.end22.i.do.end22.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.i

do.end22.i.omap_wdt_disable.exit_crit_edge:       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_disable.exit

omap_wdt_disable.exit:                            ; preds = %do.end22.i.omap_wdt_disable.exit_crit_edge, %while.end.i.omap_wdt_disable.exit_crit_edge
  %mul.neg.i = mul i32 %timeout, -32768
  %10 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base1.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %11, i32 52
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #5, !srcloc !64
  %13 = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not29.i = icmp eq i32 %13, 0
  br i1 %tobool.not29.i, label %omap_wdt_disable.exit.while.end.i14_crit_edge, label %omap_wdt_disable.exit.do.end.i13_crit_edge

omap_wdt_disable.exit.do.end.i13_crit_edge:       ; preds = %omap_wdt_disable.exit
  br label %do.end.i13

omap_wdt_disable.exit.while.end.i14_crit_edge:    ; preds = %omap_wdt_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i14

do.end.i13:                                       ; preds = %do.end.i13.do.end.i13_crit_edge, %omap_wdt_disable.exit.do.end.i13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !82
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #5, !srcloc !64
  %15 = and i32 %14, 67108864
  %tobool.not.i12 = icmp eq i32 %15, 0
  br i1 %tobool.not.i12, label %do.end.i13.while.end.i14_crit_edge, label %do.end.i13.do.end.i13_crit_edge

do.end.i13.do.end.i13_crit_edge:                  ; preds = %do.end.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13

do.end.i13.while.end.i14_crit_edge:               ; preds = %do.end.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i14

while.end.i14:                                    ; preds = %do.end.i13.while.end.i14_crit_edge, %omap_wdt_disable.exit.while.end.i14_crit_edge
  %16 = tail call i32 @llvm.bswap.i32(i32 %mul.neg.i) #5
  %add.ptr8.i = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %16) #5, !srcloc !63
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #5, !srcloc !64
  %18 = and i32 %17, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not30.i = icmp eq i32 %18, 0
  br i1 %tobool15.not30.i, label %while.end.i14.omap_wdt_set_timer.exit_crit_edge, label %while.end.i14.do.end21.i_crit_edge

while.end.i14.do.end21.i_crit_edge:               ; preds = %while.end.i14
  br label %do.end21.i

while.end.i14.omap_wdt_set_timer.exit_crit_edge:  ; preds = %while.end.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_set_timer.exit

do.end21.i:                                       ; preds = %do.end21.i.do.end21.i_crit_edge, %while.end.i14.do.end21.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !84
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #5, !srcloc !64
  %20 = and i32 %19, 67108864
  %tobool15.not.i = icmp eq i32 %20, 0
  br i1 %tobool15.not.i, label %do.end21.i.omap_wdt_set_timer.exit_crit_edge, label %do.end21.i.do.end21.i_crit_edge

do.end21.i.do.end21.i_crit_edge:                  ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21.i

do.end21.i.omap_wdt_set_timer.exit_crit_edge:     ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_set_timer.exit

omap_wdt_set_timer.exit:                          ; preds = %do.end21.i.omap_wdt_set_timer.exit_crit_edge, %while.end.i14.omap_wdt_set_timer.exit_crit_edge
  %21 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base1.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %22, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 -1145372672) #5, !srcloc !63
  %add.ptr2.i17 = getelementptr i8, ptr %22, i32 52
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i17) #5, !srcloc !64
  %24 = and i32 %23, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not31.i18 = icmp eq i32 %24, 0
  br i1 %tobool.not31.i18, label %omap_wdt_set_timer.exit.while.end.i22_crit_edge, label %omap_wdt_set_timer.exit.do.end.i20_crit_edge

omap_wdt_set_timer.exit.do.end.i20_crit_edge:     ; preds = %omap_wdt_set_timer.exit
  br label %do.end.i20

omap_wdt_set_timer.exit.while.end.i22_crit_edge:  ; preds = %omap_wdt_set_timer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i22

do.end.i20:                                       ; preds = %do.end.i20.do.end.i20_crit_edge, %omap_wdt_set_timer.exit.do.end.i20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !70
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i17) #5, !srcloc !64
  %26 = and i32 %25, 268435456
  %tobool.not.i19 = icmp eq i32 %26, 0
  br i1 %tobool.not.i19, label %do.end.i20.while.end.i22_crit_edge, label %do.end.i20.do.end.i20_crit_edge

do.end.i20.do.end.i20_crit_edge:                  ; preds = %do.end.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i20

do.end.i20.while.end.i22_crit_edge:               ; preds = %do.end.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i22

while.end.i22:                                    ; preds = %do.end.i20.while.end.i22_crit_edge, %omap_wdt_set_timer.exit.while.end.i22_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 1145307136) #5, !srcloc !63
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i17) #5, !srcloc !64
  %28 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool16.not32.i21 = icmp eq i32 %28, 0
  br i1 %tobool16.not32.i21, label %while.end.i22.omap_wdt_enable.exit_crit_edge, label %while.end.i22.do.end22.i24_crit_edge

while.end.i22.do.end22.i24_crit_edge:             ; preds = %while.end.i22
  br label %do.end22.i24

while.end.i22.omap_wdt_enable.exit_crit_edge:     ; preds = %while.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_enable.exit

do.end22.i24:                                     ; preds = %do.end22.i24.do.end22.i24_crit_edge, %while.end.i22.do.end22.i24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !72
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i17) #5, !srcloc !64
  %30 = and i32 %29, 268435456
  %tobool16.not.i23 = icmp eq i32 %30, 0
  br i1 %tobool16.not.i23, label %do.end22.i24.omap_wdt_enable.exit_crit_edge, label %do.end22.i24.do.end22.i24_crit_edge

do.end22.i24.do.end22.i24_crit_edge:              ; preds = %do.end22.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.i24

do.end22.i24.omap_wdt_enable.exit_crit_edge:      ; preds = %do.end22.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_enable.exit

omap_wdt_enable.exit:                             ; preds = %do.end22.i24.omap_wdt_enable.exit_crit_edge, %while.end.i22.omap_wdt_enable.exit_crit_edge
  %31 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base1.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %32, i32 52
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #5, !srcloc !64
  %34 = and i32 %33, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not34.i = icmp eq i32 %34, 0
  br i1 %tobool.not34.i, label %omap_wdt_enable.exit.while.end.i29_crit_edge, label %omap_wdt_enable.exit.do.end.i28_crit_edge

omap_wdt_enable.exit.do.end.i28_crit_edge:        ; preds = %omap_wdt_enable.exit
  br label %do.end.i28

omap_wdt_enable.exit.while.end.i29_crit_edge:     ; preds = %omap_wdt_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i29

do.end.i28:                                       ; preds = %do.end.i28.do.end.i28_crit_edge, %omap_wdt_enable.exit.do.end.i28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !74
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #5, !srcloc !64
  %36 = and i32 %35, 134217728
  %tobool.not.i27 = icmp eq i32 %36, 0
  br i1 %tobool.not.i27, label %do.end.i28.while.end.i29_crit_edge, label %do.end.i28.do.end.i28_crit_edge

do.end.i28.do.end.i28_crit_edge:                  ; preds = %do.end.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i28

do.end.i28.while.end.i29_crit_edge:               ; preds = %do.end.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i29

while.end.i29:                                    ; preds = %do.end.i28.while.end.i29_crit_edge, %omap_wdt_enable.exit.while.end.i29_crit_edge
  %wdt_trgr_pattern.i = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 4
  %37 = ptrtoint ptr %wdt_trgr_pattern.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wdt_trgr_pattern.i, align 4
  %neg.i = xor i32 %38, -1
  store i32 %neg.i, ptr %wdt_trgr_pattern.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #5
  %add.ptr10.i = getelementptr i8, ptr %32, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %39) #5, !srcloc !63
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #5, !srcloc !64
  %41 = and i32 %40, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool17.not35.i = icmp eq i32 %41, 0
  br i1 %tobool17.not35.i, label %while.end.i29.omap_wdt_reload.exit_crit_edge, label %while.end.i29.do.end23.i_crit_edge

while.end.i29.do.end23.i_crit_edge:               ; preds = %while.end.i29
  br label %do.end23.i

while.end.i29.omap_wdt_reload.exit_crit_edge:     ; preds = %while.end.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_reload.exit

do.end23.i:                                       ; preds = %do.end23.i.do.end23.i_crit_edge, %while.end.i29.do.end23.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !76
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #5, !srcloc !64
  %43 = and i32 %42, 134217728
  %tobool17.not.i = icmp eq i32 %43, 0
  br i1 %tobool17.not.i, label %do.end23.i.omap_wdt_reload.exit_crit_edge, label %do.end23.i.do.end23.i_crit_edge

do.end23.i.do.end23.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

do.end23.i.omap_wdt_reload.exit_crit_edge:        ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_wdt_reload.exit

omap_wdt_reload.exit:                             ; preds = %do.end23.i.omap_wdt_reload.exit_crit_edge, %while.end.i29.omap_wdt_reload.exit_crit_edge
  %timeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %44 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %timeout, ptr %timeout1, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_wdt_get_timeleft(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.omap_wdt_dev, ptr %wdog, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !64
  %3 = xor i32 %2, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add = add i32 %4, 1
  %div4 = lshr i32 %add, 15
  ret i32 %div4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !33, !34, !36, !38, !40, !41, !43, !44, !45, !46, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/omap_wdt.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype229, !1, !"__UNIQUE_ID_nowayouttype229", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout230, !4, !"__UNIQUE_ID_nowayout230", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/omap_wdt.c", i32 48, i32 1}
!5 = !{ptr @__param_timer_margin, !6, !"__param_timer_margin", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/omap_wdt.c", i32 52, i32 1}
!7 = !{ptr @__UNIQUE_ID_timer_margintype231, !6, !"__UNIQUE_ID_timer_margintype231", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_timer_margin232, !9, !"__UNIQUE_ID_timer_margin232", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/omap_wdt.c", i32 53, i32 1}
!10 = !{ptr @__param_early_enable, !11, !"__param_early_enable", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/omap_wdt.c", i32 58, i32 1}
!12 = !{ptr @__UNIQUE_ID_early_enabletype233, !11, !"__UNIQUE_ID_early_enabletype233", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_early_enable234, !14, !"__UNIQUE_ID_early_enable234", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/omap_wdt.c", i32 59, i32 1}
!15 = !{ptr @__initcall__kmod_omap_wdt__235_379_omap_wdt_driver_init6, !16, !"__initcall__kmod_omap_wdt__235_379_omap_wdt_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/omap_wdt.c", i32 379, i32 1}
!17 = !{ptr @__exitcall_omap_wdt_driver_exit, !16, !"__exitcall_omap_wdt_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author236, !19, !"__UNIQUE_ID_author236", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/omap_wdt.c", i32 381, i32 1}
!20 = !{ptr @__UNIQUE_ID_file237, !21, !"__UNIQUE_ID_file237", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/omap_wdt.c", i32 382, i32 1}
!22 = !{ptr @__UNIQUE_ID_license238, !21, !"__UNIQUE_ID_license238", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_alias239, !24, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!24 = !{!"../drivers/watchdog/omap_wdt.c", i32 383, i32 1}
!25 = !{ptr @timer_margin, !26, !"timer_margin", i1 false, i1 false}
!26 = !{!"../drivers/watchdog/omap_wdt.c", i32 51, i32 17}
!27 = !{ptr @early_enable, !28, !"early_enable", i1 false, i1 false}
!28 = !{!"../drivers/watchdog/omap_wdt.c", i32 57, i32 13}
!29 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!30 = !{ptr @nowayout, !31, !"nowayout", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/omap_wdt.c", i32 46, i32 13}
!32 = !{ptr @__param_str_timer_margin, !6, !"__param_str_timer_margin", i1 false, i1 false}
!33 = !{ptr @__param_str_early_enable, !11, !"__param_str_early_enable", i1 false, i1 false}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/omap_wdt.c", i32 374, i32 11}
!36 = !{ptr @omap_wdt_driver, !37, !"omap_wdt_driver", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/omap_wdt.c", i32 367, i32 31}
!38 = !{ptr @omap_wdt_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/omap_wdt.c", i32 242, i32 2}
!40 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/watchdog/omap_wdt.c", i32 285, i32 2}
!43 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @omap_wdt_probe._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @omap_wdt_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @omap_wdt_info, !48, !"omap_wdt_info", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/omap_wdt.c", i32 215, i32 35}
!49 = !{ptr @omap_wdt_ops, !50, !"omap_wdt_ops", i1 false, i1 false}
!50 = !{!"../drivers/watchdog/omap_wdt.c", i32 220, i32 34}
!51 = !{ptr @omap_wdt_of_match, !52, !"omap_wdt_of_match", i1 false, i1 false}
!52 = !{!"../drivers/watchdog/omap_wdt.c", i32 361, i32 34}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i8 0, i8 2}
!63 = !{i64 6247067}
!64 = !{i64 6247485}
!65 = !{i64 2153896661}
!66 = !{i64 2153896503}
!67 = !{i64 2153897439}
!68 = !{i64 2153897281}
!69 = !{i64 2153895105}
!70 = !{i64 2153894947}
!71 = !{i64 2153895883}
!72 = !{i64 2153895725}
!73 = !{i64 2153893498}
!74 = !{i64 2153893340}
!75 = !{i64 2153894327}
!76 = !{i64 2153894169}
!77 = !{i64 2153900734}
!78 = !{i64 2153900576}
!79 = !{i64 2153901556}
!80 = !{i64 2153901398}
!81 = !{i64 2153898087}
!82 = !{i64 2153897929}
!83 = !{i64 2153898877}
!84 = !{i64 2153898719}
