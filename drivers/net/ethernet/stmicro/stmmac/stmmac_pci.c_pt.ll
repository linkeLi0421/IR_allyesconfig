; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_pci_info = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.stmmac_safety_feature_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_mdio_bus_data = type { i32, i32, i32, ptr, i32, i8 }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }

@__initcall__kmod_stmmac_pci__353_310_stmmac_pci_driver_init6 = internal global ptr @stmmac_pci_driver_init, section ".initcall6.init", align 4
@stmmac_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @stmmac_id_table, ptr @stmmac_pci_probe, ptr @stmmac_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_stmmac_pci_driver_exit = internal global ptr @stmmac_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description354 = internal constant [62 x i8] c"stmmac_pci.description=STMMAC 10/100/1000 Ethernet PCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author355 = internal constant [74 x i8] c"stmmac_pci.author=Rayagond Kokatanur <rayagond.kokatanur@vayavyalabs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [62 x i8] c"stmmac_pci.author=Giuseppe Cavallaro <peppe.cavallaro@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [63 x i8] c"stmmac_pci.file=drivers/net/ethernet/stmicro/stmmac/stmmac-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [23 x i8] c"stmmac_pci.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stmmac_pci\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stmmaceth\00", [22 x i8] zeroinitializer }, align 32
@stmmac_id_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 1792, i32 4360, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @stmmac_pci_info to i32), i32 0 }, %struct.pci_device_id { i32 4170, i32 52233, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @stmmac_pci_info to i32), i32 0 }, %struct.pci_device_id { i32 5827, i32 28930, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @snps_gmac5_pci_info to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@stmmac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stmmac_pci_suspend, ptr @stmmac_pci_resume, ptr @stmmac_pci_suspend, ptr @stmmac_pci_resume, ptr @stmmac_pci_suspend, ptr @stmmac_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stmmac_pci_info = internal constant { %struct.stmmac_pci_info, [28 x i8] } { %struct.stmmac_pci_info { ptr @stmmac_default_data }, [28 x i8] zeroinitializer }, align 32
@snps_gmac5_pci_info = internal constant { %struct.stmmac_pci_info, [28 x i8] } { %struct.stmmac_pci_info { ptr @snps_gmac5_default_data }, [28 x i8] zeroinitializer }, align 32
@stmmac_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: ERROR: failed to enable device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stmmac_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stmmac_pci_probe._entry_ptr = internal global ptr @stmmac_pci_probe._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"stmmac_pci_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 300, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 310, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 301, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"stmmac_id_table\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 291, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"stmmac_pm_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 283, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"stmmac_pci_info\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 68, i32 37 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"snps_gmac5_pci_info\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 137, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [52 x i8] c"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 186, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__exitcall_stmmac_pci_driver_exit, ptr @__initcall__kmod_stmmac_pci__353_310_stmmac_pci_driver_init6, ptr @stmmac_pci_driver_exit, ptr @stmmac_pci_probe._entry, ptr @stmmac_pci_probe._entry_ptr, ptr @stmmac_pci_driver, ptr @.str, ptr @.str.1, ptr @stmmac_id_table, ptr @stmmac_pm_ops, ptr @stmmac_pci_info, ptr @snps_gmac5_pci_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_id_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_pci_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snps_gmac5_pci_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @stmmac_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stmmac_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @stmmac_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %res = alloca %struct.stmmac_resources, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %res) #6
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 720, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i105 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #6
  %mdio_bus_data = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %mdio_bus_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i105, ptr %mdio_bus_data, align 4
  %tobool4.not = icmp eq ptr %call.i105, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i106 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #6
  %dma_cfg = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i106, ptr %dma_cfg, align 4
  %tobool10.not = icmp eq ptr %call.i106, null
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call.i107 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #6
  %safety_feat_cfg = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %safety_feat_cfg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i107, ptr %safety_feat_cfg, align 4
  %tobool16.not = icmp eq ptr %call.i107, null
  br i1 %tobool16.not, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %call19 = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %if.end18
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp24 = icmp eq i32 %7, 0
  br i1 %cmp24, label %for.body.preheader.for.inc_crit_edge, label %cond.end

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #9
  br label %cleanup

