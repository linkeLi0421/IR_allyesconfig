; ModuleID = '/llk/IR_all_yes/drivers/pci/pcie/portdrv_core.c_pt.bc'
source_filename = "../drivers/pci/pcie/portdrv_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pcie_port_find_device\22, \22a\22\09"
module asm "\09.weak\09__crc_pcie_port_find_device\09\09\09\09"
module asm "\09.long\09__crc_pcie_port_find_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_port_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_port_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_port_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcie_port_service_register\22, \22a\22\09"
module asm "\09.weak\09__crc_pcie_port_service_register\09\09\09\09"
module asm "\09.long\09__crc_pcie_port_service_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_port_service_register:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_port_service_register\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_port_service_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcie_port_service_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_pcie_port_service_unregister\09\09\09\09"
module asm "\09.long\09__crc_pcie_port_service_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_port_service_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_port_service_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_port_service_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.pcie_device = type { i32, ptr, i32, ptr, %struct.device }
%struct.portdrv_service_data = type { ptr, ptr, i32 }
%struct.pcie_port_service_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pcie_port_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_pcie_port_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_port_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_port_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_port_find_device to i32), ptr @__kstrtab_pcie_port_find_device, ptr @__kstrtabns_pcie_port_find_device }, section "___ksymtab_gpl+pcie_port_find_device", align 4
@pcie_ports_disabled = external dso_local local_unnamed_addr global i8, align 1
@__kstrtab_pcie_port_service_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_port_service_register = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_port_service_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_port_service_register to i32), ptr @__kstrtab_pcie_port_service_register, ptr @__kstrtabns_pcie_port_service_register }, section "___ksymtab+pcie_port_service_register", align 4
@__kstrtab_pcie_port_service_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_port_service_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_port_service_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_port_service_unregister to i32), ptr @__kstrtab_pcie_port_service_unregister, ptr @__kstrtabns_pcie_port_service_unregister }, section "___ksymtab+pcie_port_service_unregister", align 4
@pcie_ports_native = external dso_local local_unnamed_addr global i8, align 1
@pcie_ports_dpc_native = external dso_local local_unnamed_addr global i8, align 1
@pcie_pme_msi_disabled = external dso_local local_unnamed_addr global i8, align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s:pcie%03x\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 10]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [35 x i8] c"../drivers/pci/pcie/portdrv_core.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 294, i32 23 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_pcie_port_find_device, ptr @__ksymtab_pcie_port_service_register, ptr @__ksymtab_pcie_port_service_unregister, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %reg16.i.i.i = alloca i16, align 2
  %reg32.i.i.i = alloca i32, align 4
  %linkcap.i = alloca i32, align 4
  %irqs = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %irqs) #7
  %0 = getelementptr inbounds [5 x i32], ptr %irqs, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i32], ptr %irqs, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i32], ptr %irqs, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i32], ptr %irqs, i32 0, i32 4
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup24_crit_edge

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %call.i = tail call ptr @pci_find_host_bridge(ptr noundef %5) #7
  %is_hotplug_bridge.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %6 = ptrtoint ptr %is_hotplug_bridge.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 5)
  %bf.load.i = load i40, ptr %is_hotplug_bridge.i, align 1
  %7 = and i40 %bf.load.i, 32768
  %tobool.not.i = icmp eq i40 %7, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %8 = load i8, ptr @pcie_ports_native, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %native_pcie_hotplug.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 13
  %9 = ptrtoint ptr %native_pcie_hotplug.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load2.i = load i16, ptr %native_pcie_hotplug.i, align 8
  %10 = and i16 %bf.load2.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool6.not.i = icmp eq i16 %10, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %call.i.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 24, i16 noundef zeroext 48, i16 noundef zeroext 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %services.0.i = phi i32 [ 4, %if.then.i ], [ 0, %lor.lhs.false.i.if.end.i_crit_edge ], [ 0, %if.end.if.end.i_crit_edge ]
  %aer_cap.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %11 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %aer_cap.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool8.not.i = icmp eq i16 %12, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end24.i_crit_edge, label %land.lhs.true9.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

land.lhs.true9.i:                                 ; preds = %if.end.i
  %call10.i = tail call zeroext i1 @pci_aer_available() #7
  br i1 %call10.i, label %land.lhs.true12.i, label %land.lhs.true9.i.if.end24.i_crit_edge

