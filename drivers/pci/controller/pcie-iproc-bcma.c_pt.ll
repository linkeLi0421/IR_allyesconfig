; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-iproc-bcma.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-iproc-bcma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.bcma_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.78 = type { ptr }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }

@__pci_fixup_bcma_pcie2_fixup_class23 = internal constant %struct.pci_fixup { i16 5348, i16 -32751, i32 -1, i32 0, ptr @bcma_pcie2_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_bcma_pcie2_fixup_class24 = internal constant %struct.pci_fixup { i16 5348, i16 -32750, i32 -1, i32 0, ptr @bcma_pcie2_fixup_class }, section ".pci_fixup_early", align 4
@__initcall__kmod_pcie_iproc_bcma__293_93_iproc_bcma_pcie_driver_init6 = internal global ptr @iproc_bcma_pcie_driver_init, section ".initcall6.init", align 4
@iproc_bcma_pcie_driver = internal global { %struct.bcma_driver, [56 x i8] } { %struct.bcma_driver { ptr @.str, ptr @iproc_bcma_pcie_table, ptr @iproc_bcma_pcie_probe, ptr @iproc_bcma_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_iproc_bcma_pcie_driver_exit = internal global ptr @iproc_bcma_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [38 x i8] c"pcie_iproc_bcma.author=Hauke Mehrtens\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [60 x i8] c"pcie_iproc_bcma.description=Broadcom iProc PCIe BCMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [60 x i8] c"pcie_iproc_bcma.file=drivers/pci/controller/pcie-iproc-bcma\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [31 x i8] c"pcie_iproc_bcma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcie_iproc_bcma\00", [16 x i8] zeroinitializer }, align 32
@iproc_bcma_pcie_table = internal constant { [2 x %struct.bcma_device_id], [20 x i8] } { [2 x %struct.bcma_device_id] [%struct.bcma_device_id { i16 1215, i16 1281, i8 -1, i8 -1 }, %struct.bcma_device_id zeroinitializer], [20 x i8] zeroinitializer }, align 32
@iproc_bcma_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 52, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no controller registers\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iproc_bcma_pcie_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pci/controller/pcie-iproc-bcma.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iproc_bcma_pcie_probe._entry_ptr = internal global ptr @iproc_bcma_pcie_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCIe MEM space\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"iproc_bcma_pcie_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 87, i32 27 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 88, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"iproc_bcma_pcie_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 81, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 52, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [44 x i8] c"../drivers/pci/controller/pcie-iproc-bcma.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 60, i32 19 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_iproc_bcma_pcie_driver_exit, ptr @__initcall__kmod_pcie_iproc_bcma__293_93_iproc_bcma_pcie_driver_init6, ptr @__pci_fixup_bcma_pcie2_fixup_class23, ptr @__pci_fixup_bcma_pcie2_fixup_class24, ptr @iproc_bcma_pcie_driver_exit, ptr @iproc_bcma_pcie_probe._entry, ptr @iproc_bcma_pcie_probe._entry_ptr, ptr @iproc_bcma_pcie_driver, ptr @.str, ptr @iproc_bcma_pcie_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_bcma_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_bcma_pcie_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_bcma_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @bcma_pcie2_fixup_class(ptr nocapture noundef writeonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 394240, ptr %class, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_bcma_pcie_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__bcma_driver_register(ptr noundef nonnull @iproc_bcma_pcie_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iproc_bcma_pcie_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bcma_driver_unregister(ptr noundef nonnull @iproc_bcma_pcie_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bcma_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_bcma_pcie_probe(ptr noundef %bdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.bcma_device, ptr %bdev, i32 0, i32 2
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 100) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %private.i, align 4
  %type = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %io_addr = getelementptr inbounds %struct.bcma_device, ptr %bdev, i32 0, i32 11
  %2 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_addr, align 4
  %base = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %base, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %addr = getelementptr inbounds %struct.bcma_device, ptr %bdev, i32 0, i32 8
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %base_addr = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %base_addr, align 4
  %addr_s = getelementptr inbounds %struct.bcma_device, ptr %bdev, i32 0, i32 9
  %8 = ptrtoint ptr %addr_s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr_s, align 8
  %mem = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 4
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mem, align 4
  %11 = load i32, ptr %addr_s, align 8
  %sub = add i32 %11, 134217727
  %end = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 5
  %12 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %end, align 4
  %name = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 6
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.6, ptr %name, align 4
  %flags = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 512, ptr %flags, align 4
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 7
  tail call void @pci_add_resource(ptr noundef %windows, ptr noundef %mem) #5
  %call15 = tail call i32 @devm_request_pci_bus_resources(ptr noundef %dev1, ptr noundef %windows) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %map_irq = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %15 = ptrtoint ptr %map_irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @iproc_bcma_pcie_map_irq, ptr %map_irq, align 4
  %drvdata1.i = getelementptr inbounds %struct.bcma_device, ptr %bdev, i32 0, i32 13
  %16 = ptrtoint ptr %drvdata1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %private.i, ptr %drvdata1.i, align 4
  %call20 = tail call i32 @iproc_pcie_setup(ptr noundef %private.i, ptr noundef %windows) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end18 ], [ -12, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call15, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_bcma_pcie_remove(ptr nocapture noundef readonly %bdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.bcma_device, ptr %bdev, i32 0, i32 13
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %call1 = tail call i32 @iproc_pcie_remove(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_add_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_pci_bus_resources(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_bcma_pcie_map_irq(ptr nocapture noundef readonly %dev, i8 noundef zeroext %slot, i8 noundef zeroext %pin) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %call = tail call i32 @bcma_core_irq(ptr noundef %add.ptr, i32 noundef 5) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iproc_pcie_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iproc_pcie_remove(ptr noundef) local_unnamed_addr #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__pci_fixup_bcma_pcie2_fixup_class23, !1, !"__pci_fixup_bcma_pcie2_fixup_class23", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-iproc-bcma.c", i32 23, i32 1}
!2 = !{ptr @__pci_fixup_bcma_pcie2_fixup_class24, !3, !"__pci_fixup_bcma_pcie2_fixup_class24", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pcie-iproc-bcma.c", i32 24, i32 1}
!4 = !{ptr @__initcall__kmod_pcie_iproc_bcma__293_93_iproc_bcma_pcie_driver_init6, !5, !"__initcall__kmod_pcie_iproc_bcma__293_93_iproc_bcma_pcie_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pcie-iproc-bcma.c", i32 93, i32 1}
!6 = !{ptr @__exitcall_iproc_bcma_pcie_driver_exit, !5, !"__exitcall_iproc_bcma_pcie_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author294, !8, !"__UNIQUE_ID_author294", i1 false, i1 false}
!8 = !{!"../drivers/pci/controller/pcie-iproc-bcma.c", i32 95, i32 1}
!9 = !{ptr @__UNIQUE_ID_description295, !10, !"__UNIQUE_ID_description295", i1 false, i1 false}
!10 = !{!"../drivers/pci/controller/pcie-iproc-bcma.c", i32 96, i32 1}
!11 = !{ptr @__UNIQUE_ID_file296, !12, !"__UNIQUE_ID_file296", i1 false, i1 false}
!12 = !{!"../drivers/pci/controller/pcie-iproc-bcma.c", i32 97, i32 1}
!13 = !{ptr @__UNIQUE_ID_license297, !12, !"__UNIQUE_ID_license297", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pcie-iproc-bcma.c", i32 88, i32 11}
!16 = !{ptr @iproc_bcma_pcie_driver, !17, !"iproc_bcma_pcie_driver", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/pcie-iproc-bcma.c", i32 87, i32 27}
!18 = !{ptr @iproc_bcma_pcie_table, !19, !"iproc_bcma_pcie_table", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pcie-iproc-bcma.c", i32 81, i32 36}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/pcie-iproc-bcma.c", i32 52, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @iproc_bcma_pcie_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @iproc_bcma_pcie_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/pcie-iproc-bcma.c", i32 60, i32 19}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
