; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dw_hdmi_cec_data = type { ptr, ptr, i32 }
%struct.dw_hdmi_cec = type { ptr, ptr, i32, ptr, %struct.cec_msg, i32, i8, i8, ptr, i32 }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.73 }
%union.anon.73 = type { [16 x i32] }
%struct.dw_hdmi_cec_ops = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_dw_hdmi_cec__232_316_dw_hdmi_cec_driver_init6 = internal global ptr @dw_hdmi_cec_driver_init, section ".initcall6.init", align 4
@dw_hdmi_cec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_hdmi_cec_probe, ptr @dw_hdmi_cec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_hdmi_cec_driver_exit = internal global ptr @dw_hdmi_cec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [61 x i8] c"dw_hdmi_cec.author=Russell King <rmk+kernel@armlinux.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [69 x i8] c"dw_hdmi_cec.description=Synopsys Designware HDMI CEC driver for i.MX\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [61 x i8] c"dw_hdmi_cec.file=drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [24 x i8] c"dw_hdmi_cec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias237 = internal constant [39 x i8] c"dw_hdmi_cec.alias=platform:dw-hdmi-cec\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dw-hdmi-cec\00", [20 x i8] zeroinitializer }, align 32
@dw_hdmi_cec_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @dw_hdmi_cec_enable, ptr null, ptr null, ptr @dw_hdmi_cec_log_addr, ptr @dw_hdmi_cec_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dw_hdmi\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"dw_hdmi_cec_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 309, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 313, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"dw_hdmi_cec_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 216, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [49 x i8] c"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 258, i32 58 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_dw_hdmi_cec_driver_exit, ptr @__initcall__kmod_dw_hdmi_cec__232_316_dw_hdmi_cec_driver_init6, ptr @dw_hdmi_cec_driver_exit, ptr @dw_hdmi_cec_driver, ptr @.str, ptr @dw_hdmi_cec_ops, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_cec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_cec_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_cec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_hdmi_cec_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_cec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_hdmi_cec_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_cec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.dw_hdmi_cec_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq6 = getelementptr inbounds %struct.dw_hdmi_cec, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %irq6, align 4
  %ops = getelementptr inbounds %struct.dw_hdmi_cec_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %ops7 = getelementptr inbounds %struct.dw_hdmi_cec, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ops7, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %6, align 4
  tail call void %13(ptr noundef %9, i8 noundef zeroext 0, i32 noundef 32007) #4
  %14 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops7, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  tail call void %17(ptr noundef %19, i8 noundef zeroext -1, i32 noundef 32002) #4
  %20 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops7, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 8
  tail call void %23(ptr noundef %25, i8 noundef zeroext -1, i32 noundef 390) #4
  %26 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops7, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 8
  tail call void %29(ptr noundef %31, i8 noundef zeroext 0, i32 noundef 32003) #4
  %call9 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @dw_hdmi_cec_ops, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, i32 noundef 286, i8 noundef zeroext 4) #4
  %adap = getelementptr inbounds %struct.dw_hdmi_cec, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9, ptr %adap, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %34 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %call9, align 8
  %call.i88 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @dw_hdmi_cec_del, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i, label %if.end21, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adap, align 4
  tail call void @cec_delete_adapter(ptr noundef %36) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %37 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq6, align 4
  %39 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adap, align 4
  %call25 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %38, ptr noundef nonnull @dw_hdmi_cec_hardirq, ptr noundef nonnull @dw_hdmi_cec_thread, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent, align 8
  %43 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adap, align 4
  %call30 = tail call ptr @cec_notifier_cec_adap_register(ptr noundef %42, ptr noundef null, ptr noundef %44) #4
  %notify = getelementptr inbounds %struct.dw_hdmi_cec, ptr %call.i, i32 0, i32 8
  %45 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call30, ptr %notify, align 8
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %if.end27.cleanup_crit_edge, label %if.end34

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %46 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adap, align 4
  %48 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent, align 8
  %call38 = tail call i32 @cec_register_adapter(ptr noundef %47, ptr noundef %49) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %notify, align 8
  %52 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adap, align 4
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %51, ptr noundef %53) #4
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devm_remove_action(ptr noundef %dev, ptr noundef nonnull @dw_hdmi_cec_del, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then40, %if.end27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %if.then12 ], [ %call38, %if.then40 ], [ 0, %if.end43 ], [ -6, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i88, %devm_add_action_or_reset.exit ], [ %call25, %if.end21.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_cec_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notify = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify, align 8
  %adap = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 4
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %3, ptr noundef %5) #4
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 4
  tail call void @cec_unregister_adapter(ptr noundef %7) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_cec_del(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.dw_hdmi_cec, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 4
  tail call void @cec_delete_adapter(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_cec_hardirq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %data, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ops.i = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.dw_hdmi_cec_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call zeroext i8 %5(ptr noundef %7, i32 noundef 262) #4
  %conv = zext i8 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp = icmp eq i8 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void %11(ptr noundef %13, i8 noundef zeroext %call.i, i32 noundef 262) #4
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end18.sink.split_crit_edge

if.end.if.end18.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.sink.split

if.else:                                          ; preds = %if.end
  %and5 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else10, label %if.else.if.end18.sink.split_crit_edge

if.else.if.end18.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.sink.split

if.else10:                                        ; preds = %if.else
  %and11 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else10.if.end18_crit_edge, label %if.else10.if.end18.sink.split_crit_edge

if.else10.if.end18.sink.split_crit_edge:          ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.sink.split

if.else10.if.end18_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.end18.sink.split:                              ; preds = %if.else10.if.end18.sink.split_crit_edge, %if.else.if.end18.sink.split_crit_edge, %if.end.if.end18.sink.split_crit_edge
  %.sink = phi i32 [ 16, %if.end.if.end18.sink.split_crit_edge ], [ 1, %if.else.if.end18.sink.split_crit_edge ], [ 4, %if.else10.if.end18.sink.split_crit_edge ]
  %tx_status8 = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %tx_status8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %tx_status8, align 8
  %tx_done9 = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %tx_done9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %tx_done9, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else10.if.end18_crit_edge
  %ret.0 = phi i32 [ 1, %if.else10.if.end18_crit_edge ], [ 2, %if.end18.sink.split ]
  %and19 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %read.i65 = getelementptr inbounds %struct.dw_hdmi_cec_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %read.i65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i65, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %call.i66 = tail call zeroext i8 %19(ptr noundef %21, i32 noundef 32008) #4
  %22 = tail call i8 @llvm.umin.i8(i8 %call.i66, i8 16)
  %23 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp2871.not = icmp eq i8 %22, 0
  br i1 %cmp2871.not, label %if.then21.for.end_crit_edge, label %if.then21.for.body_crit_edge

if.then21.for.body_crit_edge:                     ; preds = %if.then21
  br label %for.body

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then21.for.body_crit_edge
  %i.072 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then21.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.072, 32032
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %read.i68 = getelementptr inbounds %struct.dw_hdmi_cec_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %read.i68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read.i68, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %call.i69 = tail call zeroext i8 %27(ptr noundef %29, i32 noundef %add) #4
  %arrayidx = getelementptr %struct.dw_hdmi_cec, ptr %1, i32 0, i32 4, i32 6, i32 %i.072
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call.i69, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, %23
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then21.for.end_crit_edge
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  tail call void %34(ptr noundef %36, i8 noundef zeroext 0, i32 noundef 32048) #4
  %len32 = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 4, i32 2
  %37 = ptrtoint ptr %len32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %23, ptr %len32, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !29
  %rx_done = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %rx_done to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %rx_done, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 2, %for.end ], [ %ret.0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_cec_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %data, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %tx_done = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tx_done to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_done, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %tx_done to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %tx_done, align 4
  %tx_status = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_status, align 8
  %conv = trunc i32 %6 to i8
  %call.i = tail call i64 @ktime_get() #4
  tail call void @cec_transmit_attempt_done_ts(ptr noundef %data, i8 noundef zeroext %conv, i64 noundef %call.i) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_done = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %rx_done to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx_done, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %rx_done to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rx_done, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !31
  %rx_msg = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 4
  %call.i16 = tail call i64 @ktime_get() #4
  tail call void @cec_received_msg_ts(ptr noundef %data, ptr noundef %rx_msg, i64 noundef %call.i16) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_cec_adap_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_cec_adap_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_remove_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_cec_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ops.i26 = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i26, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  br i1 %enable, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %5(ptr noundef %7, i8 noundef zeroext -1, i32 noundef 32002) #4
  %8 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i26, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void %11(ptr noundef %13, i8 noundef zeroext -1, i32 noundef 390) #4
  %14 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i26, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  tail call void %17(ptr noundef %19, i8 noundef zeroext 0, i32 noundef 32003) #4
  %20 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i26, align 4
  %disable = getelementptr inbounds %struct.dw_hdmi_cec_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disable, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  tail call void %23(ptr noundef %25) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %5(ptr noundef %7, i8 noundef zeroext 0, i32 noundef 32000) #4
  %26 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i26, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  tail call void %29(ptr noundef %31, i8 noundef zeroext -1, i32 noundef 262) #4
  %32 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i26, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  tail call void %35(ptr noundef %37, i8 noundef zeroext 0, i32 noundef 32048) #4
  %adap1 = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %adap1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adap1, align 4
  %priv.i.i = getelementptr inbounds %struct.cec_adapter, ptr %39, i32 0, i32 15
  %40 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv.i.i, align 4
  %addresses.i = getelementptr inbounds %struct.dw_hdmi_cec, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %addresses.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %addresses.i, align 8
  %ops.i.i = getelementptr inbounds %struct.dw_hdmi_cec, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %41, align 8
  tail call void %46(ptr noundef %48, i8 noundef zeroext 0, i32 noundef 32005) #4
  %49 = ptrtoint ptr %addresses.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %addresses.i, align 8
  %shr.i = lshr i32 %50, 8
  %conv8.i = trunc i32 %shr.i to i8
  %51 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %41, align 8
  tail call void %54(ptr noundef %56, i8 noundef zeroext %conv8.i, i32 noundef 32006) #4
  %57 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i26, align 4
  %enable4 = getelementptr inbounds %struct.dw_hdmi_cec_ops, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %enable4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %enable4, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  tail call void %60(ptr noundef %62) #4
  %63 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i26, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  tail call void %66(ptr noundef %68, i8 noundef zeroext 23, i32 noundef 32003) #4
  %69 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i26, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 8
  tail call void %72(ptr noundef %74, i8 noundef zeroext -24, i32 noundef 32002) #4
  %75 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i26, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 8
  tail call void %78(ptr noundef %80, i8 noundef zeroext -24, i32 noundef 390) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_cec_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %logical_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %logical_addr)
  %cmp = icmp eq i8 %logical_addr, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %addresses = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %addresses to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %addresses, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %logical_addr to i32
  %shl = shl nuw i32 1, %conv
  %addresses3 = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %addresses3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addresses3, align 8
  %or = or i32 %shl, %4
  %or4 = or i32 %or, 32768
  store i32 %or4, ptr %addresses3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %addresses5 = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %addresses5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addresses5, align 8
  %conv6 = trunc i32 %6 to i8
  %ops.i = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  tail call void %10(ptr noundef %12, i8 noundef zeroext %conv6, i32 noundef 32005) #4
  %13 = ptrtoint ptr %addresses5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addresses5, align 8
  %shr = lshr i32 %14, 8
  %conv8 = trunc i32 %shr to i8
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  tail call void %18(ptr noundef %20, i8 noundef zeroext %conv8, i32 noundef 32006) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_cec_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ops.i = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %i.018
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %add = add i32 %i.018, 32016
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void %9(ptr noundef %11, i8 noundef zeroext %5, i32 noundef %add) #4
  %inc = add nuw i32 %i.018, 1
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 8
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %phi.cast = trunc i32 %13 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %signal_free_time)
  %switch.selectcmp13 = icmp eq i32 %signal_free_time, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %signal_free_time)
  %switch.selectcmp = icmp eq i32 %signal_free_time, 7
  %switch.select = select i1 %switch.selectcmp, i8 5, i8 3
  %switch.select14 = select i1 %switch.selectcmp13, i8 1, i8 %switch.select
  %ops.i15 = getelementptr inbounds %struct.dw_hdmi_cec, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i15, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  tail call void %17(ptr noundef %19, i8 noundef zeroext %.lcssa, i32 noundef 32007) #4
  %20 = ptrtoint ptr %ops.i15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i15, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  tail call void %23(ptr noundef %25, i8 noundef zeroext %switch.select14, i32 noundef 32000) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_dw_hdmi_cec__232_316_dw_hdmi_cec_driver_init6, !1, !"__initcall__kmod_dw_hdmi_cec__232_316_dw_hdmi_cec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c", i32 316, i32 1}
!2 = !{ptr @__exitcall_dw_hdmi_cec_driver_exit, !1, !"__exitcall_dw_hdmi_cec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c", i32 318, i32 1}
!5 = !{ptr @__UNIQUE_ID_description234, !6, !"__UNIQUE_ID_description234", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c", i32 319, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c", i32 320, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias237, !11, !"__UNIQUE_ID_alias237", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c", i32 321, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c", i32 313, i32 11}
!14 = !{ptr @dw_hdmi_cec_driver, !15, !"dw_hdmi_cec_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c", i32 309, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c", i32 258, i32 58}
!18 = !{ptr @dw_hdmi_cec_ops, !19, !"dw_hdmi_cec_ops", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c", i32 216, i32 34}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2154597122}
!30 = !{i8 0, i8 2}
!31 = !{i64 2154597287}