cond.end:                                         ; preds = %for.body.preheader
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp30 = icmp eq i32 %sub, -1
  br i1 %cmp30, label %cond.end.for.inc_crit_edge, label %cond.end.if.end32_crit_edge

cond.end.if.end32_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end32:                                         ; preds = %cond.end.5.if.end32_crit_edge, %cond.end.4.if.end32_crit_edge, %cond.end.3.if.end32_crit_edge, %cond.end.2.if.end32_crit_edge, %cond.end.1.if.end32_crit_edge, %cond.end.if.end32_crit_edge
  %i.0112.lcssa = phi i32 [ 0, %cond.end.if.end32_crit_edge ], [ 1, %cond.end.1.if.end32_crit_edge ], [ 2, %cond.end.2.if.end32_crit_edge ], [ 3, %cond.end.3.if.end32_crit_edge ], [ 4, %cond.end.4.if.end32_crit_edge ], [ 5, %cond.end.5.if.end32_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0112.lcssa
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end32.pci_name.exit_crit_edge

if.end32.pci_name.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end32.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.end32.pci_name.exit_crit_edge ]
  %call34 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef %shl, ptr noundef %retval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %pci_name.exit.for.end_crit_edge, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pci_name.exit.for.end_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %cond.end.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %end.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %14 = ptrtoint ptr %end.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp24.1 = icmp eq i32 %15, 0
  br i1 %cmp24.1, label %for.inc.for.inc.1_crit_edge, label %cond.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

cond.end.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 8
  %sub.1 = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.1)
  %cmp30.1 = icmp eq i32 %sub.1, -1
  br i1 %cmp30.1, label %cond.end.1.for.inc.1_crit_edge, label %cond.end.1.if.end32_crit_edge

cond.end.1.if.end32_crit_edge:                    ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

cond.end.1.for.inc.1_crit_edge:                   ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %cond.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %end.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %18 = ptrtoint ptr %end.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp24.2 = icmp eq i32 %19, 0
  br i1 %cmp24.2, label %for.inc.1.for.inc.2_crit_edge, label %cond.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

cond.end.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2, align 8
  %sub.2 = sub i32 %19, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.2)
  %cmp30.2 = icmp eq i32 %sub.2, -1
  br i1 %cmp30.2, label %cond.end.2.for.inc.2_crit_edge, label %cond.end.2.if.end32_crit_edge

cond.end.2.if.end32_crit_edge:                    ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

cond.end.2.for.inc.2_crit_edge:                   ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %cond.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %end.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %22 = ptrtoint ptr %end.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp24.3 = icmp eq i32 %23, 0
  br i1 %cmp24.3, label %for.inc.2.for.inc.3_crit_edge, label %cond.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

cond.end.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.3, align 8
  %sub.3 = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.3)
  %cmp30.3 = icmp eq i32 %sub.3, -1
  br i1 %cmp30.3, label %cond.end.3.for.inc.3_crit_edge, label %cond.end.3.if.end32_crit_edge

cond.end.3.if.end32_crit_edge:                    ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

cond.end.3.for.inc.3_crit_edge:                   ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %cond.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %end.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 1
  %26 = ptrtoint ptr %end.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp24.4 = icmp eq i32 %27, 0
  br i1 %cmp24.4, label %for.inc.3.for.inc.4_crit_edge, label %cond.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

cond.end.4:                                       ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.4, align 8
  %sub.4 = sub i32 %27, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.4)
  %cmp30.4 = icmp eq i32 %sub.4, -1
  br i1 %cmp30.4, label %cond.end.4.for.inc.4_crit_edge, label %cond.end.4.if.end32_crit_edge

cond.end.4.if.end32_crit_edge:                    ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

cond.end.4.for.inc.4_crit_edge:                   ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %cond.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %end.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 1
  %30 = ptrtoint ptr %end.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp24.5 = icmp eq i32 %31, 0
  br i1 %cmp24.5, label %for.inc.4.for.end_crit_edge, label %cond.end.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cond.end.5:                                       ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.5, align 8
  %sub.5 = sub i32 %31, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.5)
  %cmp30.5 = icmp eq i32 %sub.5, -1
  br i1 %cmp30.5, label %cond.end.5.for.end_crit_edge, label %cond.end.5.if.end32_crit_edge

