; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-visconti.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-visconti.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
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
%struct.visconti_pcie = type { %struct.dw_pcie, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_pcie_visconti__236_329_visconti_pcie_driver_init6 = internal global ptr @visconti_pcie_driver_init, section ".initcall6.init", align 4
@visconti_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @visconti_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @visconti_pcie_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"visconti-pcie\00", [18 x i8] zeroinitializer }, align 32
@visconti_pcie_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,visconti-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr @visconti_pcie_cpu_addr_fixup, ptr null, ptr null, ptr null, ptr @visconti_pcie_link_up, ptr @visconti_pcie_start_link, ptr @visconti_pcie_stop_link }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/pci/controller/dwc/pcie-visconti.c\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ulreg\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smu\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get ref clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get core clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get aux clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@visconti_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @visconti_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"visconti_pcie_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 321, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 324, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"visconti_pcie_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 316, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 186, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 143, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 247, i32 65 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 251, i32 63 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 255, i32 63 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 259, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 262, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 264, i32 36 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 267, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 269, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 272, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 283, i32 42 }
@___asan_gen_.57 = private unnamed_addr constant [23 x i8] c"visconti_pcie_host_ops\00", align 1
@___asan_gen_.58 = private constant [46 x i8] c"../drivers/pci/controller/dwc/pcie-visconti.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 238, i32 38 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__initcall__kmod_pcie_visconti__236_329_visconti_pcie_driver_init6, ptr @visconti_pcie_driver, ptr @.str, ptr @visconti_pcie_match, ptr @dw_pcie_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @visconti_pcie_host_ops], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visconti_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visconti_pcie_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visconti_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @visconti_pcie_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 344, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 9
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dw_pcie_ops, ptr %ops, align 8
  %call.i22 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #4
  %ulreg_base.i = getelementptr inbounds %struct.visconti_pcie, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ulreg_base.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i22, ptr %ulreg_base.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call.i22 to i32
  br label %visconti_get_resources.exit

if.end.i:                                         ; preds = %if.end
  %call6.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #4
  %smu_base.i = getelementptr inbounds %struct.visconti_pcie, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %smu_base.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6.i, ptr %smu_base.i, align 4
  %cmp.i69.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69.i, label %if.then9.i, label %if.end12.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %call6.i to i32
  br label %visconti_get_resources.exit

if.end12.i:                                       ; preds = %if.end.i
  %call13.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.4) #4
  %mpu_base.i = getelementptr inbounds %struct.visconti_pcie, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %mpu_base.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13.i, ptr %mpu_base.i, align 8
  %cmp.i70.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70.i, label %if.then16.i, label %if.end19.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call13.i to i32
  br label %visconti_get_resources.exit

if.end19.i:                                       ; preds = %if.end12.i
  %call20.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #4
  %refclk.i = getelementptr inbounds %struct.visconti_pcie, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %refclk.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call20.i, ptr %refclk.i, align 4
  %cmp.i71.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71.i, label %if.then23.i, label %if.end27.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call20.i to i32
  %call26.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %9, ptr noundef nonnull @.str.6) #4
  br label %visconti_get_resources.exit

if.end27.i:                                       ; preds = %if.end19.i
  %call28.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #4
  %coreclk.i = getelementptr inbounds %struct.visconti_pcie, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %coreclk.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call28.i, ptr %coreclk.i, align 8
  %cmp.i72.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72.i, label %if.then31.i, label %if.end35.i

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %call28.i to i32
  %call34.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %11, ptr noundef nonnull @.str.8) #4
  br label %visconti_get_resources.exit

if.end35.i:                                       ; preds = %if.end27.i
  %call36.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #4
  %auxclk.i = getelementptr inbounds %struct.visconti_pcie, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %auxclk.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call36.i, ptr %auxclk.i, align 4
  %cmp.i73.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73.i, label %if.then39.i, label %if.end35.i.if.end7_crit_edge

if.end35.i.if.end7_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then39.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %call36.i to i32
  %call42.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %13, ptr noundef nonnull @.str.10) #4
  br label %visconti_get_resources.exit

