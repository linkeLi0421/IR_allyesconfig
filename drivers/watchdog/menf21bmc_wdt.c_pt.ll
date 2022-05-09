; ModuleID = '/llk/IR_all_yes/drivers/watchdog/menf21bmc_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/menf21bmc_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
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
%struct.menf21bmc_wdt = type { %struct.watchdog_device, ptr }

@__param_str_nowayout = internal constant [23 x i8] c"menf21bmc_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype288 = internal constant [37 x i8] c"menf21bmc_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout289 = internal constant [80 x i8] c"menf21bmc_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_menf21bmc_wdt__290_179_menf21bmc_wdt_init6 = internal global ptr @menf21bmc_wdt_init, section ".initcall6.init", align 4
@menf21bmc_wdt = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @menf21bmc_wdt_probe, ptr null, ptr @menf21bmc_wdt_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_menf21bmc_wdt_exit = internal global ptr @menf21bmc_wdt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [60 x i8] c"menf21bmc_wdt.description=MEN 14F021P00 BMC Watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [60 x i8] c"menf21bmc_wdt.author=Andreas Werner <andreas.werner@men.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [50 x i8] c"menf21bmc_wdt.file=drivers/watchdog/menf21bmc_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [29 x i8] c"menf21bmc_wdt.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [43 x i8] c"menf21bmc_wdt.alias=platform:menf21bmc_wdt\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"menf21bmc_wdt\00", [18 x i8] zeroinitializer }, align 32
@menf21bmc_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @menf21bmc_wdt_start, ptr @menf21bmc_wdt_stop, ptr @menf21bmc_wdt_ping, ptr null, ptr @menf21bmc_wdt_settimeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@menf21bmc_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 32896, i32 0, [32 x i8] c"menf21bmc_wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@menf21bmc_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get current WDT timeout\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"menf21bmc_wdt_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/watchdog/menf21bmc_wdt.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@menf21bmc_wdt_probe._entry_ptr = internal global ptr @menf21bmc_wdt_probe._entry, section ".printk_index", align 4
@menf21bmc_wdt_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set Watchdog bootstatus\0A\00", [61 x i8] zeroinitializer }, align 32
@menf21bmc_wdt_probe._entry_ptr.8 = internal global ptr @menf21bmc_wdt_probe._entry.6, section ".printk_index", align 4
@menf21bmc_wdt_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 158, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MEN 14F021P00 BMC Watchdog device enabled\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@menf21bmc_wdt_probe._entry_ptr.12 = internal global ptr @menf21bmc_wdt_probe._entry.9, section ".printk_index", align 4
@switch.table.menf21bmc_wdt_probe = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 32, i32 32, i32 32, i32 4, i32 8, i32 32, i32 32, i32 32, i32 16], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 28, i32 13 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"menf21bmc_wdt\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 171, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 173, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"menf21bmc_wdt_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 106, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"menf21bmc_wdt_info\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 101, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 139, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 150, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [36 x i8] c"../drivers/watchdog/menf21bmc_wdt.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 158, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [33 x i8] c"switch.table.menf21bmc_wdt_probe\00", align 1
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__UNIQUE_ID_nowayout289, ptr @__UNIQUE_ID_nowayouttype288, ptr @__exitcall_menf21bmc_wdt_exit, ptr @__initcall__kmod_menf21bmc_wdt__290_179_menf21bmc_wdt_init6, ptr @__param_nowayout, ptr @menf21bmc_wdt_exit, ptr @menf21bmc_wdt_probe._entry, ptr @menf21bmc_wdt_probe._entry.6, ptr @menf21bmc_wdt_probe._entry.9, ptr @menf21bmc_wdt_probe._entry_ptr, ptr @menf21bmc_wdt_probe._entry_ptr.12, ptr @menf21bmc_wdt_probe._entry_ptr.8, ptr @nowayout, ptr @menf21bmc_wdt, ptr @.str, ptr @menf21bmc_wdt_ops, ptr @menf21bmc_wdt_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @switch.table.menf21bmc_wdt_probe], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menf21bmc_wdt to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menf21bmc_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menf21bmc_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menf21bmc_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menf21bmc_wdt_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menf21bmc_wdt_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.menf21bmc_wdt_probe to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @menf21bmc_wdt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @menf21bmc_wdt, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @menf21bmc_wdt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @menf21bmc_wdt) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @menf21bmc_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 112, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @menf21bmc_wdt_ops, ptr %ops, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @menf21bmc_wdt_info, ptr %info, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6553, ptr %max_timeout, align 4
  %parent6 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %parent6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %parent6, align 4
  %i2c_client7 = getelementptr inbounds %struct.menf21bmc_wdt, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %i2c_client7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %i2c_client7, align 4
  %call9 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr, i8 noundef zeroext 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %div66 = udiv i32 %call9, 10
  %call13 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef %div66, ptr noundef %dev1) #4
  %8 = load i8, ptr @nowayout, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool15.not = icmp eq i8 %8, 0
  br i1 %tobool15.not, label %if.end11.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end11.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #4
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end11.watchdog_set_nowayout.exit_crit_edge
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %i2c_client7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_client7, align 4
  %call.i63 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext -110) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i = icmp slt i32 %call.i63, 0
  br i1 %cmp.i, label %do.end22, label %if.end.i