land.lhs.true9.i.if.end24.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

land.lhs.true12.i:                                ; preds = %land.lhs.true9.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %13 = load i8, ptr @pcie_ports_native, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not.i = icmp eq i8 %13, 0
  br i1 %tobool13.not.i, label %lor.lhs.false15.i, label %land.lhs.true12.i.if.then21.i_crit_edge

land.lhs.true12.i.if.then21.i_crit_edge:          ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

lor.lhs.false15.i:                                ; preds = %land.lhs.true12.i
  %native_aer.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 13
  %14 = ptrtoint ptr %native_aer.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load16.i = load i16, ptr %native_aer.i, align 8
  %15 = and i16 %bf.load16.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool20.not.i = icmp eq i16 %15, 0
  br i1 %tobool20.not.i, label %lor.lhs.false15.i.if.end24.i_crit_edge, label %lor.lhs.false15.i.if.then21.i_crit_edge

lor.lhs.false15.i.if.then21.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

lor.lhs.false15.i.if.end24.i_crit_edge:           ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then21.i:                                      ; preds = %lor.lhs.false15.i.if.then21.i_crit_edge, %land.lhs.true12.i.if.then21.i_crit_edge
  %or22.i = or i32 %services.0.i, 2
  %call23.i = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %dev) #7
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %lor.lhs.false15.i.if.end24.i_crit_edge, %land.lhs.true9.i.if.end24.i_crit_edge, %if.end.i.if.end24.i_crit_edge
  %services.1.i = phi i32 [ %or22.i, %if.then21.i ], [ %services.0.i, %lor.lhs.false15.i.if.end24.i_crit_edge ], [ %services.0.i, %land.lhs.true9.i.if.end24.i_crit_edge ], [ %services.0.i, %if.end.i.if.end24.i_crit_edge ]
  %pcie_flags_reg.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %16 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %18 = lshr i16 %17, 4
  %19 = and i16 %18, 15
  %20 = zext i16 %19 to i32
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end24.i.if.end42.i_crit_edge [
    i32 4, label %if.end24.i.land.lhs.true31.i_crit_edge
    i32 10, label %if.end24.i.land.lhs.true31.i_crit_edge67
  ]

if.end24.i.land.lhs.true31.i_crit_edge67:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true31.i

if.end24.i.land.lhs.true31.i_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true31.i

if.end24.i.if.end42.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

land.lhs.true31.i:                                ; preds = %if.end24.i.land.lhs.true31.i_crit_edge, %if.end24.i.land.lhs.true31.i_crit_edge67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %22 = load i8, ptr @pcie_ports_native, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool32.not.i = icmp eq i8 %22, 0
  br i1 %tobool32.not.i, label %lor.lhs.false34.i, label %land.lhs.true31.i.if.then40.i_crit_edge

land.lhs.true31.i.if.then40.i_crit_edge:          ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40.i

lor.lhs.false34.i:                                ; preds = %land.lhs.true31.i
  %native_pme.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 13
  %23 = ptrtoint ptr %native_pme.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load35.i = load i16, ptr %native_pme.i, align 8
  %24 = and i16 %bf.load35.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool39.not.i = icmp eq i16 %24, 0
  br i1 %tobool39.not.i, label %lor.lhs.false34.i.if.end42.i_crit_edge, label %lor.lhs.false34.i.if.then40.i_crit_edge

lor.lhs.false34.i.if.then40.i_crit_edge:          ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40.i

lor.lhs.false34.i.if.end42.i_crit_edge:           ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then40.i:                                      ; preds = %lor.lhs.false34.i.if.then40.i_crit_edge, %land.lhs.true31.i.if.then40.i_crit_edge
  %or41.i = or i32 %services.1.i, 1
  tail call void @pcie_pme_interrupt_enable(ptr noundef %dev, i1 noundef zeroext false) #7
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %lor.lhs.false34.i.if.end42.i_crit_edge, %if.end24.i.if.end42.i_crit_edge
  %services.2.i = phi i32 [ %or41.i, %if.then40.i ], [ %services.1.i, %lor.lhs.false34.i.if.end42.i_crit_edge ], [ %services.1.i, %if.end24.i.if.end42.i_crit_edge ]
  %call43.i = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 29) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call43.i)
  %tobool45.not.i = icmp eq i16 %call43.i, 0
  br i1 %tobool45.not.i, label %if.end42.i.if.end56.i_crit_edge, label %land.lhs.true46.i