visconti_get_resources.exit:                      ; preds = %if.then39.i, %if.then31.i, %if.then23.i, %if.then16.i, %if.then9.i, %if.then.i
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ %5, %if.then9.i ], [ %7, %if.then16.i ], [ %call26.i, %if.then23.i ], [ %call34.i, %if.then31.i ], [ %call42.i, %if.then39.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool5.not, label %visconti_get_resources.exit.if.end7_crit_edge, label %visconti_get_resources.exit.cleanup_crit_edge

visconti_get_resources.exit.cleanup_crit_edge:    ; preds = %visconti_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

visconti_get_resources.exit.if.end7_crit_edge:    ; preds = %visconti_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %visconti_get_resources.exit.if.end7_crit_edge, %if.end35.i.if.end7_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i23 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.11) #4
  %irq.i = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7, i32 7
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i23, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp.i = icmp slt i32 %call.i23, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end.i24

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i24:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %pp2.i = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7
  %ops.i = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7, i32 8
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @visconti_pcie_host_ops, ptr %ops.i, align 8
  %call5.i = tail call i32 @dw_pcie_host_init(ptr noundef %pp2.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i24, %if.end7.cleanup_crit_edge, %visconti_get_resources.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %visconti_get_resources.exit.cleanup_crit_edge ], [ %call5.i, %if.end.i24 ], [ %call.i23, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @visconti_pcie_cpu_addr_fixup(ptr nocapture noundef readonly %pci, i64 noundef %cpu_addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.dw_pcie, ptr %pci, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base, align 8
  %neg = xor i32 %1, -1
  %conv = zext i32 %neg to i64
  %and = and i64 %conv, %cpu_addr
  ret i64 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pcie_link_up(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ulreg_base = getelementptr inbounds %struct.visconti_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ulreg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ulreg_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 2152
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !43
  %7 = and i32 %6, 285212672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pcie_start_link(ptr noundef %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ulreg_base = getelementptr inbounds %struct.visconti_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ulreg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ulreg_base, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #4, !srcloc !44
  %call1 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call1, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 145) #4
  %add.ptr = getelementptr i8, ptr %5, i32 2152
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !43
  %7 = and i32 %6, 285212672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not59 = icmp eq i32 %7, 0
  br i1 %tobool.not59, label %entry.land.lhs.true_crit_edge, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then23.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 22501, i32 noundef 90000, i32 noundef 2) #4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !43
  %9 = and i32 %8, 285212672
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then23.land.lhs.true_crit_edge, label %if.then23.if.end30_crit_edge

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then23.land.lhs.true_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !43
  %11 = and i32 %10, 285212672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool27.not = icmp eq i32 %11, 0
  br i1 %tobool27.not, label %for.end.cleanup_crit_edge, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end30:                                         ; preds = %for.end.if.end30_crit_edge, %if.then23.if.end30_crit_edge, %entry.if.end30_crit_edge
  %12 = ptrtoint ptr %ulreg_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ulreg_base, align 8
  %add.ptr.i54 = getelementptr i8, ptr %13, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 1056964608) #4, !srcloc !44
  %call31 = tail call i32 @dw_pcie_link_up(ptr noundef %pci) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.then33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %mpu_base.i = getelementptr inbounds %struct.visconti_pcie, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %mpu_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mpu_base.i, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !43
  %17 = and i32 %16, -16777217
  %18 = ptrtoint ptr %mpu_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mpu_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #4, !srcloc !44
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end30.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %for.end.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @visconti_pcie_stop_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ulreg_base.i = getelementptr inbounds %struct.visconti_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ulreg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ulreg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 2144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !43
  %7 = and i32 %6, -16777217
  %8 = ptrtoint ptr %ulreg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ulreg_base.i, align 8
  %add.ptr.i9 = getelementptr i8, ptr %9, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %7) #4, !srcloc !44
  %mpu_base.i = getelementptr inbounds %struct.visconti_pcie, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %mpu_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mpu_base.i, align 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !43
  %13 = or i32 %12, 16777216
  %14 = ptrtoint ptr %mpu_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mpu_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_link_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pcie_host_init(ptr nocapture noundef readonly %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %smu_base.i = getelementptr inbounds %struct.visconti_pcie, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %smu_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #4, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #4
  %7 = ptrtoint ptr %smu_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu_base.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %8, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 33554432) #4, !srcloc !44
  %ulreg_base.i = getelementptr inbounds %struct.visconti_pcie, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %ulreg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ulreg_base.i, align 8
  %add.ptr.i111 = getelementptr i8, ptr %10, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 67108864) #4, !srcloc !44
  %11 = ptrtoint ptr %ulreg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ulreg_base.i, align 8
  %add.ptr.i113 = getelementptr i8, ptr %12, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 218103808) #4, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #4
  %14 = ptrtoint ptr %ulreg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ulreg_base.i, align 8
  %add.ptr.i115 = getelementptr i8, ptr %15, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 251658240) #4, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #4
  %17 = ptrtoint ptr %smu_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smu_base.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %18, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 16777216) #4, !srcloc !44
  %19 = ptrtoint ptr %ulreg_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ulreg_base.i, align 8
  %add.ptr1 = getelementptr i8, ptr %20, i32 264
  %call2 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call2, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 225) #4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #4, !srcloc !43
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not129 = icmp eq i32 %22, 0
  br i1 %tobool.not129, label %entry.land.lhs.true_crit_edge, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then24.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call15 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then24

