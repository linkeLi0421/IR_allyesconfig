; ModuleID = '/llk/IR_all_yes/drivers/watchdog/rn5t618_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/rn5t618_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.43 = type { i8, i32 }
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
%struct.rn5t618_wdt = type { %struct.watchdog_device, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_timeout = internal constant [20 x i8] c"rn5t618_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype170 = internal constant [34 x i8] c"rn5t618_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout171 = internal constant [61 x i8] c"rn5t618_wdt.parm=timeout:Initial watchdog timeout in seconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"rn5t618_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype172 = internal constant [35 x i8] c"rn5t618_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout173 = internal constant [78 x i8] c"rn5t618_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_rn5t618_wdt__174_189_rn5t618_wdt_driver_init6 = internal global ptr @rn5t618_wdt_driver_init, section ".initcall6.init", align 4
@rn5t618_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rn5t618_wdt_probe, ptr @rn5t618_wdt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rn5t618_wdt_driver_exit = internal global ptr @rn5t618_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias175 = internal constant [39 x i8] c"rn5t618_wdt.alias=platform:rn5t618-wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [59 x i8] c"rn5t618_wdt.author=Beniamino Galvani <b.galvani@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [48 x i8] c"rn5t618_wdt.description=RN5T618 watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [46 x i8] c"rn5t618_wdt.file=drivers/watchdog/rn5t618_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [27 x i8] c"rn5t618_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rn5t618-wdt\00", [20 x i8] zeroinitializer }, align 32
@rn5t618_wdt_map = internal constant { [4 x %struct.anon.43], [32 x i8] } { [4 x %struct.anon.43] [%struct.anon.43 { i8 0, i32 1 }, %struct.anon.43 { i8 1, i32 8 }, %struct.anon.43 { i8 2, i32 32 }, %struct.anon.43 { i8 3, i32 128 }], [32 x i8] zeroinitializer }, align 32
@rn5t618_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"rn5t618-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@rn5t618_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @rn5t618_wdt_start, ptr @rn5t618_wdt_stop, ptr @rn5t618_wdt_ping, ptr null, ptr @rn5t618_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 17, i32 21 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 16, i32 13 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"rn5t618_wdt_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 181, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 185, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"rn5t618_wdt_map\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 40, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"rn5t618_wdt_info\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 127, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"rn5t618_wdt_ops\00", align 1
@___asan_gen_.20 = private constant [34 x i8] c"../drivers/watchdog/rn5t618_wdt.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 133, i32 34 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__UNIQUE_ID_nowayout173, ptr @__UNIQUE_ID_nowayouttype172, ptr @__UNIQUE_ID_timeout171, ptr @__UNIQUE_ID_timeouttype170, ptr @__exitcall_rn5t618_wdt_driver_exit, ptr @__initcall__kmod_rn5t618_wdt__174_189_rn5t618_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_timeout, ptr @rn5t618_wdt_driver_exit, ptr @timeout, ptr @nowayout, ptr @rn5t618_wdt_driver, ptr @.str, ptr @rn5t618_wdt_map, ptr @rn5t618_wdt_info, ptr @rn5t618_wdt_ops], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_wdt_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rn5t618_wdt_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rn5t618_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @rn5t618_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 112, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %rn5t6183 = getelementptr inbounds %struct.rn5t618_wdt, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %rn5t6183 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %rn5t6183, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rn5t618_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rn5t618_wdt_ops, ptr %ops, align 4
  %min_timeout6 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %min_timeout6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %min_timeout6, align 4
  %max_timeout8 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %max_timeout8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 128, ptr %max_timeout8, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 128, ptr %timeout, align 4
  %parent11 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %parent11, align 4
  %driver_data.i41 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %11 = ptrtoint ptr %driver_data.i41 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i41, align 4
  %12 = load i32, ptr @timeout, align 4
  %call14 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef %12, ptr noundef %dev1) #4
  %13 = load i8, ptr @nowayout, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  br i1 %tobool16.not, label %if.end.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end.watchdog_set_nowayout.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #4
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end.watchdog_set_nowayout.exit_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call18 = tail call i32 @watchdog_register_device(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %watchdog_set_nowayout.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %watchdog_set_nowayout.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @watchdog_unregister_device(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_start(ptr nocapture noundef %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1.not.i = icmp ugt i32 %3, 2
  br i1 %cmp1.not.i, label %for.inc.i, label %entry.if.end4.i_crit_edge

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp1.not.1.i = icmp ugt i32 %3, 9
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end4.i_crit_edge

for.inc.i.if.end4.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %3)
  %cmp1.not.2.i = icmp ugt i32 %3, 33
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end4.i_crit_edge

for.inc.1.i.if.end4.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %3)
  %cmp1.not.3.i = icmp ugt i32 %3, 129
  br i1 %cmp1.not.3.i, label %for.inc.2.i.cleanup_crit_edge, label %for.inc.2.i.if.end4.i_crit_edge

for.inc.2.i.if.end4.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

for.inc.2.i.cleanup_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %for.inc.2.i.if.end4.i_crit_edge, %for.inc.1.i.if.end4.i_crit_edge, %for.inc.i.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  %i.023.lcssa.i = phi i32 [ 0, %entry.if.end4.i_crit_edge ], [ 1, %for.inc.i.if.end4.i_crit_edge ], [ 2, %for.inc.1.i.if.end4.i_crit_edge ], [ 3, %for.inc.2.i.if.end4.i_crit_edge ]
  %rn5t618.i = getelementptr inbounds %struct.rn5t618_wdt, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %rn5t618.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rn5t618.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx5.i = getelementptr [4 x %struct.anon.43], ptr @rn5t618_wdt_map, i32 0, i32 %i.023.lcssa.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.i, align 4
  %conv.i = zext i8 %9 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 11, i32 noundef 3, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %time9.i = getelementptr [4 x %struct.anon.43], ptr @rn5t618_wdt_map, i32 0, i32 %i.023.lcssa.i, i32 1
  %10 = ptrtoint ptr %time9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %time9.i, align 4
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %timeout, align 4
  %13 = ptrtoint ptr %rn5t618.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rn5t618.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 15, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %17 = ptrtoint ptr %rn5t618.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rn5t618.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 11, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool9.not = icmp eq i32 %call.i25, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %rn5t618.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rn5t618.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 18, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %for.inc.2.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i26, %if.end11 ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i25, %if.end5.cleanup_crit_edge ], [ -22, %for.inc.2.i.cleanup_crit_edge ], [ %call.i.i, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_stop(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rn5t618 = getelementptr inbounds %struct.rn5t618_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rn5t618, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 11, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_ping(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !48
  %rn5t618 = getelementptr inbounds %struct.rn5t618_wdt, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rn5t618, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 11, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rn5t618, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %call4 = call i32 @regmap_write(ptr noundef %10, i32 noundef 11, i32 noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rn5t618, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 19, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end7 ], [ %call1, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_set_timeout(ptr nocapture noundef %wdt_dev, i32 noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %t)
  %cmp1.not = icmp ugt i32 %t, 2
  br i1 %cmp1.not, label %for.inc, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %t)
  %cmp1.not.1 = icmp ugt i32 %t, 9
  br i1 %cmp1.not.1, label %for.inc.1, label %for.inc.if.end4_crit_edge

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %t)
  %cmp1.not.2 = icmp ugt i32 %t, 33
  br i1 %cmp1.not.2, label %for.inc.2, label %for.inc.1.if.end4_crit_edge

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %t)
  %cmp1.not.3 = icmp ugt i32 %t, 129
  br i1 %cmp1.not.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.2.if.end4_crit_edge

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i.023.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ]
  %rn5t618 = getelementptr inbounds %struct.rn5t618_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rn5t618, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx5 = getelementptr [4 x %struct.anon.43], ptr @rn5t618_wdt_map, i32 0, i32 %i.023.lcssa
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 4
  %conv = zext i8 %7 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 11, i32 noundef 3, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %time9 = getelementptr [4 x %struct.anon.43], ptr @rn5t618_wdt_map, i32 0, i32 %i.023.lcssa, i32 1
  %8 = ptrtoint ptr %time9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %time9, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %10 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %timeout, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %call.i, %if.end4.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__param_timeout, !1, !"__param_timeout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_timeouttype170, !1, !"__UNIQUE_ID_timeouttype170", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_timeout171, !4, !"__UNIQUE_ID_timeout171", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 20, i32 1}
