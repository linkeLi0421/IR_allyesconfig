; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pch_gbe_stats = type { [32 x i8], i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.186, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.186 = type { ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.192, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.192 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pch_gbe_rx_ring = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.pch_gbe_tx_ring = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.181, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.181 = type { [3 x i32], [3 x i32], [3 x i32] }

@pch_gbe_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @pch_gbe_get_drvinfo, ptr @pch_gbe_get_regs_len, ptr @pch_gbe_get_regs, ptr @pch_gbe_get_wol, ptr @pch_gbe_set_wol, ptr null, ptr null, ptr @pch_gbe_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_gbe_get_ringparam, ptr @pch_gbe_set_ringparam, ptr null, ptr @pch_gbe_get_pauseparam, ptr @pch_gbe_set_pauseparam, ptr null, ptr @pch_gbe_get_strings, ptr null, ptr @pch_gbe_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @pch_gbe_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_gbe_get_link_ksettings, ptr @pch_gbe_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pch_gbe\00", [24 x i8] zeroinitializer }, align 32
@pch_driver_version = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.01\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pch_gbe_gstrings_stats = internal constant { [25 x %struct.pch_gbe_stats], [248 x i8] } { [25 x %struct.pch_gbe_stats] [%struct.pch_gbe_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0 }, %struct.pch_gbe_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4 }, %struct.pch_gbe_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8 }, %struct.pch_gbe_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 12 }, %struct.pch_gbe_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16 }, %struct.pch_gbe_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 20 }, %struct.pch_gbe_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 24 }, %struct.pch_gbe_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 28 }, %struct.pch_gbe_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 32 }, %struct.pch_gbe_stats { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 36 }, %struct.pch_gbe_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 40 }, %struct.pch_gbe_stats { [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 44 }, %struct.pch_gbe_stats { [32 x i8] c"rx_alloc_buff_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 48 }, %struct.pch_gbe_stats { [32 x i8] c"tx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 52 }, %struct.pch_gbe_stats { [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 56 }, %struct.pch_gbe_stats { [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 60 }, %struct.pch_gbe_stats { [32 x i8] c"tx_timeout_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 64 }, %struct.pch_gbe_stats { [32 x i8] c"tx_restart_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 68 }, %struct.pch_gbe_stats { [32 x i8] c"intr_rx_dsc_empty_count\00\00\00\00\00\00\00\00\00", i32 4, i32 72 }, %struct.pch_gbe_stats { [32 x i8] c"intr_rx_frame_err_count\00\00\00\00\00\00\00\00\00", i32 4, i32 76 }, %struct.pch_gbe_stats { [32 x i8] c"intr_rx_fifo_err_count\00\00\00\00\00\00\00\00\00\00", i32 4, i32 80 }, %struct.pch_gbe_stats { [32 x i8] c"intr_rx_dma_err_count\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 84 }, %struct.pch_gbe_stats { [32 x i8] c"intr_tx_fifo_err_count\00\00\00\00\00\00\00\00\00\00", i32 4, i32 88 }, %struct.pch_gbe_stats { [32 x i8] c"intr_tx_dma_err_count\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 92 }, %struct.pch_gbe_stats { [32 x i8] c"intr_tcpip_err_count\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 96 }], [248 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error: mii_ethtool_set_link_ksettings\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"pch_gbe_ethtool_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 493, i32 33 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 172, i32 27 }
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"pch_driver_version\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 11, i32 19 }
@___asan_gen_.11 = private unnamed_addr constant [23 x i8] c"pch_gbe_gstrings_stats\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 32, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [59 x i8] c"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_ethtool.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 132, i32 22 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @pch_gbe_ethtool_ops, ptr @.str, ptr @pch_driver_version, ptr @pch_gbe_gstrings_stats, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_driver_version to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_gstrings_stats to i32), i32 1000, i32 1248, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pch_gbe_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @pch_gbe_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #13
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @pch_driver_version, i32 noundef 32) #13
  %pdev = getelementptr i8, ptr %netdev, i32 2400
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pch_gbe_get_regs_len(ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 492
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_get_regs(ptr noundef %netdev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %p) #3 align 64 {
entry:
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev2 = getelementptr i8, ptr %netdev, i32 2400
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev2, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #13
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %tmp, align 2, !annotation !19
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %revision, align 4
  %conv = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
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
  %reg = getelementptr i8, ptr %netdev, i32 2644
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %regs_buff.031 = phi ptr [ %p, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i32, ptr %9, i32 %indvars.iv
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !20
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !21
  %incdec.ptr = getelementptr i32, ptr %regs_buff.031, i32 1
  %12 = ptrtoint ptr %regs_buff.031 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %regs_buff.031, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 91
  br i1 %exitcond.not, label %for.body13.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body13.preheader:                             ; preds = %for.body
  %hw1 = getelementptr i8, ptr %netdev, i32 2640
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.preheader
  %indvars.iv35 = phi i32 [ 0, %for.body13.preheader ], [ %indvars.iv.next36, %for.body13.for.body13_crit_edge ]
  %regs_buff.133 = phi ptr [ %incdec.ptr, %for.body13.preheader ], [ %incdec.ptr18, %for.body13.for.body13_crit_edge ]
  %call16 = call i32 @pch_gbe_phy_read_reg_miic(ptr noundef %hw1, i32 noundef %indvars.iv35, ptr noundef nonnull %tmp) #13
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tmp, align 2
  %conv17 = zext i16 %14 to i32
  %incdec.ptr18 = getelementptr i32, ptr %regs_buff.133, i32 1
  %15 = ptrtoint ptr %regs_buff.133 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv17, ptr %regs_buff.133, align 4
  %indvars.iv.next36 = add nuw nsw i32 %indvars.iv35, 1
  %exitcond37.not = icmp eq i32 %indvars.iv.next36, 32
  br i1 %exitcond37.not, label %for.end21, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body13

for.end21:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pch_gbe_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %wol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 46, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %wake_up_evt = getelementptr i8, ptr %netdev, i32 2964
  %2 = ptrtoint ptr %wake_up_evt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wake_up_evt, align 4
  %and = and i32 %3, 2
  store i32 %and, ptr %wolopts, align 4
  %4 = load i32, ptr %wake_up_evt, align 4
  %and3 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %entry.if.end8_crit_edge, label %if.then5

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %or7 = or i32 %and, 4
  %5 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or7, ptr %wolopts, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %entry.if.end8_crit_edge
  %6 = ptrtoint ptr %wake_up_evt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wake_up_evt, align 4
  %and10 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end15_crit_edge, label %if.then12

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wolopts, align 4
  %or14 = or i32 %9, 8
  store i32 %or14, ptr %wolopts, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end8.if.end15_crit_edge
  %10 = ptrtoint ptr %wake_up_evt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wake_up_evt, align 4
  %and17 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end22_crit_edge, label %if.then19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wolopts, align 4
  %or21 = or i32 %13, 32
  store i32 %or21, ptr %wolopts, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15.if.end22_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pch_gbe_set_wol(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %wol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %wake_up_evt = getelementptr i8, ptr %netdev, i32 2964
  %2 = ptrtoint ptr %wake_up_evt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wake_up_evt, align 4
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %and2 = and i32 %4, 2
  store i32 %and2, ptr %wake_up_evt, align 4
  %5 = load i32, ptr %wolopts, align 4
  %and8 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %or12 = or i32 %and2, 4
  %6 = ptrtoint ptr %wake_up_evt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or12, ptr %wake_up_evt, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wolopts, align 4
  %and15 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end20_crit_edge, label %if.then17

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %wake_up_evt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wake_up_evt, align 4
  %or19 = or i32 %10, 8
  store i32 %or19, ptr %wake_up_evt, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end13.if.end20_crit_edge
  %11 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wolopts, align 4
  %and22 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.then24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %wake_up_evt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wake_up_evt, align 4
  %or26 = or i32 %14, 1
  store i32 %or26, ptr %wake_up_evt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_nway_reset(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %netdev, i32 2884
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii) #13
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pch_gbe_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr i8, ptr %netdev, i32 2976
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 8
  %rx_ring = getelementptr i8, ptr %netdev, i32 2980
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 4
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %5 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %tx_max_pending, align 4
  %count = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_pending, align 4
  %count1 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count1, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %11 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %netdev2 = getelementptr i8, ptr %netdev, i32 2396
  %4 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev2, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pch_gbe_down(ptr noundef %add.ptr.i) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %tx_ring = getelementptr i8, ptr %netdev, i32 2976
  %8 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring, align 8
  %rx_ring = getelementptr i8, ptr %netdev, i32 2980
  %10 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_ring, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 28) #16
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.err_alloc_tx_crit_edge, label %if.end9

if.end5.err_alloc_tx_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc_tx

if.end9:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i136 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 40) #16
  %tobool11.not = icmp eq ptr %call7.i.i136, null
  br i1 %tobool11.not, label %if.end9.err_alloc_rx_crit_edge, label %if.end13

if.end9.err_alloc_rx_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc_rx

if.end13:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %tx_ring, align 8
  %15 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i136, ptr %rx_ring, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %16 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_pending, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 8)
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 4096)
  %count = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %call7.i.i136, i32 0, i32 6
  %add = add nuw nsw i32 %19, 7
  %div134 = and i32 %add, 16376
  %20 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div134, ptr %count, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %21 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_pending, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 8)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 4096)
  %count37 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %call7.i.i, i32 0, i32 3
  %add42 = add nuw nsw i32 %24, 7
  %div43135 = and i32 %add42, 16376
  %25 = ptrtoint ptr %count37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div43135, ptr %count37, align 4
  %26 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev2, align 4
  %state.i137 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %state.i137 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i137, align 4
  %and1.i.i138 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i138)
  %tobool.i139.not = icmp eq i32 %and1.i.i138, 0
  br i1 %tobool.i139.not, label %if.end13.cleanup_crit_edge, label %if.then48

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then48:                                        ; preds = %if.end13
  %call50 = tail call i32 @pch_gbe_setup_rx_resources(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.then48.err_setup_rx_crit_edge

if.then48.err_setup_rx_crit_edge:                 ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_setup_rx

if.end53:                                         ; preds = %if.then48
  %30 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_ring, align 8
  %call55 = tail call i32 @pch_gbe_setup_tx_resources(ptr noundef %add.ptr.i, ptr noundef %31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %err_setup_tx

if.end58:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pch_gbe_free_rx_resources(ptr noundef %add.ptr.i, ptr noundef %11) #13
  tail call void @pch_gbe_free_tx_resources(ptr noundef %add.ptr.i, ptr noundef %9) #13
  tail call void @kfree(ptr noundef %9) #13
  tail call void @kfree(ptr noundef %11) #13
  %32 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i136, ptr %rx_ring, align 4
  %33 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %tx_ring, align 8
  %call61 = tail call i32 @pch_gbe_up(ptr noundef %add.ptr.i) #13
  br label %cleanup

err_setup_tx:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_ring, align 4
  tail call void @pch_gbe_free_rx_resources(ptr noundef %add.ptr.i, ptr noundef %35) #13
  br label %err_setup_rx

err_setup_rx:                                     ; preds = %err_setup_tx, %if.then48.err_setup_rx_crit_edge
  %err.1 = phi i32 [ %call50, %if.then48.err_setup_rx_crit_edge ], [ %call55, %err_setup_tx ]
  %36 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %11, ptr %rx_ring, align 4
  %37 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %9, ptr %tx_ring, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i136) #13
  br label %err_alloc_rx

err_alloc_rx:                                     ; preds = %err_setup_rx, %if.end9.err_alloc_rx_crit_edge
  %err.2 = phi i32 [ %err.1, %err_setup_rx ], [ -12, %if.end9.err_alloc_rx_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %err_alloc_tx

err_alloc_tx:                                     ; preds = %err_alloc_rx, %if.end5.err_alloc_tx_crit_edge
  %err.3 = phi i32 [ %err.2, %err_alloc_rx ], [ -12, %if.end5.err_alloc_tx_crit_edge ]
  %38 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev2, align 4
  %state.i140 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %state.i140 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %state.i140, align 4
  %and1.i.i141 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i141)
  %tobool.i142.not = icmp eq i32 %and1.i.i141, 0
  br i1 %tobool.i142.not, label %err_alloc_tx.cleanup_crit_edge, label %if.then68

err_alloc_tx.cleanup_crit_edge:                   ; preds = %err_alloc_tx
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then68:                                        ; preds = %err_alloc_tx
  call void @__sanitizer_cov_trace_pc() #15
  %call69 = tail call i32 @pch_gbe_up(ptr noundef %add.ptr.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %err_alloc_tx.cleanup_crit_edge, %if.end58, %if.end13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call61, %if.end58 ], [ 0, %if.end13.cleanup_crit_edge ], [ %err.3, %if.then68 ], [ %err.3, %err_alloc_tx.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pch_gbe_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pause) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 2699
  %0 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fc_autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  %cond = zext i1 %tobool.not to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %autoneg, align 4
  %fc = getelementptr i8, ptr %netdev, i32 2698
  %3 = ptrtoint ptr %fc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fc, align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %entry.if.end21_crit_edge [
    i8 1, label %if.then
    i8 2, label %if.then10
    i8 3, label %if.then17
  ]

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  br label %if.end21.sink.split

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end21.sink.split

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rx_pause18 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %6 = ptrtoint ptr %rx_pause18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %rx_pause18, align 4
  %tx_pause19 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.then17, %if.then10, %if.then
  %tx_pause.sink = phi ptr [ %tx_pause, %if.then10 ], [ %tx_pause19, %if.then17 ], [ %rx_pause, %if.then ]
  %7 = ptrtoint ptr %tx_pause.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %tx_pause.sink, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %entry.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pause) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 2640
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  %conv = trunc i32 %1 to i8
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 2699
  %2 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %fc_autoneg, align 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %3 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %tx_pause16 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_pause16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool17.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true15, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool17.not, label %land.lhs.true6, label %land.lhs.true.if.end32.sink.split_crit_edge

