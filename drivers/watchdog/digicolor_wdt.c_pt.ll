; ModuleID = '/llk/IR_all_yes/drivers/watchdog/digicolor_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/digicolor_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dc_wdt = type { ptr, ptr, %struct.spinlock }

@__param_str_timeout = internal constant [22 x i8] c"digicolor_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype170 = internal constant [36 x i8] c"digicolor_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout171 = internal constant [55 x i8] c"digicolor_wdt.parm=timeout:Watchdog timeout in seconds\00", section ".modinfo", align 1
@__initcall__kmod_digicolor_wdt__172_159_dc_wdt_driver_init6 = internal global ptr @dc_wdt_driver_init, section ".initcall6.init", align 4
@dc_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dc_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dc_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dc_wdt_driver_exit = internal global ptr @dc_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [54 x i8] c"digicolor_wdt.author=Baruch Siach <baruch@tkos.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [71 x i8] c"digicolor_wdt.description=Driver for Conexant Digicolor watchdog timer\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [50 x i8] c"digicolor_wdt.file=drivers/watchdog/digicolor_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [26 x i8] c"digicolor_wdt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"digicolor-wdt\00", [18 x i8] zeroinitializer }, align 32
@dc_wdt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cnxt,cx92755-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dc_wdt_wdd = internal global { %struct.watchdog_device, [52 x i8] } { %struct.watchdog_device { i32 0, ptr null, ptr null, ptr @dc_wdt_info, ptr @dc_wdt_ops, ptr null, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@dc_wdt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&wdt->lock\00", [21 x i8] zeroinitializer }, align 32
@dc_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Conexant Digicolor Watchdog\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@dc_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @dc_wdt_start, ptr @dc_wdt_stop, ptr null, ptr null, ptr @dc_wdt_set_timeout, ptr null, ptr @dc_wdt_get_timeleft, ptr @dc_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 30, i32 17 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"dc_wdt_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 152, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 155, i32 12 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"dc_wdt_of_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 146, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"dc_wdt_wdd\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 111, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 137, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"dc_wdt_info\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 105, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"dc_wdt_ops\00", align 1
@___asan_gen_.27 = private constant [36 x i8] c"../drivers/watchdog/digicolor_wdt.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 96, i32 34 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__UNIQUE_ID_timeout171, ptr @__UNIQUE_ID_timeouttype170, ptr @__exitcall_dc_wdt_driver_exit, ptr @__initcall__kmod_digicolor_wdt__172_159_dc_wdt_driver_init6, ptr @__param_timeout, ptr @dc_wdt_driver_exit, ptr @timeout, ptr @dc_wdt_driver, ptr @.str, ptr @dc_wdt_of_match, ptr @dc_wdt_wdd, ptr @dc_wdt_probe.__key, ptr @.str.1, ptr @dc_wdt_info, ptr @dc_wdt_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_wdt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_wdt_wdd to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_wdt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dc_wdt_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dc_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @dc_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 52, i32 noundef 3520) #4
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
  %clk = getelementptr inbounds %struct.dc_wdt, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %clk, align 4
  %cmp.i36 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = tail call i32 @clk_get_rate(ptr noundef %call9) #4
  %div = udiv i32 -1, %call17
  store i32 %div, ptr getelementptr inbounds (%struct.watchdog_device, ptr @dc_wdt_wdd, i32 0, i32 10), align 4
  store i32 %div, ptr getelementptr inbounds (%struct.watchdog_device, ptr @dc_wdt_wdd, i32 0, i32 7), align 4
  store ptr %dev1, ptr getelementptr inbounds (%struct.watchdog_device, ptr @dc_wdt_wdd, i32 0, i32 1), align 4
  %lock = getelementptr inbounds %struct.dc_wdt, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @dc_wdt_probe.__key, i16 noundef signext 3) #4
  store ptr %call.i, ptr getelementptr inbounds (%struct.watchdog_device, ptr @dc_wdt_wdd, i32 0, i32 16), align 4
  tail call void @watchdog_set_restart_priority(ptr noundef nonnull @dc_wdt_wdd, i32 noundef 128) #4
  %4 = load i32, ptr @timeout, align 4
  %call19 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull @dc_wdt_wdd, i32 noundef %4, ptr noundef %dev1) #4
  tail call void @_set_bit(i32 noundef 2, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @dc_wdt_wdd, i32 0, i32 18)) #4
  %call20 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull @dc_wdt_wdd) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then12, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %3, %if.then12 ], [ %call20, %if.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_wdt_start(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  %clk = getelementptr inbounds %struct.dc_wdt, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %5) #4
  %mul = mul i32 %call1, %3
  %lock.i = getelementptr inbounds %struct.dc_wdt, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #4, !srcloc !42
  %8 = tail call i32 @llvm.bswap.i32(i32 %mul) #4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %8) #4, !srcloc !42
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 50331648) #4, !srcloc !42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_wdt_stop(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #4, !srcloc !42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_wdt_set_timeout(ptr nocapture noundef %wdog, i32 noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.dc_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %3) #4
  %mul = mul i32 %call1, %t
  %lock.i = getelementptr inbounds %struct.dc_wdt, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #4, !srcloc !42
  %6 = tail call i32 @llvm.bswap.i32(i32 %mul) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %6) #4, !srcloc !42
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 50331648) #4, !srcloc !42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %t, ptr %timeout, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_wdt_get_timeleft(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !43
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %clk = getelementptr inbounds %struct.dc_wdt, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_get_rate(ptr noundef %7) #4
  %div = udiv i32 %5, %call2
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_wdt_restart(ptr nocapture noundef readonly %wdog, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.dc_wdt, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #4, !srcloc !42
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 16777216) #4, !srcloc !42
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 50331648) #4, !srcloc !42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.01 = phi i32 [ 500, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.01, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__param_timeout, !1, !"__param_timeout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_timeouttype170, !1, !"__UNIQUE_ID_timeouttype170", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_timeout171, !4, !"__UNIQUE_ID_timeout171", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 32, i32 1}
!5 = !{ptr @__initcall__kmod_digicolor_wdt__172_159_dc_wdt_driver_init6, !6, !"__initcall__kmod_digicolor_wdt__172_159_dc_wdt_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 159, i32 1}
!7 = !{ptr @__exitcall_dc_wdt_driver_exit, !6, !"__exitcall_dc_wdt_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author173, !9, !"__UNIQUE_ID_author173", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 161, i32 1}
!10 = !{ptr @__UNIQUE_ID_description174, !11, !"__UNIQUE_ID_description174", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 162, i32 1}
!12 = !{ptr @__UNIQUE_ID_file175, !13, !"__UNIQUE_ID_file175", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 163, i32 1}
!14 = !{ptr @__UNIQUE_ID_license176, !13, !"__UNIQUE_ID_license176", i1 false, i1 false}
!15 = !{ptr @timeout, !16, !"timeout", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 30, i32 17}
!17 = !{ptr @__param_str_timeout, !1, !"__param_str_timeout", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 155, i32 12}
!20 = !{ptr @dc_wdt_driver, !21, !"dc_wdt_driver", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 152, i32 31}
!22 = !{ptr @dc_wdt_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 137, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dc_wdt_wdd, !26, !"dc_wdt_wdd", i1 false, i1 false}
!26 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 111, i32 31}
!27 = !{ptr @dc_wdt_info, !28, !"dc_wdt_info", i1 false, i1 false}
!28 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 105, i32 35}
!29 = !{ptr @dc_wdt_ops, !30, !"dc_wdt_ops", i1 false, i1 false}
!30 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 96, i32 34}
!31 = !{ptr @dc_wdt_of_match, !32, !"dc_wdt_of_match", i1 false, i1 false}
!32 = !{!"../drivers/watchdog/digicolor_wdt.c", i32 146, i32 34}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 4037594}
!43 = !{i64 4038012}