cond.end.5.if.end32_crit_edge:                    ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

cond.end.5.for.end_crit_edge:                     ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cond.end.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %pci_name.exit.for.end_crit_edge
  %i.0111 = phi i32 [ %i.0112.lcssa, %pci_name.exit.for.end_crit_edge ], [ 6, %cond.end.5.for.end_crit_edge ], [ 6, %for.inc.4.for.end_crit_edge ]
  tail call void @pci_set_master(ptr noundef %pdev) #6
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 4
  %call38 = tail call i32 %35(ptr noundef %pdev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %36 = getelementptr inbounds i8, ptr %res, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 92)
  %call42 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %arrayidx43 = getelementptr ptr, ptr %call42, i32 %i.0111
  %38 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx43, align 4
  %40 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %res, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  %wol_irq = getelementptr inbounds %struct.stmmac_resources, ptr %res, i32 0, i32 2
  %43 = ptrtoint ptr %wol_irq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %wol_irq, align 4
  %irq45 = getelementptr inbounds %struct.stmmac_resources, ptr %res, i32 0, i32 4
  %44 = ptrtoint ptr %irq45 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %42, ptr %irq45, align 4
  %45 = ptrtoint ptr %safety_feat_cfg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %safety_feat_cfg, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %46, align 4
  %48 = load ptr, ptr %safety_feat_cfg, align 4
  %mrxpee = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %mrxpee to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %mrxpee, align 4
  %50 = load ptr, ptr %safety_feat_cfg, align 4
  %mestee = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %mestee to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %mestee, align 4
  %52 = load ptr, ptr %safety_feat_cfg, align 4
  %mrxee = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %mrxee to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %mrxee, align 4
  %54 = load ptr, ptr %safety_feat_cfg, align 4
  %mtxee = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %mtxee to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %mtxee, align 4
  %56 = load ptr, ptr %safety_feat_cfg, align 4
  %epsi = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %epsi to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %epsi, align 4
  %58 = load ptr, ptr %safety_feat_cfg, align 4
  %edpp = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %edpp to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %edpp, align 4
  %60 = load ptr, ptr %safety_feat_cfg, align 4
  %prtyen = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %prtyen to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %prtyen, align 4
  %62 = load ptr, ptr %safety_feat_cfg, align 4
  %tmouten = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %tmouten to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %tmouten, align 4
  %call56 = call i32 @stmmac_dvr_probe(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %res) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %for.end.cleanup_crit_edge, %pci_name.exit.cleanup_crit_edge, %do.end, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end ], [ %call56, %if.end41 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ %call34, %pci_name.exit.cleanup_crit_edge ], [ %call38, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %res) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmmac_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call i32 @stmmac_dvr_remove(ptr noundef %dev) #6
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %cond.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cond.end:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp7 = icmp eq i32 %sub, -1
  br i1 %cmp7, label %cond.end.for.inc_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %cond.end.5.if.end_crit_edge, %cond.end.4.if.end_crit_edge, %cond.end.3.if.end_crit_edge, %cond.end.2.if.end_crit_edge, %cond.end.1.if.end_crit_edge, %cond.end.if.end_crit_edge
  %i.021.lcssa = phi i32 [ 0, %cond.end.if.end_crit_edge ], [ 1, %cond.end.1.if.end_crit_edge ], [ 2, %cond.end.2.if.end_crit_edge ], [ 3, %cond.end.3.if.end_crit_edge ], [ 4, %cond.end.4.if.end_crit_edge ], [ 5, %cond.end.5.if.end_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.021.lcssa
  tail call void @pcim_iounmap_regions(ptr noundef %pdev, i32 noundef %shl) #6
  br label %for.end

for.inc:                                          ; preds = %cond.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %end.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %4 = ptrtoint ptr %end.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.1 = icmp eq i32 %5, 0
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %cond.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

cond.end.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 8
  %sub.1 = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.1)
  %cmp7.1 = icmp eq i32 %sub.1, -1
  br i1 %cmp7.1, label %cond.end.1.for.inc.1_crit_edge, label %cond.end.1.if.end_crit_edge

