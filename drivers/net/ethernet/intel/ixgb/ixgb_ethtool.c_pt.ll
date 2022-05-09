; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgb/ixgb_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgb/ixgb_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgb_stats = type { [32 x i8], i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.146 = type { ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.154, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.154 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.141, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.141 = type { [3 x i32], [3 x i32], [3 x i32] }

@ixgb_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ixgb_get_drvinfo, ptr @ixgb_get_regs_len, ptr @ixgb_get_regs, ptr null, ptr null, ptr @ixgb_get_msglevel, ptr @ixgb_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr @ixgb_get_eeprom_len, ptr @ixgb_get_eeprom, ptr @ixgb_set_eeprom, ptr null, ptr null, ptr @ixgb_get_ringparam, ptr @ixgb_set_ringparam, ptr null, ptr @ixgb_get_pauseparam, ptr @ixgb_set_pauseparam, ptr null, ptr @ixgb_get_strings, ptr @ixgb_set_phys_id, ptr @ixgb_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @ixgb_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgb_get_link_ksettings, ptr @ixgb_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ixgb_driver_name = external dso_local global [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ixgb_gstrings_stats = internal constant { [36 x %struct.ixgb_stats], [400 x i8] } { [36 x %struct.ixgb_stats] [%struct.ixgb_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 216 }, %struct.ixgb_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 220 }, %struct.ixgb_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 224 }, %struct.ixgb_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 228 }, %struct.ixgb_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 232 }, %struct.ixgb_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 236 }, %struct.ixgb_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 240 }, %struct.ixgb_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 244 }, %struct.ixgb_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 248 }, %struct.ixgb_stats { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 252 }, %struct.ixgb_stats { [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 260 }, %struct.ixgb_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 264 }, %struct.ixgb_stats { [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 268 }, %struct.ixgb_stats { [32 x i8] c"rx_no_buffer_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1400 }, %struct.ixgb_stats { [32 x i8] c"rx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 272 }, %struct.ixgb_stats { [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 276 }, %struct.ixgb_stats { [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 280 }, %struct.ixgb_stats { [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 284 }, %struct.ixgb_stats { [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 288 }, %struct.ixgb_stats { [32 x i8] c"tx_heartbeat_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 292 }, %struct.ixgb_stats { [32 x i8] c"tx_window_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 296 }, %struct.ixgb_stats { [32 x i8] c"tx_deferred_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1608 }, %struct.ixgb_stats { [32 x i8] c"tx_timeout_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 700 }, %struct.ixgb_stats { [32 x i8] c"tx_restart_queue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 668 }, %struct.ixgb_stats { [32 x i8] c"rx_long_length_errors\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1416 }, %struct.ixgb_stats { [32 x i8] c"rx_short_length_errors\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1408 }, %struct.ixgb_stats { [32 x i8] c"tx_tcp_seg_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1624 }, %struct.ixgb_stats { [32 x i8] c"tx_tcp_seg_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1632 }, %struct.ixgb_stats { [32 x i8] c"rx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1696 }, %struct.ixgb_stats { [32 x i8] c"rx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1712 }, %struct.ixgb_stats { [32 x i8] c"tx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1704 }, %struct.ixgb_stats { [32 x i8] c"tx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1720 }, %struct.ixgb_stats { [32 x i8] c"rx_csum_offload_good\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 744 }, %struct.ixgb_stats { [32 x i8] c"rx_csum_offload_errors\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 736 }, %struct.ixgb_stats { [32 x i8] c"tx_csum_offload_good\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 680 }, %struct.ixgb_stats { [32 x i8] c"tx_csum_offload_errors\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 688 }], [400 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"ixgb_ethtool_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 617, i32 33 }
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"ixgb_gstrings_stats\00", align 1
@___asan_gen_.7 = private constant [50 x i8] c"../drivers/net/ethernet/intel/ixgb/ixgb_ethtool.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 28, i32 26 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @ixgb_ethtool_ops, ptr @ixgb_gstrings_stats], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_gstrings_stats to i32), i32 1584, i32 1984, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_set_speed_duplex(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %link_speed = getelementptr i8, ptr %netdev, i32 2876
  %0 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 10000, ptr %link_speed, align 4
  %link_duplex = getelementptr i8, ptr %netdev, i32 2878
  %1 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 2, ptr %link_duplex, align 2
  tail call void @netif_carrier_on(ptr noundef %netdev) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ixgb_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ixgb_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgb_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @ixgb_driver_name, i32 noundef 32) #13
  %pdev = getelementptr i8, ptr %netdev, i32 3292
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
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgb_get_regs_len(ptr nocapture noundef readnone %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 544
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgb_get_regs(ptr noundef readonly %netdev, ptr nocapture noundef writeonly %regs, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3296
  %revision_id = getelementptr i8, ptr %netdev, i32 3386
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %device_id = getelementptr i8, ptr %netdev, i32 3382
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device_id, align 2
  %conv2 = zext i16 %3 to i32
  %or = or i32 %shl, %conv2
  %or3 = or i32 %or, 16777216
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or3, ptr %version, align 4
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #13, !srcloc !13
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !14
  %incdec.ptr = getelementptr i32, ptr %p, i32 1
  %9 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %p, align 4
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #13, !srcloc !13
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !15
  %incdec.ptr13 = getelementptr i32, ptr %p, i32 2
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %incdec.ptr, align 4
  %15 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw1, align 4
  %add.ptr17 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #13, !srcloc !13
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !16
  %incdec.ptr21 = getelementptr i32, ptr %p, i32 3
  %19 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %incdec.ptr13, align 4
  %20 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1, align 4
  %add.ptr25 = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #13, !srcloc !13
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !17
  %incdec.ptr29 = getelementptr i32, ptr %p, i32 4
  %24 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %incdec.ptr21, align 4
  %25 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw1, align 4
  %add.ptr33 = getelementptr i8, ptr %26, i32 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #13, !srcloc !13
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !18
  %incdec.ptr37 = getelementptr i32, ptr %p, i32 5
  %29 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %incdec.ptr29, align 4
  %30 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw1, align 4
  %add.ptr41 = getelementptr i8, ptr %31, i32 128
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #13, !srcloc !13
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !19
  %incdec.ptr45 = getelementptr i32, ptr %p, i32 6
  %34 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %incdec.ptr37, align 4
  %35 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw1, align 4
  %add.ptr49 = getelementptr i8, ptr %36, i32 136
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #13, !srcloc !13
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !20
  %incdec.ptr53 = getelementptr i32, ptr %p, i32 7
  %39 = ptrtoint ptr %incdec.ptr45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %incdec.ptr45, align 4
  %40 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw1, align 4
  %add.ptr57 = getelementptr i8, ptr %41, i32 144
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #13, !srcloc !13
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !21
  %incdec.ptr61 = getelementptr i32, ptr %p, i32 8
  %44 = ptrtoint ptr %incdec.ptr53 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %incdec.ptr53, align 4
  %45 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw1, align 4
  %add.ptr65 = getelementptr i8, ptr %46, i32 152
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #13, !srcloc !13
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !22
  %incdec.ptr69 = getelementptr i32, ptr %p, i32 9
  %49 = ptrtoint ptr %incdec.ptr61 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %incdec.ptr61, align 4
  %50 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw1, align 4
  %add.ptr73 = getelementptr i8, ptr %51, i32 256
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #13, !srcloc !13
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !23
  %incdec.ptr77 = getelementptr i32, ptr %p, i32 10
  %54 = ptrtoint ptr %incdec.ptr69 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %incdec.ptr69, align 4
  %55 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw1, align 4
  %add.ptr81 = getelementptr i8, ptr %56, i32 264
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #13, !srcloc !13
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !24
  %incdec.ptr85 = getelementptr i32, ptr %p, i32 11
  %59 = ptrtoint ptr %incdec.ptr77 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %incdec.ptr77, align 4
  %60 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw1, align 4
  %add.ptr89 = getelementptr i8, ptr %61, i32 272
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #13, !srcloc !13
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !25
  %incdec.ptr93 = getelementptr i32, ptr %p, i32 12
  %64 = ptrtoint ptr %incdec.ptr85 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %incdec.ptr85, align 4
  %65 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw1, align 4
  %add.ptr97 = getelementptr i8, ptr %66, i32 280
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #13, !srcloc !13
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !26
  %incdec.ptr101 = getelementptr i32, ptr %p, i32 13
  %69 = ptrtoint ptr %incdec.ptr93 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %incdec.ptr93, align 4
  %70 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw1, align 4
  %add.ptr105 = getelementptr i8, ptr %71, i32 284
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #13, !srcloc !13
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !27
  %incdec.ptr109 = getelementptr i32, ptr %p, i32 14
  %74 = ptrtoint ptr %incdec.ptr101 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %incdec.ptr101, align 4
  %75 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw1, align 4
  %add.ptr113 = getelementptr i8, ptr %76, i32 288
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #13, !srcloc !13
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !28
  %incdec.ptr117 = getelementptr i32, ptr %p, i32 15
  %79 = ptrtoint ptr %incdec.ptr109 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %incdec.ptr109, align 4
  %80 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw1, align 4
  %add.ptr121 = getelementptr i8, ptr %81, i32 296
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121) #13, !srcloc !13
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !29
  %incdec.ptr125 = getelementptr i32, ptr %p, i32 16
  %84 = ptrtoint ptr %incdec.ptr117 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %incdec.ptr117, align 4
  %85 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw1, align 4
  %add.ptr129 = getelementptr i8, ptr %86, i32 304
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129) #13, !srcloc !13
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !30
  %incdec.ptr133 = getelementptr i32, ptr %p, i32 17
  %89 = ptrtoint ptr %incdec.ptr125 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %incdec.ptr125, align 4
  %90 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw1, align 4
  %add.ptr137 = getelementptr i8, ptr %91, i32 312
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #13, !srcloc !13
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !31
  %incdec.ptr141 = getelementptr i32, ptr %p, i32 18
  %94 = ptrtoint ptr %incdec.ptr133 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %incdec.ptr133, align 4
  %95 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw1, align 4
  %add.ptr145 = getelementptr i8, ptr %96, i32 320
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #13, !srcloc !13
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !32
  %incdec.ptr149 = getelementptr i32, ptr %p, i32 19
  %99 = ptrtoint ptr %incdec.ptr141 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %incdec.ptr141, align 4
  %100 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw1, align 4
  %add.ptr153 = getelementptr i8, ptr %101, i32 328
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr153) #13, !srcloc !13
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !33
  %incdec.ptr157 = getelementptr i32, ptr %p, i32 20
  %104 = ptrtoint ptr %incdec.ptr149 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %incdec.ptr149, align 4
  %105 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw1, align 4
  %add.ptr161 = getelementptr i8, ptr %106, i32 344
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #13, !srcloc !13
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !34
  %incdec.ptr165 = getelementptr i32, ptr %p, i32 21
  %109 = ptrtoint ptr %incdec.ptr157 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %incdec.ptr157, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %reg.0774 = phi ptr [ %incdec.ptr165, %entry ], [ %incdec.ptr191, %for.body.for.body_crit_edge ]
  %110 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw1, align 4
  %add.ptr171 = getelementptr i8, ptr %111, i32 384
  %shl173 = shl nuw nsw i32 %indvars.iv, 3
  %add.ptr175 = getelementptr i8, ptr %add.ptr171, i32 %shl173
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175) #13, !srcloc !13
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !35
  %incdec.ptr179 = getelementptr i32, ptr %reg.0774, i32 1
  %114 = ptrtoint ptr %reg.0774 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %reg.0774, align 4
  %115 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw1, align 4
  %add.ptr183 = getelementptr i8, ptr %116, i32 388
  %add.ptr187 = getelementptr i8, ptr %add.ptr183, i32 %shl173
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr187) #13, !srcloc !13
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !36
  %incdec.ptr191 = getelementptr i32, ptr %reg.0774, i32 2
  %119 = ptrtoint ptr %incdec.ptr179 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %incdec.ptr179, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %120 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw1, align 4
  %add.ptr195 = getelementptr i8, ptr %121, i32 1536
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #13, !srcloc !13
  %123 = tail call i32 @llvm.bswap.i32(i32 %122)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !37
  %incdec.ptr199 = getelementptr i32, ptr %reg.0774, i32 3
  %124 = ptrtoint ptr %incdec.ptr191 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %incdec.ptr191, align 4
  %125 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hw1, align 4
  %add.ptr203 = getelementptr i8, ptr %126, i32 1544
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr203) #13, !srcloc !13
  %128 = tail call i32 @llvm.bswap.i32(i32 %127)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !38
  %incdec.ptr207 = getelementptr i32, ptr %reg.0774, i32 4
  %129 = ptrtoint ptr %incdec.ptr199 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %incdec.ptr199, align 4
  %130 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw1, align 4
  %add.ptr211 = getelementptr i8, ptr %131, i32 1548
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr211) #13, !srcloc !13
  %133 = tail call i32 @llvm.bswap.i32(i32 %132)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !39
  %incdec.ptr215 = getelementptr i32, ptr %reg.0774, i32 5
  %134 = ptrtoint ptr %incdec.ptr207 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %incdec.ptr207, align 4
  %135 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw1, align 4
  %add.ptr219 = getelementptr i8, ptr %136, i32 1552
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr219) #13, !srcloc !13
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !40
  %incdec.ptr223 = getelementptr i32, ptr %reg.0774, i32 6
  %139 = ptrtoint ptr %incdec.ptr215 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %incdec.ptr215, align 4
  %140 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw1, align 4
  %add.ptr227 = getelementptr i8, ptr %141, i32 1560
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227) #13, !srcloc !13
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !41
  %incdec.ptr231 = getelementptr i32, ptr %reg.0774, i32 7
  %144 = ptrtoint ptr %incdec.ptr223 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %incdec.ptr223, align 4
  %145 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw1, align 4
  %add.ptr235 = getelementptr i8, ptr %146, i32 1568
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr235) #13, !srcloc !13
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !42
  %incdec.ptr239 = getelementptr i32, ptr %reg.0774, i32 8
  %149 = ptrtoint ptr %incdec.ptr231 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %incdec.ptr231, align 4
  %150 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw1, align 4
  %add.ptr243 = getelementptr i8, ptr %151, i32 1576
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr243) #13, !srcloc !13
  %153 = tail call i32 @llvm.bswap.i32(i32 %152)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !43
  %incdec.ptr247 = getelementptr i32, ptr %reg.0774, i32 9
  %154 = ptrtoint ptr %incdec.ptr239 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %incdec.ptr239, align 4
  %155 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hw1, align 4
  %add.ptr251 = getelementptr i8, ptr %156, i32 1584
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251) #13, !srcloc !13
  %158 = tail call i32 @llvm.bswap.i32(i32 %157)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !44
  %incdec.ptr255 = getelementptr i32, ptr %reg.0774, i32 10
  %159 = ptrtoint ptr %incdec.ptr247 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %incdec.ptr247, align 4
  %160 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw1, align 4
  %add.ptr259 = getelementptr i8, ptr %161, i32 1592
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr259) #13, !srcloc !13
  %163 = tail call i32 @llvm.bswap.i32(i32 %162)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !45
  %incdec.ptr263 = getelementptr i32, ptr %reg.0774, i32 11
  %164 = ptrtoint ptr %incdec.ptr255 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %incdec.ptr255, align 4
  %165 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hw1, align 4
  %add.ptr267 = getelementptr i8, ptr %166, i32 1600
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr267) #13, !srcloc !13
  %168 = tail call i32 @llvm.bswap.i32(i32 %167)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !46
  %incdec.ptr271 = getelementptr i32, ptr %reg.0774, i32 12
  %169 = ptrtoint ptr %incdec.ptr263 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %incdec.ptr263, align 4
  %170 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hw1, align 4
  %add.ptr275 = getelementptr i8, ptr %171, i32 1792
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr275) #13, !srcloc !13
  %173 = tail call i32 @llvm.bswap.i32(i32 %172)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !47
  %incdec.ptr279 = getelementptr i32, ptr %reg.0774, i32 13
  %174 = ptrtoint ptr %incdec.ptr271 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %incdec.ptr271, align 4
  %175 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hw1, align 4
  %add.ptr283 = getelementptr i8, ptr %176, i32 1800
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr283) #13, !srcloc !13
  %178 = tail call i32 @llvm.bswap.i32(i32 %177)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !48
  %incdec.ptr287 = getelementptr i32, ptr %reg.0774, i32 14
  %179 = ptrtoint ptr %incdec.ptr279 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %incdec.ptr279, align 4
  %180 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hw1, align 4
  %add.ptr291 = getelementptr i8, ptr %181, i32 1808
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr291) #13, !srcloc !13
  %183 = tail call i32 @llvm.bswap.i32(i32 %182)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !49
  %incdec.ptr295 = getelementptr i32, ptr %reg.0774, i32 15
  %184 = ptrtoint ptr %incdec.ptr287 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %incdec.ptr287, align 4
  %185 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw1, align 4
  %add.ptr299 = getelementptr i8, ptr %186, i32 1816
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr299) #13, !srcloc !13
  %188 = tail call i32 @llvm.bswap.i32(i32 %187)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !50
  %incdec.ptr303 = getelementptr i32, ptr %reg.0774, i32 16
  %189 = ptrtoint ptr %incdec.ptr295 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %incdec.ptr295, align 4
  %190 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw1, align 4
  %add.ptr307 = getelementptr i8, ptr %191, i32 1824
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr307) #13, !srcloc !13
  %193 = tail call i32 @llvm.bswap.i32(i32 %192)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !51
  %incdec.ptr311 = getelementptr i32, ptr %reg.0774, i32 17
  %194 = ptrtoint ptr %incdec.ptr303 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %incdec.ptr303, align 4
  %195 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hw1, align 4
  %add.ptr315 = getelementptr i8, ptr %196, i32 1832
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr315) #13, !srcloc !13
  %198 = tail call i32 @llvm.bswap.i32(i32 %197)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !52
  %incdec.ptr319 = getelementptr i32, ptr %reg.0774, i32 18
  %199 = ptrtoint ptr %incdec.ptr311 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %incdec.ptr311, align 4
  %200 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hw1, align 4
  %add.ptr323 = getelementptr i8, ptr %201, i32 1840
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr323) #13, !srcloc !13
  %203 = tail call i32 @llvm.bswap.i32(i32 %202)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !53
  %incdec.ptr327 = getelementptr i32, ptr %reg.0774, i32 19
  %204 = ptrtoint ptr %incdec.ptr319 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %incdec.ptr319, align 4
  %205 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hw1, align 4
  %add.ptr331 = getelementptr i8, ptr %206, i32 1848
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr331) #13, !srcloc !13
  %208 = tail call i32 @llvm.bswap.i32(i32 %207)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !54
  %incdec.ptr335 = getelementptr i32, ptr %reg.0774, i32 20
  %209 = ptrtoint ptr %incdec.ptr327 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %incdec.ptr327, align 4
  %210 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hw1, align 4
  %add.ptr339 = getelementptr i8, ptr %211, i32 1856
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr339) #13, !srcloc !13
  %213 = tail call i32 @llvm.bswap.i32(i32 %212)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !55
  %incdec.ptr343 = getelementptr i32, ptr %reg.0774, i32 21
  %214 = ptrtoint ptr %incdec.ptr335 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %incdec.ptr335, align 4
  %215 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %hw1, align 4
  %add.ptr347 = getelementptr i8, ptr %216, i32 1864
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr347) #13, !srcloc !13
  %218 = tail call i32 @llvm.bswap.i32(i32 %217)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !56
  %incdec.ptr351 = getelementptr i32, ptr %reg.0774, i32 22
  %219 = ptrtoint ptr %incdec.ptr343 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %incdec.ptr343, align 4
  %220 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %hw1, align 4
  %add.ptr355 = getelementptr i8, ptr %221, i32 1872
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr355) #13, !srcloc !13
  %223 = tail call i32 @llvm.bswap.i32(i32 %222)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !57
  %incdec.ptr359 = getelementptr i32, ptr %reg.0774, i32 23
  %224 = ptrtoint ptr %incdec.ptr351 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %incdec.ptr351, align 4
  %225 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %hw1, align 4
  %add.ptr363 = getelementptr i8, ptr %226, i32 1880
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr363) #13, !srcloc !13
  %228 = tail call i32 @llvm.bswap.i32(i32 %227)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !58
  %incdec.ptr367 = getelementptr i32, ptr %reg.0774, i32 24
  %229 = ptrtoint ptr %incdec.ptr359 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %incdec.ptr359, align 4
  %230 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hw1, align 4
  %add.ptr371 = getelementptr i8, ptr %231, i32 1888
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr371) #13, !srcloc !13
  %233 = tail call i32 @llvm.bswap.i32(i32 %232)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !59
  %incdec.ptr375 = getelementptr i32, ptr %reg.0774, i32 25
  %234 = ptrtoint ptr %incdec.ptr367 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %incdec.ptr367, align 4
  %stats = getelementptr i8, ptr %netdev, i32 3560
  %235 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %stats, align 8
  %conv376 = trunc i64 %236 to i32
  %incdec.ptr377 = getelementptr i32, ptr %reg.0774, i32 26
  %237 = ptrtoint ptr %incdec.ptr375 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %conv376, ptr %incdec.ptr375, align 4
  %tprh = getelementptr i8, ptr %netdev, i32 3568
  %238 = ptrtoint ptr %tprh to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %tprh, align 8
  %conv379 = trunc i64 %239 to i32
  %incdec.ptr380 = getelementptr i32, ptr %reg.0774, i32 27
  %240 = ptrtoint ptr %incdec.ptr377 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %conv379, ptr %incdec.ptr377, align 4
  %gprcl = getelementptr i8, ptr %netdev, i32 3576
  %241 = ptrtoint ptr %gprcl to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %gprcl, align 8
  %conv382 = trunc i64 %242 to i32
  %incdec.ptr383 = getelementptr i32, ptr %reg.0774, i32 28
  %243 = ptrtoint ptr %incdec.ptr380 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %conv382, ptr %incdec.ptr380, align 4
  %gprch = getelementptr i8, ptr %netdev, i32 3584
  %244 = ptrtoint ptr %gprch to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %gprch, align 8
  %conv385 = trunc i64 %245 to i32
  %incdec.ptr386 = getelementptr i32, ptr %reg.0774, i32 29
  %246 = ptrtoint ptr %incdec.ptr383 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %conv385, ptr %incdec.ptr383, align 4
  %bprcl = getelementptr i8, ptr %netdev, i32 3592
  %247 = ptrtoint ptr %bprcl to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %bprcl, align 8
  %conv388 = trunc i64 %248 to i32
  %incdec.ptr389 = getelementptr i32, ptr %reg.0774, i32 30
  %249 = ptrtoint ptr %incdec.ptr386 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %conv388, ptr %incdec.ptr386, align 4
  %bprch = getelementptr i8, ptr %netdev, i32 3600
  %250 = ptrtoint ptr %bprch to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %bprch, align 8
  %conv391 = trunc i64 %251 to i32
  %incdec.ptr392 = getelementptr i32, ptr %reg.0774, i32 31
  %252 = ptrtoint ptr %incdec.ptr389 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %conv391, ptr %incdec.ptr389, align 4
  %mprcl = getelementptr i8, ptr %netdev, i32 3608
  %253 = ptrtoint ptr %mprcl to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %mprcl, align 8
  %conv394 = trunc i64 %254 to i32
  %incdec.ptr395 = getelementptr i32, ptr %reg.0774, i32 32
  %255 = ptrtoint ptr %incdec.ptr392 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %conv394, ptr %incdec.ptr392, align 4
  %mprch = getelementptr i8, ptr %netdev, i32 3616
  %256 = ptrtoint ptr %mprch to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %mprch, align 8
  %conv397 = trunc i64 %257 to i32
  %incdec.ptr398 = getelementptr i32, ptr %reg.0774, i32 33
  %258 = ptrtoint ptr %incdec.ptr395 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %conv397, ptr %incdec.ptr395, align 4
  %uprcl = getelementptr i8, ptr %netdev, i32 3624
  %259 = ptrtoint ptr %uprcl to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %uprcl, align 8
  %conv400 = trunc i64 %260 to i32
  %incdec.ptr401 = getelementptr i32, ptr %reg.0774, i32 34
  %261 = ptrtoint ptr %incdec.ptr398 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %conv400, ptr %incdec.ptr398, align 4
  %uprch = getelementptr i8, ptr %netdev, i32 3632
  %262 = ptrtoint ptr %uprch to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %uprch, align 8
  %conv403 = trunc i64 %263 to i32
  %incdec.ptr404 = getelementptr i32, ptr %reg.0774, i32 35
  %264 = ptrtoint ptr %incdec.ptr401 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %conv403, ptr %incdec.ptr401, align 4
  %vprcl = getelementptr i8, ptr %netdev, i32 3640
  %265 = ptrtoint ptr %vprcl to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %vprcl, align 8
  %conv406 = trunc i64 %266 to i32
  %incdec.ptr407 = getelementptr i32, ptr %reg.0774, i32 36
  %267 = ptrtoint ptr %incdec.ptr404 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %conv406, ptr %incdec.ptr404, align 4
  %vprch = getelementptr i8, ptr %netdev, i32 3648
  %268 = ptrtoint ptr %vprch to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %vprch, align 8
  %conv409 = trunc i64 %269 to i32
  %incdec.ptr410 = getelementptr i32, ptr %reg.0774, i32 37
  %270 = ptrtoint ptr %incdec.ptr407 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %conv409, ptr %incdec.ptr407, align 4
  %jprcl = getelementptr i8, ptr %netdev, i32 3656
  %271 = ptrtoint ptr %jprcl to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %jprcl, align 8
  %conv412 = trunc i64 %272 to i32
  %incdec.ptr413 = getelementptr i32, ptr %reg.0774, i32 38
  %273 = ptrtoint ptr %incdec.ptr410 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %conv412, ptr %incdec.ptr410, align 4
  %jprch = getelementptr i8, ptr %netdev, i32 3664
  %274 = ptrtoint ptr %jprch to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %jprch, align 8
  %conv415 = trunc i64 %275 to i32
  %incdec.ptr416 = getelementptr i32, ptr %reg.0774, i32 39
  %276 = ptrtoint ptr %incdec.ptr413 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %conv415, ptr %incdec.ptr413, align 4
  %gorcl = getelementptr i8, ptr %netdev, i32 3672
  %277 = ptrtoint ptr %gorcl to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %gorcl, align 8
  %conv418 = trunc i64 %278 to i32
  %incdec.ptr419 = getelementptr i32, ptr %reg.0774, i32 40
  %279 = ptrtoint ptr %incdec.ptr416 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %conv418, ptr %incdec.ptr416, align 4
  %gorch = getelementptr i8, ptr %netdev, i32 3680
  %280 = ptrtoint ptr %gorch to i32
  call void @__asan_load8_noabort(i32 %280)
  %281 = load i64, ptr %gorch, align 8
  %conv421 = trunc i64 %281 to i32
  %incdec.ptr422 = getelementptr i32, ptr %reg.0774, i32 41
  %282 = ptrtoint ptr %incdec.ptr419 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %conv421, ptr %incdec.ptr419, align 4
  %torl = getelementptr i8, ptr %netdev, i32 3688
  %283 = ptrtoint ptr %torl to i32
  call void @__asan_load8_noabort(i32 %283)
  %284 = load i64, ptr %torl, align 8
  %conv424 = trunc i64 %284 to i32
  %incdec.ptr425 = getelementptr i32, ptr %reg.0774, i32 42
  %285 = ptrtoint ptr %incdec.ptr422 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %conv424, ptr %incdec.ptr422, align 4
  %torh = getelementptr i8, ptr %netdev, i32 3696
  %286 = ptrtoint ptr %torh to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %torh, align 8
  %conv427 = trunc i64 %287 to i32
  %incdec.ptr428 = getelementptr i32, ptr %reg.0774, i32 43
  %288 = ptrtoint ptr %incdec.ptr425 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %conv427, ptr %incdec.ptr425, align 4
  %rnbc = getelementptr i8, ptr %netdev, i32 3704
  %289 = ptrtoint ptr %rnbc to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %rnbc, align 8
  %conv430 = trunc i64 %290 to i32
  %incdec.ptr431 = getelementptr i32, ptr %reg.0774, i32 44
  %291 = ptrtoint ptr %incdec.ptr428 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %conv430, ptr %incdec.ptr428, align 4
  %ruc = getelementptr i8, ptr %netdev, i32 3712
  %292 = ptrtoint ptr %ruc to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %ruc, align 8
  %conv433 = trunc i64 %293 to i32
  %incdec.ptr434 = getelementptr i32, ptr %reg.0774, i32 45
  %294 = ptrtoint ptr %incdec.ptr431 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %conv433, ptr %incdec.ptr431, align 4
  %roc = getelementptr i8, ptr %netdev, i32 3720
  %295 = ptrtoint ptr %roc to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %roc, align 8
  %conv436 = trunc i64 %296 to i32
  %incdec.ptr437 = getelementptr i32, ptr %reg.0774, i32 46
  %297 = ptrtoint ptr %incdec.ptr434 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %conv436, ptr %incdec.ptr434, align 4
  %rlec = getelementptr i8, ptr %netdev, i32 3728
  %298 = ptrtoint ptr %rlec to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %rlec, align 8
  %conv439 = trunc i64 %299 to i32
  %incdec.ptr440 = getelementptr i32, ptr %reg.0774, i32 47
  %300 = ptrtoint ptr %incdec.ptr437 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %conv439, ptr %incdec.ptr437, align 4
  %crcerrs = getelementptr i8, ptr %netdev, i32 3736
  %301 = ptrtoint ptr %crcerrs to i32
  call void @__asan_load8_noabort(i32 %301)
  %302 = load i64, ptr %crcerrs, align 8
  %conv442 = trunc i64 %302 to i32
  %incdec.ptr443 = getelementptr i32, ptr %reg.0774, i32 48
  %303 = ptrtoint ptr %incdec.ptr440 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %conv442, ptr %incdec.ptr440, align 4
  %icbc = getelementptr i8, ptr %netdev, i32 3744
  %304 = ptrtoint ptr %icbc to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %icbc, align 8
  %conv445 = trunc i64 %305 to i32
  %incdec.ptr446 = getelementptr i32, ptr %reg.0774, i32 49
  %306 = ptrtoint ptr %incdec.ptr443 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %conv445, ptr %incdec.ptr443, align 4
  %ecbc = getelementptr i8, ptr %netdev, i32 3752
  %307 = ptrtoint ptr %ecbc to i32
  call void @__asan_load8_noabort(i32 %307)
  %308 = load i64, ptr %ecbc, align 8
  %conv448 = trunc i64 %308 to i32
  %incdec.ptr449 = getelementptr i32, ptr %reg.0774, i32 50
  %309 = ptrtoint ptr %incdec.ptr446 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %conv448, ptr %incdec.ptr446, align 4
  %mpc = getelementptr i8, ptr %netdev, i32 3760
  %310 = ptrtoint ptr %mpc to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %mpc, align 8
  %conv451 = trunc i64 %311 to i32
  %incdec.ptr452 = getelementptr i32, ptr %reg.0774, i32 51
  %312 = ptrtoint ptr %incdec.ptr449 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %conv451, ptr %incdec.ptr449, align 4
  %tptl = getelementptr i8, ptr %netdev, i32 3768
  %313 = ptrtoint ptr %tptl to i32
  call void @__asan_load8_noabort(i32 %313)
  %314 = load i64, ptr %tptl, align 8
  %conv454 = trunc i64 %314 to i32
  %incdec.ptr455 = getelementptr i32, ptr %reg.0774, i32 52
  %315 = ptrtoint ptr %incdec.ptr452 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %conv454, ptr %incdec.ptr452, align 4
  %tpth = getelementptr i8, ptr %netdev, i32 3776
  %316 = ptrtoint ptr %tpth to i32
  call void @__asan_load8_noabort(i32 %316)
  %317 = load i64, ptr %tpth, align 8
  %conv457 = trunc i64 %317 to i32
  %incdec.ptr458 = getelementptr i32, ptr %reg.0774, i32 53
  %318 = ptrtoint ptr %incdec.ptr455 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %conv457, ptr %incdec.ptr455, align 4
  %gptcl = getelementptr i8, ptr %netdev, i32 3784
  %319 = ptrtoint ptr %gptcl to i32
  call void @__asan_load8_noabort(i32 %319)
  %320 = load i64, ptr %gptcl, align 8
  %conv460 = trunc i64 %320 to i32
  %incdec.ptr461 = getelementptr i32, ptr %reg.0774, i32 54
  %321 = ptrtoint ptr %incdec.ptr458 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %conv460, ptr %incdec.ptr458, align 4
  %gptch = getelementptr i8, ptr %netdev, i32 3792
  %322 = ptrtoint ptr %gptch to i32
  call void @__asan_load8_noabort(i32 %322)
  %323 = load i64, ptr %gptch, align 8
  %conv463 = trunc i64 %323 to i32
  %incdec.ptr464 = getelementptr i32, ptr %reg.0774, i32 55
  %324 = ptrtoint ptr %incdec.ptr461 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %conv463, ptr %incdec.ptr461, align 4
  %bptcl = getelementptr i8, ptr %netdev, i32 3800
  %325 = ptrtoint ptr %bptcl to i32
  call void @__asan_load8_noabort(i32 %325)
  %326 = load i64, ptr %bptcl, align 8
  %conv466 = trunc i64 %326 to i32
  %incdec.ptr467 = getelementptr i32, ptr %reg.0774, i32 56
  %327 = ptrtoint ptr %incdec.ptr464 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %conv466, ptr %incdec.ptr464, align 4
  %bptch = getelementptr i8, ptr %netdev, i32 3808
  %328 = ptrtoint ptr %bptch to i32
  call void @__asan_load8_noabort(i32 %328)
  %329 = load i64, ptr %bptch, align 8
  %conv469 = trunc i64 %329 to i32
  %incdec.ptr470 = getelementptr i32, ptr %reg.0774, i32 57
  %330 = ptrtoint ptr %incdec.ptr467 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %conv469, ptr %incdec.ptr467, align 4
  %mptcl = getelementptr i8, ptr %netdev, i32 3816
  %331 = ptrtoint ptr %mptcl to i32
  call void @__asan_load8_noabort(i32 %331)
  %332 = load i64, ptr %mptcl, align 8
  %conv472 = trunc i64 %332 to i32
  %incdec.ptr473 = getelementptr i32, ptr %reg.0774, i32 58
  %333 = ptrtoint ptr %incdec.ptr470 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %conv472, ptr %incdec.ptr470, align 4
  %mptch = getelementptr i8, ptr %netdev, i32 3824
  %334 = ptrtoint ptr %mptch to i32
  call void @__asan_load8_noabort(i32 %334)
  %335 = load i64, ptr %mptch, align 8
  %conv475 = trunc i64 %335 to i32
  %incdec.ptr476 = getelementptr i32, ptr %reg.0774, i32 59
  %336 = ptrtoint ptr %incdec.ptr473 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %conv475, ptr %incdec.ptr473, align 4
  %uptcl = getelementptr i8, ptr %netdev, i32 3832
  %337 = ptrtoint ptr %uptcl to i32
  call void @__asan_load8_noabort(i32 %337)
  %338 = load i64, ptr %uptcl, align 8
  %conv478 = trunc i64 %338 to i32
  %incdec.ptr479 = getelementptr i32, ptr %reg.0774, i32 60
  %339 = ptrtoint ptr %incdec.ptr476 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %conv478, ptr %incdec.ptr476, align 4
  %uptch = getelementptr i8, ptr %netdev, i32 3840
  %340 = ptrtoint ptr %uptch to i32
  call void @__asan_load8_noabort(i32 %340)
  %341 = load i64, ptr %uptch, align 8
  %conv481 = trunc i64 %341 to i32
  %incdec.ptr482 = getelementptr i32, ptr %reg.0774, i32 61
  %342 = ptrtoint ptr %incdec.ptr479 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %conv481, ptr %incdec.ptr479, align 4
  %vptcl = getelementptr i8, ptr %netdev, i32 3848
  %343 = ptrtoint ptr %vptcl to i32
  call void @__asan_load8_noabort(i32 %343)
  %344 = load i64, ptr %vptcl, align 8
  %conv484 = trunc i64 %344 to i32
  %incdec.ptr485 = getelementptr i32, ptr %reg.0774, i32 62
  %345 = ptrtoint ptr %incdec.ptr482 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %conv484, ptr %incdec.ptr482, align 4
  %vptch = getelementptr i8, ptr %netdev, i32 3856
  %346 = ptrtoint ptr %vptch to i32
  call void @__asan_load8_noabort(i32 %346)
  %347 = load i64, ptr %vptch, align 8
  %conv487 = trunc i64 %347 to i32
  %incdec.ptr488 = getelementptr i32, ptr %reg.0774, i32 63
  %348 = ptrtoint ptr %incdec.ptr485 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %conv487, ptr %incdec.ptr485, align 4
  %jptcl = getelementptr i8, ptr %netdev, i32 3864
  %349 = ptrtoint ptr %jptcl to i32
  call void @__asan_load8_noabort(i32 %349)
  %350 = load i64, ptr %jptcl, align 8
  %conv490 = trunc i64 %350 to i32
  %incdec.ptr491 = getelementptr i32, ptr %reg.0774, i32 64
  %351 = ptrtoint ptr %incdec.ptr488 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %conv490, ptr %incdec.ptr488, align 4
  %jptch = getelementptr i8, ptr %netdev, i32 3872
  %352 = ptrtoint ptr %jptch to i32
  call void @__asan_load8_noabort(i32 %352)
  %353 = load i64, ptr %jptch, align 8
  %conv493 = trunc i64 %353 to i32
  %incdec.ptr494 = getelementptr i32, ptr %reg.0774, i32 65
  %354 = ptrtoint ptr %incdec.ptr491 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %conv493, ptr %incdec.ptr491, align 4
  %gotcl = getelementptr i8, ptr %netdev, i32 3880
  %355 = ptrtoint ptr %gotcl to i32
  call void @__asan_load8_noabort(i32 %355)
  %356 = load i64, ptr %gotcl, align 8
  %conv496 = trunc i64 %356 to i32
  %incdec.ptr497 = getelementptr i32, ptr %reg.0774, i32 66
  %357 = ptrtoint ptr %incdec.ptr494 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %conv496, ptr %incdec.ptr494, align 4
  %gotch = getelementptr i8, ptr %netdev, i32 3888
  %358 = ptrtoint ptr %gotch to i32
  call void @__asan_load8_noabort(i32 %358)
  %359 = load i64, ptr %gotch, align 8
  %conv499 = trunc i64 %359 to i32
  %incdec.ptr500 = getelementptr i32, ptr %reg.0774, i32 67
  %360 = ptrtoint ptr %incdec.ptr497 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %conv499, ptr %incdec.ptr497, align 4
  %totl = getelementptr i8, ptr %netdev, i32 3896
  %361 = ptrtoint ptr %totl to i32
  call void @__asan_load8_noabort(i32 %361)
  %362 = load i64, ptr %totl, align 8
  %conv502 = trunc i64 %362 to i32
  %incdec.ptr503 = getelementptr i32, ptr %reg.0774, i32 68
  %363 = ptrtoint ptr %incdec.ptr500 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %conv502, ptr %incdec.ptr500, align 4
  %toth = getelementptr i8, ptr %netdev, i32 3904
  %364 = ptrtoint ptr %toth to i32
  call void @__asan_load8_noabort(i32 %364)
  %365 = load i64, ptr %toth, align 8
  %conv505 = trunc i64 %365 to i32
  %incdec.ptr506 = getelementptr i32, ptr %reg.0774, i32 69
  %366 = ptrtoint ptr %incdec.ptr503 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %conv505, ptr %incdec.ptr503, align 4
  %dc = getelementptr i8, ptr %netdev, i32 3912
  %367 = ptrtoint ptr %dc to i32
  call void @__asan_load8_noabort(i32 %367)
  %368 = load i64, ptr %dc, align 8
  %conv508 = trunc i64 %368 to i32
  %incdec.ptr509 = getelementptr i32, ptr %reg.0774, i32 70
  %369 = ptrtoint ptr %incdec.ptr506 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %conv508, ptr %incdec.ptr506, align 4
  %plt64c = getelementptr i8, ptr %netdev, i32 3920
  %370 = ptrtoint ptr %plt64c to i32
  call void @__asan_load8_noabort(i32 %370)
  %371 = load i64, ptr %plt64c, align 8
  %conv511 = trunc i64 %371 to i32
  %incdec.ptr512 = getelementptr i32, ptr %reg.0774, i32 71
  %372 = ptrtoint ptr %incdec.ptr509 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %conv511, ptr %incdec.ptr509, align 4
  %tsctc = getelementptr i8, ptr %netdev, i32 3928
  %373 = ptrtoint ptr %tsctc to i32
  call void @__asan_load8_noabort(i32 %373)
  %374 = load i64, ptr %tsctc, align 8
  %conv514 = trunc i64 %374 to i32
  %incdec.ptr515 = getelementptr i32, ptr %reg.0774, i32 72
  %375 = ptrtoint ptr %incdec.ptr512 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %conv514, ptr %incdec.ptr512, align 4
  %tsctfc = getelementptr i8, ptr %netdev, i32 3936
  %376 = ptrtoint ptr %tsctfc to i32
  call void @__asan_load8_noabort(i32 %376)
  %377 = load i64, ptr %tsctfc, align 8
  %conv517 = trunc i64 %377 to i32
  %incdec.ptr518 = getelementptr i32, ptr %reg.0774, i32 73
  %378 = ptrtoint ptr %incdec.ptr515 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %conv517, ptr %incdec.ptr515, align 4
  %ibic = getelementptr i8, ptr %netdev, i32 3944
  %379 = ptrtoint ptr %ibic to i32
  call void @__asan_load8_noabort(i32 %379)
  %380 = load i64, ptr %ibic, align 8
  %conv520 = trunc i64 %380 to i32
  %incdec.ptr521 = getelementptr i32, ptr %reg.0774, i32 74
  %381 = ptrtoint ptr %incdec.ptr518 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %conv520, ptr %incdec.ptr518, align 4
  %rfc = getelementptr i8, ptr %netdev, i32 3952
  %382 = ptrtoint ptr %rfc to i32
  call void @__asan_load8_noabort(i32 %382)
  %383 = load i64, ptr %rfc, align 8
  %conv523 = trunc i64 %383 to i32
  %incdec.ptr524 = getelementptr i32, ptr %reg.0774, i32 75
  %384 = ptrtoint ptr %incdec.ptr521 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %conv523, ptr %incdec.ptr521, align 4
  %lfc = getelementptr i8, ptr %netdev, i32 3960
  %385 = ptrtoint ptr %lfc to i32
  call void @__asan_load8_noabort(i32 %385)
  %386 = load i64, ptr %lfc, align 8
  %conv526 = trunc i64 %386 to i32
  %incdec.ptr527 = getelementptr i32, ptr %reg.0774, i32 76
  %387 = ptrtoint ptr %incdec.ptr524 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %conv526, ptr %incdec.ptr524, align 4
  %pfrc = getelementptr i8, ptr %netdev, i32 3968
  %388 = ptrtoint ptr %pfrc to i32
  call void @__asan_load8_noabort(i32 %388)
  %389 = load i64, ptr %pfrc, align 8
  %conv529 = trunc i64 %389 to i32
  %incdec.ptr530 = getelementptr i32, ptr %reg.0774, i32 77
  %390 = ptrtoint ptr %incdec.ptr527 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %conv529, ptr %incdec.ptr527, align 4
  %pftc = getelementptr i8, ptr %netdev, i32 3976
  %391 = ptrtoint ptr %pftc to i32
  call void @__asan_load8_noabort(i32 %391)
  %392 = load i64, ptr %pftc, align 8
  %conv532 = trunc i64 %392 to i32
  %incdec.ptr533 = getelementptr i32, ptr %reg.0774, i32 78
  %393 = ptrtoint ptr %incdec.ptr530 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %conv532, ptr %incdec.ptr530, align 4
  %mcfrc = getelementptr i8, ptr %netdev, i32 3984
  %394 = ptrtoint ptr %mcfrc to i32
  call void @__asan_load8_noabort(i32 %394)
  %395 = load i64, ptr %mcfrc, align 8
  %conv535 = trunc i64 %395 to i32
  %incdec.ptr536 = getelementptr i32, ptr %reg.0774, i32 79
  %396 = ptrtoint ptr %incdec.ptr533 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %conv535, ptr %incdec.ptr533, align 4
  %mcftc = getelementptr i8, ptr %netdev, i32 3992
  %397 = ptrtoint ptr %mcftc to i32
  call void @__asan_load8_noabort(i32 %397)
  %398 = load i64, ptr %mcftc, align 8
  %conv538 = trunc i64 %398 to i32
  %incdec.ptr539 = getelementptr i32, ptr %reg.0774, i32 80
  %399 = ptrtoint ptr %incdec.ptr536 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %conv538, ptr %incdec.ptr536, align 4
  %xonrxc = getelementptr i8, ptr %netdev, i32 4000
  %400 = ptrtoint ptr %xonrxc to i32
  call void @__asan_load8_noabort(i32 %400)
  %401 = load i64, ptr %xonrxc, align 8
  %conv541 = trunc i64 %401 to i32
  %incdec.ptr542 = getelementptr i32, ptr %reg.0774, i32 81
  %402 = ptrtoint ptr %incdec.ptr539 to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %conv541, ptr %incdec.ptr539, align 4
  %xontxc = getelementptr i8, ptr %netdev, i32 4008
  %403 = ptrtoint ptr %xontxc to i32
  call void @__asan_load8_noabort(i32 %403)
  %404 = load i64, ptr %xontxc, align 8
  %conv544 = trunc i64 %404 to i32
  %incdec.ptr545 = getelementptr i32, ptr %reg.0774, i32 82
  %405 = ptrtoint ptr %incdec.ptr542 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %conv544, ptr %incdec.ptr542, align 4
  %xoffrxc = getelementptr i8, ptr %netdev, i32 4016
  %406 = ptrtoint ptr %xoffrxc to i32
  call void @__asan_load8_noabort(i32 %406)
  %407 = load i64, ptr %xoffrxc, align 8
  %conv547 = trunc i64 %407 to i32
  %incdec.ptr548 = getelementptr i32, ptr %reg.0774, i32 83
  %408 = ptrtoint ptr %incdec.ptr545 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %conv547, ptr %incdec.ptr545, align 4
  %xofftxc = getelementptr i8, ptr %netdev, i32 4024
  %409 = ptrtoint ptr %xofftxc to i32
  call void @__asan_load8_noabort(i32 %409)
  %410 = load i64, ptr %xofftxc, align 8
  %conv550 = trunc i64 %410 to i32
  %incdec.ptr551 = getelementptr i32, ptr %reg.0774, i32 84
  %411 = ptrtoint ptr %incdec.ptr548 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %conv550, ptr %incdec.ptr548, align 4
  %rjc = getelementptr i8, ptr %netdev, i32 4032
  %412 = ptrtoint ptr %rjc to i32
  call void @__asan_load8_noabort(i32 %412)
  %413 = load i64, ptr %rjc, align 8
  %conv553 = trunc i64 %413 to i32
  %incdec.ptr554 = getelementptr i32, ptr %reg.0774, i32 85
  %414 = ptrtoint ptr %incdec.ptr551 to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %conv553, ptr %incdec.ptr551, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr554 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %p to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %len = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %415 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %sub.ptr.sub, ptr %len, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgb_get_msglevel(ptr nocapture noundef readonly %netdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3552
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg_enable, align 32
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ixgb_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %data to i16
  %msg_enable = getelementptr i8, ptr %netdev, i32 3552
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %msg_enable, align 32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgb_get_eeprom_len(ptr nocapture noundef readnone %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_get_eeprom(ptr noundef %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3296
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor_id = getelementptr i8, ptr %netdev, i32 3384
  %2 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor_id, align 4
  %conv = zext i16 %3 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 3382
  %4 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_id, align 2
  %conv2 = zext i16 %5 to i32
  %shl = shl nuw i32 %conv2, 16
  %or = or i32 %shl, %conv
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %add = add i32 %8, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp6 = icmp ugt i32 %8, %add
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp13 = icmp ugt i32 %add, 128
  br i1 %cmp13, label %if.then15, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 128, %8
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %len, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end9.if.end18_crit_edge
  %shr = lshr i32 %8, 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add22 = add i32 %8, -1
  %sub23 = add i32 %add22, %11
  %shr24 = lshr i32 %sub23, 1
  %sub25 = sub nsw i32 %shr24, %shr
  %add26 = add i32 %sub25, 1
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add26, i32 2) #13
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end18.cleanup_crit_edge, label %if.end7.i, !prof !60

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i:                                        ; preds = %if.end18
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25)
  %cmp31.not73 = icmp slt i32 %sub25, 0
  br i1 %cmp31.not73, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.074 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add33 = add i32 %i.074, %shr
  %conv34 = trunc i32 %add33 to i16
  %call35 = tail call zeroext i16 @ixgb_get_eeprom_word(ptr noundef %hw1, i16 noundef zeroext %conv34) #13
  %arrayidx = getelementptr i16, ptr %call8.i, i32 %i.074
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %call35, ptr %arrayidx, align 2
  %inc = add i32 %i.074, 1
  %cmp31.not = icmp sgt i32 %inc, %sub25
  br i1 %cmp31.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %and = and i32 %17, 1
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %20 = call ptr @memcpy(ptr %bytes, ptr %add.ptr, i32 %19)
  tail call void @kfree(ptr noundef nonnull %call8.i) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.cleanup_crit_edge ], [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_set_eeprom(ptr noundef %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef readonly %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3296
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic, align 4
  %vendor_id = getelementptr i8, ptr %netdev, i32 3384
  %4 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor_id, align 4
  %conv = zext i16 %5 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 3382
  %6 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device_id, align 2
  %conv2 = zext i16 %7 to i32
  %shl = shl nuw i32 %conv2, 16
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %or)
  %cmp3.not = icmp eq i32 %3, %or
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add = add i32 %9, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp10 = icmp ugt i32 %9, %add
  br i1 %cmp10, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp17 = icmp ugt i32 %add, 128
  br i1 %cmp17, label %if.then19, label %if.end13.if.end22_crit_edge

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 128, %9
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %len, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end13.if.end22_crit_edge
  %shr = lshr i32 %9, 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %add26 = add i32 %9, -1
  %sub27 = add i32 %add26, %12
  %shr28 = lshr i32 %sub27, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 128) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end22.cleanup_crit_edge, label %if.end31

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end31.if.end37_crit_edge, label %if.then34

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %conv35 = trunc i32 %shr to i16
  %call36 = tail call zeroext i16 @ixgb_read_eeprom(ptr noundef %hw1, i16 noundef zeroext %conv35) #13
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %call36, ptr %call7.i, align 8
  %incdec.ptr = getelementptr i8, ptr %call7.i, i32 1
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31.if.end37_crit_edge
  %ptr.0 = phi ptr [ %incdec.ptr, %if.then34 ], [ %call7.i, %if.end31.if.end37_crit_edge ]
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %add40 = add i32 %20, %18
  %and41 = and i32 %add40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end37.if.end48_crit_edge, label %if.then43

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = sub nsw i32 %shr28, %shr
  br label %if.end48

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %conv44 = trunc i32 %shr28 to i16
  %call45 = tail call zeroext i16 @ixgb_read_eeprom(ptr noundef %hw1, i16 noundef zeroext %conv44) #13
  %sub46 = sub nsw i32 %shr28, %shr
  %arrayidx47 = getelementptr i16, ptr %call7.i, i32 %sub46
  %21 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %call45, ptr %arrayidx47, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end37.if.end48_crit_edge
  %sub51.pre-phi = phi i32 [ %.pre, %if.end37.if.end48_crit_edge ], [ %sub46, %if.then43 ]
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %24 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub51.pre-phi)
  %cmp52.not107 = icmp slt i32 %sub51.pre-phi, 0
  br i1 %cmp52.not107, label %if.end48.for.end_crit_edge, label %for.body.lr.ph

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end48
  %25 = trunc i32 %shr to i16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv50109 = phi i32 [ 0, %for.body.lr.ph ], [ %conv50, %for.body.for.body_crit_edge ]
  %i.0108 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %conv56 = add i16 %i.0108, %25
  %arrayidx57 = getelementptr i16, ptr %call7.i, i32 %conv50109
  %26 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx57, align 2
  tail call void @ixgb_write_eeprom(ptr noundef %hw1, i16 noundef zeroext %conv56, i16 noundef zeroext %27) #13
  %inc = add i16 %i.0108, 1
  %conv50 = zext i16 %inc to i32
  %cmp52.not = icmp slt i32 %sub51.pre-phi, %conv50
  br i1 %cmp52.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end48.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %9)
  %cmp58 = icmp ult i32 %9, 128
  br i1 %cmp58, label %if.then60, label %for.end.if.end61_crit_edge

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ixgb_update_eeprom_checksum(ptr noundef %hw1) #13
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %for.end.if.end61_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end22.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61 ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgb_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 512, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %tx_max_pending, align 4
  %count = getelementptr i8, ptr %netdev, i32 3024
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %count1 = getelementptr i8, ptr %netdev, i32 2956
  %5 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count1, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tx_ring = getelementptr i8, ptr %netdev, i32 2944
  %rx_ring = getelementptr i8, ptr %netdev, i32 3012
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %tx_old.sroa.0.0.copyload = load ptr, ptr %tx_ring, align 128
  %tx_old.sroa.6.0.tx_ring1.sroa_idx = getelementptr i8, ptr %netdev, i32 2948
  %1 = ptrtoint ptr %tx_old.sroa.6.0.tx_ring1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %tx_old.sroa.6.0.copyload = load i32, ptr %tx_old.sroa.6.0.tx_ring1.sroa_idx, align 4
  %tx_old.sroa.7.0.tx_ring1.sroa_idx = getelementptr i8, ptr %netdev, i32 2952
  %2 = ptrtoint ptr %tx_old.sroa.7.0.tx_ring1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %tx_old.sroa.7.0.copyload = load i32, ptr %tx_old.sroa.7.0.tx_ring1.sroa_idx, align 8
  %tx_old.sroa.8.0.tx_ring1.sroa_idx = getelementptr i8, ptr %netdev, i32 2956
  %3 = ptrtoint ptr %tx_old.sroa.8.0.tx_ring1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %tx_old.sroa.8.0.copyload = load i32, ptr %tx_old.sroa.8.0.tx_ring1.sroa_idx, align 4
  %tx_old.sroa.9.0.tx_ring1.sroa_idx = getelementptr i8, ptr %netdev, i32 2960
  %4 = ptrtoint ptr %tx_old.sroa.9.0.tx_ring1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %tx_old.sroa.9.0.copyload = load i32, ptr %tx_old.sroa.9.0.tx_ring1.sroa_idx, align 16
  %tx_old.sroa.10.0.tx_ring1.sroa_idx = getelementptr i8, ptr %netdev, i32 2964
  %5 = ptrtoint ptr %tx_old.sroa.10.0.tx_ring1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %tx_old.sroa.10.0.copyload = load i32, ptr %tx_old.sroa.10.0.tx_ring1.sroa_idx, align 4
  %tx_old.sroa.11.0.tx_ring1.sroa_idx = getelementptr i8, ptr %netdev, i32 2968
  %6 = ptrtoint ptr %tx_old.sroa.11.0.tx_ring1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %tx_old.sroa.11.0.copyload = load ptr, ptr %tx_old.sroa.11.0.tx_ring1.sroa_idx, align 8
  %7 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %7)
  %rx_old.sroa.0.0.copyload = load ptr, ptr %rx_ring, align 4
  %rx_old.sroa.6.0.rx_ring2.sroa_idx = getelementptr i8, ptr %netdev, i32 3016
  %8 = ptrtoint ptr %rx_old.sroa.6.0.rx_ring2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %rx_old.sroa.6.0.copyload = load i32, ptr %rx_old.sroa.6.0.rx_ring2.sroa_idx, align 4
  %rx_old.sroa.7.0.rx_ring2.sroa_idx = getelementptr i8, ptr %netdev, i32 3020
  %9 = ptrtoint ptr %rx_old.sroa.7.0.rx_ring2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %rx_old.sroa.7.0.copyload = load i32, ptr %rx_old.sroa.7.0.rx_ring2.sroa_idx, align 4
  %rx_old.sroa.8.0.rx_ring2.sroa_idx = getelementptr i8, ptr %netdev, i32 3024
  %10 = ptrtoint ptr %rx_old.sroa.8.0.rx_ring2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %rx_old.sroa.8.0.copyload = load i32, ptr %rx_old.sroa.8.0.rx_ring2.sroa_idx, align 4
  %rx_old.sroa.9.0.rx_ring2.sroa_idx = getelementptr i8, ptr %netdev, i32 3028
  %11 = ptrtoint ptr %rx_old.sroa.9.0.rx_ring2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %rx_old.sroa.9.0.copyload = load i32, ptr %rx_old.sroa.9.0.rx_ring2.sroa_idx, align 4
  %rx_old.sroa.10.0.rx_ring2.sroa_idx = getelementptr i8, ptr %netdev, i32 3032
  %12 = ptrtoint ptr %rx_old.sroa.10.0.rx_ring2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %rx_old.sroa.10.0.copyload = load i32, ptr %rx_old.sroa.10.0.rx_ring2.sroa_idx, align 4
  %rx_old.sroa.11.0.rx_ring2.sroa_idx = getelementptr i8, ptr %netdev, i32 3036
  %13 = ptrtoint ptr %rx_old.sroa.11.0.rx_ring2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %rx_old.sroa.11.0.copyload = load ptr, ptr %rx_old.sroa.11.0.rx_ring2.sroa_idx, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %14 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %16 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not = icmp eq i32 %17, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %netdev4 = getelementptr i8, ptr %netdev, i32 3288
  %18 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev4, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ixgb_down(ptr noundef %add.ptr.i, i1 noundef zeroext true) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %22 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_pending, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 64)
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 512)
  %add = add nuw nsw i32 %25, 7
  %and = and i32 %add, 2040
  %26 = ptrtoint ptr %rx_old.sroa.8.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and, ptr %rx_old.sroa.8.0.rx_ring2.sroa_idx, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %27 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_pending, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 64)
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 4096)
  %add34 = add nuw nsw i32 %30, 7
  %and35 = and i32 %add34, 16376
  %31 = ptrtoint ptr %tx_old.sroa.8.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and35, ptr %tx_old.sroa.8.0.tx_ring1.sroa_idx, align 4
  %32 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev4, align 8
  %state.i154 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %state.i154 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i154, align 4
  %and1.i.i155 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i155)
  %tobool.i156.not = icmp eq i32 %and1.i.i155, 0
  br i1 %tobool.i156.not, label %if.end7.cleanup_crit_edge, label %if.then39

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then39:                                        ; preds = %if.end7
  %call40 = tail call i32 @ixgb_setup_rx_resources(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then39.err_setup_rx_crit_edge

if.then39.err_setup_rx_crit_edge:                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_setup_rx

if.end43:                                         ; preds = %if.then39
  %call44 = tail call i32 @ixgb_setup_tx_resources(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %err_setup_tx

if.end47:                                         ; preds = %if.end43
  %36 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %36)
  %rx_new.sroa.0.0.copyload = load ptr, ptr %rx_ring, align 4
  %37 = ptrtoint ptr %rx_old.sroa.6.0.rx_ring2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %rx_new.sroa.5.0.copyload = load i32, ptr %rx_old.sroa.6.0.rx_ring2.sroa_idx, align 4
  %38 = ptrtoint ptr %rx_old.sroa.7.0.rx_ring2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %rx_new.sroa.6.0.copyload = load i32, ptr %rx_old.sroa.7.0.rx_ring2.sroa_idx, align 4
  %39 = ptrtoint ptr %rx_old.sroa.8.0.rx_ring2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %rx_new.sroa.7.0.copyload = load i32, ptr %rx_old.sroa.8.0.rx_ring2.sroa_idx, align 4
  %40 = ptrtoint ptr %rx_old.sroa.9.0.rx_ring2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %rx_new.sroa.8.0.copyload = load i32, ptr %rx_old.sroa.9.0.rx_ring2.sroa_idx, align 4
  %41 = ptrtoint ptr %rx_old.sroa.10.0.rx_ring2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %rx_new.sroa.9.0.copyload = load i32, ptr %rx_old.sroa.10.0.rx_ring2.sroa_idx, align 4
  %42 = ptrtoint ptr %rx_old.sroa.11.0.rx_ring2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %rx_new.sroa.10.0.copyload = load ptr, ptr %rx_old.sroa.11.0.rx_ring2.sroa_idx, align 4
  %43 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %43)
  %tx_new.sroa.0.0.copyload = load ptr, ptr %tx_ring, align 128
  %44 = ptrtoint ptr %tx_old.sroa.6.0.tx_ring1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %44)
  %tx_new.sroa.5.0.copyload = load i32, ptr %tx_old.sroa.6.0.tx_ring1.sroa_idx, align 4
  %45 = ptrtoint ptr %tx_old.sroa.7.0.tx_ring1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %tx_new.sroa.6.0.copyload = load i32, ptr %tx_old.sroa.7.0.tx_ring1.sroa_idx, align 8
  %46 = ptrtoint ptr %tx_old.sroa.8.0.tx_ring1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %46)
  %tx_new.sroa.7.0.copyload = load i32, ptr %tx_old.sroa.8.0.tx_ring1.sroa_idx, align 4
  %47 = ptrtoint ptr %tx_old.sroa.9.0.tx_ring1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %47)
  %tx_new.sroa.8.0.copyload = load i32, ptr %tx_old.sroa.9.0.tx_ring1.sroa_idx, align 16
  %48 = ptrtoint ptr %tx_old.sroa.10.0.tx_ring1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %tx_new.sroa.9.0.copyload = load i32, ptr %tx_old.sroa.10.0.tx_ring1.sroa_idx, align 4
  %49 = ptrtoint ptr %tx_old.sroa.11.0.tx_ring1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %tx_new.sroa.10.0.copyload = load ptr, ptr %tx_old.sroa.11.0.tx_ring1.sroa_idx, align 8
  store ptr %rx_old.sroa.0.0.copyload, ptr %rx_ring, align 4
  store i32 %rx_old.sroa.6.0.copyload, ptr %rx_old.sroa.6.0.rx_ring2.sroa_idx, align 4
  store i32 %rx_old.sroa.7.0.copyload, ptr %rx_old.sroa.7.0.rx_ring2.sroa_idx, align 4
  store i32 %rx_old.sroa.8.0.copyload, ptr %rx_old.sroa.8.0.rx_ring2.sroa_idx, align 4
  store i32 %rx_old.sroa.9.0.copyload, ptr %rx_old.sroa.9.0.rx_ring2.sroa_idx, align 4
  store i32 %rx_old.sroa.10.0.copyload, ptr %rx_old.sroa.10.0.rx_ring2.sroa_idx, align 4
  store ptr %rx_old.sroa.11.0.copyload, ptr %rx_old.sroa.11.0.rx_ring2.sroa_idx, align 4
  store ptr %tx_old.sroa.0.0.copyload, ptr %tx_ring, align 128
  store i32 %tx_old.sroa.6.0.copyload, ptr %tx_old.sroa.6.0.tx_ring1.sroa_idx, align 4
  store i32 %tx_old.sroa.7.0.copyload, ptr %tx_old.sroa.7.0.tx_ring1.sroa_idx, align 8
  store i32 %tx_old.sroa.8.0.copyload, ptr %tx_old.sroa.8.0.tx_ring1.sroa_idx, align 4
  store i32 %tx_old.sroa.9.0.copyload, ptr %tx_old.sroa.9.0.tx_ring1.sroa_idx, align 16
  store i32 %tx_old.sroa.10.0.copyload, ptr %tx_old.sroa.10.0.tx_ring1.sroa_idx, align 4
  store ptr %tx_old.sroa.11.0.copyload, ptr %tx_old.sroa.11.0.tx_ring1.sroa_idx, align 8
  tail call void @ixgb_free_rx_resources(ptr noundef %add.ptr.i) #13
  tail call void @ixgb_free_tx_resources(ptr noundef %add.ptr.i) #13
  %50 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %rx_new.sroa.0.0.copyload, ptr %rx_ring, align 4
  %51 = ptrtoint ptr %rx_old.sroa.6.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %rx_new.sroa.5.0.copyload, ptr %rx_old.sroa.6.0.rx_ring2.sroa_idx, align 4
  %52 = ptrtoint ptr %rx_old.sroa.7.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %rx_new.sroa.6.0.copyload, ptr %rx_old.sroa.7.0.rx_ring2.sroa_idx, align 4
  %53 = ptrtoint ptr %rx_old.sroa.8.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %rx_new.sroa.7.0.copyload, ptr %rx_old.sroa.8.0.rx_ring2.sroa_idx, align 4
  %54 = ptrtoint ptr %rx_old.sroa.9.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %rx_new.sroa.8.0.copyload, ptr %rx_old.sroa.9.0.rx_ring2.sroa_idx, align 4
  %55 = ptrtoint ptr %rx_old.sroa.10.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %rx_new.sroa.9.0.copyload, ptr %rx_old.sroa.10.0.rx_ring2.sroa_idx, align 4
  %56 = ptrtoint ptr %rx_old.sroa.11.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %rx_new.sroa.10.0.copyload, ptr %rx_old.sroa.11.0.rx_ring2.sroa_idx, align 4
  %57 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %tx_new.sroa.0.0.copyload, ptr %tx_ring, align 128
  %58 = ptrtoint ptr %tx_old.sroa.6.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %tx_new.sroa.5.0.copyload, ptr %tx_old.sroa.6.0.tx_ring1.sroa_idx, align 4
  %59 = ptrtoint ptr %tx_old.sroa.7.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %tx_new.sroa.6.0.copyload, ptr %tx_old.sroa.7.0.tx_ring1.sroa_idx, align 8
  %60 = ptrtoint ptr %tx_old.sroa.8.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %tx_new.sroa.7.0.copyload, ptr %tx_old.sroa.8.0.tx_ring1.sroa_idx, align 4
  %61 = ptrtoint ptr %tx_old.sroa.9.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %tx_new.sroa.8.0.copyload, ptr %tx_old.sroa.9.0.tx_ring1.sroa_idx, align 16
  %62 = ptrtoint ptr %tx_old.sroa.10.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %tx_new.sroa.9.0.copyload, ptr %tx_old.sroa.10.0.tx_ring1.sroa_idx, align 4
  %63 = ptrtoint ptr %tx_old.sroa.11.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %tx_new.sroa.10.0.copyload, ptr %tx_old.sroa.11.0.tx_ring1.sroa_idx, align 8
  %call54 = tail call i32 @ixgb_up(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ixgb_set_speed_duplex(ptr noundef %netdev)
  br label %cleanup

err_setup_tx:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ixgb_free_rx_resources(ptr noundef %add.ptr.i) #13
  br label %err_setup_rx

err_setup_rx:                                     ; preds = %err_setup_tx, %if.then39.err_setup_rx_crit_edge
  %err.0 = phi i32 [ %call40, %if.then39.err_setup_rx_crit_edge ], [ %call44, %err_setup_tx ]
  %64 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %rx_old.sroa.0.0.copyload, ptr %rx_ring, align 4
  %65 = ptrtoint ptr %rx_old.sroa.6.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %rx_old.sroa.6.0.copyload, ptr %rx_old.sroa.6.0.rx_ring2.sroa_idx, align 4
  %66 = ptrtoint ptr %rx_old.sroa.7.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %rx_old.sroa.7.0.copyload, ptr %rx_old.sroa.7.0.rx_ring2.sroa_idx, align 4
  %67 = ptrtoint ptr %rx_old.sroa.8.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %rx_old.sroa.8.0.copyload, ptr %rx_old.sroa.8.0.rx_ring2.sroa_idx, align 4
  %68 = ptrtoint ptr %rx_old.sroa.9.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %rx_old.sroa.9.0.copyload, ptr %rx_old.sroa.9.0.rx_ring2.sroa_idx, align 4
  %69 = ptrtoint ptr %rx_old.sroa.10.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %rx_old.sroa.10.0.copyload, ptr %rx_old.sroa.10.0.rx_ring2.sroa_idx, align 4
  %70 = ptrtoint ptr %rx_old.sroa.11.0.rx_ring2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %rx_old.sroa.11.0.copyload, ptr %rx_old.sroa.11.0.rx_ring2.sroa_idx, align 4
  %71 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %tx_old.sroa.0.0.copyload, ptr %tx_ring, align 128
  %72 = ptrtoint ptr %tx_old.sroa.6.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %tx_old.sroa.6.0.copyload, ptr %tx_old.sroa.6.0.tx_ring1.sroa_idx, align 4
  %73 = ptrtoint ptr %tx_old.sroa.7.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %tx_old.sroa.7.0.copyload, ptr %tx_old.sroa.7.0.tx_ring1.sroa_idx, align 8
  %74 = ptrtoint ptr %tx_old.sroa.8.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %tx_old.sroa.8.0.copyload, ptr %tx_old.sroa.8.0.tx_ring1.sroa_idx, align 4
  %75 = ptrtoint ptr %tx_old.sroa.9.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %tx_old.sroa.9.0.copyload, ptr %tx_old.sroa.9.0.tx_ring1.sroa_idx, align 16
  %76 = ptrtoint ptr %tx_old.sroa.10.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %tx_old.sroa.10.0.copyload, ptr %tx_old.sroa.10.0.tx_ring1.sroa_idx, align 4
  %77 = ptrtoint ptr %tx_old.sroa.11.0.tx_ring1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %tx_old.sroa.11.0.copyload, ptr %tx_old.sroa.11.0.tx_ring1.sroa_idx, align 8
  %call61 = tail call i32 @ixgb_up(ptr noundef %add.ptr.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_setup_rx, %if.end57, %if.end47.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_setup_rx ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call54, %if.end47.cleanup_crit_edge ], [ 0, %if.end57 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgb_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pause) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autoneg, align 4
  %type = getelementptr i8, ptr %netdev, i32 3316
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.if.end14_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then5
    i32 3, label %if.then10
  ]

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  br label %if.end14.sink.split

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end14.sink.split

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rx_pause11 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %rx_pause11, align 4
  %tx_pause12 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then10, %if.then5, %if.then
  %tx_pause.sink = phi ptr [ %tx_pause, %if.then5 ], [ %tx_pause12, %if.then10 ], [ %rx_pause, %if.then ]
  %5 = ptrtoint ptr %tx_pause.sink to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %tx_pause.sink, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %2 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %tx_pause16 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %4 = ptrtoint ptr %tx_pause16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pause16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool17.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool17.not, label %land.lhs.true6, label %land.lhs.true.if.end33.sink.split_crit_edge

