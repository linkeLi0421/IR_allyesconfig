; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-dw-rockchip.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-dw-rockchip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.rockchip_pcie = type { %struct.dw_pcie, ptr, ptr, ptr, i32, ptr, ptr, ptr }

@__initcall__kmod_pcie_dw_rockchip__293_279_rockchip_pcie_driver_init6 = internal global ptr @rockchip_pcie_driver_init, section ".initcall6.init", align 4
@rockchip_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rockchip_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip-dw-pcie\00", [47 x i8] zeroinitializer }, align 32
@rockchip_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_pcie_link_up, ptr @rockchip_pcie_start_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@rockchip_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @rockchip_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpcie3v3\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get vpcie3v3 regulator\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 235, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable vpcie3v3 regulator\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip_pcie_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/pci/controller/dwc/pcie-dw-rockchip.c\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_pcie_probe._entry_ptr = internal global ptr @rockchip_pcie_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie-phy\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"missing PHY\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get reset lines\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"rockchip_pcie_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 271, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 273, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"rockchip_pcie_of_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 266, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 197, i32 33 }
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"rockchip_pcie_host_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 125, i32 38 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 226, i32 56 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 230, i32 6 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 235, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 146, i32 67 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 150, i32 59 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 163, i32 36 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 166, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [49 x i8] c"../drivers/pci/controller/dwc/pcie-dw-rockchip.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 192, i32 10 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__initcall__kmod_pcie_dw_rockchip__293_279_rockchip_pcie_driver_init6, ptr @rockchip_pcie_probe._entry, ptr @rockchip_pcie_probe._entry_ptr, ptr @rockchip_pcie_driver, ptr @.str, ptr @rockchip_pcie_of_match, ptr @dw_pcie_ops, ptr @rockchip_pcie_host_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_pcie_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 352, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dw_pcie_ops, ptr %ops, align 8
  %pp5 = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7
  %ops6 = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7, i32 8
  %3 = ptrtoint ptr %ops6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rockchip_pcie_host_ops, ptr %ops6, align 8
  %call.i88 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.8) #4
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i88, ptr %apb_base.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.rockchip_pcie_resource_get.exit_crit_edge, label %if.end.i

if.end.rockchip_pcie_resource_get.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %rockchip_pcie_resource_get.exit

if.end.i:                                         ; preds = %if.end
  %call5.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef 7) #4
  %rst_gpio.i = getelementptr inbounds %struct.rockchip_pcie, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %rst_gpio.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i, ptr %rst_gpio.i, align 4
  %cmp.i18.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18.i, label %if.end.i.rockchip_pcie_resource_get.exit_crit_edge, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end.i.rockchip_pcie_resource_get.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rockchip_pcie_resource_get.exit

rockchip_pcie_resource_get.exit:                  ; preds = %if.end.i.rockchip_pcie_resource_get.exit_crit_edge, %if.end.rockchip_pcie_resource_get.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call5.i, %if.end.i.rockchip_pcie_resource_get.exit_crit_edge ], [ %call.i88, %if.end.rockchip_pcie_resource_get.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool8.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool8.not, label %rockchip_pcie_resource_get.exit.if.end10_crit_edge, label %rockchip_pcie_resource_get.exit.cleanup_crit_edge

rockchip_pcie_resource_get.exit.cleanup_crit_edge: ; preds = %rockchip_pcie_resource_get.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

rockchip_pcie_resource_get.exit.if.end10_crit_edge: ; preds = %rockchip_pcie_resource_get.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end10:                                         ; preds = %rockchip_pcie_resource_get.exit.if.end10_crit_edge, %if.end.i.if.end10_crit_edge
  %call11 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1) #4
  %vpcie3v3 = getelementptr inbounds %struct.rockchip_pcie, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %vpcie3v3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %vpcie3v3, align 8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end10
  %cmp.not = icmp eq ptr %call11, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call11 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %7, ptr noundef nonnull @.str.2) #4
  br label %cleanup

if.end21:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %vpcie3v3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %vpcie3v3, align 8
  br label %if.end28