if.end.i:                                         ; preds = %watchdog_set_nowayout.exit
  %switch.tableidx = add i32 %call.i63, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 9
  br i1 %13, label %switch.hole_check, label %if.end.i.if.end23_crit_edge

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 281, %switch.maskindex
  %14 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %switch.lobit.not = icmp eq i16 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end23_crit_edge, label %switch.lookup

switch.hole_check.if.end23_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.menf21bmc_wdt_probe, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %bootstatus6.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %bootstatus6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bootstatus6.i, align 4
  %or.i = or i32 %17, %switch.load
  store i32 %or.i, ptr %bootstatus6.i, align 4
  br label %if.end23

do.end22:                                         ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end23:                                         ; preds = %switch.lookup, %switch.hole_check.if.end23_crit_edge, %if.end.i.if.end23_crit_edge
  %call25 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.end31, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.end23.cleanup_crit_edge, %do.end22, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end ], [ %call.i63, %do.end22 ], [ 0, %do.end31 ], [ -12, %entry.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @menf21bmc_wdt_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_client = getelementptr inbounds %struct.menf21bmc_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client, align 4
  %call1 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 18, i16 noundef zeroext 105) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @menf21bmc_wdt_start(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %i2c_client = getelementptr inbounds %struct.menf21bmc_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext 17) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @menf21bmc_wdt_stop(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %i2c_client = getelementptr inbounds %struct.menf21bmc_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 18, i8 noundef zeroext 105) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @menf21bmc_wdt_ping(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %i2c_client = getelementptr inbounds %struct.menf21bmc_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext 19) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @menf21bmc_wdt_settimeout(ptr nocapture noundef %wdt, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %i2c_client = getelementptr inbounds %struct.menf21bmc_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client, align 4
  %4 = trunc i32 %timeout to i16
  %conv = mul i16 %4, 10
  %call1 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 20, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %timeout3 = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 7
  %5 = ptrtoint ptr %timeout3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %timeout, ptr %timeout3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype288, !1, !"__UNIQUE_ID_nowayouttype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout289, !4, !"__UNIQUE_ID_nowayout289", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 30, i32 1}
!5 = !{ptr @__initcall__kmod_menf21bmc_wdt__290_179_menf21bmc_wdt_init6, !6, !"__initcall__kmod_menf21bmc_wdt__290_179_menf21bmc_wdt_init6", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 179, i32 1}
!7 = !{ptr @__exitcall_menf21bmc_wdt_exit, !6, !"__exitcall_menf21bmc_wdt_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description291, !9, !"__UNIQUE_ID_description291", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 181, i32 1}
!10 = !{ptr @__UNIQUE_ID_author292, !11, !"__UNIQUE_ID_author292", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 182, i32 1}
!12 = !{ptr @__UNIQUE_ID_file293, !13, !"__UNIQUE_ID_file293", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 183, i32 1}
!14 = !{ptr @__UNIQUE_ID_license294, !13, !"__UNIQUE_ID_license294", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias295, !16, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 184, i32 1}
!17 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!18 = !{ptr @nowayout, !19, !"nowayout", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 28, i32 13}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 173, i32 11}
!22 = !{ptr @menf21bmc_wdt, !23, !"menf21bmc_wdt", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 171, i32 32}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 139, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @menf21bmc_wdt_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @menf21bmc_wdt_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 150, i32 3}
!34 = !{ptr @menf21bmc_wdt_probe._entry.6, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @menf21bmc_wdt_probe._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 158, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @menf21bmc_wdt_probe._entry.9, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @menf21bmc_wdt_probe._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @menf21bmc_wdt_ops, !42, !"menf21bmc_wdt_ops", i1 false, i1 false}
!42 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 106, i32 34}
!43 = !{ptr @menf21bmc_wdt_info, !44, !"menf21bmc_wdt_info", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/menf21bmc_wdt.c", i32 101, i32 35}
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