cond.end.1.if.end_crit_edge:                      ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.end.1.for.inc.1_crit_edge:                   ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %cond.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %end.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %8 = ptrtoint ptr %end.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.2 = icmp eq i32 %9, 0
  br i1 %cmp1.2, label %for.inc.1.for.inc.2_crit_edge, label %cond.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

cond.end.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 8
  %sub.2 = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.2)
  %cmp7.2 = icmp eq i32 %sub.2, -1
  br i1 %cmp7.2, label %cond.end.2.for.inc.2_crit_edge, label %cond.end.2.if.end_crit_edge

cond.end.2.if.end_crit_edge:                      ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.end.2.for.inc.2_crit_edge:                   ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %cond.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %end.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %12 = ptrtoint ptr %end.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.3 = icmp eq i32 %13, 0
  br i1 %cmp1.3, label %for.inc.2.for.inc.3_crit_edge, label %cond.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

cond.end.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.3, align 8
  %sub.3 = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.3)
  %cmp7.3 = icmp eq i32 %sub.3, -1
  br i1 %cmp7.3, label %cond.end.3.for.inc.3_crit_edge, label %cond.end.3.if.end_crit_edge

cond.end.3.if.end_crit_edge:                      ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.end.3.for.inc.3_crit_edge:                   ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %cond.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %end.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 1
  %16 = ptrtoint ptr %end.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.4 = icmp eq i32 %17, 0
  br i1 %cmp1.4, label %for.inc.3.for.inc.4_crit_edge, label %cond.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

cond.end.4:                                       ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.4, align 8
  %sub.4 = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.4)
  %cmp7.4 = icmp eq i32 %sub.4, -1
  br i1 %cmp7.4, label %cond.end.4.for.inc.4_crit_edge, label %cond.end.4.if.end_crit_edge

cond.end.4.if.end_crit_edge:                      ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.end.4.for.inc.4_crit_edge:                   ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %cond.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %end.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 1
  %20 = ptrtoint ptr %end.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.5 = icmp eq i32 %21, 0
  br i1 %cmp1.5, label %for.inc.4.for.end_crit_edge, label %cond.end.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cond.end.5:                                       ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.5, align 8
  %sub.5 = sub i32 %21, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.5)
  %cmp7.5 = icmp eq i32 %sub.5, -1
  br i1 %cmp7.5, label %cond.end.5.for.end_crit_edge, label %cond.end.5.if.end_crit_edge

cond.end.5.if.end_crit_edge:                      ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.end.5.for.end_crit_edge:                     ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cond.end.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %if.end
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_default_data(ptr nocapture noundef readnone %pdev, ptr nocapture noundef %plat) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_csr.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 12
  %0 = ptrtoint ptr %clk_csr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %clk_csr.i, align 4
  %has_gmac.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 13
  %1 = ptrtoint ptr %has_gmac.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %has_gmac.i, align 4
  %force_sf_dma_mode.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 19
  %2 = ptrtoint ptr %force_sf_dma_mode.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %force_sf_dma_mode.i, align 4
  %mdio_bus_data.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 4
  %3 = ptrtoint ptr %mdio_bus_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdio_bus_data.i, align 4
  %needs_reset.i = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %needs_reset.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %needs_reset.i, align 4
  %multicast_filter_bins.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 24
  %6 = ptrtoint ptr %multicast_filter_bins.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 64, ptr %multicast_filter_bins.i, align 4
  %unicast_filter_entries.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 25
  %7 = ptrtoint ptr %unicast_filter_entries.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %unicast_filter_entries.i, align 4
  %maxmtu.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 23
  %8 = ptrtoint ptr %maxmtu.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9000, ptr %maxmtu.i, align 4
  %tx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 30
  %9 = ptrtoint ptr %tx_queues_to_use.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %tx_queues_to_use.i, align 4
  %rx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 29
  %10 = ptrtoint ptr %rx_queues_to_use.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %rx_queues_to_use.i, align 4
  %use_prio.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 34, i32 0, i32 6
  %11 = ptrtoint ptr %use_prio.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %use_prio.i, align 4
  %use_prio2.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 33, i32 0, i32 3
  %12 = ptrtoint ptr %use_prio2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %use_prio2.i, align 1
  %pkt_route.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 33, i32 0, i32 2
  %13 = ptrtoint ptr %pkt_route.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %pkt_route.i, align 4
  %14 = ptrtoint ptr %plat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %plat, align 4
  %phy_addr = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 1
  %15 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %phy_addr, align 4
  %phy_interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 3
  %16 = ptrtoint ptr %phy_interface to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %phy_interface, align 4
  %dma_cfg = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 8
  %17 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_cfg, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32, ptr %18, align 4
  %20 = load ptr, ptr %dma_cfg, align 4
  %pblx8 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %pblx8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %pblx8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snps_gmac5_default_data(ptr noundef %pdev, ptr noundef %plat) #2 align 64 {