land.lhs.true.if.end32.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.sink.split

land.lhs.true6:                                   ; preds = %land.lhs.true
  %7 = ptrtoint ptr %tx_pause16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_pause16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %land.lhs.true6.if.end32.sink.split_crit_edge, label %land.lhs.true6.if.end32_crit_edge

land.lhs.true6.if.end32_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true6.if.end32.sink.split_crit_edge:     ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.sink.split

land.lhs.true15:                                  ; preds = %entry
  br i1 %tobool17.not, label %land.lhs.true24, label %land.lhs.true15.if.end32.sink.split_crit_edge

land.lhs.true15.if.end32.sink.split_crit_edge:    ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.sink.split

land.lhs.true24:                                  ; preds = %land.lhs.true15
  %9 = ptrtoint ptr %tx_pause16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_pause16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool26.not = icmp eq i32 %10, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end32.sink.split_crit_edge, label %land.lhs.true24.if.end32_crit_edge

land.lhs.true24.if.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true24.if.end32.sink.split_crit_edge:    ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %land.lhs.true24.if.end32.sink.split_crit_edge, %land.lhs.true15.if.end32.sink.split_crit_edge, %land.lhs.true6.if.end32.sink.split_crit_edge, %land.lhs.true.if.end32.sink.split_crit_edge
  %.sink = phi i8 [ 3, %land.lhs.true.if.end32.sink.split_crit_edge ], [ 1, %land.lhs.true6.if.end32.sink.split_crit_edge ], [ 2, %land.lhs.true15.if.end32.sink.split_crit_edge ], [ 0, %land.lhs.true24.if.end32.sink.split_crit_edge ]
  %fc11 = getelementptr i8, ptr %netdev, i32 2698
  %11 = ptrtoint ptr %fc11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %fc11, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %land.lhs.true24.if.end32_crit_edge, %land.lhs.true6.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv)
  %cmp = icmp eq i8 %conv, 1
  br i1 %cmp, label %if.then37, label %if.else44

