; ModuleID = '/llk/IR_all_yes/drivers/pci/hotplug/shpchp_pci.c_pt.bc'
source_filename = "../drivers/pci/hotplug/shpchp_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.slot = type { i8, i8, i16, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.hotplug_slot, %struct.list_head, %struct.delayed_work, %struct.mutex, ptr, i8 }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.controller = type { %struct.mutex, %struct.mutex, i32, i32, ptr, %struct.list_head, ptr, %struct.wait_queue_head, i8, i32, i32, i32, i32, i32, ptr, %struct.timer_list }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@shpchp_configure_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 37, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Device %s already exists at %04x:%02x:%02x, cannot hot-add\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"shpchp_configure_device\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/pci/hotplug/shpchp_pci.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@shpchp_configure_device._entry_ptr = internal global ptr @shpchp_configure_device._entry, section ".printk_index", align 4
@shpchp_configure_device._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 45, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No new device found\0A\00", [43 x i8] zeroinitializer }, align 32
@shpchp_configure_device._entry_ptr.7 = internal global ptr @shpchp_configure_device._entry.5, section ".printk_index", align 4
@shpchp_debug = external dso_local local_unnamed_addr global i8, align 1
@shpchp_unconfigure_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 71, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: domain:bus:dev = %04x:%02x:%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shpchp_unconfigure_device\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@shpchp_unconfigure_device._entry_ptr = internal global ptr @shpchp_unconfigure_device._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 35, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 45, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [36 x i8] c"../drivers/pci/hotplug/shpchp_pci.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 70, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @shpchp_configure_device._entry, ptr @shpchp_configure_device._entry.5, ptr @shpchp_configure_device._entry_ptr, ptr @shpchp_configure_device._entry_ptr.7, ptr @shpchp_unconfigure_device._entry, ptr @shpchp_unconfigure_device._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_configure_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_configure_device._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_unconfigure_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shpchp_configure_device(ptr nocapture noundef readonly %p_slot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subordinate, align 4
  tail call void @pci_lock_rescan_remove() #3
  %device = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %device, align 1
  %8 = shl i8 %7, 3
  %shl = zext i8 %8 to i32
  %call = tail call ptr @pci_get_slot(ptr noundef %5, i32 noundef %shl) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %do.end.pci_name.exit_crit_edge ]
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 16
  %15 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %domain_nr.i, align 8
  %17 = ptrtoint ptr %p_slot to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %p_slot, align 4
  %conv6 = zext i8 %18 to i32
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %device, align 1
  %conv8 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i, i32 noundef %16, i32 noundef %conv6, i32 noundef %conv8) #6
  tail call void @pci_dev_put(ptr noundef nonnull %call) #3
  br label %out

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %device, align 1
  %23 = shl i8 %22, 3
  %shl12 = zext i8 %23 to i32
  %call14 = tail call i32 @pci_scan_slot(ptr noundef %5, i32 noundef %shl12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp eq i32 %call14, 0
  br i1 %cmp, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.6) #6
  br label %out

if.end22:                                         ; preds = %if.end
  %devices = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %26)
  %dev.063 = load ptr, ptr %devices, align 4
  %cmp24.not64 = icmp eq ptr %dev.063, %devices
  br i1 %cmp24.not64, label %if.end22.for.end_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end22.for.body_crit_edge
  %dev.065 = phi ptr [ %dev.0, %for.inc.for.body_crit_edge ], [ %dev.063, %if.end22.for.body_crit_edge ]
  %hdr_type.i = getelementptr inbounds %struct.pci_dev, ptr %dev.065, i32 0, i32 13
  %27 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hdr_type.i, align 1
  %29 = add i8 %28, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %30 = icmp ult i8 %29, 2
  br i1 %30, label %if.else, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.else:                                          ; preds = %for.body
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev.065, i32 0, i32 6
  %31 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %32, 3
  %and28 = and i32 %shr, 31
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %device, align 1
  %conv30 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and28, i32 %conv30)
  %cmp31 = icmp eq i32 %and28, %conv30
  br i1 %cmp31, label %if.then33, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %call34 = tail call i32 @pci_hp_add_bridge(ptr noundef %dev.065) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %35 = ptrtoint ptr %dev.065 to i32
  call void @__asan_load4_noabort(i32 %35)
  %dev.0 = load ptr, ptr %dev.065, align 4
  %cmp24.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp24.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge
  tail call void @pci_assign_unassigned_bridge_resources(ptr noundef %3) #3
  tail call void @pcie_bus_configure_settings(ptr noundef %5) #3
  tail call void @pci_bus_add_devices(ptr noundef %5) #3
  br label %out

out:                                              ; preds = %for.end, %do.end19, %pci_name.exit
  %ret.0 = phi i32 [ -22, %pci_name.exit ], [ -19, %do.end19 ], [ 0, %for.end ]
  tail call void @pci_unlock_rescan_remove() #3
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_scan_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_hp_add_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_assign_unassigned_bridge_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_bus_configure_settings(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_add_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shpchp_unconfigure_device(ptr nocapture noundef readonly %p_slot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subordinate, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %6 = load i8, ptr @shpchp_debug, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 16
  %7 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %domain_nr.i, align 8
  %9 = ptrtoint ptr %p_slot to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %p_slot, align 4
  %conv = zext i8 %10 to i32
  %device = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 1
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %device, align 1
  %conv6 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %8, i32 noundef %conv, i32 noundef %conv6) #6
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  tail call void @pci_lock_rescan_remove() #3
  %devices = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devices, align 4
  %cmp.not41 = icmp eq ptr %14, %devices
  br i1 %cmp.not41, label %do.end8.for.end_crit_edge, label %for.body.lr.ph

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end8
  %device16 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dev.042 = phi ptr [ %14, %for.body.lr.ph ], [ %temp.043, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %dev.042 to i32
  call void @__asan_load4_noabort(i32 %15)
  %temp.043 = load ptr, ptr %dev.042, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev.042, i32 0, i32 6
  %16 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %17, 3
  %and = and i32 %shr, 31
  %18 = ptrtoint ptr %device16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %device16, align 1
  %conv17 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv17)
  %cmp18.not = icmp eq i32 %and, %conv17
  br i1 %cmp18.not, label %if.end21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %call22 = tail call ptr @pci_dev_get(ptr noundef %dev.042) #3
  tail call void @pci_stop_and_remove_bus_device(ptr noundef %dev.042) #3
  tail call void @pci_dev_put(ptr noundef %dev.042) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %temp.043, %devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end8.for.end_crit_edge
  tail call void @pci_unlock_rescan_remove() #3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_and_remove_bus_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/hotplug/shpchp_pci.c", i32 35, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @shpchp_configure_device._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @shpchp_configure_device._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/hotplug/shpchp_pci.c", i32 45, i32 3}
!10 = !{ptr @shpchp_configure_device._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @shpchp_configure_device._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/hotplug/shpchp_pci.c", i32 70, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @shpchp_unconfigure_device._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @shpchp_unconfigure_device._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