for.body.preheader:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_csr = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 12
  %0 = ptrtoint ptr %clk_csr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %clk_csr, align 4
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 58
  %1 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %has_gmac4, align 4
  %force_sf_dma_mode = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 19
  %2 = ptrtoint ptr %force_sf_dma_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %force_sf_dma_mode, align 4
  %tso_en = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 60
  %3 = ptrtoint ptr %tso_en to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %tso_en, align 1
  %pmt = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 18
  %4 = ptrtoint ptr %pmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %pmt, align 4
  %multicast_filter_bins = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 24
  %5 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64, ptr %multicast_filter_bins, align 4
  %unicast_filter_entries = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 25
  %6 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %unicast_filter_entries, align 4
  %maxmtu = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 23
  %7 = ptrtoint ptr %maxmtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 9000, ptr %maxmtu, align 4
  %tx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 30
  %8 = ptrtoint ptr %tx_queues_to_use to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %tx_queues_to_use, align 4
  %rx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 29
  %9 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %rx_queues_to_use, align 4
  %tx_sched_algorithm = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 32
  %10 = ptrtoint ptr %tx_sched_algorithm to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %tx_sched_algorithm, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.092 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 34, i32 %i.092
  %use_prio = getelementptr %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 34, i32 %i.092, i32 6
  %11 = ptrtoint ptr %use_prio to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %use_prio, align 4
  %mode_to_use = getelementptr %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 34, i32 %i.092, i32 1
  %12 = ptrtoint ptr %mode_to_use to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %mode_to_use, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 25, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.092)
  %cmp6 = icmp sgt i32 %i.092, 0
  br i1 %cmp6, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %tbs_en = getelementptr %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 34, i32 %i.092, i32 8
  %14 = ptrtoint ptr %tbs_en to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %tbs_en, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.092, 1
  %15 = ptrtoint ptr %tx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_queues_to_use, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %rx_sched_algorithm = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 31
  %17 = ptrtoint ptr %rx_sched_algorithm to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %rx_sched_algorithm, align 4
  %18 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_queues_to_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1194.not = icmp eq i32 %19, 0
  br i1 %cmp1194.not, label %for.end.for.end24_crit_edge, label %for.end.for.body12_crit_edge

for.end.for.body12_crit_edge:                     ; preds = %for.end
  br label %for.body12

for.end.for.end24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end24

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.end.for.body12_crit_edge
  %i.195 = phi i32 [ %inc23, %for.body12.for.body12_crit_edge ], [ 0, %for.end.for.body12_crit_edge ]
  %arrayidx13 = getelementptr %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 33, i32 %i.195
  %use_prio14 = getelementptr %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 33, i32 %i.195, i32 3
  %20 = ptrtoint ptr %use_prio14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %use_prio14, align 1
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx13, align 4
  %pkt_route = getelementptr %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 33, i32 %i.195, i32 2
  %22 = ptrtoint ptr %pkt_route to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %pkt_route, align 4
  %chan = getelementptr %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 33, i32 %i.195, i32 1
  %23 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.195, ptr %chan, align 4
  %inc23 = add nuw i32 %i.195, 1
  %24 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_queues_to_use, align 4
  %cmp11 = icmp ult i32 %inc23, %25
  br i1 %cmp11, label %for.body12.for.body12_crit_edge, label %for.body12.for.end24_crit_edge