land.lhs.true.if.end33.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.sink.split

land.lhs.true6:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %tx_pause16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pause16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %land.lhs.true6.if.end33.sink.split_crit_edge, label %land.lhs.true6.if.end33_crit_edge

land.lhs.true6.if.end33_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

land.lhs.true6.if.end33.sink.split_crit_edge:     ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.sink.split

land.lhs.true15:                                  ; preds = %if.end
  br i1 %tobool17.not, label %land.lhs.true24, label %land.lhs.true15.if.end33.sink.split_crit_edge

land.lhs.true15.if.end33.sink.split_crit_edge:    ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.sink.split

land.lhs.true24:                                  ; preds = %land.lhs.true15
  %8 = ptrtoint ptr %tx_pause16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_pause16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool26.not = icmp eq i32 %9, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end33.sink.split_crit_edge, label %land.lhs.true24.if.end33_crit_edge

land.lhs.true24.if.end33_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

land.lhs.true24.if.end33.sink.split_crit_edge:    ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %land.lhs.true24.if.end33.sink.split_crit_edge, %land.lhs.true15.if.end33.sink.split_crit_edge, %land.lhs.true6.if.end33.sink.split_crit_edge, %land.lhs.true.if.end33.sink.split_crit_edge
  %.sink = phi i32 [ 3, %land.lhs.true.if.end33.sink.split_crit_edge ], [ 1, %land.lhs.true6.if.end33.sink.split_crit_edge ], [ 2, %land.lhs.true15.if.end33.sink.split_crit_edge ], [ 0, %land.lhs.true24.if.end33.sink.split_crit_edge ]
  %type11 = getelementptr i8, ptr %netdev, i32 3316
  %10 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %type11, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %land.lhs.true24.if.end33_crit_edge, %land.lhs.true6.if.end33_crit_edge
  %netdev34 = getelementptr i8, ptr %netdev, i32 3288
  %11 = ptrtoint ptr %netdev34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev34, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else38, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ixgb_down(ptr noundef %add.ptr.i, i1 noundef zeroext true) #13
  %call37 = tail call i32 @ixgb_up(ptr noundef %add.ptr.i) #13
  %link_speed.i = getelementptr i8, ptr %netdev, i32 2876
  %15 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 10000, ptr %link_speed.i, align 4
  %link_duplex.i = getelementptr i8, ptr %netdev, i32 2878
  %16 = ptrtoint ptr %link_duplex.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %link_duplex.i, align 2
  tail call void @netif_carrier_on(ptr noundef %netdev) #13
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %18) #13
  br label %cleanup