if.else:                                          ; preds = %if.end10
  %call24 = tail call i32 @regulator_enable(ptr noundef %call11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else.if.end28_crit_edge, label %do.end

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.end21
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 8
  %call.i89 = tail call ptr @devm_phy_get(ptr noundef %10, ptr noundef nonnull @.str.10) #4
  %phy.i = getelementptr inbounds %struct.rockchip_pcie, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i89, ptr %phy.i, align 4
  %cmp.i.i90 = icmp ugt ptr %call.i89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i90, label %rockchip_pcie_phy_init.exit, label %if.end.i93

if.end.i93:                                       ; preds = %if.end28
  %call8.i = tail call i32 @phy_init(ptr noundef %call.i89) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i92 = icmp slt i32 %call8.i, 0
  br i1 %cmp.i92, label %if.end.i93.disable_regulator_crit_edge, label %if.end10.i

if.end.i93.disable_regulator_crit_edge:           ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_regulator

if.end10.i:                                       ; preds = %if.end.i93
  %12 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy.i, align 4
  %call12.i = tail call i32 @phy_power_on(ptr noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end10.i.if.end32_crit_edge, label %if.then13.i

if.end10.i.if.end32_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy.i, align 4
  %call15.i = tail call i32 @phy_exit(ptr noundef %15) #4
  br label %disable_regulator

rockchip_pcie_phy_init.exit:                      ; preds = %if.end28
  %16 = ptrtoint ptr %call.i89 to i32
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %10, i32 noundef %16, ptr noundef nonnull @.str.11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool30.not = icmp eq i32 %call6.i, 0
  br i1 %tobool30.not, label %rockchip_pcie_phy_init.exit.if.end32_crit_edge, label %rockchip_pcie_phy_init.exit.disable_regulator_crit_edge

rockchip_pcie_phy_init.exit.disable_regulator_crit_edge: ; preds = %rockchip_pcie_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_regulator

rockchip_pcie_phy_init.exit.if.end32_crit_edge:   ; preds = %rockchip_pcie_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.end32:                                         ; preds = %rockchip_pcie_phy_init.exit.if.end32_crit_edge, %if.end10.i.if.end32_crit_edge
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 8
  %call.i.i = tail call ptr @devm_reset_control_array_get(ptr noundef %18, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %rst.i = getelementptr inbounds %struct.rockchip_pcie, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %rst.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %rst.i, align 8
  %cmp.i.i95 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i95, label %if.then.i97, label %if.end.i99

if.then.i97:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %call.i.i to i32
  %call6.i96 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %18, i32 noundef %20, ptr noundef nonnull @.str.12) #4
  br label %rockchip_pcie_reset_control_release.exit

if.end.i99:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %call8.i98 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #4
  br label %rockchip_pcie_reset_control_release.exit

rockchip_pcie_reset_control_release.exit:         ; preds = %if.end.i99, %if.then.i97
  %retval.0.i100 = phi i32 [ %call6.i96, %if.then.i97 ], [ %call8.i98, %if.end.i99 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i100)
  %tobool34.not = icmp eq i32 %retval.0.i100, 0
  br i1 %tobool34.not, label %if.end36, label %rockchip_pcie_reset_control_release.exit.deinit_phy_crit_edge

rockchip_pcie_reset_control_release.exit.deinit_phy_crit_edge: ; preds = %rockchip_pcie_reset_control_release.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %deinit_phy

if.end36:                                         ; preds = %rockchip_pcie_reset_control_release.exit
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 8
  %clks.i = getelementptr inbounds %struct.rockchip_pcie, ptr %call.i, i32 0, i32 3
  %call.i101 = tail call i32 @devm_clk_bulk_get_all(ptr noundef %22, ptr noundef %clks.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp.i102 = icmp slt i32 %call.i101, 0
  br i1 %cmp.i102, label %if.end36.deinit_phy_crit_edge, label %if.end.i104

if.end36.deinit_phy_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %deinit_phy

if.end.i104:                                      ; preds = %if.end36
  %clk_cnt.i = getelementptr inbounds %struct.rockchip_pcie, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %clk_cnt.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i101, ptr %clk_cnt.i, align 4
  %24 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clks.i, align 8
  %call.i.i103 = tail call i32 @clk_bulk_prepare(i32 noundef %call.i101, ptr noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103)
  %tobool.not.i.i = icmp eq i32 %call.i.i103, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i104.deinit_phy_crit_edge

if.end.i104.deinit_phy_crit_edge:                 ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #6
  br label %deinit_phy

if.end.i.i:                                       ; preds = %if.end.i104
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef %call.i101, ptr noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end40, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_bulk_unprepare(i32 noundef %call.i101, ptr noundef %25) #4
  br label %deinit_phy

if.end40:                                         ; preds = %if.end.i.i
  %call41 = tail call i32 @dw_pcie_host_init(ptr noundef %pp5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clk_cnt.i, align 4
  %28 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clks.i, align 8
  tail call void @clk_bulk_disable(i32 noundef %27, ptr noundef %29) #4
  tail call void @clk_bulk_unprepare(i32 noundef %27, ptr noundef %29) #4
  br label %deinit_phy

deinit_phy:                                       ; preds = %if.end44, %if.then3.i.i, %if.end.i104.deinit_phy_crit_edge, %if.end36.deinit_phy_crit_edge, %rockchip_pcie_reset_control_release.exit.deinit_phy_crit_edge
  %ret.0 = phi i32 [ %retval.0.i100, %rockchip_pcie_reset_control_release.exit.deinit_phy_crit_edge ], [ %call41, %if.end44 ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i103, %if.end.i104.deinit_phy_crit_edge ], [ %call.i101, %if.end36.deinit_phy_crit_edge ]
  %30 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy.i, align 4
  %call.i107 = tail call i32 @phy_exit(ptr noundef %31) #4
  %32 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy.i, align 4
  %call2.i = tail call i32 @phy_power_off(ptr noundef %33) #4
  br label %disable_regulator

disable_regulator:                                ; preds = %deinit_phy, %rockchip_pcie_phy_init.exit.disable_regulator_crit_edge, %if.then13.i, %if.end.i93.disable_regulator_crit_edge
  %ret.1 = phi i32 [ %call6.i, %rockchip_pcie_phy_init.exit.disable_regulator_crit_edge ], [ %ret.0, %deinit_phy ], [ %call12.i, %if.then13.i ], [ %call8.i, %if.end.i93.disable_regulator_crit_edge ]
  %34 = ptrtoint ptr %vpcie3v3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vpcie3v3, align 8
  %tobool46.not = icmp eq ptr %35, null
  br i1 %tobool46.not, label %disable_regulator.cleanup_crit_edge, label %if.then47

disable_regulator.cleanup_crit_edge:              ; preds = %disable_regulator
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then47:                                        ; preds = %disable_regulator
  call void @__sanitizer_cov_trace_pc() #6
  %call49 = tail call i32 @regulator_disable(ptr noundef nonnull %35) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %disable_regulator.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end, %if.then17, %rockchip_pcie_resource_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then17 ], [ %call24, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %rockchip_pcie_resource_get.exit.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ %ret.1, %if.then47 ], [ %ret.1, %disable_regulator.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_link_up(ptr nocapture noundef readonly %pci) #2 align 64 {
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
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 768
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !43
  %7 = and i32 %6, 1056965376
  call void @__sanitizer_cov_trace_const_cmp4(i32 285213440, i32 %7)
  %8 = icmp eq i32 %7, 285213440
  %retval.0 = zext i1 %8 to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_start_link(ptr nocapture noundef readonly %pci) #2 align 64 {
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
  %rst_gpio = getelementptr inbounds %struct.rockchip_pcie, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #4
  %apb_base.i.i = getelementptr inbounds %struct.rockchip_pcie, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 201329664) #4, !srcloc !44
  tail call void @msleep(i32 noundef 100) #4
  %8 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_host_init(ptr nocapture noundef readonly %pp) #2 align 64 {
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
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268439552) #4, !srcloc !44
  %6 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1073758208) #4, !srcloc !44
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_pcie_dw_rockchip__293_279_rockchip_pcie_driver_init6, !1, !"__initcall__kmod_pcie_dw_rockchip__293_279_rockchip_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 279, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 273, i32 11}
!4 = !{ptr @rockchip_pcie_driver, !5, !"rockchip_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 271, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 226, i32 56}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 230, i32 6}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 235, i32 4}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rockchip_pcie_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @rockchip_pcie_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @dw_pcie_ops, !19, !"dw_pcie_ops", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 197, i32 33}
!20 = !{ptr @rockchip_pcie_host_ops, !21, !"rockchip_pcie_host_ops", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 125, i32 38}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 146, i32 67}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 150, i32 59}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 163, i32 36}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 166, i32 10}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 192, i32 10}
!32 = !{ptr @rockchip_pcie_of_match, !33, !"rockchip_pcie_of_match", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/dwc/pcie-dw-rockchip.c", i32 266, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 6053341}
!44 = !{i64 6052923}