if.end42.i.if.end56.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

land.lhs.true46.i:                                ; preds = %if.end42.i
  %call47.i = tail call zeroext i1 @pci_aer_available() #7
  br i1 %call47.i, label %land.lhs.true49.i, label %land.lhs.true46.i.if.end56.i_crit_edge

land.lhs.true46.i.if.end56.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

land.lhs.true49.i:                                ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_dpc_native to i32))
  %25 = load i8, ptr @pcie_ports_dpc_native, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool50.not.i = icmp eq i8 %25, 0
  %and.i = and i32 %services.2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool53.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %tobool53.not.i, %tobool50.not.i
  %or55.i = or i32 %services.2.i, 8
  %spec.select91.i = select i1 %or.cond.i, i32 %services.2.i, i32 %or55.i
  br label %if.end56.i

if.end56.i:                                       ; preds = %land.lhs.true49.i, %land.lhs.true46.i.if.end56.i_crit_edge, %if.end42.i.if.end56.i_crit_edge
  %services.3.i = phi i32 [ %services.2.i, %land.lhs.true46.i.if.end56.i_crit_edge ], [ %services.2.i, %if.end42.i.if.end56.i_crit_edge ], [ %spec.select91.i, %land.lhs.true49.i ]
  %26 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %28 = lshr i16 %27, 4
  %29 = and i16 %28, 15
  %30 = zext i16 %29 to i32
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %30, label %if.end56.i.get_port_device_capability.exit_crit_edge [
    i32 6, label %if.end56.i.if.then64.i_crit_edge
    i32 4, label %if.end56.i.if.then64.i_crit_edge68
  ]

if.end56.i.if.then64.i_crit_edge68:               ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then64.i

if.end56.i.if.then64.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then64.i

if.end56.i.get_port_device_capability.exit_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_port_device_capability.exit

if.then64.i:                                      ; preds = %if.end56.i.if.then64.i_crit_edge, %if.end56.i.if.then64.i_crit_edge68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %linkcap.i) #7
  %32 = ptrtoint ptr %linkcap.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %linkcap.i, align 4, !annotation !18
  %call65.i = call i32 @pcie_capability_read_dword(ptr noundef %dev, i32 noundef 12, ptr noundef nonnull %linkcap.i) #7
  %33 = ptrtoint ptr %linkcap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %linkcap.i, align 4
  %and66.i = lshr i32 %34, 17
  %35 = and i32 %and66.i, 16
  %36 = or i32 %35, %services.3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %linkcap.i) #7
  br label %get_port_device_capability.exit

get_port_device_capability.exit:                  ; preds = %if.then64.i, %if.end56.i.get_port_device_capability.exit_crit_edge
  %services.5.i = phi i32 [ %36, %if.then64.i ], [ %services.3.i, %if.end56.i.get_port_device_capability.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %services.5.i)
  %tobool2.not = icmp eq i32 %services.5.i, 0
  br i1 %tobool2.not, label %get_port_device_capability.exit.cleanup24_crit_edge, label %if.end4

get_port_device_capability.exit.cleanup24_crit_edge: ; preds = %get_port_device_capability.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.end4:                                          ; preds = %get_port_device_capability.exit
  call void @pci_set_master(ptr noundef %dev) #7
  %37 = call ptr @memset(ptr %irqs, i32 255, i32 20)
  %and.i47 = and i32 %services.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool.not.i48 = icmp eq i32 %and.i47, 0
  br i1 %tobool.not.i48, label %if.end4.if.end.i50_crit_edge, label %land.lhs.true.i49

if.end4.if.end.i50_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i50

land.lhs.true.i49:                                ; preds = %if.end4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_pme_msi_disabled to i32))
  %38 = load i8, ptr @pcie_pme_msi_disabled, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i.not.i = icmp eq i8 %38, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i49.if.end.i50_crit_edge, label %land.lhs.true.i49.legacy_irq.i_crit_edge

land.lhs.true.i49.legacy_irq.i_crit_edge:         ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_irq.i

land.lhs.true.i49.if.end.i50_crit_edge:           ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i50

if.end.i50:                                       ; preds = %land.lhs.true.i49.if.end.i50_crit_edge, %if.end4.if.end.i50_crit_edge
  %call.i.i.i = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %dev, i32 noundef 1, i32 noundef 32, i32 noundef 6, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i50.legacy_irq.i_crit_edge, label %if.end.i.i