if.else38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ixgb_reset(ptr noundef %add.ptr.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else38, %if.then36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else38 ], [ 0, %if.then36 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgb_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #7 align 64 {
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
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.04, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %arrayidx = getelementptr [36 x %struct.ixgb_stats], ptr @ixgb_gstrings_stats, i32 0, i32 %i.04
  %0 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx, i32 32)
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 36
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
define internal i32 @ixgb_set_phys_id(ptr noundef %netdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %entry.sw.bb2_crit_edge
    i32 0, label %entry.sw.bb2_crit_edge5
  ]

entry.sw.bb2_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr i8, ptr %netdev, i32 3296
  tail call void @ixgb_led_on(ptr noundef %hw) #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge5
  %hw3 = getelementptr i8, ptr %netdev, i32 3296
  tail call void @ixgb_led_off(ptr noundef %hw3) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgb_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @ixgb_update_stats(ptr noundef %add.ptr.i) #13
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry
  %p.020 = phi ptr [ null, %entry ], [ %p.1, %cond.end.for.body_crit_edge ]
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %cond.end.for.body_crit_edge ]
  %type = getelementptr [36 x %struct.ixgb_stats], ptr @ixgb_gstrings_stats, i32 0, i32 %i.018, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %1, label %for.body.sw.epilog_crit_edge [
    i32 0, label %for.body.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb2
  ]

