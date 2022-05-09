; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-uniphier-ep.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-uniphier-ep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_pcie_ep_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
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
%struct.uniphier_pcie_ep_priv = type { ptr, %struct.dw_pcie, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }

@__initcall__kmod_pcie_uniphier_ep__303_349_uniphier_pcie_ep_driver_init6 = internal global ptr @uniphier_pcie_ep_driver_init, section ".initcall6.init", align 4
@uniphier_pcie_ep_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_pcie_ep_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @uniphier_pcie_ep_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uniphier-pcie-ep\00", [47 x i8] zeroinitializer }, align 32
@uniphier_pcie_ep_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/pci/controller/dwc/pcie-uniphier-ep.c\00", [50 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_pcie_start_link, ptr @uniphier_pcie_stop_link }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gio\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie-phy\00", [23 x i8] zeroinitializer }, align 32
@uniphier_pcie_ep_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 310, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get phy (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uniphier_pcie_ep_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_pcie_ep_probe._entry_ptr = internal global ptr @uniphier_pcie_ep_probe._entry, section ".printk_index", align 4
@uniphier_pcie_ep_ops = internal constant { %struct.dw_pcie_ep_ops, [16 x i8] } { %struct.dw_pcie_ep_ops { ptr @uniphier_pcie_ep_init, ptr @uniphier_pcie_ep_raise_irq, ptr @uniphier_pcie_get_features, ptr null }, [16 x i8] zeroinitializer }, align 32
@uniphier_pcie_ep_raise_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.1, i32 200, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UNKNOWN IRQ type (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"uniphier_pcie_ep_raise_irq\00", [37 x i8] zeroinitializer }, align 32
@uniphier_pcie_ep_raise_irq._entry_ptr = internal global ptr @uniphier_pcie_ep_raise_irq._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@uniphier_pro5_data = internal constant { %struct.pci_epc_features, [32 x i8] } { %struct.pci_epc_features { i8 32, i8 16, i8 21, [6 x i64] zeroinitializer, i32 65536 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"uniphier_pcie_ep_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 341, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 344, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"uniphier_pcie_ep_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 333, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 281, i32 6 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 265, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 287, i32 59 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 291, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 307, i32 41 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 310, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"uniphier_pcie_ep_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 215, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 200, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"uniphier_pro5_data\00", align 1
@___asan_gen_.63 = private constant [49 x i8] c"../drivers/pci/controller/dwc/pcie-uniphier-ep.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 324, i32 38 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__initcall__kmod_pcie_uniphier_ep__303_349_uniphier_pcie_ep_driver_init6, ptr @uniphier_pcie_ep_probe._entry, ptr @uniphier_pcie_ep_probe._entry_ptr, ptr @uniphier_pcie_ep_raise_irq._entry, ptr @uniphier_pcie_ep_raise_irq._entry_ptr, ptr @uniphier_pcie_ep_driver, ptr @.str, ptr @uniphier_pcie_ep_match, ptr @.str.1, ptr @dw_pcie_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @uniphier_pcie_ep_ops, ptr @.str.9, ptr @.str.10, ptr @uniphier_pro5_data], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_ep_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_ep_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_ep_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_ep_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_ep_raise_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro5_data to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pcie_ep_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_pcie_ep_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pcie_ep_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 352, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %features = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %features, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end29, !prof !43

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 281, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %pci = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %pci, align 8
  %ops = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %call.i, i32 0, i32 1, i32 9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dw_pcie_ops, ptr %ops, align 8
  %call32 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #6
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call32, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %call39 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #6
  %clk_gio = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %clk_gio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call39, ptr %clk_gio, align 4
  %cmp.i128 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %call.i129 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %rst_gio = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %rst_gio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i129, ptr %rst_gio, align 4
  %cmp.i130 = icmp ugt ptr %call.i129, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call.i129 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %call53 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  %clk = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call53, ptr %clk, align 8
  %cmp.i131 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call53 to i32
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  %call.i132 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %rst = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i132, ptr %rst, align 8
  %cmp.i133 = icmp ugt ptr %call.i132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call.i132 to i32
  br label %cleanup

if.end66:                                         ; preds = %if.end59
  %call67 = tail call ptr @devm_phy_optional_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #6
  %phy = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call67, ptr %phy, align 8
  %cmp.i134 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then70, label %if.end76

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call67 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %14) #9
  br label %cleanup

if.end76:                                         ; preds = %if.end66
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call77 = tail call fastcc i32 @uniphier_pcie_ep_enable(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end80:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %ep = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %call.i, i32 0, i32 1, i32 8
  %ops82 = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %call.i, i32 0, i32 1, i32 8, i32 2
  %16 = ptrtoint ptr %ops82 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @uniphier_pcie_ep_ops, ptr %ops82, align 4
  %call85 = tail call i32 @dw_pcie_ep_init(ptr noundef %ep) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end76.cleanup_crit_edge, %if.then70, %if.then63, %if.then56, %if.then49, %if.then42, %if.then35, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %4, %if.then35 ], [ %6, %if.then42 ], [ %8, %if.then49 ], [ %10, %if.then56 ], [ %12, %if.then63 ], [ %14, %if.then70 ], [ %call85, %if.end80 ], [ -12, %entry.cleanup_crit_edge ], [ %call77, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uniphier_pcie_ep_enable(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_gio = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %clk_gio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_gio, align 4
  %call.i40 = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %if.end.i44, label %if.end.out_clk_disable_crit_edge

if.end.out_clk_disable_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk_disable

if.end.i44:                                       ; preds = %if.end
  %call1.i42 = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool2.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool2.not.i43, label %if.end4, label %if.end.i44.out_clk_disable.sink.split_crit_edge

if.end.i44.out_clk_disable.sink.split_crit_edge:  ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk_disable.sink.split

if.end4:                                          ; preds = %if.end.i44
  %rst = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 8
  %call5 = tail call i32 @reset_control_deassert(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_clk_gio_disable_crit_edge

if.end4.out_clk_gio_disable_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk_gio_disable

if.end8:                                          ; preds = %if.end4
  %rst_gio = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %priv, i32 0, i32 5
  %6 = ptrtoint ptr %rst_gio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst_gio, align 4
  %call9 = tail call i32 @reset_control_deassert(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_rst_assert_crit_edge

if.end8.out_rst_assert_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_rst_assert

if.end12:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 32768
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %11 = or i32 %10, 16842752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %add.ptr3.i = getelementptr i8, ptr %13, i32 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #6, !srcloc !47
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %add.ptr7.i = getelementptr i8, ptr %15, i32 32772
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %17 = and i32 %16, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %add.ptr15.i = getelementptr i8, ptr %19, i32 32772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %17) #6, !srcloc !47
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %add.ptr19.i = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %23 = or i32 %22, 251658240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %add.ptr28.i = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %23) #6, !srcloc !47
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 32776
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %29 = and i32 %28, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %31, i32 32776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %29) #6, !srcloc !47
  tail call void @msleep(i32 noundef 100) #6
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %add.ptr.i48 = getelementptr i8, ptr %33, i32 36
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %35 = or i32 %34, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %add.ptr3.i49 = getelementptr i8, ptr %37, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i49, i32 %35) #6, !srcloc !47
  %phy = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %priv, i32 0, i32 6
  %38 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy, align 8
  %call13 = tail call i32 @phy_init(ptr noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %out_rst_gio_assert

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @uniphier_pcie_phy_reset(ptr noundef %priv, i1 noundef zeroext false)
  br label %cleanup

out_rst_gio_assert:                               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %rst_gio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rst_gio, align 4
  %call18 = tail call i32 @reset_control_assert(ptr noundef %41) #6
  br label %out_rst_assert

out_rst_assert:                                   ; preds = %out_rst_gio_assert, %if.end8.out_rst_assert_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end8.out_rst_assert_crit_edge ], [ %call13, %out_rst_gio_assert ]
  %42 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rst, align 8
  %call20 = tail call i32 @reset_control_assert(ptr noundef %43) #6
  br label %out_clk_gio_disable

out_clk_gio_disable:                              ; preds = %out_rst_assert, %if.end4.out_clk_gio_disable_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end4.out_clk_gio_disable_crit_edge ], [ %ret.0, %out_rst_assert ]
  %44 = ptrtoint ptr %clk_gio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk_gio, align 4
  tail call void @clk_disable(ptr noundef %45) #6
  br label %out_clk_disable.sink.split

out_clk_disable.sink.split:                       ; preds = %out_clk_gio_disable, %if.end.i44.out_clk_disable.sink.split_crit_edge
  %.sink = phi ptr [ %45, %out_clk_gio_disable ], [ %3, %if.end.i44.out_clk_disable.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %ret.1, %out_clk_gio_disable ], [ %call1.i42, %if.end.i44.out_clk_disable.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #6
  br label %out_clk_disable

out_clk_disable:                                  ; preds = %out_clk_disable.sink.split, %if.end.out_clk_disable_crit_edge
  %ret.2 = phi i32 [ %call.i40, %if.end.out_clk_disable_crit_edge ], [ %ret.2.ph, %out_clk_disable.sink.split ]
  %46 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %47) #6
  tail call void @clk_unprepare(ptr noundef %47) #6
  br label %cleanup

cleanup:                                          ; preds = %out_clk_disable, %if.end16, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_clk_disable ], [ 0, %if.end16 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pcie_start_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 32776
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %add.ptr3.i = getelementptr i8, ptr %9, i32 32776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %7) #6, !srcloc !47
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_pcie_stop_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 32776
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %add.ptr3.i = getelementptr i8, ptr %9, i32 32776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %7) #6, !srcloc !47
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uniphier_pcie_phy_reset(ptr nocapture noundef readonly %priv, i1 noundef zeroext %assert) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = zext i1 %assert to i32
  %val.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #6, !srcloc !47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_pcie_ep_init(ptr noundef %ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 0) #6
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 1) #6
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 2) #6
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 3) #6
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 4) #6
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pcie_ep_raise_irq(ptr nocapture noundef readonly %ep, i8 noundef zeroext %func_no, i32 noundef %type, i16 noundef zeroext %interrupt_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %ep, i32 -216
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %add.ptr1.i = getelementptr i8, ptr %6, i32 32884
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 8
  %add.ptr6.i = getelementptr i8, ptr %10, i32 32884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %8) #6, !srcloc !47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 6442440) #6
  %12 = and i32 %7, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 8
  %add.ptr11.i = getelementptr i8, ptr %14, i32 32884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %12) #6, !srcloc !47
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i6 = getelementptr i8, ptr %ep, i32 -216
  %15 = ptrtoint ptr %add.ptr.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i6, align 8
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i7, align 4
  %conv14.i = zext i8 %func_no to i32
  %shl.i = shl nuw nsw i32 %conv14.i, 8
  %and15.i = and i32 %shl.i, 1792
  %19 = add i16 %interrupt_num, 31
  %20 = and i16 %19, 31
  %and44.i = zext i16 %20 to i32
  %or.i = or i32 %and15.i, %and44.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 8
  %add.ptr48.i = getelementptr i8, ptr %23, i32 32832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %21) #6, !srcloc !47
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %18, align 8
  %add.ptr50.i = getelementptr i8, ptr %25, i32 32836
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %27 = or i32 %26, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %18, align 8
  %add.ptr59.i = getelementptr i8, ptr %29, i32 32836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 %27) #6, !srcloc !47
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.9, i32 noundef %type) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb1, %sw.bb
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @uniphier_pcie_get_features(ptr nocapture noundef readonly %ep) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %features = getelementptr inbounds %struct.uniphier_pcie_ep_priv, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %features, align 4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_ep_reset_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_pcie_uniphier_ep__303_349_uniphier_pcie_ep_driver_init6, !1, !"__initcall__kmod_pcie_uniphier_ep__303_349_uniphier_pcie_ep_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 349, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 344, i32 11}
!4 = !{ptr @uniphier_pcie_ep_driver, !5, !"uniphier_pcie_ep_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 341, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 281, i32 6}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 287, i32 59}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 291, i32 36}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 307, i32 41}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 310, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @uniphier_pcie_ep_probe._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @uniphier_pcie_ep_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @dw_pcie_ops, !22, !"dw_pcie_ops", i1 false, i1 false}
!22 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 265, i32 33}
!23 = !{ptr @uniphier_pcie_ep_ops, !24, !"uniphier_pcie_ep_ops", i1 false, i1 false}
!24 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 215, i32 36}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 200, i32 3}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @uniphier_pcie_ep_raise_irq._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @uniphier_pcie_ep_raise_irq._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @uniphier_pcie_ep_match, !31, !"uniphier_pcie_ep_match", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 333, i32 34}
!32 = !{ptr @uniphier_pro5_data, !33, !"uniphier_pro5_data", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/dwc/pcie-uniphier-ep.c", i32 324, i32 38}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 5197540}
!45 = !{i64 2155604556}
!46 = !{i64 2155604943}
!47 = !{i64 5197122}
!48 = !{i64 2155605621}
!49 = !{i64 2155605926}
!50 = !{i64 2155606604}
!51 = !{i64 2155607155}
!52 = !{i64 2155602426}
!53 = !{i64 2155602813}
!54 = !{i64 2155603491}
!55 = !{i64 2155603878}
!56 = !{i64 2155610283}
!57 = !{i64 2155610588}
!58 = !{i64 2155611615}
!59 = !{i64 2155696938}
!60 = !{i64 2155697616}
!61 = !{i64 2155697921}