if.then37:                                        ; preds = %if.end32
  %netdev38 = getelementptr i8, ptr %netdev, i32 2396
  %12 = ptrtoint ptr %netdev38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev38, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else42, label %if.then40

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pch_gbe_down(ptr noundef %add.ptr.i) #13
  %call41 = tail call i32 @pch_gbe_up(ptr noundef %add.ptr.i) #13
  br label %if.end46

if.else42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pch_gbe_reset(ptr noundef %add.ptr.i) #13
  br label %if.end46

if.else44:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %call45 = tail call i32 @pch_gbe_mac_force_mac_fc(ptr noundef %hw1) #13
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.else42, %if.then40
  %ret.0 = phi i32 [ %call41, %if.then40 ], [ 0, %if.else42 ], [ %call45, %if.else44 ]
  ret i32 %ret.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %entry.for.body_crit_edge, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.04 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %data, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [25 x %struct.pch_gbe_stats], ptr @pch_gbe_gstrings_stats, i32 0, i32 %i.05
  %0 = call ptr @memcpy(ptr %p.04, ptr %arrayidx, i32 32)
  %add.ptr = getelementptr i8, ptr %p.04, i32 32
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %stats1 = getelementptr i8, ptr %netdev, i32 2740
  tail call void @pch_gbe_update_stats(ptr noundef %add.ptr.i) #13
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry
  %gstats.010 = phi ptr [ @pch_gbe_gstrings_stats, %entry ], [ %incdec.ptr, %cond.end.for.body_crit_edge ]
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %cond.end.for.body_crit_edge ]
  %offset = getelementptr inbounds %struct.pch_gbe_stats, ptr %gstats.010, i32 0, i32 2
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %stats1, i32 %1
  %size = getelementptr inbounds %struct.pch_gbe_stats, ptr %gstats.010, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp2 = icmp eq i32 %3, 8
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %conv = zext i32 %7 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %conv, %cond.false ]
  %arrayidx = getelementptr i64, ptr %data, i32 %i.09
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %cond, ptr %arrayidx, align 8
  %incdec.ptr = getelementptr %struct.pch_gbe_stats, ptr %gstats.010, i32 1
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pch_gbe_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 25, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_get_link_ksettings(ptr noundef %netdev, ptr noundef %ecmd) #3 align 64 {
entry:
  %supported = alloca i32, align 4
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supported) #13
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %supported, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #13
  %1 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %advertising, align 4, !annotation !19
  %mii = getelementptr i8, ptr %netdev, i32 2884
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %ecmd) #13
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1
  %call2 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %supported, ptr noundef %link_modes) #13
  %advertising4 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1
  %call6 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising4) #13
  %2 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %supported, align 4
  %and = and i32 %3, -145
  store i32 %and, ptr %supported, align 4
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %advertising, align 4
  %and7 = and i32 %5, -145
  store i32 %and7, ptr %advertising, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %and) #13
  %6 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %advertising, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising4, i32 noundef %7) #13
  %netdev14 = getelementptr i8, ptr %netdev, i32 2396
  %8 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev14, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %speed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supported) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_set_link_ksettings(ptr noundef %netdev, ptr nocapture noundef readonly %ecmd) #3 align 64 {