if.then24:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #4, !srcloc !43
  %24 = and i32 %23, 16777216
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.then24.land.lhs.true_crit_edge, label %if.then24.if.end31_crit_edge

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then24.land.lhs.true_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #4, !srcloc !43
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool28.not = icmp eq i32 %26, 0
  br i1 %tobool28.not, label %for.end.cleanup_crit_edge, label %for.end.if.end31_crit_edge

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %for.end.if.end31_crit_edge, %if.then24.if.end31_crit_edge, %entry.if.end31_crit_edge
  %27 = ptrtoint ptr %ulreg_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ulreg_base.i, align 8
  %add.ptr.i119 = getelementptr i8, ptr %28, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 16777216) #4, !srcloc !44
  %29 = ptrtoint ptr %ulreg_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ulreg_base.i, align 8
  %add.ptr33 = getelementptr i8, ptr %30, i32 412
  %call37 = tail call i64 @ktime_get() #4
  %add.i120 = add i64 %call37, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 235) #4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #4, !srcloc !43
  %32 = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool56.not131 = icmp eq i32 %32, 0
  br i1 %tobool56.not131, label %if.end31.land.lhs.true60_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31.land.lhs.true60_crit_edge:               ; preds = %if.end31
  br label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.then70.land.lhs.true60_crit_edge, %if.end31.land.lhs.true60_crit_edge
  %call61 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call61, i64 %add.i120)
  %cmp3.i122 = icmp sgt i64 %call61, %add.i120
  br i1 %cmp3.i122, label %for.end74, label %if.then70

if.then70:                                        ; preds = %land.lhs.true60
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #4, !srcloc !43
  %34 = and i32 %33, 16777216
  %tobool56.not = icmp eq i32 %34, 0
  br i1 %tobool56.not, label %if.then70.land.lhs.true60_crit_edge, label %if.then70.cleanup_crit_edge

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then70.land.lhs.true60_crit_edge:              ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true60

for.end74:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #6
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #4, !srcloc !43
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool77.not = icmp eq i32 %36, 0
  %spec.select = select i1 %tobool77.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end74, %if.then70.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %for.end.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ %spec.select, %for.end74 ], [ 0, %if.then70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_pcie_visconti__236_329_visconti_pcie_driver_init6, !1, !"__initcall__kmod_pcie_visconti__236_329_visconti_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 329, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 324, i32 11}
!4 = !{ptr @visconti_pcie_driver, !5, !"visconti_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 321, i32 31}
!6 = !{ptr @dw_pcie_ops, !7, !"dw_pcie_ops", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 186, i32 33}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 143, i32 8}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 247, i32 65}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 251, i32 63}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 255, i32 63}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 259, i32 35}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 262, i32 10}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 264, i32 36}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 267, i32 10}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 269, i32 35}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 272, i32 10}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 283, i32 42}
!30 = !{ptr @visconti_pcie_host_ops, !31, !"visconti_pcie_host_ops", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 238, i32 38}
!32 = !{ptr @visconti_pcie_match, !33, !"visconti_pcie_match", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/dwc/pcie-visconti.c", i32 316, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 4896493}
!44 = !{i64 4896075}
