; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/atheros/atl1e/atl1e_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/atheros/atl1e/atl1e_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.151, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.151 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.142, i32 }
%struct.anon.142 = type { [3 x i32], [3 x i32], [3 x i32] }

@atl1e_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @atl1e_get_drvinfo, ptr @atl1e_get_regs_len, ptr @atl1e_get_regs, ptr @atl1e_get_wol, ptr @atl1e_set_wol, ptr @atl1e_get_msglevel, ptr null, ptr @atl1e_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @atl1e_get_eeprom_len, ptr @atl1e_get_eeprom, ptr @atl1e_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atl1e_get_link_ksettings, ptr @atl1e_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@atl1e_driver_name = external dso_local global [0 x i8], align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L1e\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"atl1e_ethtool_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 363, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [54 x i8] c"../drivers/net/ethernet/atheros/atl1e/atl1e_ethtool.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 310, i32 31 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @atl1e_ethtool_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @atl1e_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @atl1e_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @atl1e_driver_name, i32 noundef 32) #11
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %call3 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @.str, i32 noundef 32) #11
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl1e_get_regs_len(ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 300
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_get_regs(ptr noundef %netdev, ptr nocapture noundef writeonly %regs, ptr noundef writeonly %p) #3 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2568
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #11
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !13
  %1 = call ptr @memset(ptr %p, i32 0, i32 300)
  %revision_id = getelementptr i8, ptr %netdev, i32 2592
  %2 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision_id, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %device_id = getelementptr i8, ptr %netdev, i32 2584
  %4 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_id, align 4
  %conv2 = zext i16 %5 to i32
  %or = or i32 %shl, %conv2
  %or3 = or i32 %or, 16777216
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %6 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or3, ptr %version, align 4
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 108
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !14
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !15
  %11 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %p, align 4
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1, align 4
  %add.ptr9 = getelementptr i8, ptr %13, i32 512
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !14
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !16
  %arrayidx13 = getelementptr i32, ptr %p, i32 1
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx13, align 4
  %17 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw1, align 4
  %add.ptr17 = getelementptr i8, ptr %18, i32 524
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #11, !srcloc !14
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !17
  %arrayidx21 = getelementptr i32, ptr %p, i32 2
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx21, align 4
  %22 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw1, align 4
  %add.ptr25 = getelementptr i8, ptr %23, i32 536
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #11, !srcloc !14
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !18
  %arrayidx29 = getelementptr i32, ptr %p, i32 3
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx29, align 4
  %27 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw1, align 4
  %add.ptr33 = getelementptr i8, ptr %28, i32 540
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #11, !srcloc !14
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !19
  %arrayidx37 = getelementptr i32, ptr %p, i32 4
  %31 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx37, align 4
  %32 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw1, align 4
  %add.ptr41 = getelementptr i8, ptr %33, i32 5120
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #11, !srcloc !14
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !20
  %arrayidx45 = getelementptr i32, ptr %p, i32 5
  %36 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx45, align 4
  %37 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw1, align 4
  %add.ptr49 = getelementptr i8, ptr %38, i32 5124
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #11, !srcloc !14
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !21
  %arrayidx53 = getelementptr i32, ptr %p, i32 6
  %41 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx53, align 4
  %42 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw1, align 4
  %add.ptr57 = getelementptr i8, ptr %43, i32 5128
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #11, !srcloc !14
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !22
  %arrayidx61 = getelementptr i32, ptr %p, i32 7
  %46 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx61, align 4
  %47 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw1, align 4
  %add.ptr65 = getelementptr i8, ptr %48, i32 5132
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #11, !srcloc !14
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !23
  %arrayidx69 = getelementptr i32, ptr %p, i32 8
  %51 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx69, align 4
  %52 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw1, align 4
  %add.ptr73 = getelementptr i8, ptr %53, i32 5134
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #11, !srcloc !14
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !24
  %arrayidx77 = getelementptr i32, ptr %p, i32 9
  %56 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx77, align 4
  %57 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw1, align 4
  %add.ptr81 = getelementptr i8, ptr %58, i32 5136
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #11, !srcloc !14
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !25
  %arrayidx85 = getelementptr i32, ptr %p, i32 10
  %61 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx85, align 4
  %62 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw1, align 4
  %add.ptr89 = getelementptr i8, ptr %63, i32 5140
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #11, !srcloc !14
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !26
  %arrayidx93 = getelementptr i32, ptr %p, i32 11
  %66 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx93, align 4
  %67 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw1, align 4
  %add.ptr97 = getelementptr i8, ptr %68, i32 5156
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #11, !srcloc !14
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !27
  %arrayidx101 = getelementptr i32, ptr %p, i32 12
  %71 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx101, align 4
  %72 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw1, align 4
  %add.ptr105 = getelementptr i8, ptr %73, i32 5248
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #11, !srcloc !14
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !28
  %arrayidx109 = getelementptr i32, ptr %p, i32 13
  %76 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx109, align 4
  %77 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw1, align 4
  %add.ptr113 = getelementptr i8, ptr %78, i32 5252
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #11, !srcloc !14
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !29
  %arrayidx117 = getelementptr i32, ptr %p, i32 14
  %81 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx117, align 4
  %82 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw1, align 4
  %add.ptr121 = getelementptr i8, ptr %83, i32 5256
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121) #11, !srcloc !14
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !30
  %arrayidx125 = getelementptr i32, ptr %p, i32 15
  %86 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx125, align 4
  %87 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw1, align 4
  %add.ptr130 = getelementptr i8, ptr %88, i32 5260
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #11, !srcloc !14
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !31
  %arrayidx134 = getelementptr i32, ptr %p, i32 16
  %91 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx134, align 4
  %92 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw1, align 4
  %add.ptr138 = getelementptr i8, ptr %93, i32 5264
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #11, !srcloc !14
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !32
  %arrayidx142 = getelementptr i32, ptr %p, i32 17
  %96 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %arrayidx142, align 4
  %97 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw1, align 4
  %add.ptr147 = getelementptr i8, ptr %98, i32 5268
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147) #11, !srcloc !14
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !33
  %arrayidx151 = getelementptr i32, ptr %p, i32 18
  %101 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %arrayidx151, align 4
  %102 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw1, align 4
  %add.ptr155 = getelementptr i8, ptr %103, i32 5272
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr155) #11, !srcloc !14
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !34
  %arrayidx159 = getelementptr i32, ptr %p, i32 19
  %106 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx159, align 4
  %107 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw1, align 4
  %add.ptr163 = getelementptr i8, ptr %108, i32 5276
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr163) #11, !srcloc !14
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !35
  %arrayidx167 = getelementptr i32, ptr %p, i32 20
  %111 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx167, align 4
  %112 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw1, align 4
  %add.ptr171 = getelementptr i8, ptr %113, i32 5280
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr171) #11, !srcloc !14
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !36
  %arrayidx175 = getelementptr i32, ptr %p, i32 21
  %116 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx175, align 4
  %117 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw1, align 4
  %add.ptr179 = getelementptr i8, ptr %118, i32 5400
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr179) #11, !srcloc !14
  %120 = tail call i32 @llvm.bswap.i32(i32 %119)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !37
  %arrayidx183 = getelementptr i32, ptr %p, i32 22
  %121 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %arrayidx183, align 4
  %122 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw1, align 4
  %add.ptr187 = getelementptr i8, ptr %123, i32 5404
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr187) #11, !srcloc !14
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !38
  %arrayidx191 = getelementptr i32, ptr %p, i32 23
  %126 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %arrayidx191, align 4
  %127 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hw1, align 4
  %add.ptr195 = getelementptr i8, ptr %128, i32 5408
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #11, !srcloc !14
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !39
  %arrayidx199 = getelementptr i32, ptr %p, i32 24
  %131 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx199, align 4
  %132 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw1, align 4
  %add.ptr203 = getelementptr i8, ptr %133, i32 5412
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr203) #11, !srcloc !14
  %135 = tail call i32 @llvm.bswap.i32(i32 %134)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !40
  %arrayidx207 = getelementptr i32, ptr %p, i32 25
  %136 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx207, align 4
  %137 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw1, align 4
  %add.ptr211 = getelementptr i8, ptr %138, i32 5416
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr211) #11, !srcloc !14
  %140 = tail call i32 @llvm.bswap.i32(i32 %139)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !41
  %arrayidx215 = getelementptr i32, ptr %p, i32 26
  %141 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %arrayidx215, align 4
  %142 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hw1, align 4
  %add.ptr219 = getelementptr i8, ptr %143, i32 5420
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr219) #11, !srcloc !14
  %145 = tail call i32 @llvm.bswap.i32(i32 %144)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  %arrayidx223 = getelementptr i32, ptr %p, i32 27
  %146 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %arrayidx223, align 4
  %147 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hw1, align 4
  %add.ptr227 = getelementptr i8, ptr %148, i32 5424
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227) #11, !srcloc !14
  %150 = tail call i32 @llvm.bswap.i32(i32 %149)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !43
  %arrayidx231 = getelementptr i32, ptr %p, i32 28
  %151 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %arrayidx231, align 4
  %152 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw1, align 4
  %add.ptr235 = getelementptr i8, ptr %153, i32 5426
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr235) #11, !srcloc !14
  %155 = tail call i32 @llvm.bswap.i32(i32 %154)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !44
  %arrayidx239 = getelementptr i32, ptr %p, i32 29
  %156 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %arrayidx239, align 4
  %call240 = call i32 @atl1e_read_phy_reg(ptr noundef %hw1, i16 noundef zeroext 0, ptr noundef nonnull %phy_data) #11
  %157 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %phy_data, align 2
  %conv241 = zext i16 %158 to i32
  %arrayidx242 = getelementptr i32, ptr %p, i32 73
  %159 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %conv241, ptr %arrayidx242, align 4
  %call243 = call i32 @atl1e_read_phy_reg(ptr noundef %hw1, i16 noundef zeroext 1, ptr noundef nonnull %phy_data) #11
  %160 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %phy_data, align 2
  %conv244 = zext i16 %161 to i32
  %arrayidx245 = getelementptr i32, ptr %p, i32 74
  %162 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %conv244, ptr %arrayidx245, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atl1e_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %wol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %wol1 = getelementptr i8, ptr %netdev, i32 2868
  %2 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol1, align 4
  %and = lshr i32 %3, 1
  %4 = and i32 %and, 2
  store i32 %4, ptr %wolopts, align 4
  %5 = load i32, ptr %wol1, align 4
  %and4 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %entry.if.end9_crit_edge, label %if.then6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or8 = or i32 %4, 4
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or8, ptr %wolopts, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %entry.if.end9_crit_edge
  %7 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wol1, align 4
  %and11 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end16_crit_edge, label %if.then13

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts, align 4
  %or15 = or i32 %10, 8
  store i32 %or15, ptr %wolopts, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9.if.end16_crit_edge
  %11 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wol1, align 4
  %and18 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end23_crit_edge, label %if.then20

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wolopts, align 4
  %or22 = or i32 %14, 32
  store i32 %or22, ptr %wolopts, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16.if.end23_crit_edge
  %15 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wol1, align 4
  %and25 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end30_crit_edge, label %if.then27

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts, align 4
  %or29 = or i32 %18, 1
  store i32 %or29, ptr %wolopts, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_set_wol(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %wol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %wol1 = getelementptr i8, ptr %netdev, i32 2868
  %2 = ptrtoint ptr %wol1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wol1, align 4
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %and3 = lshr i32 %4, 4
  %5 = and i32 %and3, 2
  store i32 %5, ptr %wol1, align 4
  %6 = load i32, ptr %wolopts, align 4
  %and9 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or13 = or i32 %5, 1
  %7 = ptrtoint ptr %wol1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or13, ptr %wol1, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wol1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16 = icmp ne i32 %11, 0
  %call17 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool16) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl1e_get_msglevel(ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_nway_reset(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @atl1e_reinit_locked(ptr noundef %add.ptr.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_get_eeprom_len(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %netdev, i32 2568
  %call1 = tail call i32 @atl1e_check_eeprom_exist(ptr noundef %hw) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool.not, i32 512, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_get_eeprom(ptr noundef %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2568
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @atl1e_check_eeprom_exist(ptr noundef %hw1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %vendor_id = getelementptr i8, ptr %netdev, i32 2586
  %2 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor_id, align 2
  %conv = zext i16 %3 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 2584
  %4 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_id, align 4
  %conv5 = zext i16 %5 to i32
  %shl = shl nuw i32 %conv5, 16
  %or = or i32 %shl, %conv
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %shr = lshr i32 %8, 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %add = add i32 %8, -1
  %sub = add i32 %add, %10
  %shr8 = lshr i32 %sub, 2
  %sub9 = sub nsw i32 %shr8, %shr
  %add10 = add nsw i32 %sub9, 1
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add10, i32 4) #11
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.end4.cleanup_crit_edge, label %if.end7.i, !prof !45

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4
  %13 = extractvalue { i32, i1 } %11, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #14
  %cmp12 = icmp eq ptr %call8.i, null
  br i1 %cmp12, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr8, i32 %shr)
  %cmp1651 = icmp ugt i32 %shr8, %shr
  br i1 %cmp1651, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %shr8
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %shr, %for.cond.preheader.for.body_crit_edge ]
  %mul = shl i32 %i.052, 2
  %sub18 = sub nuw nsw i32 %i.052, %shr
  %arrayidx = getelementptr i32, ptr %call8.i, i32 %sub18
  %call19 = tail call zeroext i1 @atl1e_read_eeprom(ptr noundef %hw1, i32 noundef %mul, ptr noundef %arrayidx) #11
  br i1 %call19, label %for.cond, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %and = and i32 %15, 3
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %18 = call ptr @memcpy(ptr %bytes, ptr %add.ptr, i32 %17)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %for.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %for.end ], [ -5, %for.body.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_set_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2568
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic, align 4
  %vendor_id = getelementptr i8, ptr %netdev, i32 2586
  %4 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor_id, align 2
  %conv = zext i16 %5 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 2584
  %6 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device_id, align 4
  %conv2 = zext i16 %7 to i32
  %shl = shl nuw i32 %conv2, 16
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %or)
  %cmp3.not = icmp eq i32 %3, %or
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %shr = lshr i32 %9, 2
  %add = add i32 %1, -1
  %sub = add i32 %add, %9
  %shr9 = lshr i32 %sub, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 512) #15
  %cmp11 = icmp eq ptr %call7.i, null
  br i1 %cmp11, label %if.end6.cleanup_crit_edge, label %if.end14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %and = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14.if.end20_crit_edge, label %if.then16

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then16:                                        ; preds = %if.end14
  %mul = and i32 %9, -4
  %call17 = tail call zeroext i1 @atl1e_read_eeprom(ptr noundef %hw1, i32 noundef %mul, ptr noundef nonnull %call7.i) #11
  br i1 %call17, label %if.end19, label %if.then16.out_crit_edge

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end19:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i32, ptr %call7.i, i32 1
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end14.if.end20_crit_edge
  %ptr.0 = phi ptr [ %incdec.ptr, %if.end19 ], [ %call7.i, %if.end14.if.end20_crit_edge ]
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %add23 = add i32 %16, %14
  %and24 = and i32 %add23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end20.if.end33_crit_edge, label %if.then26

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then26:                                        ; preds = %if.end20
  %mul27 = and i32 %sub, -4
  %sub28 = sub nsw i32 %shr9, %shr
  %arrayidx29 = getelementptr i32, ptr %call7.i, i32 %sub28
  %call30 = tail call zeroext i1 @atl1e_read_eeprom(ptr noundef %hw1, i32 noundef %mul27, ptr noundef %arrayidx29) #11
  br i1 %call30, label %if.then26.if.end33_crit_edge, label %if.then26.out_crit_edge

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end33:                                         ; preds = %if.then26.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %19 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %18)
  %sub35 = sub nsw i32 1, %shr
  %add36 = add nsw i32 %sub35, %shr9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add36)
  %cmp3778 = icmp sgt i32 %add36, 0
  br i1 %cmp3778, label %if.end33.for.body_crit_edge, label %if.end33.out_crit_edge

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %add36
  br i1 %exitcond.not, label %for.cond.out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end33.for.body_crit_edge
  %i.079 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %add39 = add nuw nsw i32 %i.079, %shr
  %mul40 = shl i32 %add39, 2
  %arrayidx41 = getelementptr i32, ptr %call7.i, i32 %i.079
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx41, align 4
  %call42 = tail call zeroext i1 @atl1e_write_eeprom(ptr noundef %hw1, i32 noundef %mul40, i32 noundef %21) #11
  br i1 %call42, label %for.cond, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %for.cond.out_crit_edge, %if.end33.out_crit_edge, %if.then26.out_crit_edge, %if.then16.out_crit_edge
  %ret_val.0 = phi i32 [ -5, %if.then16.out_crit_edge ], [ -5, %if.then26.out_crit_edge ], [ 0, %if.end33.out_crit_edge ], [ 0, %for.cond.out_crit_edge ], [ -5, %for.body.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %out ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_type = getelementptr i8, ptr %netdev, i32 2580
  %0 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nic_type, align 4
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 2618
  %2 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %autoneg_advertised, align 2
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %4 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %port, align 1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %5 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %phy_address, align 2
  %link_speed = getelementptr i8, ptr %netdev, i32 2872
  %6 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %link_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp6.not = icmp eq i16 %7, -1
  br i1 %cmp6.not, label %if.else20, label %if.then8

if.then8:                                         ; preds = %entry
  %conv5 = zext i16 %7 to i32
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv5, ptr %speed, align 4
  %link_duplex = getelementptr i8, ptr %netdev, i32 2874
  %9 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %link_duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %cmp13 = icmp eq i16 %10, 2
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %duplex, align 4
  br label %if.end25

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %duplex, align 4
  br label %if.end25

if.else20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %speed22 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %speed22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %speed22, align 4
  %duplex24 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %duplex24 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %duplex24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else20, %if.else, %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %spec.select = select i1 %cmp, i32 239, i32 207
  %15 = or i16 %3, 192
  %or3 = zext i16 %15 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %16 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %autoneg, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %spec.select) #11
  %advertising29 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising29, i32 noundef %or3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_set_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #3 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 2568
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #11
  %0 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %advertising, align 4, !annotation !13
  %advertising2 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call3 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising2) #11
  %flags = getelementptr i8, ptr %netdev, i32 3396
  %call4142 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4142)
  %tobool.not143 = icmp eq i32 %call4142, 0
  br i1 %tobool.not143, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @msleep(i32 noundef 1) #11
  %call4 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #11
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %1 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  br i1 %cmp, label %if.then, label %while.end.cleanup106_crit_edge