if.end.i50.legacy_irq.i_crit_edge:                ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_irq.i

if.end.i.i:                                       ; preds = %if.end.i50
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16.i.i.i) #7
  %39 = ptrtoint ptr %reg16.i.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %reg16.i.i.i, align 2, !annotation !18
  %and.i.i.i = and i32 %services.5.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i58.i.i = call i32 @pcie_capability_read_word(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull %reg16.i.i.i) #7
  %40 = ptrtoint ptr %reg16.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %reg16.i.i.i, align 2
  %42 = lshr i16 %41, 9
  %43 = and i16 %42, 31
  %44 = zext i16 %43 to i32
  %add.i.i.i = add nuw nsw i32 %44, 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end.i.i.if.end.i.i.i_crit_edge
  %pme.0.i.i = phi i32 [ 0, %if.end.i.i.if.end.i.i.i_crit_edge ], [ %44, %if.then.i.i.i ]
  %nvec.0.i.i.i = phi i32 [ 0, %if.end.i.i.if.end.i.i.i_crit_edge ], [ %add.i.i.i, %if.then.i.i.i ]
  %and2.i.i.i = and i32 %services.5.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end15.i.i.i_crit_edge, label %if.then4.i.i.i

if.end.i.i.i.if.end15.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32.i.i.i) #7
  %45 = ptrtoint ptr %reg32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %reg32.i.i.i, align 4, !annotation !18
  %46 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %aer_cap.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool6.not.i.i.i = icmp eq i16 %47, 0
  br i1 %tobool6.not.i.i.i, label %if.then4.i.i.i.if.end14.i.i.i_crit_edge, label %if.then7.i.i.i

if.then4.i.i.i.if.end14.i.i.i_crit_edge:          ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i.i

if.then7.i.i.i:                                   ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i.i.i = zext i16 %47 to i32
  %add8.i.i.i = add nuw nsw i32 %conv5.i.i.i, 48
  %call9.i.i.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add8.i.i.i, ptr noundef nonnull %reg32.i.i.i) #7
  %48 = ptrtoint ptr %reg32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg32.i.i.i, align 4
  %shr11.i.i.i = lshr i32 %49, 27
  %add12.i.i.i = add nuw nsw i32 %shr11.i.i.i, 1
  %50 = call i32 @llvm.umax.i32(i32 %nvec.0.i.i.i, i32 %add12.i.i.i) #7
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then7.i.i.i, %if.then4.i.i.i.if.end14.i.i.i_crit_edge
  %aer.0.i.i = phi i32 [ 0, %if.then4.i.i.i.if.end14.i.i.i_crit_edge ], [ %shr11.i.i.i, %if.then7.i.i.i ]
  %nvec.1.i.i.i = phi i32 [ %nvec.0.i.i.i, %if.then4.i.i.i.if.end14.i.i.i_crit_edge ], [ %50, %if.then7.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32.i.i.i) #7
  br label %if.end15.i.i.i

if.end15.i.i.i:                                   ; preds = %if.end14.i.i.i, %if.end.i.i.i.if.end15.i.i.i_crit_edge
  %aer.1.i.i = phi i32 [ 0, %if.end.i.i.i.if.end15.i.i.i_crit_edge ], [ %aer.0.i.i, %if.end14.i.i.i ]
  %nvec.2.i.i.i = phi i32 [ %nvec.0.i.i.i, %if.end.i.i.i.if.end15.i.i.i_crit_edge ], [ %nvec.1.i.i.i, %if.end14.i.i.i ]
  %and16.i.i.i = and i32 %services.5.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %and16.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.end15.i.i.i.pcie_message_numbers.exit.i.i_crit_edge, label %if.then18.i.i.i

if.end15.i.i.i.pcie_message_numbers.exit.i.i_crit_edge: ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcie_message_numbers.exit.i.i

if.then18.i.i.i:                                  ; preds = %if.end15.i.i.i
  %call19.i.i.i = call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 29) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call19.i.i.i)
  %tobool21.not.i.i.i = icmp eq i16 %call19.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %if.then18.i.i.i.pcie_message_numbers.exit.i.i_crit_edge, label %if.then22.i.i.i

if.then18.i.i.i.pcie_message_numbers.exit.i.i_crit_edge: ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcie_message_numbers.exit.i.i