!5 = !{ptr @__param_nowayout, !6, !"__param_nowayout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 22, i32 1}
!7 = !{ptr @__UNIQUE_ID_nowayouttype172, !6, !"__UNIQUE_ID_nowayouttype172", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nowayout173, !9, !"__UNIQUE_ID_nowayout173", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 23, i32 1}
!10 = !{ptr @__initcall__kmod_rn5t618_wdt__174_189_rn5t618_wdt_driver_init6, !11, !"__initcall__kmod_rn5t618_wdt__174_189_rn5t618_wdt_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 189, i32 1}
!12 = !{ptr @__exitcall_rn5t618_wdt_driver_exit, !11, !"__exitcall_rn5t618_wdt_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias175, !14, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 191, i32 1}
!15 = !{ptr @__UNIQUE_ID_author176, !16, !"__UNIQUE_ID_author176", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 192, i32 1}
!17 = !{ptr @__UNIQUE_ID_description177, !18, !"__UNIQUE_ID_description177", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 193, i32 1}
!19 = !{ptr @__UNIQUE_ID_file178, !20, !"__UNIQUE_ID_file178", i1 false, i1 false}
!20 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 194, i32 1}
!21 = !{ptr @__UNIQUE_ID_license179, !20, !"__UNIQUE_ID_license179", i1 false, i1 false}
!22 = !{ptr @timeout, !23, !"timeout", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 17, i32 21}
!24 = !{ptr @__param_str_timeout, !1, !"__param_str_timeout", i1 false, i1 false}
!25 = !{ptr @__param_str_nowayout, !6, !"__param_str_nowayout", i1 false, i1 false}
!26 = !{ptr @nowayout, !27, !"nowayout", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 16, i32 13}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 185, i32 11}
!30 = !{ptr @rn5t618_wdt_driver, !31, !"rn5t618_wdt_driver", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 181, i32 31}
!32 = !{ptr @rn5t618_wdt_map, !33, !"rn5t618_wdt_map", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 40, i32 3}
!34 = !{ptr @rn5t618_wdt_info, !35, !"rn5t618_wdt_info", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 127, i32 35}
!36 = !{ptr @rn5t618_wdt_ops, !37, !"rn5t618_wdt_ops", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/rn5t618_wdt.c", i32 133, i32 34}
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
!48 = !{!"auto-init"}