while.end.cleanup106_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup106

if.then:                                          ; preds = %while.end
  %3 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %advertising, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else14, label %if.then7

if.then7:                                         ; preds = %if.then
  %nic_type = getelementptr i8, ptr %netdev, i32 2580
  %5 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %if.then7.if.end24_crit_edge, label %if.then7.cleanup106_crit_edge

if.then7.cleanup106_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup106

if.then7.if.end24_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.else14:                                        ; preds = %if.then
  %and15 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else14.if.end24_crit_edge, label %if.else14.cleanup106_crit_edge

if.else14.cleanup106_crit_edge:                   ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup106

if.else14.if.end24_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24:                                         ; preds = %if.else14.if.end24_crit_edge, %if.then7.if.end24_crit_edge
  %7 = trunc i32 %4 to i16
  %conv21 = and i16 %7, 47
  %autoneg_advertised22 = getelementptr i8, ptr %netdev, i32 2618
  %8 = ptrtoint ptr %autoneg_advertised22 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv21, ptr %autoneg_advertised22, align 2
  %9 = or i16 %conv21, 192
  %or27 = zext i16 %9 to i32
  %10 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or27, ptr %advertising, align 4
  %mii_autoneg_adv_reg = getelementptr i8, ptr %netdev, i32 2620
  %11 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mii_autoneg_adv_reg, align 4
  %13 = and i16 %12, -481
  %mii_1000t_ctrl_reg = getelementptr i8, ptr %netdev, i32 2622
  %14 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mii_1000t_ctrl_reg, align 2
  %16 = and i16 %15, -769
  %17 = shl nuw nsw i16 %conv21, 5
  %18 = and i16 %17, 480
  %19 = or i16 %18, %13
  %20 = shl nuw nsw i16 %conv21, 4
  %21 = and i16 %20, 512
  %22 = or i16 %16, %21
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %12)
  %cmp82.not = icmp eq i16 %19, %12
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %15)
  %cmp87.not = icmp eq i16 %22, %15
  %or.cond = select i1 %cmp82.not, i1 %cmp87.not, i1 false
  br i1 %or.cond, label %if.end24.if.end96_crit_edge, label %if.then89

