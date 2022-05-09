; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igbvf/ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igbvf/ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igbvf_stats = type { [32 x i8], i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.135, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.135 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.igbvf_ring = type { ptr, ptr, i32, i32, i32, i16, i16, i16, i16, ptr, %struct.napi_struct, [21 x i8], i32, i32, i32, i16, i32, ptr, %struct.igbvf_queue_stats }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.igbvf_queue_stats = type { i64, i64 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }

@igbvf_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1, i32 0, ptr @igbvf_get_drvinfo, ptr @igbvf_get_regs_len, ptr @igbvf_get_regs, ptr @igbvf_get_wol, ptr @igbvf_set_wol, ptr @igbvf_get_msglevel, ptr @igbvf_set_msglevel, ptr @igbvf_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @igbvf_get_eeprom_len, ptr @igbvf_get_eeprom, ptr @igbvf_set_eeprom, ptr @igbvf_get_coalesce, ptr @igbvf_set_coalesce, ptr @igbvf_get_ringparam, ptr @igbvf_set_ringparam, ptr null, ptr @igbvf_get_pauseparam, ptr @igbvf_set_pauseparam, ptr @igbvf_diag_test, ptr @igbvf_get_strings, ptr null, ptr @igbvf_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @igbvf_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @igbvf_get_link_ksettings, ptr @igbvf_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@igbvf_driver_name = external dso_local global [0 x i8], align 1
@igbvf_gstrings_test = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"Link test   (on/offline)\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@igbvf_gstrings_stats = internal constant { [13 x %struct.igbvf_stats], [132 x i8] } { [13 x %struct.igbvf_stats] [%struct.igbvf_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1408, i32 1296 }, %struct.igbvf_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1416, i32 1304 }, %struct.igbvf_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1424, i32 1312 }, %struct.igbvf_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1432, i32 1320 }, %struct.igbvf_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1440, i32 1328 }, %struct.igbvf_stats { [32 x i8] c"lbrx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1464, i32 1352 }, %struct.igbvf_stats { [32 x i8] c"lbrx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1472, i32 1360 }, %struct.igbvf_stats { [32 x i8] c"tx_restart_queue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 900, i32 1480 }, %struct.igbvf_stats { [32 x i8] c"rx_long_byte_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1424, i32 1312 }, %struct.igbvf_stats { [32 x i8] c"rx_csum_offload_good\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 976, i32 1480 }, %struct.igbvf_stats { [32 x i8] c"rx_csum_offload_errors\00\00\00\00\00\00\00\00\00\00", i32 8, i32 968, i32 1480 }, %struct.igbvf_stats { [32 x i8] c"rx_header_split\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 984, i32 1480 }, %struct.igbvf_stats { [32 x i8] c"alloc_rx_buff_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 992, i32 1480 }], [132 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 12]
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"igbvf_ethtool_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 432, i32 33 }
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"igbvf_gstrings_test\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 45, i32 19 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"igbvf_gstrings_stats\00", align 1
@___asan_gen_.10 = private constant [46 x i8] c"../drivers/net/ethernet/intel/igbvf/ethtool.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 27, i32 33 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @igbvf_ethtool_ops, ptr @igbvf_gstrings_test, ptr @igbvf_gstrings_stats], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_gstrings_test to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_gstrings_stats to i32), i32 572, i32 704, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @igbvf_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @igbvf_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @igbvf_driver_name, i32 noundef 32) #12
  %pdev = getelementptr i8, ptr %netdev, i32 3320
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igbvf_get_regs_len(ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_get_regs(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 0, i32 32)
  %pdev = getelementptr i8, ptr %netdev, i32 3320
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %revision, align 4
  %conv = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %device = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  %conv3 = zext i16 %6 to i32
  %or = or i32 %shl, %conv3
  %or4 = or i32 %or, 16777216
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or4, ptr %version, align 4
  %hw_addr = getelementptr i8, ptr %netdev, i32 3372
  %8 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !15
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !16
  %12 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %p, align 4
  %13 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #12, !srcloc !15
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !17
  %arrayidx14 = getelementptr i32, ptr %p, i32 1
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx14, align 4
  %18 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr, align 4
  %add.ptr18 = getelementptr i8, ptr %19, i32 10248
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #12, !srcloc !15
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !18
  %arrayidx22 = getelementptr i32, ptr %p, i32 2
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx22, align 4
  %23 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr, align 4
  %add.ptr26 = getelementptr i8, ptr %24, i32 10256
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #12, !srcloc !15
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !19
  %arrayidx30 = getelementptr i32, ptr %p, i32 3
  %27 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx30, align 4
  %28 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_addr, align 4
  %add.ptr34 = getelementptr i8, ptr %29, i32 10264
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #12, !srcloc !15
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !20
  %arrayidx38 = getelementptr i32, ptr %p, i32 4
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx38, align 4
  %33 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_addr, align 4
  %add.ptr42 = getelementptr i8, ptr %34, i32 14344
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #12, !srcloc !15
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !21
  %arrayidx46 = getelementptr i32, ptr %p, i32 5
  %37 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx46, align 4
  %38 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_addr, align 4
  %add.ptr50 = getelementptr i8, ptr %39, i32 14352
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #12, !srcloc !15
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !22
  %arrayidx54 = getelementptr i32, ptr %p, i32 6
  %42 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx54, align 4
  %43 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_addr, align 4
  %add.ptr58 = getelementptr i8, ptr %44, i32 14360
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #12, !srcloc !15
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !23
  %arrayidx62 = getelementptr i32, ptr %p, i32 7
  %47 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx62, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @igbvf_get_wol(ptr nocapture noundef readnone %netdev, ptr nocapture noundef writeonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igbvf_set_wol(ptr nocapture noundef readnone %netdev, ptr nocapture noundef readnone %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igbvf_get_msglevel(ptr nocapture noundef readonly %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 4436
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @igbvf_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 4436
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_nway_reset(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @igbvf_reinit_locked(ptr noundef %add.ptr.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igbvf_get_eeprom_len(ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igbvf_get_eeprom(ptr nocapture noundef readnone %netdev, ptr nocapture noundef readnone %eeprom, ptr nocapture noundef readnone %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igbvf_set_eeprom(ptr nocapture noundef readnone %netdev, ptr nocapture noundef readnone %eeprom, ptr nocapture noundef readnone %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igbvf_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_itr = getelementptr i8, ptr %netdev, i32 3072
  %0 = ptrtoint ptr %requested_itr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requested_itr, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %current_itr = getelementptr i8, ptr %netdev, i32 3076
  %2 = ptrtoint ptr %current_itr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_itr, align 4
  %shr = lshr i32 %3, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %shr.sink = phi i32 [ %shr, %if.else ], [ %1, %entry.if.end_crit_edge ]
  %4 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr.sink, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_set_coalesce(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  %2 = add i32 %1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9991, i32 %2)
  %3 = icmp ult i32 %2, 9991
  br i1 %3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw nsw i32 %1, 2
  %current_itr = getelementptr i8, ptr %netdev, i32 3076
  %4 = ptrtoint ptr %current_itr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %current_itr, align 4
  %mul = shl nuw nsw i32 %1, 10
  %div = udiv i32 1000000000, %mul
  br label %do.body

if.else:                                          ; preds = %entry
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else.cleanup_crit_edge [
    i32 3, label %if.else.if.then10_crit_edge
    i32 2, label %if.else.if.then10_crit_edge45
    i32 0, label %if.then17
  ]

if.else.if.then10_crit_edge45:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.else.if.then10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %if.else.if.then10_crit_edge, %if.else.if.then10_crit_edge45
  %current_itr11 = getelementptr i8, ptr %netdev, i32 3076
  %6 = ptrtoint ptr %current_itr11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 488, ptr %current_itr11, align 4
  %7 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_coalesce_usecs, align 4
  br label %do.body

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %current_itr18 = getelementptr i8, ptr %netdev, i32 3076
  %9 = ptrtoint ptr %current_itr18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %current_itr18, align 4
  br label %do.body

do.body:                                          ; preds = %if.then17, %if.then10, %if.then
  %div.sink = phi i32 [ %div, %if.then ], [ 976562, %if.then17 ], [ %8, %if.then10 ]
  %requested_itr = getelementptr i8, ptr %netdev, i32 3072
  %10 = ptrtoint ptr %requested_itr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div.sink, ptr %requested_itr, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !24
  tail call void @arm_heavy_mb() #12
  %current_itr26 = getelementptr i8, ptr %netdev, i32 3076
  %11 = ptrtoint ptr %current_itr26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_itr26, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %hw_addr = getelementptr i8, ptr %netdev, i32 3372
  %14 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr, align 4
  %rx_ring = getelementptr i8, ptr %netdev, i32 3256
  %16 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_ring, align 8
  %itr_register = getelementptr inbounds %struct.igbvf_ring, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %itr_register to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %itr_register, align 4
  %conv = zext i16 %19 to i32
  %add.ptr = getelementptr i8, ptr %15, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #12, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @igbvf_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring1 = getelementptr i8, ptr %netdev, i32 3200
  %0 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring1, align 128
  %rx_ring2 = getelementptr i8, ptr %netdev, i32 3256
  %2 = ptrtoint ptr %rx_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring2, align 8
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %5 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %tx_max_pending, align 4
  %count = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_pending, align 4
  %count3 = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %count3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count3, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %11 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 80)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 4096)
  %add = add nuw nsw i32 %7, 7
  %and = and i32 %add, 16376
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %8 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_pending, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 80)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 4096)
  %add20 = add nuw nsw i32 %11, 7
  %and21 = and i32 %add20, 16376
  %tx_ring = getelementptr i8, ptr %netdev, i32 3200
  %12 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_ring, align 128
  %count = getelementptr inbounds %struct.igbvf_ring, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %15)
  %cmp22 = icmp eq i32 %and21, %15
  br i1 %cmp22, label %land.lhs.true, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %rx_ring = getelementptr i8, ptr %netdev, i32 3256
  %16 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_ring, align 8
  %count23 = getelementptr inbounds %struct.igbvf_ring, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %count23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count23, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %19)
  %cmp24 = icmp eq i32 %and, %19
  br i1 %cmp24, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 3068
  %call27124 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27124)
  %tobool28.not125 = icmp eq i32 %call27124, 0
  br i1 %tobool28.not125, label %if.end26.while.end_crit_edge, label %if.end26.while.body_crit_edge

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  br label %while.body

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end26.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %call27 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #12
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end26.while.end_crit_edge
  %netdev29 = getelementptr i8, ptr %netdev, i32 3316
  %20 = ptrtoint ptr %netdev29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev29, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then31, label %if.end36

if.then31:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_ring, align 128
  %count33 = getelementptr inbounds %struct.igbvf_ring, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %count33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and21, ptr %count33, align 8
  %rx_ring34 = getelementptr i8, ptr %netdev, i32 3256
  %27 = ptrtoint ptr %rx_ring34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_ring34, align 8
  %count35 = getelementptr inbounds %struct.igbvf_ring, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %count35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and, ptr %count35, align 8
  br label %clear_reset

if.end36:                                         ; preds = %while.end
  %call37 = tail call noalias ptr @vmalloc(i32 noundef 320) #15
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.clear_reset_crit_edge, label %if.end40

if.end36.clear_reset_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_reset

if.end40:                                         ; preds = %if.end36
  tail call void @igbvf_down(ptr noundef %add.ptr.i) #12
  %30 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_ring, align 128
  %count42 = getelementptr inbounds %struct.igbvf_ring, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %count42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count42, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %33)
  %cmp43.not = icmp eq i32 %and21, %33
  br i1 %cmp43.not, label %if.end40.if.end53_crit_edge, label %if.then44

if.end40.if.end53_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then44:                                        ; preds = %if.end40
  %34 = call ptr @memcpy(ptr %call37, ptr %31, i32 320)
  %count46 = getelementptr inbounds %struct.igbvf_ring, ptr %call37, i32 0, i32 4
  %35 = ptrtoint ptr %count46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and21, ptr %count46, align 8
  %call47 = tail call i32 @igbvf_setup_tx_resources(ptr noundef %add.ptr.i, ptr noundef nonnull %call37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then44.err_setup_crit_edge

if.then44.err_setup_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_setup

if.end50:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_ring, align 128
  tail call void @igbvf_free_tx_resources(ptr noundef %37) #12
  %38 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_ring, align 128
  %40 = call ptr @memcpy(ptr %39, ptr %call37, i32 320)
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.end40.if.end53_crit_edge
  %rx_ring54 = getelementptr i8, ptr %netdev, i32 3256
  %41 = ptrtoint ptr %rx_ring54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_ring54, align 8
  %count55 = getelementptr inbounds %struct.igbvf_ring, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %count55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count55, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %44)
  %cmp56.not = icmp eq i32 %and, %44
  br i1 %cmp56.not, label %if.end53.err_setup_crit_edge, label %if.then57

if.end53.err_setup_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_setup

if.then57:                                        ; preds = %if.end53
  %45 = call ptr @memcpy(ptr %call37, ptr %42, i32 320)
  %count59 = getelementptr inbounds %struct.igbvf_ring, ptr %call37, i32 0, i32 4
  %46 = ptrtoint ptr %count59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and, ptr %count59, align 8
  %call60 = tail call i32 @igbvf_setup_rx_resources(ptr noundef %add.ptr.i, ptr noundef nonnull %call37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.then57.err_setup_crit_edge

if.then57.err_setup_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_setup

if.end63:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %rx_ring54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_ring54, align 8
  tail call void @igbvf_free_rx_resources(ptr noundef %48) #12
  %49 = ptrtoint ptr %rx_ring54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_ring54, align 8
  %51 = call ptr @memcpy(ptr %50, ptr %call37, i32 320)
  br label %err_setup

err_setup:                                        ; preds = %if.end63, %if.then57.err_setup_crit_edge, %if.end53.err_setup_crit_edge, %if.then44.err_setup_crit_edge
  %err.1 = phi i32 [ %call47, %if.then44.err_setup_crit_edge ], [ %call60, %if.then57.err_setup_crit_edge ], [ 0, %if.end63 ], [ 0, %if.end53.err_setup_crit_edge ]
  %call67 = tail call i32 @igbvf_up(ptr noundef %add.ptr.i) #12
  tail call void @vfree(ptr noundef nonnull %call37) #12
  br label %clear_reset

clear_reset:                                      ; preds = %err_setup, %if.end36.clear_reset_crit_edge, %if.then31
  %err.2 = phi i32 [ %err.1, %err_setup ], [ 0, %if.then31 ], [ -12, %if.end36.clear_reset_crit_edge ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #12
  br label %cleanup

cleanup:                                          ; preds = %clear_reset, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %clear_reset ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @igbvf_get_pauseparam(ptr nocapture noundef %netdev, ptr nocapture noundef %pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igbvf_set_pauseparam(ptr nocapture noundef readnone %netdev, ptr nocapture noundef readnone %pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_diag_test(ptr noundef %netdev, ptr nocapture noundef %eth_test, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %netdev, i32 3068
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #12
  %hw1.i = getelementptr i8, ptr %netdev, i32 3368
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data, align 8
  %mbx_lock.i = getelementptr i8, ptr %netdev, i32 3532
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock.i) #12
  %check_for_link.i = getelementptr i8, ptr %netdev, i32 3388
  %1 = ptrtoint ptr %check_for_link.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %check_for_link.i, align 4
  %call.i = tail call i32 %2(ptr noundef %hw1.i) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock.i) #12
  %hw_addr.i = getelementptr i8, ptr %netdev, i32 3372
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #12, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !26
  %6 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.igbvf_link_test.exit_crit_edge

entry.igbvf_link_test.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %igbvf_link_test.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1, ptr %data, align 8
  br label %igbvf_link_test.exit

igbvf_link_test.exit:                             ; preds = %if.then.i, %entry.igbvf_link_test.exit_crit_edge
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %data, align 8
  %conv.i = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %igbvf_link_test.exit.if.end_crit_edge, label %if.then

igbvf_link_test.exit.if.end_crit_edge:            ; preds = %igbvf_link_test.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %igbvf_link_test.exit
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or = or i32 %11, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %igbvf_link_test.exit.if.end_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #12
  %call3 = tail call i32 @msleep_interruptible(i32 noundef 4000) #12
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %for.body.preheader
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = call ptr @memcpy(ptr %data, ptr @igbvf_gstrings_stats, i32 32)
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %2 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 1), i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 64
  %3 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 2), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 96
  %4 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 3), i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 128
  %5 = call ptr @memcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 4), i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 160
  %6 = call ptr @memcpy(ptr %add.ptr.4, ptr getelementptr inbounds ([13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 5), i32 32)
  %add.ptr.5 = getelementptr i8, ptr %data, i32 192
  %7 = call ptr @memcpy(ptr %add.ptr.5, ptr getelementptr inbounds ([13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 6), i32 32)
  %add.ptr.6 = getelementptr i8, ptr %data, i32 224
  %8 = call ptr @memcpy(ptr %add.ptr.6, ptr getelementptr inbounds ([13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 7), i32 32)
  %add.ptr.7 = getelementptr i8, ptr %data, i32 256
  %9 = call ptr @memcpy(ptr %add.ptr.7, ptr getelementptr inbounds ([13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 8), i32 32)
  %add.ptr.8 = getelementptr i8, ptr %data, i32 288
  %10 = call ptr @memcpy(ptr %add.ptr.8, ptr getelementptr inbounds ([13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 9), i32 32)
  %add.ptr.9 = getelementptr i8, ptr %data, i32 320
  %11 = call ptr @memcpy(ptr %add.ptr.9, ptr getelementptr inbounds ([13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 10), i32 32)
  %add.ptr.10 = getelementptr i8, ptr %data, i32 352
  %12 = call ptr @memcpy(ptr %add.ptr.10, ptr getelementptr inbounds ([13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 11), i32 32)
  %add.ptr.11 = getelementptr i8, ptr %data, i32 384
  %13 = call ptr @memcpy(ptr %add.ptr.11, ptr getelementptr inbounds ([13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 12), i32 32)
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = call ptr @memcpy(ptr %data, ptr @igbvf_gstrings_test, i32 32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.body.preheader, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @igbvf_update_stats(ptr noundef %add.ptr.i) #12
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %cond.end.for.body_crit_edge ]
  %stat_offset = getelementptr [13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 %i.016, i32 2
  %0 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %1
  %base_stat_offset = getelementptr [13 x %struct.igbvf_stats], ptr @igbvf_gstrings_stats, i32 0, i32 %i.016, i32 3
  %2 = ptrtoint ptr %base_stat_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_stat_offset, align 4
  %add.ptr2 = getelementptr i8, ptr %add.ptr.i, i32 %3
  %4 = zext i32 %i.016 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %i.016, label %cond.true [
    i32 12, label %for.body.cond.false_crit_edge
    i32 7, label %for.body.cond.false_crit_edge17
  ]

for.body.cond.false_crit_edge17:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

for.body.cond.false_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr, align 8
  %7 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr2, align 8
  %sub = sub i64 %6, %8
  br label %cond.end

cond.false:                                       ; preds = %for.body.cond.false_crit_edge, %for.body.cond.false_crit_edge17
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %11 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr2, align 4
  %sub5 = sub i32 %10, %12
  %conv = zext i32 %sub5 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %conv, %cond.false ]
  %arrayidx6 = getelementptr i64, ptr %data, i32 %i.016
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %cond, ptr %arrayidx6, align 8
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igbvf_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %stringset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %switch.selectcmp = icmp eq i32 %stringset, 1
  %switch.select = select i1 %switch.selectcmp, i32 13, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stringset)
  %switch.selectcmp2 = icmp eq i32 %stringset, 0
  %switch.select3 = select i1 %switch.selectcmp2, i32 1, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %0 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %link_modes, align 4
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 4
  %5 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %advertising, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %port, align 1
  %hw_addr = getelementptr i8, ptr %netdev, i32 3372
  %7 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !15
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !27
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else33, label %if.then

if.then:                                          ; preds = %entry
  %and12 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1000, ptr %speed, align 4
  br label %if.end24

if.else:                                          ; preds = %if.then
  %and16 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %speed23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  br i1 %tobool17.not, label %if.else21, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %speed23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100, ptr %speed23, align 4
  br label %if.end24

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %speed23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %speed23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then18, %if.then14
  %and25 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %duplex31 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %duplex31 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %duplex31, align 4
  br label %if.end38

if.else29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %duplex31 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %duplex31, align 4
  br label %if.end38

if.else33:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %speed35 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %16 = ptrtoint ptr %speed35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %speed35, align 4
  %duplex37 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %17 = ptrtoint ptr %duplex37 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %duplex37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else33, %if.else29, %if.then27
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %autoneg, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igbvf_set_link_ksettings(ptr nocapture noundef readnone %netdev, ptr nocapture noundef readnone %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @igbvf_reinit_locked(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @igbvf_down(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igbvf_setup_tx_resources(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @igbvf_free_tx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igbvf_setup_rx_resources(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @igbvf_free_rx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igbvf_up(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @igbvf_update_stats(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @igbvf_ethtool_ops, !1, !"igbvf_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igbvf/ethtool.c", i32 432, i32 33}
!2 = !{ptr @igbvf_gstrings_test, !3, !"igbvf_gstrings_test", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/igbvf/ethtool.c", i32 45, i32 19}
!4 = !{ptr @igbvf_gstrings_stats, !5, !"igbvf_gstrings_stats", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/igbvf/ethtool.c", i32 27, i32 33}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 6538553}
!16 = !{i64 2156566143}
!17 = !{i64 2156566706}
!18 = !{i64 2156567618}
!19 = !{i64 2156568526}
!20 = !{i64 2156569434}
!21 = !{i64 2156570346}
!22 = !{i64 2156571254}
!23 = !{i64 2156572162}
!24 = !{i64 2156580832}
!25 = !{i64 6538135}
!26 = !{i64 2156580294}
!27 = !{i64 2156565495}