for.body.sw.epilog.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %for.body.sw.epilog.sink.split_crit_edge
  %add.ptr.i.sink = phi ptr [ %add.ptr.i, %sw.bb2 ], [ %netdev, %for.body.sw.epilog.sink.split_crit_edge ]
  %stat_offset4 = getelementptr [36 x %struct.ixgb_stats], ptr @ixgb_gstrings_stats, i32 0, i32 %i.018, i32 3
  %3 = ptrtoint ptr %stat_offset4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stat_offset4, align 4
  %add.ptr5 = getelementptr i8, ptr %add.ptr.i.sink, i32 %4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge
  %p.1 = phi ptr [ %p.020, %for.body.sw.epilog_crit_edge ], [ %add.ptr5, %sw.epilog.sink.split ]
  %sizeof_stat = getelementptr [36 x %struct.ixgb_stats], ptr @ixgb_gstrings_stats, i32 0, i32 %i.018, i32 2
  %5 = ptrtoint ptr %sizeof_stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sizeof_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp7 = icmp eq i32 %6, 8
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %p.1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %p.1, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p.1, align 4
  %conv = zext i32 %10 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %conv, %cond.false ]
  %arrayidx8 = getelementptr i64, ptr %data, i32 %i.018
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %cond, ptr %arrayidx8, align 8
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 36
  br i1 %exitcond.not, label %for.end, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgb_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 36, i32 -95
  ret i32 %.
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgb_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %cmd) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %0 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5120, ptr %link_modes, align 4
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 4
  %5 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5120, ptr %advertising, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %port, align 1
  %netdev15 = getelementptr i8, ptr %netdev, i32 3288
  %7 = ptrtoint ptr %netdev15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev15, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %spec.select = select i1 %tobool.not.i, i32 10000, i32 -1
  %spec.select39 = select i1 %tobool.not.i, i8 1, i8 -1
  %12 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select39, ptr %14, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %16 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %autoneg, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_set_link_ksettings(ptr noundef %netdev, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %speed1 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed1, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %duplex, align 4
  %conv5 = zext i8 %5 to i32
  %add = add i32 %3, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %add)
  %cmp6.not = icmp eq i32 %add, 10001
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %netdev8 = getelementptr i8, ptr %netdev, i32 3288
  %6 = ptrtoint ptr %netdev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev8, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ixgb_down(ptr noundef %add.ptr.i, i1 noundef zeroext true) #13
  tail call void @ixgb_reset(ptr noundef %add.ptr.i) #13
  %call11 = tail call i32 @ixgb_up(ptr noundef %add.ptr.i) #13
  %link_speed.i = getelementptr i8, ptr %netdev, i32 2876
  %10 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 10000, ptr %link_speed.i, align 4
  %link_duplex.i = getelementptr i8, ptr %netdev, i32 2878
  %11 = ptrtoint ptr %link_duplex.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %link_duplex.i, align 2
  tail call void @netif_carrier_on(ptr noundef %netdev) #13
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ixgb_reset(ptr noundef %add.ptr.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ixgb_get_eeprom_word(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ixgb_read_eeprom(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_write_eeprom(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_update_eeprom_checksum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgb_setup_rx_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgb_setup_tx_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_free_rx_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_free_tx_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgb_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_led_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_led_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_update_stats(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ixgb_ethtool_ops, !1, !"ixgb_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_ethtool.c", i32 617, i32 33}
!2 = !{ptr @ixgb_gstrings_stats, !3, !"ixgb_gstrings_stats", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_ethtool.c", i32 28, i32 26}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 6409458}
!14 = !{i64 2158123144}
!15 = !{i64 2158123729}
!16 = !{i64 2158124316}
!17 = !{i64 2158124899}
!18 = !{i64 2158125480}
!19 = !{i64 2158126061}
!20 = !{i64 2158126642}
!21 = !{i64 2158127223}
!22 = !{i64 2158127804}
!23 = !{i64 2158128387}
!24 = !{i64 2158128972}
!25 = !{i64 2158129557}
!26 = !{i64 2158130142}
!27 = !{i64 2158130727}
!28 = !{i64 2158131312}
!29 = !{i64 2158131893}
!30 = !{i64 2158132474}
!31 = !{i64 2158133057}
!32 = !{i64 2158133644}
!33 = !{i64 2158134229}
!34 = !{i64 2158134816}
!35 = !{i64 2158135515}
!36 = !{i64 2158136211}
!37 = !{i64 2158136794}
!38 = !{i64 2158137379}
!39 = !{i64 2158137964}
!40 = !{i64 2158138549}
!41 = !{i64 2158139130}
!42 = !{i64 2158139711}
!43 = !{i64 2158140294}
!44 = !{i64 2158140881}
!45 = !{i64 2158141466}
!46 = !{i64 2158142047}
!47 = !{i64 2158142632}
!48 = !{i64 2158143217}
!49 = !{i64 2158143802}
!50 = !{i64 2158144387}
!51 = !{i64 2158144972}
!52 = !{i64 2158145555}
!53 = !{i64 2158146142}
!54 = !{i64 2158146725}
!55 = !{i64 2158147308}
!56 = !{i64 2158147889}
!57 = !{i64 2158148470}
!58 = !{i64 2158149053}
!59 = !{i64 2158149638}
!60 = !{!"branch_weights", i32 1, i32 2000}