if.end24.if.end96_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then89:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %19, ptr %mii_autoneg_adv_reg, align 4
  %24 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %22, ptr %mii_1000t_ctrl_reg, align 2
  %re_autoneg = getelementptr i8, ptr %netdev, i32 2667
  %25 = ptrtoint ptr %re_autoneg to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %re_autoneg, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.then89, %if.end24.if.end96_crit_edge
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else101, label %if.then99

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  call void @atl1e_down(ptr noundef %add.ptr.i) #11
  %call100 = call i32 @atl1e_up(ptr noundef %add.ptr.i) #11
  br label %cleanup106

if.else101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %call103 = call i32 @atl1e_reset_hw(ptr noundef %hw1) #11
  br label %cleanup106

cleanup106:                                       ; preds = %if.else101, %if.then99, %if.else14.cleanup106_crit_edge, %if.then7.cleanup106_crit_edge, %while.end.cleanup106_crit_edge
  %retval.1 = phi i32 [ -22, %if.then7.cleanup106_crit_edge ], [ -22, %if.else14.cleanup106_crit_edge ], [ -22, %while.end.cleanup106_crit_edge ], [ 0, %if.else101 ], [ 0, %if.then99 ]
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #11
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_read_phy_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1e_reinit_locked(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_check_eeprom_exist(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atl1e_read_eeprom(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atl1e_write_eeprom(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1e_down(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_up(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_reset_hw(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @atl1e_ethtool_ops, !1, !"atl1e_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_ethtool.c", i32 363, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_ethtool.c", i32 310, i32 31}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
!14 = !{i64 6536635}
!15 = !{i64 2158004237}
!16 = !{i64 2158004795}
!17 = !{i64 2158005353}
!18 = !{i64 2158005911}
!19 = !{i64 2158006469}
!20 = !{i64 2158007033}
!21 = !{i64 2158007597}
!22 = !{i64 2158008161}
!23 = !{i64 2158008725}
!24 = !{i64 2158009289}
!25 = !{i64 2158009853}
!26 = !{i64 2158010417}
!27 = !{i64 2158010981}
!28 = !{i64 2158011545}
!29 = !{i64 2158012109}
!30 = !{i64 2158012673}
!31 = !{i64 2158013252}
!32 = !{i64 2158013816}
!33 = !{i64 2158014395}
!34 = !{i64 2158014959}
!35 = !{i64 2158015523}
!36 = !{i64 2158016087}
!37 = !{i64 2158016651}
!38 = !{i64 2158017215}
!39 = !{i64 2158017779}
!40 = !{i64 2158018343}
!41 = !{i64 2158018907}
!42 = !{i64 2158019471}
!43 = !{i64 2158020035}
!44 = !{i64 2158020599}
!45 = !{!"branch_weights", i32 1, i32 2000}
