; ModuleID = '/llk/IR_all_yes/drivers/watchdog/msc313e_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/msc313e_wdt.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.msc313e_wdt_priv = type { ptr, %struct.watchdog_device, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_timeout = internal constant [20 x i8] c"msc313e_wdt.timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype170 = internal constant [33 x i8] c"msc313e_wdt.parmtype=timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout171 = internal constant [53 x i8] c"msc313e_wdt.parm=timeout:Watchdog timeout in seconds\00", section ".modinfo", align 1
@__initcall__kmod_msc313e_wdt__172_166_msc313e_wdt_driver_init6 = internal global ptr @msc313e_wdt_driver_init, section ".initcall6.init", align 4
@msc313e_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @msc313e_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msc313e_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msc313e_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_msc313e_wdt_driver_exit = internal global ptr @msc313e_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [52 x i8] c"msc313e_wdt.author=Daniel Palmer <daniel@thingy.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [58 x i8] c"msc313e_wdt.description=Watchdog driver for MStar MSC313e\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [46 x i8] c"msc313e_wdt.file=drivers/watchdog/msc313e_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [27 x i8] c"msc313e_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msc313e-wdt\00", [20 x i8] zeroinitializer }, align 32
@msc313e_wdt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mstar,msc313e-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@msc313e_wdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @msc313e_wdt_suspend, ptr @msc313e_wdt_resume, ptr @msc313e_wdt_suspend, ptr @msc313e_wdt_resume, ptr @msc313e_wdt_suspend, ptr @msc313e_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@msc313e_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No input clock\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msc313e_wdt_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/msc313e_wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msc313e_wdt_probe._entry_ptr = internal global ptr @msc313e_wdt_probe._entry, section ".printk_index", align 4
@msc313e_wdt_ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"MSC313e watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@msc313e_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @msc313e_wdt_start, ptr @msc313e_wdt_stop, ptr @msc313e_wdt_ping, ptr null, ptr @msc313e_wdt_settimeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 24, i32 21 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"msc313e_wdt_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 158, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 160, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"msc313e_wdt_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 91, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"msc313e_wdt_pm_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 156, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 112, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"msc313e_wdt_ident\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 78, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"msc313e_wdt_ops\00", align 1
@___asan_gen_.43 = private constant [34 x i8] c"../drivers/watchdog/msc313e_wdt.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 83, i32 34 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__UNIQUE_ID_timeout171, ptr @__UNIQUE_ID_timeouttype170, ptr @__exitcall_msc313e_wdt_driver_exit, ptr @__initcall__kmod_msc313e_wdt__172_166_msc313e_wdt_driver_init6, ptr @__param_timeout, ptr @msc313e_wdt_driver_exit, ptr @msc313e_wdt_probe._entry, ptr @msc313e_wdt_probe._entry_ptr, ptr @timeout, ptr @msc313e_wdt_driver, ptr @.str, ptr @msc313e_wdt_of_match, ptr @msc313e_wdt_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @msc313e_wdt_ident, ptr @msc313e_wdt_ops], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313e_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313e_wdt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313e_wdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313e_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313e_wdt_ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313e_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @msc313e_wdt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msc313e_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @msc313e_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %clk, align 4
  %cmp.i75 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %wdev = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %call.i, i32 0, i32 1
  %info = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %call.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @msc313e_wdt_ident, ptr %info, align 4
  %ops = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %call.i, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @msc313e_wdt_ops, ptr %ops, align 4
  %parent = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %call.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %parent, align 4
  %min_timeout = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %call.i, i32 0, i32 1, i32 9
  %9 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %min_timeout, align 4
  %call21 = tail call i32 @clk_get_rate(ptr noundef %call10) #5
  %div = udiv i32 -1, %call21
  %max_timeout = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %call.i, i32 0, i32 1, i32 10
  %10 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %max_timeout, align 4
  %timeout = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %call.i, i32 0, i32 1, i32 7
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 30, ptr %timeout, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 16
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %add.ptr30 = getelementptr i8, ptr %13, i32 20
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr30) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %16 = zext i16 %15 to i32
  %17 = zext i16 %14 to i32
  %18 = shl nuw i32 %17, 16
  %19 = or i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool35.not = icmp eq i32 %19, 0
  br i1 %tobool35.not, label %if.end16.if.end38_crit_edge, label %if.then36

