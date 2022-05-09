; ModuleID = '/llk/IR_all_yes/drivers/usb/cdns3/host.c_pt.bc'
source_filename = "../drivers/usb/cdns3/host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xhci_plat_priv = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.cdns_role_driver = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cdns = type { ptr, ptr, [2 x %struct.resource], ptr, %struct.resource, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, [3 x ptr], i32, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i8, i8, ptr, %struct.spinlock, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cdns3_platform_data = type { ptr, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.78, i32 }
%union.anon.78 = type { ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xhci-hcd\00", [23 x i8] zeroinitializer }, align 32
@__cdns_host_init._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 44, ptr @.str.5, ptr @.str.6 }, align 1
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't allocate xHCI device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__cdns_host_init\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/cdns3/host.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__cdns_host_init._entry_ptr = internal global ptr @__cdns_host_init._entry, section ".printk_index", align 4
@__cdns_host_init._entry.7 = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 54, ptr @.str.5, ptr @.str.6 }, align 1
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"couldn't add resources to xHCI device\0A\00", [57 x i8] zeroinitializer }, align 32
@__cdns_host_init._entry_ptr.9 = internal global ptr @__cdns_host_init._entry.7, section ".printk_index", align 4
@xhci_plat_cdns3_xhci = internal constant { %struct.xhci_plat_priv, [56 x i8] } { %struct.xhci_plat_priv { ptr null, i64 137438986240, ptr null, ptr null, ptr null, ptr @xhci_cdns3_suspend_quirk, ptr null }, [56 x i8] zeroinitializer }, align 32
@__cdns_host_init._entry.10 = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 75, ptr @.str.5, ptr @.str.6 }, align 1
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register xHCI device\0A\00", [32 x i8] zeroinitializer }, align 32
@__cdns_host_init._entry_ptr.12 = internal global ptr @__cdns_host_init._entry.10, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 138, i32 15 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 42, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 44, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 54, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"xhci_plat_cdns3_xhci\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 29, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [28 x i8] c"../drivers/usb/cdns3/host.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 75, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__cdns_host_init._entry, ptr @__cdns_host_init._entry.10, ptr @__cdns_host_init._entry.7, ptr @__cdns_host_init._entry_ptr, ptr @__cdns_host_init._entry_ptr.12, ptr @__cdns_host_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @xhci_plat_cdns3_xhci, ptr @.str.11], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_plat_cdns3_xhci to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_host_init(ptr nocapture noundef %cdns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 24, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @__cdns_host_init, ptr %call.i, align 4
  %stop = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cdns_host_exit, ptr %stop, align 4
  %state = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %name = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name, align 4
  %arrayidx = getelementptr %struct.cdns, ptr %cdns, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__cdns_host_init(ptr noundef %cdns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cdns_drd_host_on(ptr noundef %cdns) #3
  %call1 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.1, i32 noundef -2) #3
  %tobool.not = icmp eq ptr %call1, null
  %0 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns, align 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %parent, align 8
  %host_dev = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 17
  %3 = ptrtoint ptr %host_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %host_dev, align 4
  %xhci_res = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 2
  %call4 = tail call i32 @platform_device_add_resources(ptr noundef nonnull %call1, ptr noundef %xhci_res, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8) #6
  br label %err1

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @kmemdup(ptr noundef nonnull @xhci_plat_cdns3_xhci, i32 noundef 40, i32 noundef 3264) #3
  %xhci_plat_data = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 28
  %6 = ptrtoint ptr %xhci_plat_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %xhci_plat_data, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end11.err1_crit_edge, label %if.end16

if.end11.err1_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %err1

if.end16:                                         ; preds = %if.end11
  %pdata = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 26
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 4
  %tobool17.not = icmp eq ptr %8, null
  br i1 %tobool17.not, label %if.end16.if.end23_crit_edge, label %land.lhs.true

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end16
  %quirks = getelementptr inbounds %struct.cdns3_platform_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirks, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end23_crit_edge, label %if.then20

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %quirks22 = getelementptr inbounds %struct.xhci_plat_priv, ptr %call12, i32 0, i32 1
  %11 = ptrtoint ptr %quirks22 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %quirks22, align 8
  %or = or i64 %12, 8589934592
  store i64 %or, ptr %quirks22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true.if.end23_crit_edge, %if.end16.if.end23_crit_edge
  %13 = ptrtoint ptr %xhci_plat_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xhci_plat_data, align 4
  %call25 = tail call i32 @platform_device_add_data(ptr noundef nonnull %call1, ptr noundef %14, i32 noundef 40) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.free_memory_crit_edge

if.end23.free_memory_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %free_memory

if.end28:                                         ; preds = %if.end23
  %call29 = tail call i32 @platform_device_add(ptr noundef nonnull %call1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.11) #6
  br label %free_memory

if.end36:                                         ; preds = %if.end28
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  %tobool38.not = icmp eq ptr %18, null
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %if.then39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %xhci_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 1
  %21 = ptrtoint ptr %xhci_regs to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %xhci_regs, align 4
  br label %cleanup

free_memory:                                      ; preds = %do.end34, %if.end23.free_memory_crit_edge
  %ret.0 = phi i32 [ %call25, %if.end23.free_memory_crit_edge ], [ %call29, %do.end34 ]
  %22 = ptrtoint ptr %xhci_plat_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xhci_plat_data, align 4
  tail call void @kfree(ptr noundef %23) #3
  br label %err1

err1:                                             ; preds = %free_memory, %if.end11.err1_crit_edge, %do.end9
  %ret.1 = phi i32 [ %call4, %do.end9 ], [ %ret.0, %free_memory ], [ -12, %if.end11.err1_crit_edge ]
  tail call void @platform_device_put(ptr noundef nonnull %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.then39, %if.end36.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %err1 ], [ -12, %do.end ], [ 0, %if.then39 ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_host_exit(ptr noundef %cdns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %xhci_plat_data = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 28
  %0 = ptrtoint ptr %xhci_plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xhci_plat_data, align 4
  tail call void @kfree(ptr noundef %1) #3
  %host_dev = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 17
  %2 = ptrtoint ptr %host_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_dev, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #3
  %4 = ptrtoint ptr %host_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %host_dev, align 4
  tail call void @cdns_drd_host_off(ptr noundef %cdns) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_drd_host_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_cdns3_suspend_quirk(ptr noundef %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %0 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %1, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 8
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %hcd_to_xhci.exit.cleanup_crit_edge, label %if.end

hcd_to_xhci.exit.cleanup_crit_edge:               ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %hcd_to_xhci.exit
  %op_regs = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op_regs, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %9 = or i32 %8, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  %10 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %op_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #3, !srcloc !34
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %13, i32 33056
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %15 = or i32 %14, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %17, i32 33056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %15) #3, !srcloc !34
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr22 = getelementptr i8, ptr %19, i32 32768
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  %21 = or i32 %20, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  tail call void @arm_heavy_mb() #3
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr31 = getelementptr i8, ptr %23, i32 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %21) #3, !srcloc !34
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %hcd_to_xhci.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns_drd_host_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/cdns3/host.c", i32 138, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/cdns3/host.c", i32 42, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/cdns3/host.c", i32 44, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__cdns_host_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @__cdns_host_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/cdns3/host.c", i32 54, i32 3}
!14 = !{ptr @__cdns_host_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @__cdns_host_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/cdns3/host.c", i32 75, i32 3}
!18 = !{ptr @__cdns_host_init._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @__cdns_host_init._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @xhci_plat_cdns3_xhci, !21, !"xhci_plat_cdns3_xhci", i1 false, i1 false}
!21 = !{!"../drivers/usb/cdns3/host.c", i32 29, i32 36}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 6347343}
!32 = !{i64 2155364609}
!33 = !{i64 2155364841}
!34 = !{i64 6346925}
!35 = !{i64 2155365525}
!36 = !{i64 2155365833}
!37 = !{i64 2155366512}
!38 = !{i64 2155366820}
