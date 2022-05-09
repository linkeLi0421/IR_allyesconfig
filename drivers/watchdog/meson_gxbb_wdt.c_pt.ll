; ModuleID = '/llk/IR_all_yes/drivers/watchdog/meson_gxbb_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/meson_gxbb_wdt.c"
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
%struct.meson_gxbb_wdt = type { ptr, %struct.watchdog_device, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_nowayout = internal constant [24 x i8] c"meson_gxbb_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype183 = internal constant [38 x i8] c"meson_gxbb_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout184 = internal constant [80 x i8] c"meson_gxbb_wdt.parm=nowayout:Watchdog cannot be stopped once started default=1)\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [23 x i8] c"meson_gxbb_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype185 = internal constant [37 x i8] c"meson_gxbb_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout186 = internal constant [62 x i8] c"meson_gxbb_wdt.parm=timeout:Watchdog heartbeat in seconds=30)\00", section ".modinfo", align 1
@__initcall__kmod_meson_gxbb_wdt__187_213_meson_gxbb_wdt_driver_init6 = internal global ptr @meson_gxbb_wdt_driver_init, section ".initcall6.init", align 4
@meson_gxbb_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_gxbb_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_gxbb_wdt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_gxbb_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_gxbb_wdt_driver_exit = internal global ptr @meson_gxbb_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [63 x i8] c"meson_gxbb_wdt.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [68 x i8] c"meson_gxbb_wdt.description=Amlogic Meson GXBB Watchdog timer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [52 x i8] c"meson_gxbb_wdt.file=drivers/watchdog/meson_gxbb_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [36 x i8] c"meson_gxbb_wdt.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"meson-gxbb-wdt\00", [17 x i8] zeroinitializer }, align 32
@meson_gxbb_wdt_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@meson_gxbb_wdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @meson_gxbb_wdt_suspend, ptr @meson_gxbb_wdt_resume, ptr @meson_gxbb_wdt_suspend, ptr @meson_gxbb_wdt_resume, ptr @meson_gxbb_wdt_suspend, ptr @meson_gxbb_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@meson_gxbb_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Meson GXBB Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@meson_gxbb_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @meson_gxbb_wdt_start, ptr @meson_gxbb_wdt_stop, ptr @meson_gxbb_wdt_ping, ptr null, ptr @meson_gxbb_wdt_set_timeout, ptr null, ptr @meson_gxbb_wdt_get_timeleft, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 32, i32 13 }
@___asan_gen_.4 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 37, i32 21 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"meson_gxbb_wdt_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 204, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 207, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"meson_gxbb_wdt_dt_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 143, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"meson_gxbb_wdt_pm_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 139, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"meson_gxbb_wdt_info\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 114, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"meson_gxbb_wdt_ops\00", align 1
@___asan_gen_.23 = private constant [37 x i8] c"../drivers/watchdog/meson_gxbb_wdt.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 106, i32 34 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__UNIQUE_ID_nowayout184, ptr @__UNIQUE_ID_nowayouttype183, ptr @__UNIQUE_ID_timeout186, ptr @__UNIQUE_ID_timeouttype185, ptr @__exitcall_meson_gxbb_wdt_driver_exit, ptr @__initcall__kmod_meson_gxbb_wdt__187_213_meson_gxbb_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_timeout, ptr @meson_gxbb_wdt_driver_exit, ptr @nowayout, ptr @timeout, ptr @meson_gxbb_wdt_driver, ptr @.str, ptr @meson_gxbb_wdt_dt_ids, ptr @meson_gxbb_wdt_pm_ops, ptr @meson_gxbb_wdt_info, ptr @meson_gxbb_wdt_ops], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gxbb_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gxbb_wdt_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gxbb_wdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gxbb_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gxbb_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxbb_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_gxbb_wdt_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_gxbb_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_gxbb_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxbb_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #4
  %clk = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %clk, align 4
  %cmp.i83 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call.i84 = tail call i32 @clk_prepare(ptr noundef %call9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %call1.i = tail call i32 @clk_enable(ptr noundef %call9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end20, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call9) #4
  br label %cleanup

if.end20:                                         ; preds = %if.end.i
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i85 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @meson_clk_disable_unprepare, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %tobool.not.i86, label %if.end25, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %wdt_dev = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %call.i, i32 0, i32 1
  %parent = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %call.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %parent, align 4
  %info = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %call.i, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @meson_gxbb_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %call.i, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @meson_gxbb_wdt_ops, ptr %ops, align 4
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %call.i, i32 0, i32 1, i32 12
  %10 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65535, ptr %max_hw_heartbeat_ms, align 4
  %min_timeout = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %call.i, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %min_timeout, align 4
  %timeout = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %call.i, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30, ptr %timeout, align 4
  %13 = load i32, ptr @timeout, align 4
  %call32 = tail call i32 @watchdog_init_timeout(ptr noundef %wdt_dev, i32 noundef %13, ptr noundef %dev1) #4
  %14 = load i8, ptr @nowayout, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool34.not = icmp eq i8 %14, 0
  br i1 %tobool34.not, label %if.end25.watchdog_set_nowayout.exit_crit_edge, label %if.then.i88

if.end25.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %watchdog_set_nowayout.exit

if.then.i88:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %status.i = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %call.i, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #4
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i88, %if.end25.watchdog_set_nowayout.exit_crit_edge
  %driver_data.i = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %call.i, i32 0, i32 1, i32 16
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %call37 = tail call i32 @clk_get_rate(ptr noundef %17) #4
  %div = udiv i32 %call37, 1000
  %and = and i32 %div, 262143
  %or39 = or i32 %and, 52428800
  %18 = tail call i32 @llvm.bswap.i32(i32 %or39)
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !49
  %21 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %timeout, align 4
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i, align 4
  %mul.i = mul i32 %22, 1000
  %25 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 65535) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %24, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #4
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #4, !srcloc !49
  %call46 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef %wdt_dev) #4
  br label %cleanup