for.body12.for.end24_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end24

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12

for.end24:                                        ; preds = %for.body12.for.end24_crit_edge, %for.end.for.end24_crit_edge
  %26 = ptrtoint ptr %plat to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %plat, align 4
  %phy_addr = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 1
  %27 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %phy_addr, align 4
  %phy_interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 3
  %28 = ptrtoint ptr %phy_interface to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %phy_interface, align 4
  %dma_cfg = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 8
  %29 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_cfg, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %30, align 4
  %32 = load ptr, ptr %dma_cfg, align 4
  %pblx8 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %pblx8 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %pblx8, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #6
  %axi = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 57
  %34 = ptrtoint ptr %axi to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %axi, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.end24.cleanup_crit_edge, label %if.end28

for.end24.cleanup_crit_edge:                      ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #8
  %axi_wr_osr_lmt = getelementptr inbounds %struct.stmmac_axi, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %axi_wr_osr_lmt to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 31, ptr %axi_wr_osr_lmt, align 4
  %axi_rd_osr_lmt = getelementptr inbounds %struct.stmmac_axi, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %axi_rd_osr_lmt to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 31, ptr %axi_rd_osr_lmt, align 4
  %axi_fb = getelementptr inbounds %struct.stmmac_axi, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %axi_fb to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %axi_fb, align 4
  %axi_blen = getelementptr inbounds %struct.stmmac_axi, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %axi_blen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %axi_blen, align 4
  %arrayidx36 = getelementptr %struct.stmmac_axi, ptr %call.i, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %arrayidx36, align 4
  %arrayidx39 = getelementptr %struct.stmmac_axi, ptr %call.i, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16, ptr %arrayidx39, align 4
  %arrayidx42 = getelementptr %struct.stmmac_axi, ptr %call.i, i32 0, i32 5, i32 3
  %41 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 32, ptr %arrayidx42, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -12, %for.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_iounmap_regions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_pci_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call = tail call i32 @stmmac_suspend(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_disable_device(ptr noundef %add.ptr) #6
  %call5 = tail call i32 @pci_wake_from_d3(ptr noundef %add.ptr, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_pci_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  tail call void @pci_restore_state(ptr noundef %add.ptr) #6
  %call = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #6
  %call1 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_set_master(ptr noundef %add.ptr) #6
  %call2 = tail call i32 @stmmac_resume(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_stmmac_pci__353_310_stmmac_pci_driver_init6, !1, !"__initcall__kmod_stmmac_pci__353_310_stmmac_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c", i32 310, i32 1}
!2 = !{ptr @__exitcall_stmmac_pci_driver_exit, !1, !"__exitcall_stmmac_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description354, !4, !"__UNIQUE_ID_description354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c", i32 312, i32 1}
!5 = !{ptr @__UNIQUE_ID_author355, !6, !"__UNIQUE_ID_author355", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c", i32 313, i32 1}
!7 = !{ptr @__UNIQUE_ID_author356, !8, !"__UNIQUE_ID_author356", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c", i32 314, i32 1}
!9 = !{ptr @__UNIQUE_ID_file357, !10, !"__UNIQUE_ID_file357", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c", i32 315, i32 1}
!11 = !{ptr @__UNIQUE_ID_license358, !10, !"__UNIQUE_ID_license358", i1 false, i1 false}
!12 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c", i32 301, i32 10}
!15 = !{ptr @stmmac_pci_driver, !16, !"stmmac_pci_driver", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c", i32 300, i32 26}
!17 = !{ptr @stmmac_id_table, !18, !"stmmac_id_table", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c", i32 291, i32 35}
!19 = !{ptr @stmmac_pci_info, !20, !"stmmac_pci_info", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c", i32 68, i32 37}
!21 = !{ptr @snps_gmac5_pci_info, !22, !"snps_gmac5_pci_info", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c", i32 137, i32 37}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c", i32 186, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @stmmac_pci_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @stmmac_pci_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @stmmac_pm_ops, !32, !"stmmac_pm_ops", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c", i32 283, i32 8}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
