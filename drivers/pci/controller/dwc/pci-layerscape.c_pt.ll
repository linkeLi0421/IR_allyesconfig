; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pci-layerscape.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pci-layerscape.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
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
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }

@__initcall__kmod_pci_layerscape__236_151_ls_pcie_driver_init6 = internal global ptr @ls_pcie_driver_init, section ".initcall6.init", align 4
@ls_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ls_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @ls_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"layerscape-pcie\00", [16 x i8] zeroinitializer }, align 32
@ls_pcie_of_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2080a-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2085a-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2088a-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1088a-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@ls_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @ls_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [15 x i8] c"ls_pcie_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 143, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 146, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"ls_pcie_of_match\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 97, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"ls_pcie_host_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 93, i32 38 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [47 x i8] c"../drivers/pci/controller/dwc/pci-layerscape.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 130, i32 64 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_pci_layerscape__236_151_ls_pcie_driver_init6, ptr @ls_pcie_driver, ptr @.str, ptr @ls_pcie_of_match, ptr @ls_pcie_host_ops, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_pcie_of_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ls_pcie_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i40 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 320, i32 noundef 3520) #3
  %tobool3.not = icmp eq ptr %call.i40, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i40 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i40, align 8
  %pp = getelementptr inbounds %struct.dw_pcie, ptr %call.i40, i32 0, i32 7
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i40, i32 0, i32 7, i32 8
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ls_pcie_host_ops, ptr %ops, align 8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i40, ptr %call.i, align 4
  %call8 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #3
  %call9 = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %dev1, ptr noundef %call8) #3
  %dbi_base10 = getelementptr inbounds %struct.dw_pcie, ptr %call.i40, i32 0, i32 1
  %3 = ptrtoint ptr %dbi_base10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %dbi_base10, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %dbi_base.i = getelementptr inbounds %struct.dw_pcie, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dbi_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dbi_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 14
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %10 = and i8 %9, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i41 = icmp eq i8 %10, 1
  br i1 %cmp.i41, label %if.end19, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call21 = tail call i32 @dw_pcie_host_init(ptr noundef %pp) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end16.cleanup_crit_edge, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then13 ], [ %call21, %if.end19 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_pcie_host_init(ptr noundef %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dbi_base.i = getelementptr inbounds %struct.dw_pcie, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dbi_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dbi_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 26476544) #3, !srcloc !24
  %call.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 2236, i32 noundef 4) #3
  %or.i = or i32 %call.i.i, 1
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 2236, i32 noundef 4, i32 noundef %or.i) #3
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dbi_base.i5 = getelementptr inbounds %struct.dw_pcie, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dbi_base.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dbi_base.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %11, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6, i8 1) #3, !srcloc !26
  %call.i.i7 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 2236, i32 noundef 4) #3
  %and.i = and i32 %call.i.i7, -2
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 2236, i32 noundef 4, i32 noundef %and.i) #3
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %dbi_base.i8 = getelementptr inbounds %struct.dw_pcie, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dbi_base.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dbi_base.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %15, i32 1820
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #3, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  %17 = and i32 %16, -33
  %18 = ptrtoint ptr %dbi_base.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dbi_base.i8, align 4
  %add.ptr3.i = getelementptr i8, ptr %19, i32 1820
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %17) #3, !srcloc !24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__initcall__kmod_pci_layerscape__236_151_ls_pcie_driver_init6, !1, !"__initcall__kmod_pci_layerscape__236_151_ls_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pci-layerscape.c", i32 151, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pci-layerscape.c", i32 146, i32 11}
!4 = !{ptr @ls_pcie_driver, !5, !"ls_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pci-layerscape.c", i32 143, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pci-layerscape.c", i32 130, i32 64}
!8 = !{ptr @ls_pcie_host_ops, !9, !"ls_pcie_host_ops", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pci-layerscape.c", i32 93, i32 38}
!10 = !{ptr @ls_pcie_of_match, !11, !"ls_pcie_of_match", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pci-layerscape.c", i32 97, i32 34}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 4200031}
!22 = !{i64 2151739376}
!23 = !{i64 2151741955}
!24 = !{i64 4199833}
!25 = !{i64 2151740981}
!26 = !{i64 4199636}
!27 = !{i64 4200251}
!28 = !{i64 2151740600}
