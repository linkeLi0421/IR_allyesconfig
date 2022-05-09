; ModuleID = '/llk/IR_all_yes/drivers/phy/broadcom/phy-bcm-ns2-pcie.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-bcm-ns2-pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdio_driver = type { %struct.mdio_driver_common, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }

@__initcall__kmod_phy_bcm_ns2_pcie__326_94_mdio_module_init6 = internal global ptr @mdio_module_init, section ".initcall6.init", align 4
@ns2_pci_phy_driver = internal global { %struct.mdio_driver, [36 x i8] } { %struct.mdio_driver { %struct.mdio_driver_common { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ns2_pci_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0 }, ptr @ns2_pci_phy_probe, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mdio_module_exit = internal global ptr @mdio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author327 = internal constant [33 x i8] c"phy_bcm_ns2_pcie.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description328 = internal constant [64 x i8] c"phy_bcm_ns2_pcie.description=Broadcom Northstar2 PCI Phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file329 = internal constant [60 x i8] c"phy_bcm_ns2_pcie.file=drivers/phy/broadcom/phy-bcm-ns2-pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [32 x i8] c"phy_bcm_ns2_pcie.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias331 = internal constant [48 x i8] c"phy_bcm_ns2_pcie.alias=platform:phy-bcm-ns2-pci\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"phy-bcm-ns2-pci\00", [16 x i8] zeroinitializer }, align 32
@ns2_pci_phy_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns2-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ns2_pci_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @ns2_pci_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ns2_pci_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 61, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create Phy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ns2_pci_phy_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/phy/broadcom/phy-bcm-ns2-pcie.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ns2_pci_phy_probe._entry_ptr = internal global ptr @ns2_pci_phy_probe._entry, section ".printk_index", align 4
@ns2_pci_phy_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 70, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register Phy provider\0A\00", [63 x i8] zeroinitializer }, align 32
@ns2_pci_phy_probe._entry_ptr.8 = internal global ptr @ns2_pci_phy_probe._entry.6, section ".printk_index", align 4
@ns2_pci_phy_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 74, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s PHY registered\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ns2_pci_phy_probe._entry_ptr.12 = internal global ptr @ns2_pci_phy_probe._entry.9, section ".printk_index", align 4
@ns2_pci_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 44, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error %d writing to phy\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ns2_pci_phy_init\00", [47 x i8] zeroinitializer }, align 32
@ns2_pci_phy_init._entry_ptr = internal global ptr @ns2_pci_phy_init._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"ns2_pci_phy_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 85, i32 27 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 88, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"ns2_pci_phy_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 79, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"ns2_pci_phy_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 48, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 61, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 70, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 74, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [43 x i8] c"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 44, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias331, ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_description328, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__exitcall_mdio_module_exit, ptr @__initcall__kmod_phy_bcm_ns2_pcie__326_94_mdio_module_init6, ptr @mdio_module_exit, ptr @ns2_pci_phy_init._entry, ptr @ns2_pci_phy_init._entry_ptr, ptr @ns2_pci_phy_probe._entry, ptr @ns2_pci_phy_probe._entry.6, ptr @ns2_pci_phy_probe._entry.9, ptr @ns2_pci_phy_probe._entry_ptr, ptr @ns2_pci_phy_probe._entry_ptr.12, ptr @ns2_pci_phy_probe._entry_ptr.8, ptr @ns2_pci_phy_driver, ptr @.str, ptr @ns2_pci_phy_of_match, ptr @ns2_pci_phy_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pci_phy_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pci_phy_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pci_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pci_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pci_phy_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pci_phy_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pci_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdio_driver_register(ptr noundef nonnull @ns2_pci_phy_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mdio_driver_unregister(ptr noundef nonnull @ns2_pci_phy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_pci_phy_probe(ptr noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_phy_create(ptr noundef %mdiodev, ptr noundef %1, ptr noundef nonnull @ns2_pci_phy_ops) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.1) #7
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mdiodev, ptr %driver_data.i.i, align 4
  %call5 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %call, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %cmp.i29 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %do.end10, label %do.end15

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.7) #7
  %4 = ptrtoint ptr %call5 to i32
  br label %cleanup

do.end15:                                         ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end15.dev_name.exit_crit_edge

do.end15.dev_name.exit_crit_edge:                 ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %mdiodev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdiodev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end15.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %do.end15.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %mdiodev, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %do.end10, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %4, %do.end10 ], [ 0, %dev_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_pci_phy_init(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 31, i16 noundef zeroext 8448) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 8
  %call.i14 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 3, i16 noundef zeroext 11032) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool3.not = icmp eq i32 %call.i14, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %rc.0 = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ %call.i14, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %rc.0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_phy_bcm_ns2_pcie__326_94_mdio_module_init6, !1, !"__initcall__kmod_phy_bcm_ns2_pcie__326_94_mdio_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 94, i32 1}
!2 = !{ptr @__exitcall_mdio_module_exit, !1, !"__exitcall_mdio_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author327, !4, !"__UNIQUE_ID_author327", i1 false, i1 false}
!4 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 96, i32 1}
!5 = !{ptr @__UNIQUE_ID_description328, !6, !"__UNIQUE_ID_description328", i1 false, i1 false}
!6 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 97, i32 1}
!7 = !{ptr @__UNIQUE_ID_file329, !8, !"__UNIQUE_ID_file329", i1 false, i1 false}
!8 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 98, i32 1}
!9 = !{ptr @__UNIQUE_ID_license330, !8, !"__UNIQUE_ID_license330", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias331, !11, !"__UNIQUE_ID_alias331", i1 false, i1 false}
!11 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 99, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 88, i32 12}
!14 = !{ptr @ns2_pci_phy_driver, !15, !"ns2_pci_phy_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 85, i32 27}
!16 = !{ptr @ns2_pci_phy_of_match, !17, !"ns2_pci_phy_of_match", i1 false, i1 false}
!17 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 79, i32 34}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 61, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ns2_pci_phy_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ns2_pci_phy_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 70, i32 3}
!28 = !{ptr @ns2_pci_phy_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ns2_pci_phy_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 74, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ns2_pci_phy_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ns2_pci_phy_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @ns2_pci_phy_ops, !36, !"ns2_pci_phy_ops", i1 false, i1 false}
!36 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 48, i32 29}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-pcie.c", i32 44, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ns2_pci_phy_init._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ns2_pci_phy_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