if.end16.if.end38_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then36:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %call.i, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end16.if.end38_crit_edge
  %driver_data.i = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %call.i, i32 0, i32 1, i32 16
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i, align 4
  %21 = load i32, ptr @timeout, align 4
  %call41 = tail call i32 @watchdog_init_timeout(ptr noundef %wdev, i32 noundef %21, ptr noundef %dev1) #5
  %status.i = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %call.i, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i) #5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %status.i) #5
  %call45 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef %wdev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %5, %do.end ], [ %call45, %if.end38 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_wdt_start(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %timeout2 = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 7
  %4 = ptrtoint ptr %timeout2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout2, align 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %7) #5
  %mul = mul i32 %call4, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %mul to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %8) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %shr = lshr i32 %mul, 16
  %conv9 = trunc i32 %shr to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 %11) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 256) #5, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_wdt_stop(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 0) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 0) #5, !srcloc !51
  %clk = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_wdt_ping(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 256) #5, !srcloc !51
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_wdt_settimeout(ptr nocapture noundef %wdev, i32 noundef %new_time) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_time, ptr %timeout, align 4
  %call = tail call i32 @msc313e_wdt_start(ptr noundef %wdev)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_wdt_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %1, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %1, i32 0, i32 1, i32 16
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %add.ptr5.i = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 0) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 0) #5, !srcloc !51
  %clk.i = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  tail call void @clk_unprepare(ptr noundef %13) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_wdt_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %1, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wdev = getelementptr inbounds %struct.msc313e_wdt_priv, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @msc313e_wdt_start(ptr noundef %wdev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__param_timeout, !1, !"__param_timeout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_timeouttype170, !1, !"__UNIQUE_ID_timeouttype170", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_timeout171, !4, !"__UNIQUE_ID_timeout171", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 27, i32 1}
!5 = !{ptr @__initcall__kmod_msc313e_wdt__172_166_msc313e_wdt_driver_init6, !6, !"__initcall__kmod_msc313e_wdt__172_166_msc313e_wdt_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 166, i32 1}
!7 = !{ptr @__exitcall_msc313e_wdt_driver_exit, !6, !"__exitcall_msc313e_wdt_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author173, !9, !"__UNIQUE_ID_author173", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 168, i32 1}
!10 = !{ptr @__UNIQUE_ID_description174, !11, !"__UNIQUE_ID_description174", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 169, i32 1}
!12 = !{ptr @__UNIQUE_ID_file175, !13, !"__UNIQUE_ID_file175", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 170, i32 1}
!14 = !{ptr @__UNIQUE_ID_license176, !13, !"__UNIQUE_ID_license176", i1 false, i1 false}
!15 = !{ptr @timeout, !16, !"timeout", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 24, i32 21}
!17 = !{ptr @__param_str_timeout, !1, !"__param_str_timeout", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 160, i32 11}
!20 = !{ptr @msc313e_wdt_driver, !21, !"msc313e_wdt_driver", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 158, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 112, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @msc313e_wdt_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @msc313e_wdt_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @msc313e_wdt_ident, !31, !"msc313e_wdt_ident", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 78, i32 35}
!32 = !{ptr @msc313e_wdt_ops, !33, !"msc313e_wdt_ops", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 83, i32 34}
!34 = !{ptr @msc313e_wdt_of_match, !35, !"msc313e_wdt_of_match", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 91, i32 34}
!36 = !{ptr @msc313e_wdt_pm_ops, !37, !"msc313e_wdt_pm_ops", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/msc313e_wdt.c", i32 156, i32 8}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2030918}
!48 = !{i64 2152438505}
!49 = !{i64 2152438996}
!50 = !{i64 2152433635}
!51 = !{i64 2030718}
!52 = !{i64 2152434089}
!53 = !{i64 2152434542}
!54 = !{i64 2152435310}
!55 = !{i64 2152435696}
!56 = !{i64 2152436080}
!57 = !{i64 2152434925}
