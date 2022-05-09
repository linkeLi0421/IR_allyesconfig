; ModuleID = '/llk/IR_all_yes/drivers/pcmcia/cardbus.c_pt.bc'
source_filename = "../drivers/pcmcia/cardbus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcmcia_socket = type { ptr, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, ptr, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i32, ptr, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, ptr, i32 }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
%struct.pccard_mem_map = type { i8, i8, i16, i32, i32, ptr }
%struct.io_window_t = type { i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cb_alloc(ptr noundef %s) local_unnamed_addr #0 section ".ref.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 21
  %0 = ptrtoint ptr %cb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_dev, align 8
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subordinate, align 4
  tail call void @pci_lock_rescan_remove() #4
  %call = tail call i32 @pci_scan_slot(ptr noundef %3, i32 noundef 0) #4
  %conv = trunc i32 %call to i16
  %functions = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 4
  %4 = ptrtoint ptr %functions to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %functions, align 8
  tail call void @pci_fixup_cardbus(ptr noundef %3) #4
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %busn_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %busn_res, align 8
  %devices = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %dev.039 = load ptr, ptr %devices, align 4
  %cmp4.not40 = icmp eq ptr %dev.039, %devices
  br i1 %cmp4.not40, label %entry.for.inc14_crit_edge, label %entry.for.body6_crit_edge

entry.for.body6_crit_edge:                        ; preds = %entry
  br label %for.body6

entry.for.inc14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc14

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %entry.for.body6_crit_edge
  %dev.042 = phi ptr [ %dev.0, %for.inc.for.body6_crit_edge ], [ %dev.039, %entry.for.body6_crit_edge ]
  %max.141 = phi i32 [ %max.2, %for.inc.for.body6_crit_edge ], [ %6, %entry.for.body6_crit_edge ]
  %hdr_type.i = getelementptr inbounds %struct.pci_dev, ptr %dev.042, i32 0, i32 13
  %8 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hdr_type.i, align 1
  %10 = add i8 %9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %11 = icmp ult i8 %10, 2
  br i1 %11, label %if.else, label %for.body6.for.inc_crit_edge

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.else:                                          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 @pci_scan_bridge(ptr noundef %3, ptr noundef %dev.042, i32 noundef %max.141, i32 noundef 0) #4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body6.for.inc_crit_edge
  %max.2 = phi i32 [ %call8, %if.else ], [ %max.141, %for.body6.for.inc_crit_edge ]
  %12 = ptrtoint ptr %dev.042 to i32
  call void @__asan_load4_noabort(i32 %12)
  %dev.0 = load ptr, ptr %dev.042, align 4
  %cmp4.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp4.not, label %for.inc.for.inc14_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6

for.inc.for.inc14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc14

for.inc14:                                        ; preds = %for.inc.for.inc14_crit_edge, %entry.for.inc14_crit_edge
  %max.1.lcssa = phi i32 [ %6, %entry.for.inc14_crit_edge ], [ %max.2, %for.inc.for.inc14_crit_edge ]
  %13 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %13)
  %dev.039.1 = load ptr, ptr %devices, align 4
  %cmp4.not40.1 = icmp eq ptr %dev.039.1, %devices
  br i1 %cmp4.not40.1, label %for.inc14.for.inc14.1_crit_edge, label %for.inc14.for.body6.1_crit_edge

for.inc14.for.body6.1_crit_edge:                  ; preds = %for.inc14
  br label %for.body6.1

for.inc14.for.inc14.1_crit_edge:                  ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc14.1

for.body6.1:                                      ; preds = %for.inc.1.for.body6.1_crit_edge, %for.inc14.for.body6.1_crit_edge
  %dev.042.1 = phi ptr [ %dev.0.1, %for.inc.1.for.body6.1_crit_edge ], [ %dev.039.1, %for.inc14.for.body6.1_crit_edge ]
  %max.141.1 = phi i32 [ %max.2.1, %for.inc.1.for.body6.1_crit_edge ], [ %max.1.lcssa, %for.inc14.for.body6.1_crit_edge ]
  %hdr_type.i.1 = getelementptr inbounds %struct.pci_dev, ptr %dev.042.1, i32 0, i32 13
  %14 = ptrtoint ptr %hdr_type.i.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hdr_type.i.1, align 1
  %16 = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %17 = icmp ult i8 %16, 2
  br i1 %17, label %if.else.1, label %for.body6.1.for.inc.1_crit_edge