if.then22.i.i.i:                                  ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv20.i.i.i = zext i16 %call19.i.i.i to i32
  %add23.i.i.i = add nuw nsw i32 %conv20.i.i.i, 4
  %call24.i.i.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add23.i.i.i, ptr noundef nonnull %reg16.i.i.i) #7
  %51 = ptrtoint ptr %reg16.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %reg16.i.i.i, align 2
  %53 = and i16 %52, 31
  %and26.i.i.i = zext i16 %53 to i32
  %add27.i.i.i = add nuw nsw i32 %and26.i.i.i, 1
  %54 = call i32 @llvm.umax.i32(i32 %nvec.2.i.i.i, i32 %add27.i.i.i) #7
  br label %pcie_message_numbers.exit.i.i

pcie_message_numbers.exit.i.i:                    ; preds = %if.then22.i.i.i, %if.then18.i.i.i.pcie_message_numbers.exit.i.i_crit_edge, %if.end15.i.i.i.pcie_message_numbers.exit.i.i_crit_edge
  %dpc.0.i.i = phi i32 [ 0, %if.end15.i.i.i.pcie_message_numbers.exit.i.i_crit_edge ], [ 0, %if.then18.i.i.i.pcie_message_numbers.exit.i.i_crit_edge ], [ %and26.i.i.i, %if.then22.i.i.i ]
  %nvec.3.i.i.i = phi i32 [ %nvec.2.i.i.i, %if.end15.i.i.i.pcie_message_numbers.exit.i.i_crit_edge ], [ %nvec.2.i.i.i, %if.then18.i.i.i.pcie_message_numbers.exit.i.i_crit_edge ], [ %54, %if.then22.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16.i.i.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %nvec.3.i.i.i, i32 %call.i.i.i)
  %cmp2.i.i = icmp ugt i32 %nvec.3.i.i.i, %call.i.i.i
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end4.i.i

if.then3.i.i:                                     ; preds = %pcie_message_numbers.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @pci_free_irq_vectors(ptr noundef %dev) #7
  br label %legacy_irq.i

if.end4.i.i:                                      ; preds = %pcie_message_numbers.exit.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nvec.3.i.i.i, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %nvec.3.i.i.i, %call.i.i.i
  br i1 %cmp5.not.i.i, label %if.end4.i.i.if.end11.i.i_crit_edge, label %if.then6.i.i

if.end4.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  call void @pci_free_irq_vectors(ptr noundef %dev) #7
  %call.i59.i.i = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %dev, i32 noundef %nvec.3.i.i.i, i32 noundef %nvec.3.i.i.i, i32 noundef 6, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i.i)
  %cmp8.i.i = icmp slt i32 %call.i59.i.i, 0
  br i1 %cmp8.i.i, label %if.then6.i.i.legacy_irq.i_crit_edge, label %if.then6.i.i.if.end11.i.i_crit_edge

if.then6.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then6.i.i.legacy_irq.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_irq.i

if.end11.i.i:                                     ; preds = %if.then6.i.i.if.end11.i.i_crit_edge, %if.end4.i.i.if.end11.i.i_crit_edge
  br i1 %tobool.not.i.i.i, label %if.end11.i.i.if.end16.i.i_crit_edge, label %if.then12.i.i

if.end11.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.then12.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i.i = call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef %pme.0.i.i) #7
  %55 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call13.i.i, ptr %irqs, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call13.i.i, ptr %1, align 4
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call13.i.i, ptr %3, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then12.i.i, %if.end11.i.i.if.end16.i.i_crit_edge
  br i1 %tobool3.not.i.i.i, label %if.end16.i.i.if.end22.i.i_crit_edge, label %if.then19.i.i

if.end16.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i = call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef %aer.1.i.i) #7
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call20.i.i, ptr %0, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then19.i.i, %if.end16.i.i.if.end22.i.i_crit_edge
  br i1 %tobool17.not.i.i.i, label %if.end22.i.i.if.end11_crit_edge, label %if.end22.i.i.cleanup.sink.split.i_crit_edge

if.end22.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end22.i.i.if.end11_crit_edge:                  ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