cleanup:                                          ; preds = %watchdog_set_nowayout.exit, %devm_add_action_or_reset.exit, %if.then3.i, %if.end15.cleanup_crit_edge, %if.then12, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %3, %if.then12 ], [ %call46, %watchdog_set_nowayout.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call.i85, %devm_add_action_or_reset.exit ], [ %call1.i, %if.then3.i ], [ %call.i84, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #4
  tail call void @clk_unprepare(ptr noundef %data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxbb_wdt_set_timeout(ptr nocapture noundef %wdt_dev, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mul = mul i32 %timeout, 1000
  %2 = tail call i32 @llvm.umin.i32(i32 %mul, i32 65535)
  %timeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %3 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %timeout, ptr %timeout1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %2)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #4, !srcloc !49
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
define internal i32 @meson_gxbb_wdt_start(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  %5 = or i32 %4, 1024
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #4, !srcloc !49
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxbb_wdt_stop(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %5 = and i32 %4, -1025
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #4, !srcloc !49
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxbb_wdt_ping(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !49
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxbb_wdt_get_timeleft(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !53
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %and = and i32 %5, 65535
  %shr = lshr i32 %5, 16
  %sub = sub nsw i32 %and, %shr
  %div = udiv i32 %sub, 1000
  ret i32 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxbb_wdt_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %1, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %1, i32 0, i32 1, i32 16
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %9 = and i32 %8, -1025
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxbb_wdt_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %1, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.meson_gxbb_wdt, ptr %1, i32 0, i32 1, i32 16
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  %9 = or i32 %8, 1024
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype183, !1, !"__UNIQUE_ID_nowayouttype183", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout184, !4, !"__UNIQUE_ID_nowayout184", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 34, i32 1}
!5 = !{ptr @__param_timeout, !6, !"__param_timeout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 38, i32 1}
!7 = !{ptr @__UNIQUE_ID_timeouttype185, !6, !"__UNIQUE_ID_timeouttype185", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_timeout186, !9, !"__UNIQUE_ID_timeout186", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 39, i32 1}
!10 = !{ptr @__initcall__kmod_meson_gxbb_wdt__187_213_meson_gxbb_wdt_driver_init6, !11, !"__initcall__kmod_meson_gxbb_wdt__187_213_meson_gxbb_wdt_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 213, i32 1}
!12 = !{ptr @__exitcall_meson_gxbb_wdt_driver_exit, !11, !"__exitcall_meson_gxbb_wdt_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author188, !14, !"__UNIQUE_ID_author188", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 215, i32 1}
!15 = !{ptr @__UNIQUE_ID_description189, !16, !"__UNIQUE_ID_description189", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 216, i32 1}
!17 = !{ptr @__UNIQUE_ID_file190, !18, !"__UNIQUE_ID_file190", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 217, i32 1}
!19 = !{ptr @__UNIQUE_ID_license191, !18, !"__UNIQUE_ID_license191", i1 false, i1 false}
!20 = !{ptr @timeout, !21, !"timeout", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 37, i32 21}
!22 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!23 = !{ptr @nowayout, !24, !"nowayout", i1 false, i1 false}
!24 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 32, i32 13}
!25 = !{ptr @__param_str_timeout, !6, !"__param_str_timeout", i1 false, i1 false}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 207, i32 11}
!28 = !{ptr @meson_gxbb_wdt_driver, !29, !"meson_gxbb_wdt_driver", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 204, i32 31}
!30 = !{ptr @meson_gxbb_wdt_info, !31, !"meson_gxbb_wdt_info", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 114, i32 35}
!32 = !{ptr @meson_gxbb_wdt_ops, !33, !"meson_gxbb_wdt_ops", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 106, i32 34}
!34 = !{ptr @meson_gxbb_wdt_dt_ids, !35, !"meson_gxbb_wdt_dt_ids", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 143, i32 34}
!36 = !{ptr @meson_gxbb_wdt_pm_ops, !37, !"meson_gxbb_wdt_pm_ops", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/meson_gxbb_wdt.c", i32 139, i32 32}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
!48 = !{i64 2152923917}
!49 = !{i64 2032775}
!50 = !{i64 2152916996}
!51 = !{i64 2152917570}
!52 = !{i64 2152913660}
!53 = !{i64 2033193}
!54 = !{i64 2152914629}
!55 = !{i64 2152915759}
!56 = !{i64 2152916732}
!57 = !{i64 2152918253}