for.body6.1.for.inc.1_crit_edge:                  ; preds = %for.body6.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.else.1:                                        ; preds = %for.body6.1
  call void @__sanitizer_cov_trace_pc() #6
  %call8.1 = tail call i32 @pci_scan_bridge(ptr noundef %3, ptr noundef %dev.042.1, i32 noundef %max.141.1, i32 noundef 1) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %for.body6.1.for.inc.1_crit_edge
  %max.2.1 = phi i32 [ %call8.1, %if.else.1 ], [ %max.141.1, %for.body6.1.for.inc.1_crit_edge ]
  %18 = ptrtoint ptr %dev.042.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %dev.0.1 = load ptr, ptr %dev.042.1, align 4
  %cmp4.not.1 = icmp eq ptr %dev.0.1, %devices
  br i1 %cmp4.not.1, label %for.inc.1.for.inc14.1_crit_edge, label %for.inc.1.for.body6.1_crit_edge

for.inc.1.for.body6.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6.1

for.inc.1.for.inc14.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc14.1

for.inc14.1:                                      ; preds = %for.inc.1.for.inc14.1_crit_edge, %for.inc14.for.inc14.1_crit_edge
  tail call void @pci_bus_size_bridges(ptr noundef %3) #4
  tail call void @pci_bus_assign_resources(ptr noundef %3) #4
  %pci_irq = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 20
  %19 = ptrtoint ptr %pci_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pci_irq, align 4
  tail call fastcc void @cardbus_config_irq_and_cls(ptr noundef %3, i32 noundef %20)
  %tune_bridge = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 28
  %21 = ptrtoint ptr %tune_bridge to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tune_bridge, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %for.inc14.1.if.end18_crit_edge, label %if.then16

for.inc14.1.if.end18_crit_edge:                   ; preds = %for.inc14.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then16:                                        ; preds = %for.inc14.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %22(ptr noundef %s, ptr noundef %3) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.inc14.1.if.end18_crit_edge
  tail call void @pci_bus_add_devices(ptr noundef %3) #4
  tail call void @pci_unlock_rescan_remove() #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_scan_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_fixup_cardbus(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_scan_bridge(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_size_bridges(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_assign_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cardbus_config_irq_and_cls(ptr noundef readonly %bus, i32 noundef %irq) unnamed_addr #3 align 64 {
entry:
  %irq_pin = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.025 = load ptr, ptr %devices, align 4
  %cmp.not26 = icmp eq ptr %dev.025, %devices
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = trunc i32 %irq to i8
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %dev.027 = phi ptr [ %dev.025, %for.body.lr.ph ], [ %dev.0, %if.end9.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irq_pin) #4
  %1 = ptrtoint ptr %irq_pin to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %irq_pin, align 1, !annotation !9
  %call = call i32 @pci_read_config_byte(ptr noundef %dev.027, i32 noundef 61, ptr noundef nonnull %irq_pin) #4
  %2 = ptrtoint ptr %irq_pin to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_pin, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %dev.027, i32 0, i32 46
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %irq, ptr %irq2, align 4
  %call4 = call i32 @pci_write_config_byte(ptr noundef %dev.027, i32 noundef 60, i8 noundef zeroext %conv) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %call5 = call i32 @pci_set_cacheline_size(ptr noundef %dev.027) #4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev.027, i32 0, i32 2
  %5 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subordinate, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @cardbus_config_irq_and_cls(ptr noundef nonnull %6, i32 noundef %irq)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irq_pin) #4
  %7 = ptrtoint ptr %dev.027 to i32
  call void @__asan_load4_noabort(i32 %7)
  %dev.0 = load ptr, ptr %dev.027, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_add_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cb_free(ptr nocapture noundef readonly %s) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 21
  %0 = ptrtoint ptr %cb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subordinate, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @pci_lock_rescan_remove() #4
  %devices = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devices, align 4
  %cmp.not26 = icmp eq ptr %5, %devices
  br i1 %cmp.not26, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %dev.027 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %5, %if.end3.for.body_crit_edge ]
  %6 = ptrtoint ptr %dev.027 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.0 = load ptr, ptr %dev.027, align 8
  tail call void @pci_stop_and_remove_bus_device(ptr noundef %dev.027) #4
  %cmp.not = icmp eq ptr %tmp.0, %devices
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end3.for.end_crit_edge
  tail call void @pci_unlock_rescan_remove() #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_and_remove_bus_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_cacheline_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