legacy_irq.i:                                     ; preds = %if.then6.i.i.legacy_irq.i_crit_edge, %if.then3.i.i, %if.end.i50.legacy_irq.i_crit_edge, %land.lhs.true.i49.legacy_irq.i_crit_edge
  %call.i.i51 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %dev, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp6.i = icmp slt i32 %call.i.i51, 0
  br i1 %cmp6.i, label %if.then7, label %for.body11.preheader.i

for.body11.preheader.i:                           ; preds = %legacy_irq.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef 0) #7
  %59 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call12.i, ptr %irqs, align 4
  %call12.1.i = call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef 0) #7
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call12.1.i, ptr %0, align 4
  %call12.2.i = call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef 0) #7
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call12.2.i, ptr %1, align 4
  %call12.3.i = call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef 0) #7
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call12.3.i, ptr %2, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body11.preheader.i, %if.end22.i.i.cleanup.sink.split.i_crit_edge
  %.sink32.i = phi i32 [ 0, %for.body11.preheader.i ], [ %dpc.0.i.i, %if.end22.i.i.cleanup.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 4, %for.body11.preheader.i ], [ 3, %if.end22.i.i.cleanup.sink.split.i_crit_edge ]
  %call12.4.i = call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef %.sink32.i) #7
  %arrayidx13.4.i = getelementptr i32, ptr %irqs, i32 %.sink.i
  %63 = ptrtoint ptr %arrayidx13.4.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call12.4.i, ptr %arrayidx13.4.i, align 4
  br label %if.end11

if.then7:                                         ; preds = %legacy_irq.i
  %and = and i32 %services.5.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then7.error_disable_crit_edge, label %if.then7.if.end11_crit_edge

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7.error_disable_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_disable

if.end11:                                         ; preds = %if.then7.if.end11_crit_edge, %cleanup.sink.split.i, %if.end22.i.i.if.end11_crit_edge
  %capabilities.0 = phi i32 [ %and, %if.then7.if.end11_crit_edge ], [ %services.5.i, %if.end22.i.i.if.end11_crit_edge ], [ %services.5.i, %cleanup.sink.split.i ]
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end11
  %nr_service.066 = phi i32 [ 0, %if.end11 ], [ %nr_service.2, %cleanup.for.body_crit_edge ]
  %i.064 = phi i32 [ 0, %if.end11 ], [ %inc20, %cleanup.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.064
  %and12 = and i32 %shl, %capabilities.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %for.body.cleanup_crit_edge, label %if.end15

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %for.body
  %arrayidx = getelementptr [5 x i32], ptr %irqs, i32 0, i32 %i.064
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3520, i32 noundef 944) #10
  %tobool.not.i52 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i52, label %if.end15.cleanup_crit_edge, label %if.end.i55

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i55:                                       ; preds = %if.end15
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %call7.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %dev, ptr %port.i, align 4
  %68 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %65, ptr %call7.i.i.i, align 8
  %service3.i = getelementptr inbounds %struct.pcie_device, ptr %call7.i.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %service3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shl, ptr %service3.i, align 8
  %device4.i = getelementptr inbounds %struct.pcie_device, ptr %call7.i.i.i, i32 0, i32 4
  %bus.i53 = getelementptr inbounds %struct.pcie_device, ptr %call7.i.i.i, i32 0, i32 4, i32 5
  %70 = ptrtoint ptr %bus.i53 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @pcie_port_bus_type, ptr %bus.i53, align 8
  %release.i = getelementptr inbounds %struct.pcie_device, ptr %call7.i.i.i, i32 0, i32 4, i32 35
  %71 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @release_pcie_device, ptr %release.i, align 4
  %72 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i54 = icmp eq ptr %73, null
  br i1 %tobool.not.i.i.i54, label %if.end.i.i.i56, label %if.end.i55.pci_name.exit.i_crit_edge

if.end.i55.pci_name.exit.i_crit_edge:             ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit.i

if.end.i.i.i56:                                   ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i56, %if.end.i55.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %75, %if.end.i.i.i56 ], [ %73, %if.end.i55.pci_name.exit.i_crit_edge ]
  %76 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %78 = shl i16 %77, 4
  %79 = and i16 %78, 3840
  %sub.i = zext i16 %79 to i32
  %shl.i = add nsw i32 %sub.i, -1024
  %or.i = or i32 %shl.i, %shl
  %call7.i = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %device4.i, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i.i, i32 noundef %or.i) #7
  %parent.i = getelementptr inbounds %struct.pcie_device, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %dev.i.i, ptr %parent.i, align 8
  %is_prepared.i.i = getelementptr inbounds %struct.pcie_device, ptr %call7.i.i.i, i32 0, i32 4, i32 12, i32 1
  %81 = ptrtoint ptr %is_prepared.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load.i.i = load i16, ptr %is_prepared.i.i, align 4
  %82 = and i16 %bf.load.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %bf.cast.not.i.i = icmp eq i16 %82, 0
  br i1 %bf.cast.not.i.i, label %if.then.i.i, label %pci_name.exit.i.device_enable_async_suspend.exit.i_crit_edge