entry:
  %copy_ecmd = alloca %struct.ethtool_link_ksettings, align 4
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 2640
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %copy_ecmd) #13
  %speed2 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %0 = ptrtoint ptr %speed2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #13
  %2 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %advertising, align 4, !annotation !19
  %call3 = tail call i32 @pch_gbe_phy_write_reg_miic(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -32768) #13
  %3 = call ptr @memcpy(ptr %copy_ecmd, ptr %ecmd, i32 88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %speed5 = getelementptr inbounds %struct.ethtool_link_settings, ptr %copy_ecmd, i32 0, i32 1
  %4 = ptrtoint ptr %speed5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1000, ptr %speed5, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %copy_ecmd, i32 0, i32 2
  %5 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %duplex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %speed.0 = phi i32 [ 1000, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %mii = getelementptr i8, ptr %netdev, i32 2884
  %call7 = call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef nonnull %copy_ecmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.1) #17
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %conv = trunc i32 %speed.0 to i16
  %link_speed = getelementptr i8, ptr %netdev, i32 2714
  %6 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %link_speed, align 2
  %duplex11 = getelementptr inbounds %struct.ethtool_link_settings, ptr %copy_ecmd, i32 0, i32 2
  %7 = ptrtoint ptr %duplex11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %duplex11, align 4
  %conv12 = zext i8 %8 to i16
  %link_duplex = getelementptr i8, ptr %netdev, i32 2716
  %9 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv12, ptr %link_duplex, align 4
  %advertising14 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %copy_ecmd, i32 0, i32 1, i32 1
  %call15 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising14) #13
  %10 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %advertising, align 4
  %conv16 = trunc i32 %11 to i16
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 2736
  %12 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv16, ptr %autoneg_advertised, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %copy_ecmd, i32 0, i32 5
  %13 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %autoneg, align 1
  %autoneg19 = getelementptr i8, ptr %netdev, i32 2712
  %15 = ptrtoint ptr %autoneg19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %autoneg19, align 4
  %netdev20 = getelementptr i8, ptr %netdev, i32 2396
  %16 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev20, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void @pch_gbe_down(ptr noundef %add.ptr.i) #13
  %call23 = call i32 @pch_gbe_up(ptr noundef %add.ptr.i) #13
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void @pch_gbe_reset(ptr noundef %add.ptr.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then22, %if.then8
  %retval.0 = phi i32 [ %call7, %if.then8 ], [ %call23, %if.then22 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %copy_ecmd) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pch_gbe_phy_read_reg_miic(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_gbe_down(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pch_gbe_setup_rx_resources(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pch_gbe_setup_tx_resources(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_gbe_free_rx_resources(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_gbe_free_tx_resources(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pch_gbe_up(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_gbe_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pch_gbe_mac_force_mac_fc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_gbe_update_stats(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pch_gbe_phy_write_reg_miic(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @pch_gbe_ethtool_ops, !1, !"pch_gbe_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_ethtool.c", i32 493, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_ethtool.c", i32 172, i32 27}
!4 = !{ptr @pch_driver_version, !5, !"pch_driver_version", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_ethtool.c", i32 11, i32 19}
!6 = !{ptr @pch_gbe_gstrings_stats, !7, !"pch_gbe_gstrings_stats", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_ethtool.c", i32 32, i32 35}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_ethtool.c", i32 132, i32 22}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{i64 6225820}
!21 = !{i64 2153766169}