pci_name.exit.i.device_enable_async_suspend.exit.i_crit_edge: ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_enable_async_suspend.exit.i

if.then.i.i:                                      ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set.i.i = or i16 %bf.load.i.i, 16384
  %83 = ptrtoint ptr %is_prepared.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %bf.set.i.i, ptr %is_prepared.i.i, align 4
  br label %device_enable_async_suspend.exit.i

device_enable_async_suspend.exit.i:               ; preds = %if.then.i.i, %pci_name.exit.i.device_enable_async_suspend.exit.i_crit_edge
  %call8.i = call i32 @device_register(ptr noundef %device4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %84, label %if.then10.i

if.then10.i:                                      ; preds = %device_enable_async_suspend.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @put_device(ptr noundef %device4.i) #7
  br label %cleanup

84:                                               ; preds = %device_enable_async_suspend.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @pm_runtime_no_callbacks(ptr noundef %device4.i) #7
  %inc = add i32 %nr_service.066, 1
  br label %cleanup

cleanup:                                          ; preds = %84, %if.then10.i, %if.end15.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %nr_service.2 = phi i32 [ %nr_service.066, %for.body.cleanup_crit_edge ], [ %inc, %84 ], [ %nr_service.066, %if.then10.i ], [ %nr_service.066, %if.end15.cleanup_crit_edge ]
  %inc20 = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc20, 5
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_service.2)
  %tobool21.not = icmp eq i32 %nr_service.2, 0
  br i1 %tobool21.not, label %error_cleanup_irqs, label %for.end.cleanup24_crit_edge

for.end.cleanup24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

error_cleanup_irqs:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @pci_free_irq_vectors(ptr noundef %dev) #7
  br label %error_disable

error_disable:                                    ; preds = %error_cleanup_irqs, %if.then7.error_disable_crit_edge
  call void @pci_disable_device(ptr noundef %dev) #7
  br label %cleanup24

cleanup24:                                        ; preds = %error_disable, %for.end.cleanup24_crit_edge, %get_port_device_capability.exit.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.0 = phi i32 [ -19, %error_disable ], [ %call, %entry.cleanup24_crit_edge ], [ 0, %get_port_device_capability.exit.cleanup24_crit_edge ], [ 0, %for.end.cleanup24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %irqs) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_iter(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %3, @pcie_port_bus_type
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %add.ptr = getelementptr i8, ptr %5, i32 -44
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %1
  %6 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr2, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr7 = getelementptr i8, ptr %dev, i32 -16
  %call = tail call i32 %7(ptr noundef %add.ptr7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_suspend(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #7
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %off, align 4
  %call = call i32 @device_for_each_child(ptr noundef %dev, ptr noundef nonnull %off, ptr noundef nonnull @pcie_port_device_iter) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_resume_noirq(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #7
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %off, align 4
  %call = call i32 @device_for_each_child(ptr noundef %dev, ptr noundef nonnull %off, ptr noundef nonnull @pcie_port_device_iter) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_resume(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #7
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %off, align 4
  %call = call i32 @device_for_each_child(ptr noundef %dev, ptr noundef nonnull %off, ptr noundef nonnull @pcie_port_device_iter) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_runtime_suspend(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #7
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 24, ptr %off, align 4
  %call = call i32 @device_for_each_child(ptr noundef %dev, ptr noundef nonnull %off, ptr noundef nonnull @pcie_port_device_iter) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_runtime_resume(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #7
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 28, ptr %off, align 4
  %call = call i32 @device_for_each_child(ptr noundef %dev, ptr noundef nonnull %off, ptr noundef nonnull @pcie_port_device_iter) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pcie_port_find_device(ptr noundef %dev, i32 noundef %service) #0 align 64 {
entry:
  %pdrvs = alloca %struct.portdrv_service_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pdrvs) #7
  %0 = ptrtoint ptr %pdrvs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pdrvs, align 4, !annotation !18
  %1 = getelementptr inbounds %struct.portdrv_service_data, ptr %pdrvs, i32 0, i32 1
  %2 = getelementptr inbounds %struct.portdrv_service_data, ptr %pdrvs, i32 0, i32 2
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %1, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %service, ptr %2, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call = call i32 @device_for_each_child(ptr noundef %dev3, ptr noundef nonnull %pdrvs, ptr noundef nonnull @find_service_iter) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pdrvs) #7
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @find_service_iter(ptr noundef %device, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %service1 = getelementptr inbounds %struct.portdrv_service_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %service1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %service1, align 4
  %bus = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 5
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %3, @pcie_port_bus_type
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %service3 = getelementptr i8, ptr %5, i32 -4
  %6 = ptrtoint ptr %service3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %service3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp4 = icmp eq i32 %7, %1
  br i1 %cmp4, label %if.then5, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %5, i32 -44
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.portdrv_service_data, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %device, ptr %dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then5 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_port_device_remove(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call = tail call i32 @device_for_each_child(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @remove_iter) #7
  tail call void @pci_free_irq_vectors(ptr noundef %dev) #7
  tail call void @pci_disable_device(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_iter(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %1, @pcie_port_bus_type
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @device_unregister(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_port_service_register(ptr noundef %new) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_disabled to i32))
  %0 = load i8, ptr @pcie_ports_disabled, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %new, align 4
  %driver = getelementptr inbounds %struct.pcie_port_service_driver, ptr %new, i32 0, i32 11
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %driver, align 4
  %bus = getelementptr inbounds %struct.pcie_port_service_driver, ptr %new, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pcie_port_bus_type, ptr %bus, align 4
  %probe = getelementptr inbounds %struct.pcie_port_service_driver, ptr %new, i32 0, i32 11, i32 8
  %5 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pcie_port_probe_service, ptr %probe, align 4
  %remove = getelementptr inbounds %struct.pcie_port_service_driver, ptr %new, i32 0, i32 11, i32 10
  %6 = ptrtoint ptr %remove to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pcie_port_remove_service, ptr %remove, align 4
  %shutdown = getelementptr inbounds %struct.pcie_port_service_driver, ptr %new, i32 0, i32 11, i32 11
  %7 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pcie_port_shutdown_service, ptr %shutdown, align 4
  %call = tail call i32 @driver_register(ptr noundef %driver) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_port_probe_service(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %driver1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver1, align 4
  %tobool2.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -44
  %tobool4.not = icmp eq ptr %add.ptr, null
  %or.cond = or i1 %tobool2.not, %tobool4.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %probe = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %probe, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end8

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %add.ptr11 = getelementptr i8, ptr %dev, i32 -16
  %call = tail call i32 %3(ptr noundef %add.ptr11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call ptr @get_device(ptr noundef nonnull %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end8.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false5.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_port_remove_service(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %driver1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %add.ptr6 = getelementptr i8, ptr %1, i32 -44
  %tobool7.not = icmp eq ptr %add.ptr6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %remove = getelementptr i8, ptr %1, i32 -36
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.then9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %add.ptr) #7
  tail call void @put_device(ptr noundef nonnull %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pcie_port_shutdown_service(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_port_service_unregister(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.pcie_port_service_driver, ptr %drv, i32 0, i32 11
  tail call void @driver_unregister(ptr noundef %driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_aer_available() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_pme_interrupt_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_pcie_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_pcie_port_find_device, !1, !"__ksymtab_pcie_port_find_device", i1 false, i1 false}
!1 = !{!"../drivers/pci/pcie/portdrv_core.c", i32 483, i32 1}
!2 = !{ptr @__ksymtab_pcie_port_service_register, !3, !"__ksymtab_pcie_port_service_register", i1 false, i1 false}
!3 = !{!"../drivers/pci/pcie/portdrv_core.c", i32 583, i32 1}
!4 = !{ptr @__ksymtab_pcie_port_service_unregister, !5, !"__ksymtab_pcie_port_service_unregister", i1 false, i1 false}
!5 = !{!"../drivers/pci/pcie/portdrv_core.c", i32 593, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/pcie/portdrv_core.c", i32 294, i32 23}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
!18 = !{!"auto-init"}
