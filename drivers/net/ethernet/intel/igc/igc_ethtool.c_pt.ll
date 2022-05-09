; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igc/igc_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igc/igc_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_stats = type { [32 x i8], i32, i32 }
%struct.atomic_t = type { i32 }
%struct.igc_adapter = type { ptr, %struct.ethtool_eee, i16, i32, i32, i32, ptr, i16, i32, i32, [4 x ptr], i32, [4 x ptr], %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i16, i16, i8, ptr, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, i8, i32, i32, i32, i64, i64, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.igc_hw, %struct.igc_hw_stats, [8 x ptr], i32, i32, i16, i16, i32, i32, i32, i32, i32, %struct.mutex, %struct.list_head, i32, [128 x i8], i32, %struct.igc_info, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, %struct.timespec64, i64, %struct.system_time_snapshot, [32 x i8], ptr, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.131] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.igc_hw = type { ptr, ptr, i32, %struct.igc_mac_info, %struct.igc_fc_info, %struct.igc_nvm_info, %struct.igc_phy_info, %struct.igc_bus_info, %union.anon.127, i16, i16, i16, i16, i8 }
%struct.igc_mac_info = type { %struct.igc_mac_operations, [6 x i8], [6 x i8], i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8 }
%struct.igc_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.igc_nvm_info = type { %struct.igc_nvm_operations, i32, i16, i16, i16, i16, i16 }
%struct.igc_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_phy_info = type { %struct.igc_phy_operations, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.igc_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_bus_info = type { i16, i16 }
%union.anon.127 = type { %struct.igc_dev_spec_base }
%struct.igc_dev_spec_base = type { i8, i8 }
%struct.igc_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.igc_info = type { ptr, ptr, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.131 = type { %struct.timespec64, %struct.timespec64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.igc_q_vector = type { ptr, ptr, i32, i16, i8, %struct.igc_ring_container, %struct.igc_ring_container, %struct.napi_struct, %struct.callback_head, [25 x i8], [79 x i8], %struct.net_device, [0 x %struct.igc_ring] }
%struct.igc_ring_container = type { ptr, i32, i32, i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.igc_ring = type { ptr, ptr, ptr, %union.anon.117, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.123, [24 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.117 = type { ptr }
%union.anon.123 = type { %struct.anon.125 }
%struct.anon.125 = type { %struct.igc_rx_queue_stats, %struct.igc_rx_packet_stats, %struct.u64_stats_sync, ptr }
%struct.igc_rx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.igc_rx_packet_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.114, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.114 = type { i32 }
%struct.igc_nfc_rule = type { %struct.list_head, %struct.igc_nfc_filter, i32, i16, i8 }
%struct.igc_nfc_filter = type { i8, i16, i16, i16, [6 x i8], [6 x i8], [8 x i8], [8 x i8], i8, i8, i8, i8, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }

@igc_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 17, i32 0, ptr @igc_ethtool_get_drvinfo, ptr @igc_ethtool_get_regs_len, ptr @igc_ethtool_get_regs, ptr @igc_ethtool_get_wol, ptr @igc_ethtool_set_wol, ptr @igc_ethtool_get_msglevel, ptr @igc_ethtool_set_msglevel, ptr @igc_ethtool_nway_reset, ptr @igc_ethtool_get_link, ptr null, ptr @igc_ethtool_get_eeprom_len, ptr @igc_ethtool_get_eeprom, ptr @igc_ethtool_set_eeprom, ptr @igc_ethtool_get_coalesce, ptr @igc_ethtool_set_coalesce, ptr @igc_ethtool_get_ringparam, ptr @igc_ethtool_set_ringparam, ptr null, ptr @igc_ethtool_get_pauseparam, ptr @igc_ethtool_set_pauseparam, ptr @igc_ethtool_diag_test, ptr @igc_ethtool_get_strings, ptr null, ptr @igc_ethtool_get_stats, ptr @igc_ethtool_begin, ptr @igc_ethtool_complete, ptr @igc_ethtool_get_priv_flags, ptr @igc_ethtool_set_priv_flags, ptr @igc_ethtool_get_sset_count, ptr @igc_ethtool_get_rxnfc, ptr @igc_ethtool_set_rxnfc, ptr null, ptr null, ptr null, ptr @igc_ethtool_get_rxfh_indir_size, ptr @igc_ethtool_get_rxfh, ptr @igc_ethtool_set_rxfh, ptr null, ptr null, ptr @igc_ethtool_get_channels, ptr @igc_ethtool_set_channels, ptr null, ptr null, ptr null, ptr @igc_ethtool_get_ts_info, ptr null, ptr null, ptr @igc_ethtool_get_eee, ptr @igc_ethtool_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @igc_ethtool_get_link_ksettings, ptr @igc_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@igc_driver_name = external dso_local global [0 x i8], align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x:%x\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Offline testing starting\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Register testing starting\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EEPROM testing starting\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Online testing starting\00", [40 x i8] zeroinitializer }, align 32
@igc_gstrings_test = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"Register test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Eeprom test    (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Interrupt test (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Loopback test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Link test   (on/offline)\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@igc_gstrings_stats = internal constant { [44 x %struct.igc_stats], [416 x i8] } { [44 x %struct.igc_stats] [%struct.igc_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1648 }, %struct.igc_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1672 }, %struct.igc_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1680 }, %struct.igc_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1688 }, %struct.igc_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1656 }, %struct.igc_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1848 }, %struct.igc_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1664 }, %struct.igc_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1840 }, %struct.igc_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1664 }, %struct.igc_stats { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1496 }, %struct.igc_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1424 }, %struct.igc_stats { [32 x i8] c"rx_no_buffer_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1696 }, %struct.igc_stats { [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1456 }, %struct.igc_stats { [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1472 }, %struct.igc_stats { [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1512 }, %struct.igc_stats { [32 x i8] c"tx_window_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1488 }, %struct.igc_stats { [32 x i8] c"tx_abort_late_coll\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1488 }, %struct.igc_stats { [32 x i8] c"tx_deferred_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1504 }, %struct.igc_stats { [32 x i8] c"tx_single_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1464 }, %struct.igc_stats { [32 x i8] c"tx_multi_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1480 }, %struct.igc_stats { [32 x i8] c"tx_timeout_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 68 }, %struct.igc_stats { [32 x i8] c"rx_long_length_errors\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1720 }, %struct.igc_stats { [32 x i8] c"rx_short_length_errors\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1704 }, %struct.igc_stats { [32 x i8] c"rx_align_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1432 }, %struct.igc_stats { [32 x i8] c"tx_tcp_seg_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1856 }, %struct.igc_stats { [32 x i8] c"tx_tcp_seg_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1864 }, %struct.igc_stats { [32 x i8] c"rx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1544 }, %struct.igc_stats { [32 x i8] c"rx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1560 }, %struct.igc_stats { [32 x i8] c"tx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1552 }, %struct.igc_stats { [32 x i8] c"tx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1568 }, %struct.igc_stats { [32 x i8] c"rx_long_byte_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1680 }, %struct.igc_stats { [32 x i8] c"tx_dma_out_of_sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1944 }, %struct.igc_stats { [32 x i8] c"tx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1752 }, %struct.igc_stats { [32 x i8] c"rx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1736 }, %struct.igc_stats { [32 x i8] c"dropped_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1744 }, %struct.igc_stats { [32 x i8] c"os2bmc_rx_by_bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1952 }, %struct.igc_stats { [32 x i8] c"os2bmc_tx_by_bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1968 }, %struct.igc_stats { [32 x i8] c"os2bmc_tx_by_host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1960 }, %struct.igc_stats { [32 x i8] c"os2bmc_rx_by_host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1976 }, %struct.igc_stats { [32 x i8] c"tx_hwtstamp_timeouts\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 2028 }, %struct.igc_stats { [32 x i8] c"tx_hwtstamp_skipped\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 2032 }, %struct.igc_stats { [32 x i8] c"rx_hwtstamp_cleared\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 2036 }, %struct.igc_stats { [32 x i8] c"tx_lpi_counter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1632 }, %struct.igc_stats { [32 x i8] c"rx_lpi_counter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1640 }], [416 x i8] zeroinitializer }, align 32
@igc_gstrings_net_stats = internal constant { [9 x %struct.igc_stats], [88 x i8] } { [9 x %struct.igc_stats] [%struct.igc_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 32 }, %struct.igc_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 40 }, %struct.igc_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 56 }, %struct.igc_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 80 }, %struct.igc_stats { [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 88 }, %struct.igc_stats { [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 104 }, %struct.igc_stats { [32 x i8] c"rx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 112 }, %struct.igc_stats { [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 144 }, %struct.igc_stats { [32 x i8] c"tx_heartbeat_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 152 }], [88 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_queue_%u_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_queue_%u_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_queue_%u_restart\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_queue_%u_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_queue_%u_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_queue_%u_drops\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_queue_%u_csum_err\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx_queue_%u_alloc_failed\00", [39 x i8] zeroinitializer }, align 32
@igc_priv_flags_strings = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"legacy-rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Enabling UDP RSS: fragmented packets may arrive out of order to the stack above\0A\00", [47 x i8] zeroinitializer }, align 32
@igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, i8 1, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igc\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"igc_ethtool_add_nfc_rule\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/igc/igc_ethtool.c\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"N-tuple filters disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, i8 1, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Only ethernet flow type is supported\0A\00", [58 x i8] zeroinitializer }, align 32
@igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, i8 1, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid action\0A\00", [16 x i8] zeroinitializer }, align 32
@igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.20, i8 1, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid location\0A\00", [46 x i8] zeroinitializer }, align 32
@igc_ethtool_check_nfc_rule.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.21, ptr @.str.16, ptr @.str.22, i8 1, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"igc_ethtool_check_nfc_rule\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Rule with no match\0A\00", [44 x i8] zeroinitializer }, align 32
@igc_ethtool_check_nfc_rule.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.21, ptr @.str.16, ptr @.str.23, i8 1, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rule already exists\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Setting EEE Tx LPI timer is not supported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Setting EEE options are not supported with EEE disabled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Cannot change link characteristics when reset is active\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Force mode currently not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.34 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 42, i64 49, i64 50]
@__sancov_gen_cov_switch_values.36 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"igc_ethtool_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1935, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 148, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1884, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1898, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1904, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1920, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"igc_gstrings_test\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 98, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"igc_gstrings_stats\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 25, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"igc_gstrings_net_stats\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 78, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 780, i32 24 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 781, i32 24 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 782, i32 24 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 785, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 786, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 787, i32 24 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 788, i32 24 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 789, i32 24 }
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"igc_priv_flags_strings\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 123, i32 19 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1177, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1309, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1314, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1319, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1324, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1283, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1291, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1642, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1649, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1654, i32 7 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1816, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1827, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [48 x i8] c"../drivers/net/ethernet/intel/igc/igc_ethtool.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1850, i32 20 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @igc_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @igc_gstrings_test, ptr @igc_gstrings_stats, ptr @igc_gstrings_net_stats, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @igc_priv_flags_strings, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_gstrings_test to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_gstrings_stats to i32), i32 1760, i32 2176, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_gstrings_net_stats to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_priv_flags_strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_write_rss_indir_tbl(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr4 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.for.cond.preheader_crit_edge, %entry
  %reg.025 = phi i32 [ 23552, %entry ], [ %add12, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %i.024 = phi i32 [ 0, %entry ], [ %add13, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %add = or i32 %i.024, 3
  %arrayidx = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 52, i32 %add
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %add.1 = or i32 %i.024, 2
  %arrayidx.1 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 52, i32 %add.1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %3 to i32
  %4 = shl nuw nsw i32 %conv, 16
  %5 = shl nuw nsw i32 %conv.1, 8
  %shl.2 = or i32 %4, %5
  %add.2 = or i32 %i.024, 1
  %arrayidx.2 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 52, i32 %add.2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %7 to i32
  %or.2 = or i32 %shl.2, %conv.2
  %shl.3 = shl nuw i32 %or.2, 8
  %arrayidx.3 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 52, i32 %i.024
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %9 to i32
  %or.3 = or i32 %shl.3, %conv.3
  %10 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !83
  tail call void @arm_heavy_mb() #16
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.3)
  %arrayidx9 = getelementptr i8, ptr %11, i32 %reg.025
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx9, i32 %12) #16, !srcloc !84
  %add12 = add nuw nsw i32 %reg.025, 4
  %add13 = add nuw nsw i32 %i.024, 4
  %cmp = icmp ult i32 %i.024, 124
  br i1 %cmp, label %for.cond.preheader.for.cond.preheader_crit_edge, label %while.end

for.cond.preheader.for.cond.preheader_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.preheader

while.end:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @igc_ethtool_set_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @igc_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igc_ethtool_get_drvinfo(ptr noundef %netdev, ptr noundef %drvinfo) #0 align 64 {
entry:
  %nvm_version = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2992
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_version) #16
  %0 = ptrtoint ptr %nvm_version to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %nvm_version, align 2
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @igc_driver_name, i32 noundef 32) #16
  %read = getelementptr i8, ptr %netdev, i32 3608
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  %call3 = call i32 %2(ptr noundef %hw1, i16 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %nvm_version) #16
  %call4 = call zeroext i16 @igc_read_phy_fw_version(ptr noundef %hw1) #16
  %fw_version = getelementptr i8, ptr %netdev, i32 4960
  %3 = ptrtoint ptr %nvm_version to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nvm_version, align 2
  %conv = zext i16 %4 to i32
  %conv6 = zext i16 %call4 to i32
  %call7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv6) #16
  %fw_version8 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %call12 = call i32 @strscpy(ptr noundef %fw_version8, ptr noundef %fw_version, i32 noundef 32) #16
  %pdev = getelementptr i8, ptr %netdev, i32 2752
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call15 = call i32 @strscpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #16
  %n_priv_flags = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 7
  %11 = ptrtoint ptr %n_priv_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %n_priv_flags, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_version) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igc_ethtool_get_regs_len(ptr nocapture noundef readnone %netdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2960
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igc_ethtool_get_regs(ptr noundef %netdev, ptr nocapture noundef writeonly %regs, ptr noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2992
  %0 = call ptr @memset(ptr %p, i32 0, i32 2960)
  %revision_id = getelementptr i8, ptr %netdev, i32 3722
  %1 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %revision_id, align 2
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %device_id = getelementptr i8, ptr %netdev, i32 3714
  %3 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device_id, align 2
  %conv2 = zext i16 %4 to i32
  %or = or i32 %shl, %conv2
  %or3 = or i32 %or, 33554432
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or3, ptr %version, align 4
  %call4 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 0) #16
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %p, align 4
  %call5 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 8) #16
  %arrayidx6 = getelementptr i32, ptr %p, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call5, ptr %arrayidx6, align 4
  %call7 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 24) #16
  %arrayidx8 = getelementptr i32, ptr %p, i32 2
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call7, ptr %arrayidx8, align 4
  %call9 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 32) #16
  %arrayidx10 = getelementptr i32, ptr %p, i32 3
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call9, ptr %arrayidx10, align 4
  %call11 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 52) #16
  %arrayidx12 = getelementptr i32, ptr %p, i32 4
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call11, ptr %arrayidx12, align 4
  %call13 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 16) #16
  %arrayidx14 = getelementptr i32, ptr %p, i32 5
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call13, ptr %arrayidx14, align 4
  %call15 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5408) #16
  %arrayidx16 = getelementptr i32, ptr %p, i32 6
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call15, ptr %arrayidx16, align 4
  %call17 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5408) #16
  %arrayidx18 = getelementptr i32, ptr %p, i32 7
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call17, ptr %arrayidx18, align 4
  %call19 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5412) #16
  %arrayidx20 = getelementptr i32, ptr %p, i32 8
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call19, ptr %arrayidx20, align 4
  %call21 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5416) #16
  %arrayidx22 = getelementptr i32, ptr %p, i32 9
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call21, ptr %arrayidx22, align 4
  %call23 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5420) #16
  %arrayidx24 = getelementptr i32, ptr %p, i32 10
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call23, ptr %arrayidx24, align 4
  %call25 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5424) #16
  %arrayidx26 = getelementptr i32, ptr %p, i32 11
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call25, ptr %arrayidx26, align 4
  %call27 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5380) #16
  %arrayidx28 = getelementptr i32, ptr %p, i32 12
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call27, ptr %arrayidx28, align 4
  %call29 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5380) #16
  %arrayidx30 = getelementptr i32, ptr %p, i32 13
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call29, ptr %arrayidx30, align 4
  %call31 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5384) #16
  %arrayidx32 = getelementptr i32, ptr %p, i32 14
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call31, ptr %arrayidx32, align 4
  %call33 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5388) #16
  %arrayidx34 = getelementptr i32, ptr %p, i32 15
  %21 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call33, ptr %arrayidx34, align 4
  %call35 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 16640) #16
  %arrayidx36 = getelementptr i32, ptr %p, i32 16
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call35, ptr %arrayidx36, align 4
  %call37 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5392) #16
  %arrayidx38 = getelementptr i32, ptr %p, i32 17
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call37, ptr %arrayidx38, align 4
  %call39 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 40) #16
  %arrayidx40 = getelementptr i32, ptr %p, i32 18
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call39, ptr %arrayidx40, align 4
  %call41 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 44) #16
  %arrayidx42 = getelementptr i32, ptr %p, i32 19
  %25 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call41, ptr %arrayidx42, align 4
  %call43 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 368) #16
  %arrayidx44 = getelementptr i32, ptr %p, i32 20
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call43, ptr %arrayidx44, align 4
  %call45 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 8544) #16
  %arrayidx46 = getelementptr i32, ptr %p, i32 21
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call45, ptr %arrayidx46, align 4
  %call47 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 8552) #16
  %arrayidx48 = getelementptr i32, ptr %p, i32 22
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call47, ptr %arrayidx48, align 4
  %call49 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 9312) #16
  %arrayidx50 = getelementptr i32, ptr %p, i32 23
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call49, ptr %arrayidx50, align 4
  %call51 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 256) #16
  %arrayidx52 = getelementptr i32, ptr %p, i32 24
  %30 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call51, ptr %arrayidx52, align 4
  %call53 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 20480) #16
  %arrayidx54 = getelementptr i32, ptr %p, i32 25
  %31 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call53, ptr %arrayidx54, align 4
  %call55 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 20484) #16
  %arrayidx56 = getelementptr i32, ptr %p, i32 26
  %32 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call55, ptr %arrayidx56, align 4
  %call57 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 20488) #16
  %arrayidx58 = getelementptr i32, ptr %p, i32 27
  %33 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call57, ptr %arrayidx58, align 4
  %call59 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 1024) #16
  %arrayidx60 = getelementptr i32, ptr %p, i32 28
  %34 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call59, ptr %arrayidx60, align 4
  %call61 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 1040) #16
  %arrayidx62 = getelementptr i32, ptr %p, i32 29
  %35 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call61, ptr %arrayidx62, align 4
  %stats = getelementptr i8, ptr %netdev, i32 3728
  %36 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %stats, align 8
  %conv63 = trunc i64 %37 to i32
  %arrayidx64 = getelementptr i32, ptr %p, i32 30
  %38 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv63, ptr %arrayidx64, align 4
  %algnerrc = getelementptr i8, ptr %netdev, i32 3736
  %39 = ptrtoint ptr %algnerrc to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %algnerrc, align 8
  %conv66 = trunc i64 %40 to i32
  %arrayidx67 = getelementptr i32, ptr %p, i32 31
  %41 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv66, ptr %arrayidx67, align 4
  %symerrs = getelementptr i8, ptr %netdev, i32 3744
  %42 = ptrtoint ptr %symerrs to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %symerrs, align 8
  %conv69 = trunc i64 %43 to i32
  %arrayidx70 = getelementptr i32, ptr %p, i32 32
  %44 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv69, ptr %arrayidx70, align 4
  %rxerrc = getelementptr i8, ptr %netdev, i32 3752
  %45 = ptrtoint ptr %rxerrc to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %rxerrc, align 8
  %conv72 = trunc i64 %46 to i32
  %arrayidx73 = getelementptr i32, ptr %p, i32 33
  %47 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv72, ptr %arrayidx73, align 4
  %mpc = getelementptr i8, ptr %netdev, i32 3760
  %48 = ptrtoint ptr %mpc to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %mpc, align 8
  %conv75 = trunc i64 %49 to i32
  %arrayidx76 = getelementptr i32, ptr %p, i32 34
  %50 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv75, ptr %arrayidx76, align 4
  %scc = getelementptr i8, ptr %netdev, i32 3768
  %51 = ptrtoint ptr %scc to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %scc, align 8
  %conv78 = trunc i64 %52 to i32
  %arrayidx79 = getelementptr i32, ptr %p, i32 35
  %53 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv78, ptr %arrayidx79, align 4
  %ecol = getelementptr i8, ptr %netdev, i32 3776
  %54 = ptrtoint ptr %ecol to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ecol, align 8
  %conv81 = trunc i64 %55 to i32
  %arrayidx82 = getelementptr i32, ptr %p, i32 36
  %56 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv81, ptr %arrayidx82, align 4
  %mcc = getelementptr i8, ptr %netdev, i32 3784
  %57 = ptrtoint ptr %mcc to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %mcc, align 8
  %conv84 = trunc i64 %58 to i32
  %arrayidx85 = getelementptr i32, ptr %p, i32 37
  %59 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv84, ptr %arrayidx85, align 4
  %latecol = getelementptr i8, ptr %netdev, i32 3792
  %60 = ptrtoint ptr %latecol to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %latecol, align 8
  %conv87 = trunc i64 %61 to i32
  %arrayidx88 = getelementptr i32, ptr %p, i32 38
  %62 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv87, ptr %arrayidx88, align 4
  %colc = getelementptr i8, ptr %netdev, i32 3800
  %63 = ptrtoint ptr %colc to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %colc, align 8
  %conv90 = trunc i64 %64 to i32
  %arrayidx91 = getelementptr i32, ptr %p, i32 39
  %65 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv90, ptr %arrayidx91, align 4
  %dc = getelementptr i8, ptr %netdev, i32 3808
  %66 = ptrtoint ptr %dc to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %dc, align 8
  %conv93 = trunc i64 %67 to i32
  %arrayidx94 = getelementptr i32, ptr %p, i32 40
  %68 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv93, ptr %arrayidx94, align 4
  %tncrs = getelementptr i8, ptr %netdev, i32 3816
  %69 = ptrtoint ptr %tncrs to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %tncrs, align 8
  %conv96 = trunc i64 %70 to i32
  %arrayidx97 = getelementptr i32, ptr %p, i32 41
  %71 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv96, ptr %arrayidx97, align 4
  %sec = getelementptr i8, ptr %netdev, i32 3824
  %72 = ptrtoint ptr %sec to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %sec, align 8
  %conv99 = trunc i64 %73 to i32
  %arrayidx100 = getelementptr i32, ptr %p, i32 42
  %74 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv99, ptr %arrayidx100, align 4
  %htdpmc = getelementptr i8, ptr %netdev, i32 4184
  %75 = ptrtoint ptr %htdpmc to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %htdpmc, align 8
  %conv102 = trunc i64 %76 to i32
  %arrayidx103 = getelementptr i32, ptr %p, i32 43
  %77 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv102, ptr %arrayidx103, align 4
  %rlec = getelementptr i8, ptr %netdev, i32 3840
  %78 = ptrtoint ptr %rlec to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %rlec, align 8
  %conv105 = trunc i64 %79 to i32
  %arrayidx106 = getelementptr i32, ptr %p, i32 44
  %80 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv105, ptr %arrayidx106, align 4
  %xonrxc = getelementptr i8, ptr %netdev, i32 3848
  %81 = ptrtoint ptr %xonrxc to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %xonrxc, align 8
  %conv108 = trunc i64 %82 to i32
  %arrayidx109 = getelementptr i32, ptr %p, i32 45
  %83 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv108, ptr %arrayidx109, align 4
  %xontxc = getelementptr i8, ptr %netdev, i32 3856
  %84 = ptrtoint ptr %xontxc to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %xontxc, align 8
  %conv111 = trunc i64 %85 to i32
  %arrayidx112 = getelementptr i32, ptr %p, i32 46
  %86 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv111, ptr %arrayidx112, align 4
  %xoffrxc = getelementptr i8, ptr %netdev, i32 3864
  %87 = ptrtoint ptr %xoffrxc to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %xoffrxc, align 8
  %conv114 = trunc i64 %88 to i32
  %arrayidx115 = getelementptr i32, ptr %p, i32 47
  %89 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv114, ptr %arrayidx115, align 4
  %xofftxc = getelementptr i8, ptr %netdev, i32 3872
  %90 = ptrtoint ptr %xofftxc to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %xofftxc, align 8
  %conv117 = trunc i64 %91 to i32
  %arrayidx118 = getelementptr i32, ptr %p, i32 48
  %92 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv117, ptr %arrayidx118, align 4
  %fcruc = getelementptr i8, ptr %netdev, i32 3880
  %93 = ptrtoint ptr %fcruc to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %fcruc, align 8
  %conv120 = trunc i64 %94 to i32
  %arrayidx121 = getelementptr i32, ptr %p, i32 49
  %95 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv120, ptr %arrayidx121, align 4
  %prc64 = getelementptr i8, ptr %netdev, i32 3888
  %96 = ptrtoint ptr %prc64 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %prc64, align 8
  %conv123 = trunc i64 %97 to i32
  %arrayidx124 = getelementptr i32, ptr %p, i32 50
  %98 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv123, ptr %arrayidx124, align 4
  %prc127 = getelementptr i8, ptr %netdev, i32 3896
  %99 = ptrtoint ptr %prc127 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %prc127, align 8
  %conv126 = trunc i64 %100 to i32
  %arrayidx127 = getelementptr i32, ptr %p, i32 51
  %101 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv126, ptr %arrayidx127, align 4
  %prc255 = getelementptr i8, ptr %netdev, i32 3904
  %102 = ptrtoint ptr %prc255 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %prc255, align 8
  %conv129 = trunc i64 %103 to i32
  %arrayidx130 = getelementptr i32, ptr %p, i32 52
  %104 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv129, ptr %arrayidx130, align 4
  %prc511 = getelementptr i8, ptr %netdev, i32 3912
  %105 = ptrtoint ptr %prc511 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %prc511, align 8
  %conv132 = trunc i64 %106 to i32
  %arrayidx133 = getelementptr i32, ptr %p, i32 53
  %107 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv132, ptr %arrayidx133, align 4
  %prc1023 = getelementptr i8, ptr %netdev, i32 3920
  %108 = ptrtoint ptr %prc1023 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %prc1023, align 8
  %conv135 = trunc i64 %109 to i32
  %arrayidx136 = getelementptr i32, ptr %p, i32 54
  %110 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv135, ptr %arrayidx136, align 4
  %prc1522 = getelementptr i8, ptr %netdev, i32 3928
  %111 = ptrtoint ptr %prc1522 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %prc1522, align 8
  %conv138 = trunc i64 %112 to i32
  %arrayidx139 = getelementptr i32, ptr %p, i32 55
  %113 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv138, ptr %arrayidx139, align 4
  %gprc = getelementptr i8, ptr %netdev, i32 3952
  %114 = ptrtoint ptr %gprc to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %gprc, align 8
  %conv141 = trunc i64 %115 to i32
  %arrayidx142 = getelementptr i32, ptr %p, i32 56
  %116 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv141, ptr %arrayidx142, align 4
  %bprc = getelementptr i8, ptr %netdev, i32 3960
  %117 = ptrtoint ptr %bprc to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %bprc, align 8
  %conv144 = trunc i64 %118 to i32
  %arrayidx145 = getelementptr i32, ptr %p, i32 57
  %119 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv144, ptr %arrayidx145, align 4
  %mprc = getelementptr i8, ptr %netdev, i32 3968
  %120 = ptrtoint ptr %mprc to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %mprc, align 8
  %conv147 = trunc i64 %121 to i32
  %arrayidx148 = getelementptr i32, ptr %p, i32 58
  %122 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv147, ptr %arrayidx148, align 4
  %gptc = getelementptr i8, ptr %netdev, i32 3976
  %123 = ptrtoint ptr %gptc to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %gptc, align 8
  %conv150 = trunc i64 %124 to i32
  %arrayidx151 = getelementptr i32, ptr %p, i32 59
  %125 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv150, ptr %arrayidx151, align 4
  %gorc = getelementptr i8, ptr %netdev, i32 3984
  %126 = ptrtoint ptr %gorc to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %gorc, align 8
  %conv153 = trunc i64 %127 to i32
  %arrayidx154 = getelementptr i32, ptr %p, i32 60
  %128 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv153, ptr %arrayidx154, align 4
  %gotc = getelementptr i8, ptr %netdev, i32 3992
  %129 = ptrtoint ptr %gotc to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %gotc, align 8
  %conv156 = trunc i64 %130 to i32
  %arrayidx157 = getelementptr i32, ptr %p, i32 61
  %131 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %conv156, ptr %arrayidx157, align 4
  %rnbc = getelementptr i8, ptr %netdev, i32 4000
  %132 = ptrtoint ptr %rnbc to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %rnbc, align 8
  %conv159 = trunc i64 %133 to i32
  %arrayidx160 = getelementptr i32, ptr %p, i32 62
  %134 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv159, ptr %arrayidx160, align 4
  %ruc = getelementptr i8, ptr %netdev, i32 4008
  %135 = ptrtoint ptr %ruc to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %ruc, align 8
  %conv162 = trunc i64 %136 to i32
  %arrayidx163 = getelementptr i32, ptr %p, i32 63
  %137 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv162, ptr %arrayidx163, align 4
  %rfc = getelementptr i8, ptr %netdev, i32 4016
  %138 = ptrtoint ptr %rfc to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %rfc, align 8
  %conv165 = trunc i64 %139 to i32
  %arrayidx166 = getelementptr i32, ptr %p, i32 64
  %140 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %conv165, ptr %arrayidx166, align 4
  %roc = getelementptr i8, ptr %netdev, i32 4024
  %141 = ptrtoint ptr %roc to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %roc, align 8
  %conv168 = trunc i64 %142 to i32
  %arrayidx169 = getelementptr i32, ptr %p, i32 65
  %143 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv168, ptr %arrayidx169, align 4
  %rjc = getelementptr i8, ptr %netdev, i32 4032
  %144 = ptrtoint ptr %rjc to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %rjc, align 8
  %conv171 = trunc i64 %145 to i32
  %arrayidx172 = getelementptr i32, ptr %p, i32 66
  %146 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %conv171, ptr %arrayidx172, align 4
  %mgprc = getelementptr i8, ptr %netdev, i32 4040
  %147 = ptrtoint ptr %mgprc to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %mgprc, align 8
  %conv174 = trunc i64 %148 to i32
  %arrayidx175 = getelementptr i32, ptr %p, i32 67
  %149 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %conv174, ptr %arrayidx175, align 4
  %mgpdc = getelementptr i8, ptr %netdev, i32 4048
  %150 = ptrtoint ptr %mgpdc to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %mgpdc, align 8
  %conv177 = trunc i64 %151 to i32
  %arrayidx178 = getelementptr i32, ptr %p, i32 68
  %152 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv177, ptr %arrayidx178, align 4
  %mgptc = getelementptr i8, ptr %netdev, i32 4056
  %153 = ptrtoint ptr %mgptc to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %mgptc, align 8
  %conv180 = trunc i64 %154 to i32
  %arrayidx181 = getelementptr i32, ptr %p, i32 69
  %155 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv180, ptr %arrayidx181, align 4
  %tor = getelementptr i8, ptr %netdev, i32 4064
  %156 = ptrtoint ptr %tor to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %tor, align 8
  %conv183 = trunc i64 %157 to i32
  %arrayidx184 = getelementptr i32, ptr %p, i32 70
  %158 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %conv183, ptr %arrayidx184, align 4
  %tot = getelementptr i8, ptr %netdev, i32 4072
  %159 = ptrtoint ptr %tot to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %tot, align 8
  %conv186 = trunc i64 %160 to i32
  %arrayidx187 = getelementptr i32, ptr %p, i32 71
  %161 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %conv186, ptr %arrayidx187, align 4
  %tpr = getelementptr i8, ptr %netdev, i32 4080
  %162 = ptrtoint ptr %tpr to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %tpr, align 8
  %conv189 = trunc i64 %163 to i32
  %arrayidx190 = getelementptr i32, ptr %p, i32 72
  %164 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %conv189, ptr %arrayidx190, align 4
  %tpt = getelementptr i8, ptr %netdev, i32 4088
  %165 = ptrtoint ptr %tpt to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %tpt, align 8
  %conv192 = trunc i64 %166 to i32
  %arrayidx193 = getelementptr i32, ptr %p, i32 73
  %167 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %conv192, ptr %arrayidx193, align 4
  %ptc64 = getelementptr i8, ptr %netdev, i32 4096
  %168 = ptrtoint ptr %ptc64 to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %ptc64, align 8
  %conv195 = trunc i64 %169 to i32
  %arrayidx196 = getelementptr i32, ptr %p, i32 74
  %170 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %conv195, ptr %arrayidx196, align 4
  %ptc127 = getelementptr i8, ptr %netdev, i32 4104
  %171 = ptrtoint ptr %ptc127 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %ptc127, align 8
  %conv198 = trunc i64 %172 to i32
  %arrayidx199 = getelementptr i32, ptr %p, i32 75
  %173 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %conv198, ptr %arrayidx199, align 4
  %ptc255 = getelementptr i8, ptr %netdev, i32 4112
  %174 = ptrtoint ptr %ptc255 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %ptc255, align 8
  %conv201 = trunc i64 %175 to i32
  %arrayidx202 = getelementptr i32, ptr %p, i32 76
  %176 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %conv201, ptr %arrayidx202, align 4
  %ptc511 = getelementptr i8, ptr %netdev, i32 4120
  %177 = ptrtoint ptr %ptc511 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %ptc511, align 8
  %conv204 = trunc i64 %178 to i32
  %arrayidx205 = getelementptr i32, ptr %p, i32 77
  %179 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %conv204, ptr %arrayidx205, align 4
  %ptc1023 = getelementptr i8, ptr %netdev, i32 4128
  %180 = ptrtoint ptr %ptc1023 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %ptc1023, align 8
  %conv207 = trunc i64 %181 to i32
  %arrayidx208 = getelementptr i32, ptr %p, i32 78
  %182 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %conv207, ptr %arrayidx208, align 4
  %ptc1522 = getelementptr i8, ptr %netdev, i32 4136
  %183 = ptrtoint ptr %ptc1522 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %ptc1522, align 8
  %conv210 = trunc i64 %184 to i32
  %arrayidx211 = getelementptr i32, ptr %p, i32 79
  %185 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %conv210, ptr %arrayidx211, align 4
  %mptc = getelementptr i8, ptr %netdev, i32 4144
  %186 = ptrtoint ptr %mptc to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %mptc, align 8
  %conv213 = trunc i64 %187 to i32
  %arrayidx214 = getelementptr i32, ptr %p, i32 80
  %188 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %conv213, ptr %arrayidx214, align 4
  %bptc = getelementptr i8, ptr %netdev, i32 4152
  %189 = ptrtoint ptr %bptc to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %bptc, align 8
  %conv216 = trunc i64 %190 to i32
  %arrayidx217 = getelementptr i32, ptr %p, i32 81
  %191 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv216, ptr %arrayidx217, align 4
  %tsctc = getelementptr i8, ptr %netdev, i32 4160
  %192 = ptrtoint ptr %tsctc to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %tsctc, align 8
  %conv219 = trunc i64 %193 to i32
  %arrayidx220 = getelementptr i32, ptr %p, i32 82
  %194 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %conv219, ptr %arrayidx220, align 4
  %iac = getelementptr i8, ptr %netdev, i32 4176
  %195 = ptrtoint ptr %iac to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %iac, align 8
  %conv222 = trunc i64 %196 to i32
  %arrayidx223 = getelementptr i32, ptr %p, i32 83
  %197 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %conv222, ptr %arrayidx223, align 4
  %rpthc = getelementptr i8, ptr %netdev, i32 4192
  %198 = ptrtoint ptr %rpthc to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %rpthc, align 8
  %conv225 = trunc i64 %199 to i32
  %arrayidx226 = getelementptr i32, ptr %p, i32 84
  %200 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %conv225, ptr %arrayidx226, align 4
  %hgptc = getelementptr i8, ptr %netdev, i32 4200
  %201 = ptrtoint ptr %hgptc to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %hgptc, align 8
  %conv228 = trunc i64 %202 to i32
  %arrayidx229 = getelementptr i32, ptr %p, i32 85
  %203 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %conv228, ptr %arrayidx229, align 4
  %hgorc = getelementptr i8, ptr %netdev, i32 4208
  %204 = ptrtoint ptr %hgorc to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %hgorc, align 8
  %conv231 = trunc i64 %205 to i32
  %arrayidx232 = getelementptr i32, ptr %p, i32 86
  %206 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %conv231, ptr %arrayidx232, align 4
  %hgotc = getelementptr i8, ptr %netdev, i32 4216
  %207 = ptrtoint ptr %hgotc to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %hgotc, align 8
  %conv234 = trunc i64 %208 to i32
  %arrayidx235 = getelementptr i32, ptr %p, i32 87
  %209 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %conv234, ptr %arrayidx235, align 4
  %lenerrs = getelementptr i8, ptr %netdev, i32 4224
  %210 = ptrtoint ptr %lenerrs to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %lenerrs, align 8
  %conv237 = trunc i64 %211 to i32
  %arrayidx238 = getelementptr i32, ptr %p, i32 88
  %212 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %conv237, ptr %arrayidx238, align 4
  %scvpc = getelementptr i8, ptr %netdev, i32 4232
  %213 = ptrtoint ptr %scvpc to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %scvpc, align 8
  %conv240 = trunc i64 %214 to i32
  %arrayidx241 = getelementptr i32, ptr %p, i32 89
  %215 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %conv240, ptr %arrayidx241, align 4
  %hrmpc = getelementptr i8, ptr %netdev, i32 4240
  %216 = ptrtoint ptr %hrmpc to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %hrmpc, align 8
  %conv243 = trunc i64 %217 to i32
  %arrayidx244 = getelementptr i32, ptr %p, i32 90
  %218 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %conv243, ptr %arrayidx244, align 4
  %call248 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49164) #16
  %arrayidx251 = getelementptr i32, ptr %p, i32 91
  %219 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %call248, ptr %arrayidx251, align 4
  %call248.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49228) #16
  %arrayidx251.1 = getelementptr i32, ptr %p, i32 92
  %220 = ptrtoint ptr %arrayidx251.1 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %call248.1, ptr %arrayidx251.1, align 4
  %call248.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49292) #16
  %arrayidx251.2 = getelementptr i32, ptr %p, i32 93
  %221 = ptrtoint ptr %arrayidx251.2 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %call248.2, ptr %arrayidx251.2, align 4
  %call248.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49356) #16
  %arrayidx251.3 = getelementptr i32, ptr %p, i32 94
  %222 = ptrtoint ptr %arrayidx251.3 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %call248.3, ptr %arrayidx251.3, align 4
  %call260 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21632) #16
  %arrayidx263 = getelementptr i32, ptr %p, i32 95
  %223 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %call260, ptr %arrayidx263, align 4
  %call260.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21636) #16
  %arrayidx263.1 = getelementptr i32, ptr %p, i32 96
  %224 = ptrtoint ptr %arrayidx263.1 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %call260.1, ptr %arrayidx263.1, align 4
  %call260.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21640) #16
  %arrayidx263.2 = getelementptr i32, ptr %p, i32 97
  %225 = ptrtoint ptr %arrayidx263.2 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %call260.2, ptr %arrayidx263.2, align 4
  %call260.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21644) #16
  %arrayidx263.3 = getelementptr i32, ptr %p, i32 98
  %226 = ptrtoint ptr %arrayidx263.3 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %call260.3, ptr %arrayidx263.3, align 4
  %call275 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49152) #16
  %arrayidx278 = getelementptr i32, ptr %p, i32 99
  %227 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %call275, ptr %arrayidx278, align 4
  %call275.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49216) #16
  %arrayidx278.1 = getelementptr i32, ptr %p, i32 100
  %228 = ptrtoint ptr %arrayidx278.1 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %call275.1, ptr %arrayidx278.1, align 4
  %call275.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49280) #16
  %arrayidx278.2 = getelementptr i32, ptr %p, i32 101
  %229 = ptrtoint ptr %arrayidx278.2 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %call275.2, ptr %arrayidx278.2, align 4
  %call275.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49344) #16
  %arrayidx278.3 = getelementptr i32, ptr %p, i32 102
  %230 = ptrtoint ptr %arrayidx278.3 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %call275.3, ptr %arrayidx278.3, align 4
  %call290 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49156) #16
  %arrayidx293 = getelementptr i32, ptr %p, i32 103
  %231 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %call290, ptr %arrayidx293, align 4
  %call290.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49220) #16
  %arrayidx293.1 = getelementptr i32, ptr %p, i32 104
  %232 = ptrtoint ptr %arrayidx293.1 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %call290.1, ptr %arrayidx293.1, align 4
  %call290.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49284) #16
  %arrayidx293.2 = getelementptr i32, ptr %p, i32 105
  %233 = ptrtoint ptr %arrayidx293.2 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %call290.2, ptr %arrayidx293.2, align 4
  %call290.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49348) #16
  %arrayidx293.3 = getelementptr i32, ptr %p, i32 106
  %234 = ptrtoint ptr %arrayidx293.3 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %call290.3, ptr %arrayidx293.3, align 4
  %call305 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49160) #16
  %arrayidx308 = getelementptr i32, ptr %p, i32 107
  %235 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %call305, ptr %arrayidx308, align 4
  %call305.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49224) #16
  %arrayidx308.1 = getelementptr i32, ptr %p, i32 108
  %236 = ptrtoint ptr %arrayidx308.1 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %call305.1, ptr %arrayidx308.1, align 4
  %call305.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49288) #16
  %arrayidx308.2 = getelementptr i32, ptr %p, i32 109
  %237 = ptrtoint ptr %arrayidx308.2 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %call305.2, ptr %arrayidx308.2, align 4
  %call305.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49352) #16
  %arrayidx308.3 = getelementptr i32, ptr %p, i32 110
  %238 = ptrtoint ptr %arrayidx308.3 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %call305.3, ptr %arrayidx308.3, align 4
  %call320 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49168) #16
  %arrayidx323 = getelementptr i32, ptr %p, i32 111
  %239 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %call320, ptr %arrayidx323, align 4
  %call320.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49232) #16
  %arrayidx323.1 = getelementptr i32, ptr %p, i32 112
  %240 = ptrtoint ptr %arrayidx323.1 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %call320.1, ptr %arrayidx323.1, align 4
  %call320.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49296) #16
  %arrayidx323.2 = getelementptr i32, ptr %p, i32 113
  %241 = ptrtoint ptr %arrayidx323.2 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %call320.2, ptr %arrayidx323.2, align 4
  %call320.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49360) #16
  %arrayidx323.3 = getelementptr i32, ptr %p, i32 114
  %242 = ptrtoint ptr %arrayidx323.3 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %call320.3, ptr %arrayidx323.3, align 4
  %call335 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49176) #16
  %arrayidx338 = getelementptr i32, ptr %p, i32 115
  %243 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %call335, ptr %arrayidx338, align 4
  %call335.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49240) #16
  %arrayidx338.1 = getelementptr i32, ptr %p, i32 116
  %244 = ptrtoint ptr %arrayidx338.1 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %call335.1, ptr %arrayidx338.1, align 4
  %call335.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49304) #16
  %arrayidx338.2 = getelementptr i32, ptr %p, i32 117
  %245 = ptrtoint ptr %arrayidx338.2 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %call335.2, ptr %arrayidx338.2, align 4
  %call335.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49368) #16
  %arrayidx338.3 = getelementptr i32, ptr %p, i32 118
  %246 = ptrtoint ptr %arrayidx338.3 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %call335.3, ptr %arrayidx338.3, align 4
  %call350 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49192) #16
  %arrayidx353 = getelementptr i32, ptr %p, i32 119
  %247 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %call350, ptr %arrayidx353, align 4
  %call350.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49256) #16
  %arrayidx353.1 = getelementptr i32, ptr %p, i32 120
  %248 = ptrtoint ptr %arrayidx353.1 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %call350.1, ptr %arrayidx353.1, align 4
  %call350.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49320) #16
  %arrayidx353.2 = getelementptr i32, ptr %p, i32 121
  %249 = ptrtoint ptr %arrayidx353.2 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %call350.2, ptr %arrayidx353.2, align 4
  %call350.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 49384) #16
  %arrayidx353.3 = getelementptr i32, ptr %p, i32 122
  %250 = ptrtoint ptr %arrayidx353.3 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %call350.3, ptr %arrayidx353.3, align 4
  %call365 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5760) #16
  %arrayidx368 = getelementptr i32, ptr %p, i32 123
  %251 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %call365, ptr %arrayidx368, align 4
  %call365.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5764) #16
  %arrayidx368.1 = getelementptr i32, ptr %p, i32 124
  %252 = ptrtoint ptr %arrayidx368.1 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %call365.1, ptr %arrayidx368.1, align 4
  %call365.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5768) #16
  %arrayidx368.2 = getelementptr i32, ptr %p, i32 125
  %253 = ptrtoint ptr %arrayidx368.2 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %call365.2, ptr %arrayidx368.2, align 4
  %call365.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5772) #16
  %arrayidx368.3 = getelementptr i32, ptr %p, i32 126
  %254 = ptrtoint ptr %arrayidx368.3 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %call365.3, ptr %arrayidx368.3, align 4
  %call365.4 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5776) #16
  %arrayidx368.4 = getelementptr i32, ptr %p, i32 127
  %255 = ptrtoint ptr %arrayidx368.4 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %call365.4, ptr %arrayidx368.4, align 4
  %call365.5 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5780) #16
  %arrayidx368.5 = getelementptr i32, ptr %p, i32 128
  %256 = ptrtoint ptr %arrayidx368.5 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %call365.5, ptr %arrayidx368.5, align 4
  %call365.6 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5784) #16
  %arrayidx368.6 = getelementptr i32, ptr %p, i32 129
  %257 = ptrtoint ptr %arrayidx368.6 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %call365.6, ptr %arrayidx368.6, align 4
  %call365.7 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5788) #16
  %arrayidx368.7 = getelementptr i32, ptr %p, i32 130
  %258 = ptrtoint ptr %arrayidx368.7 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %call365.7, ptr %arrayidx368.7, align 4
  %call365.8 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5792) #16
  %arrayidx368.8 = getelementptr i32, ptr %p, i32 131
  %259 = ptrtoint ptr %arrayidx368.8 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %call365.8, ptr %arrayidx368.8, align 4
  %call365.9 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 5796) #16
  %arrayidx368.9 = getelementptr i32, ptr %p, i32 132
  %260 = ptrtoint ptr %arrayidx368.9 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %call365.9, ptr %arrayidx368.9, align 4
  %call380 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21504) #16
  %arrayidx383 = getelementptr i32, ptr %p, i32 139
  %261 = ptrtoint ptr %arrayidx383 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %call380, ptr %arrayidx383, align 4
  %call380.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21512) #16
  %arrayidx383.1 = getelementptr i32, ptr %p, i32 140
  %262 = ptrtoint ptr %arrayidx383.1 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %call380.1, ptr %arrayidx383.1, align 4
  %call380.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21520) #16
  %arrayidx383.2 = getelementptr i32, ptr %p, i32 141
  %263 = ptrtoint ptr %arrayidx383.2 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %call380.2, ptr %arrayidx383.2, align 4
  %call380.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21528) #16
  %arrayidx383.3 = getelementptr i32, ptr %p, i32 142
  %264 = ptrtoint ptr %arrayidx383.3 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %call380.3, ptr %arrayidx383.3, align 4
  %call380.4 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21536) #16
  %arrayidx383.4 = getelementptr i32, ptr %p, i32 143
  %265 = ptrtoint ptr %arrayidx383.4 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %call380.4, ptr %arrayidx383.4, align 4
  %call380.5 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21544) #16
  %arrayidx383.5 = getelementptr i32, ptr %p, i32 144
  %266 = ptrtoint ptr %arrayidx383.5 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %call380.5, ptr %arrayidx383.5, align 4
  %call380.6 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21552) #16
  %arrayidx383.6 = getelementptr i32, ptr %p, i32 145
  %267 = ptrtoint ptr %arrayidx383.6 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %call380.6, ptr %arrayidx383.6, align 4
  %call380.7 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21560) #16
  %arrayidx383.7 = getelementptr i32, ptr %p, i32 146
  %268 = ptrtoint ptr %arrayidx383.7 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %call380.7, ptr %arrayidx383.7, align 4
  %call380.8 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21568) #16
  %arrayidx383.8 = getelementptr i32, ptr %p, i32 147
  %269 = ptrtoint ptr %arrayidx383.8 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %call380.8, ptr %arrayidx383.8, align 4
  %call380.9 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21576) #16
  %arrayidx383.9 = getelementptr i32, ptr %p, i32 148
  %270 = ptrtoint ptr %arrayidx383.9 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %call380.9, ptr %arrayidx383.9, align 4
  %call380.10 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21584) #16
  %arrayidx383.10 = getelementptr i32, ptr %p, i32 149
  %271 = ptrtoint ptr %arrayidx383.10 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %call380.10, ptr %arrayidx383.10, align 4
  %call380.11 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21592) #16
  %arrayidx383.11 = getelementptr i32, ptr %p, i32 150
  %272 = ptrtoint ptr %arrayidx383.11 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %call380.11, ptr %arrayidx383.11, align 4
  %call380.12 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21600) #16
  %arrayidx383.12 = getelementptr i32, ptr %p, i32 151
  %273 = ptrtoint ptr %arrayidx383.12 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %call380.12, ptr %arrayidx383.12, align 4
  %call380.13 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21608) #16
  %arrayidx383.13 = getelementptr i32, ptr %p, i32 152
  %274 = ptrtoint ptr %arrayidx383.13 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %call380.13, ptr %arrayidx383.13, align 4
  %call380.14 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21616) #16
  %arrayidx383.14 = getelementptr i32, ptr %p, i32 153
  %275 = ptrtoint ptr %arrayidx383.14 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %call380.14, ptr %arrayidx383.14, align 4
  %call380.15 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21624) #16
  %arrayidx383.15 = getelementptr i32, ptr %p, i32 154
  %276 = ptrtoint ptr %arrayidx383.15 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %call380.15, ptr %arrayidx383.15, align 4
  %call395 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21508) #16
  %277 = ptrtoint ptr %arrayidx383.6 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %call395, ptr %arrayidx383.6, align 4
  %call395.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21516) #16
  %278 = ptrtoint ptr %arrayidx383.7 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %call395.1, ptr %arrayidx383.7, align 4
  %call395.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21524) #16
  %279 = ptrtoint ptr %arrayidx383.8 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %call395.2, ptr %arrayidx383.8, align 4
  %call395.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21532) #16
  %280 = ptrtoint ptr %arrayidx383.9 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %call395.3, ptr %arrayidx383.9, align 4
  %call395.4 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21540) #16
  %281 = ptrtoint ptr %arrayidx383.10 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %call395.4, ptr %arrayidx383.10, align 4
  %call395.5 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21548) #16
  %282 = ptrtoint ptr %arrayidx383.11 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %call395.5, ptr %arrayidx383.11, align 4
  %call395.6 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21556) #16
  %283 = ptrtoint ptr %arrayidx383.12 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %call395.6, ptr %arrayidx383.12, align 4
  %call395.7 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21564) #16
  %284 = ptrtoint ptr %arrayidx383.13 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %call395.7, ptr %arrayidx383.13, align 4
  %call395.8 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21572) #16
  %285 = ptrtoint ptr %arrayidx383.14 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %call395.8, ptr %arrayidx383.14, align 4
  %call395.9 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21580) #16
  %286 = ptrtoint ptr %arrayidx383.15 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %call395.9, ptr %arrayidx383.15, align 4
  %call395.10 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21588) #16
  %arrayidx398.10 = getelementptr i32, ptr %p, i32 155
  %287 = ptrtoint ptr %arrayidx398.10 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %call395.10, ptr %arrayidx398.10, align 4
  %call395.11 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21596) #16
  %arrayidx398.11 = getelementptr i32, ptr %p, i32 156
  %288 = ptrtoint ptr %arrayidx398.11 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %call395.11, ptr %arrayidx398.11, align 4
  %call395.12 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21604) #16
  %arrayidx398.12 = getelementptr i32, ptr %p, i32 157
  %289 = ptrtoint ptr %arrayidx398.12 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %call395.12, ptr %arrayidx398.12, align 4
  %call395.13 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21612) #16
  %arrayidx398.13 = getelementptr i32, ptr %p, i32 158
  %290 = ptrtoint ptr %arrayidx398.13 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %call395.13, ptr %arrayidx398.13, align 4
  %call395.14 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21620) #16
  %arrayidx398.14 = getelementptr i32, ptr %p, i32 159
  %291 = ptrtoint ptr %arrayidx398.14 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %call395.14, ptr %arrayidx398.14, align 4
  %call395.15 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21628) #16
  %arrayidx398.15 = getelementptr i32, ptr %p, i32 160
  %292 = ptrtoint ptr %arrayidx398.15 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %call395.15, ptr %arrayidx398.15, align 4
  %call410 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57344) #16
  %293 = ptrtoint ptr %arrayidx383.10 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %call410, ptr %arrayidx383.10, align 4
  %call410.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57408) #16
  %294 = ptrtoint ptr %arrayidx383.11 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %call410.1, ptr %arrayidx383.11, align 4
  %call410.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57472) #16
  %295 = ptrtoint ptr %arrayidx383.12 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %call410.2, ptr %arrayidx383.12, align 4
  %call410.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57536) #16
  %296 = ptrtoint ptr %arrayidx383.13 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %call410.3, ptr %arrayidx383.13, align 4
  %call425 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57348) #16
  %297 = ptrtoint ptr %arrayidx383.13 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %call425, ptr %arrayidx383.13, align 4
  %call425.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57412) #16
  %298 = ptrtoint ptr %arrayidx383.14 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %call425.1, ptr %arrayidx383.14, align 4
  %call425.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57476) #16
  %299 = ptrtoint ptr %arrayidx383.15 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %call425.2, ptr %arrayidx383.15, align 4
  %call425.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57540) #16
  %300 = ptrtoint ptr %arrayidx398.10 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %call425.3, ptr %arrayidx398.10, align 4
  %call440 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57352) #16
  %301 = ptrtoint ptr %arrayidx398.11 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %call440, ptr %arrayidx398.11, align 4
  %call440.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57416) #16
  %302 = ptrtoint ptr %arrayidx398.12 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %call440.1, ptr %arrayidx398.12, align 4
  %call440.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57480) #16
  %303 = ptrtoint ptr %arrayidx398.13 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %call440.2, ptr %arrayidx398.13, align 4
  %call440.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57544) #16
  %304 = ptrtoint ptr %arrayidx398.14 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %call440.3, ptr %arrayidx398.14, align 4
  %call455 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57360) #16
  %305 = ptrtoint ptr %arrayidx398.15 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %call455, ptr %arrayidx398.15, align 4
  %call455.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57424) #16
  %arrayidx458.1 = getelementptr i32, ptr %p, i32 161
  %306 = ptrtoint ptr %arrayidx458.1 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %call455.1, ptr %arrayidx458.1, align 4
  %call455.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57488) #16
  %arrayidx458.2 = getelementptr i32, ptr %p, i32 162
  %307 = ptrtoint ptr %arrayidx458.2 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %call455.2, ptr %arrayidx458.2, align 4
  %call455.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57552) #16
  %arrayidx458.3 = getelementptr i32, ptr %p, i32 163
  %308 = ptrtoint ptr %arrayidx458.3 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %call455.3, ptr %arrayidx458.3, align 4
  %call470 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57368) #16
  %arrayidx473 = getelementptr i32, ptr %p, i32 164
  %309 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %call470, ptr %arrayidx473, align 4
  %call470.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57432) #16
  %arrayidx473.1 = getelementptr i32, ptr %p, i32 165
  %310 = ptrtoint ptr %arrayidx473.1 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %call470.1, ptr %arrayidx473.1, align 4
  %call470.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57496) #16
  %arrayidx473.2 = getelementptr i32, ptr %p, i32 166
  %311 = ptrtoint ptr %arrayidx473.2 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %call470.2, ptr %arrayidx473.2, align 4
  %call470.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57560) #16
  %arrayidx473.3 = getelementptr i32, ptr %p, i32 167
  %312 = ptrtoint ptr %arrayidx473.3 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %call470.3, ptr %arrayidx473.3, align 4
  %call485 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57384) #16
  %arrayidx488 = getelementptr i32, ptr %p, i32 168
  %313 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %call485, ptr %arrayidx488, align 4
  %call485.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57448) #16
  %arrayidx488.1 = getelementptr i32, ptr %p, i32 169
  %314 = ptrtoint ptr %arrayidx488.1 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %call485.1, ptr %arrayidx488.1, align 4
  %call485.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57512) #16
  %arrayidx488.2 = getelementptr i32, ptr %p, i32 170
  %315 = ptrtoint ptr %arrayidx488.2 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %call485.2, ptr %arrayidx488.2, align 4
  %call485.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 57576) #16
  %arrayidx488.3 = getelementptr i32, ptr %p, i32 171
  %316 = ptrtoint ptr %arrayidx488.3 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %call485.3, ptr %arrayidx488.3, align 4
  %call500 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21504) #16
  %arrayidx503 = getelementptr i32, ptr %p, i32 172
  %317 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %call500, ptr %arrayidx503, align 4
  %call500.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21512) #16
  %arrayidx503.1 = getelementptr i32, ptr %p, i32 173
  %318 = ptrtoint ptr %arrayidx503.1 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %call500.1, ptr %arrayidx503.1, align 4
  %call500.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21520) #16
  %arrayidx503.2 = getelementptr i32, ptr %p, i32 174
  %319 = ptrtoint ptr %arrayidx503.2 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %call500.2, ptr %arrayidx503.2, align 4
  %call500.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21528) #16
  %arrayidx503.3 = getelementptr i32, ptr %p, i32 175
  %320 = ptrtoint ptr %arrayidx503.3 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %call500.3, ptr %arrayidx503.3, align 4
  %call500.4 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21536) #16
  %arrayidx503.4 = getelementptr i32, ptr %p, i32 176
  %321 = ptrtoint ptr %arrayidx503.4 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %call500.4, ptr %arrayidx503.4, align 4
  %call500.5 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21544) #16
  %arrayidx503.5 = getelementptr i32, ptr %p, i32 177
  %322 = ptrtoint ptr %arrayidx503.5 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %call500.5, ptr %arrayidx503.5, align 4
  %call500.6 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21552) #16
  %arrayidx503.6 = getelementptr i32, ptr %p, i32 178
  %323 = ptrtoint ptr %arrayidx503.6 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %call500.6, ptr %arrayidx503.6, align 4
  %call500.7 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21560) #16
  %arrayidx503.7 = getelementptr i32, ptr %p, i32 179
  %324 = ptrtoint ptr %arrayidx503.7 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %call500.7, ptr %arrayidx503.7, align 4
  %call500.8 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21568) #16
  %arrayidx503.8 = getelementptr i32, ptr %p, i32 180
  %325 = ptrtoint ptr %arrayidx503.8 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %call500.8, ptr %arrayidx503.8, align 4
  %call500.9 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21576) #16
  %arrayidx503.9 = getelementptr i32, ptr %p, i32 181
  %326 = ptrtoint ptr %arrayidx503.9 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %call500.9, ptr %arrayidx503.9, align 4
  %call500.10 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21584) #16
  %arrayidx503.10 = getelementptr i32, ptr %p, i32 182
  %327 = ptrtoint ptr %arrayidx503.10 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %call500.10, ptr %arrayidx503.10, align 4
  %call500.11 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21592) #16
  %arrayidx503.11 = getelementptr i32, ptr %p, i32 183
  %328 = ptrtoint ptr %arrayidx503.11 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %call500.11, ptr %arrayidx503.11, align 4
  %call500.12 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21600) #16
  %arrayidx503.12 = getelementptr i32, ptr %p, i32 184
  %329 = ptrtoint ptr %arrayidx503.12 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %call500.12, ptr %arrayidx503.12, align 4
  %call500.13 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21608) #16
  %arrayidx503.13 = getelementptr i32, ptr %p, i32 185
  %330 = ptrtoint ptr %arrayidx503.13 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %call500.13, ptr %arrayidx503.13, align 4
  %call500.14 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21616) #16
  %arrayidx503.14 = getelementptr i32, ptr %p, i32 186
  %331 = ptrtoint ptr %arrayidx503.14 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %call500.14, ptr %arrayidx503.14, align 4
  %call500.15 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21624) #16
  %arrayidx503.15 = getelementptr i32, ptr %p, i32 187
  %332 = ptrtoint ptr %arrayidx503.15 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %call500.15, ptr %arrayidx503.15, align 4
  %call515 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21508) #16
  %arrayidx518 = getelementptr i32, ptr %p, i32 188
  %333 = ptrtoint ptr %arrayidx518 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %call515, ptr %arrayidx518, align 4
  %call515.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21516) #16
  %arrayidx518.1 = getelementptr i32, ptr %p, i32 189
  %334 = ptrtoint ptr %arrayidx518.1 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %call515.1, ptr %arrayidx518.1, align 4
  %call515.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21524) #16
  %arrayidx518.2 = getelementptr i32, ptr %p, i32 190
  %335 = ptrtoint ptr %arrayidx518.2 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %call515.2, ptr %arrayidx518.2, align 4
  %call515.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21532) #16
  %arrayidx518.3 = getelementptr i32, ptr %p, i32 191
  %336 = ptrtoint ptr %arrayidx518.3 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %call515.3, ptr %arrayidx518.3, align 4
  %call515.4 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21540) #16
  %arrayidx518.4 = getelementptr i32, ptr %p, i32 192
  %337 = ptrtoint ptr %arrayidx518.4 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %call515.4, ptr %arrayidx518.4, align 4
  %call515.5 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21548) #16
  %arrayidx518.5 = getelementptr i32, ptr %p, i32 193
  %338 = ptrtoint ptr %arrayidx518.5 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %call515.5, ptr %arrayidx518.5, align 4
  %call515.6 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21556) #16
  %arrayidx518.6 = getelementptr i32, ptr %p, i32 194
  %339 = ptrtoint ptr %arrayidx518.6 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %call515.6, ptr %arrayidx518.6, align 4
  %call515.7 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21564) #16
  %arrayidx518.7 = getelementptr i32, ptr %p, i32 195
  %340 = ptrtoint ptr %arrayidx518.7 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %call515.7, ptr %arrayidx518.7, align 4
  %call515.8 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21572) #16
  %arrayidx518.8 = getelementptr i32, ptr %p, i32 196
  %341 = ptrtoint ptr %arrayidx518.8 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %call515.8, ptr %arrayidx518.8, align 4
  %call515.9 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21580) #16
  %arrayidx518.9 = getelementptr i32, ptr %p, i32 197
  %342 = ptrtoint ptr %arrayidx518.9 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %call515.9, ptr %arrayidx518.9, align 4
  %call515.10 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21588) #16
  %arrayidx518.10 = getelementptr i32, ptr %p, i32 198
  %343 = ptrtoint ptr %arrayidx518.10 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %call515.10, ptr %arrayidx518.10, align 4
  %call515.11 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21596) #16
  %arrayidx518.11 = getelementptr i32, ptr %p, i32 199
  %344 = ptrtoint ptr %arrayidx518.11 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %call515.11, ptr %arrayidx518.11, align 4
  %call515.12 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21604) #16
  %arrayidx518.12 = getelementptr i32, ptr %p, i32 200
  %345 = ptrtoint ptr %arrayidx518.12 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %call515.12, ptr %arrayidx518.12, align 4
  %call515.13 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21612) #16
  %arrayidx518.13 = getelementptr i32, ptr %p, i32 201
  %346 = ptrtoint ptr %arrayidx518.13 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %call515.13, ptr %arrayidx518.13, align 4
  %call515.14 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21620) #16
  %arrayidx518.14 = getelementptr i32, ptr %p, i32 202
  %347 = ptrtoint ptr %arrayidx518.14 to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %call515.14, ptr %arrayidx518.14, align 4
  %call515.15 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21628) #16
  %arrayidx518.15 = getelementptr i32, ptr %p, i32 203
  %348 = ptrtoint ptr %arrayidx518.15 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %call515.15, ptr %arrayidx518.15, align 4
  %call522 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 21936) #16
  %arrayidx523 = getelementptr i32, ptr %p, i32 204
  %349 = ptrtoint ptr %arrayidx523 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %call522, ptr %arrayidx523, align 4
  %call532 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 23728) #16
  %arrayidx535 = getelementptr i32, ptr %p, i32 205
  %350 = ptrtoint ptr %arrayidx535 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %call532, ptr %arrayidx535, align 4
  %call532.1 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 23732) #16
  %arrayidx535.1 = getelementptr i32, ptr %p, i32 206
  %351 = ptrtoint ptr %arrayidx535.1 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %call532.1, ptr %arrayidx535.1, align 4
  %call532.2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 23736) #16
  %arrayidx535.2 = getelementptr i32, ptr %p, i32 207
  %352 = ptrtoint ptr %arrayidx535.2 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %call532.2, ptr %arrayidx535.2, align 4
  %call532.3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 23740) #16
  %arrayidx535.3 = getelementptr i32, ptr %p, i32 208
  %353 = ptrtoint ptr %arrayidx535.3 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %call532.3, ptr %arrayidx535.3, align 4
  %call532.4 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 23744) #16
  %arrayidx535.4 = getelementptr i32, ptr %p, i32 209
  %354 = ptrtoint ptr %arrayidx535.4 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %call532.4, ptr %arrayidx535.4, align 4
  %call532.5 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 23748) #16
  %arrayidx535.5 = getelementptr i32, ptr %p, i32 210
  %355 = ptrtoint ptr %arrayidx535.5 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %call532.5, ptr %arrayidx535.5, align 4
  %call532.6 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 23752) #16
  %arrayidx535.6 = getelementptr i32, ptr %p, i32 211
  %356 = ptrtoint ptr %arrayidx535.6 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %call532.6, ptr %arrayidx535.6, align 4
  %call532.7 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 23756) #16
  %arrayidx535.7 = getelementptr i32, ptr %p, i32 212
  %357 = ptrtoint ptr %arrayidx535.7 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %call532.7, ptr %arrayidx535.7, align 4
  %tlpic = getelementptr i8, ptr %netdev, i32 3936
  %358 = ptrtoint ptr %tlpic to i32
  call void @__asan_load8_noabort(i32 %358)
  %359 = load i64, ptr %tlpic, align 8
  %conv540 = trunc i64 %359 to i32
  %arrayidx541 = getelementptr i32, ptr %p, i32 213
  %360 = ptrtoint ptr %arrayidx541 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %conv540, ptr %arrayidx541, align 4
  %rlpic = getelementptr i8, ptr %netdev, i32 3944
  %361 = ptrtoint ptr %rlpic to i32
  call void @__asan_load8_noabort(i32 %361)
  %362 = load i64, ptr %rlpic, align 8
  %conv543 = trunc i64 %362 to i32
  %arrayidx544 = getelementptr i32, ptr %p, i32 214
  %363 = ptrtoint ptr %arrayidx544 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %conv543, ptr %arrayidx544, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @igc_ethtool_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %wol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wolopts, align 4
  %flags = getelementptr i8, ptr %netdev, i32 2356
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %3 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 47, ptr %supported, align 4
  %wol1 = getelementptr i8, ptr %netdev, i32 2560
  %4 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wol1, align 8
  %and2 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %wolopts, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %7 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wol1, align 8
  %and8 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end13_crit_edge, label %if.then10

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts, align 4
  %or12 = or i32 %10, 4
  store i32 %or12, ptr %wolopts, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6.if.end13_crit_edge
  %11 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wol1, align 8
  %and15 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end20_crit_edge, label %if.then17

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wolopts, align 4
  %or19 = or i32 %14, 8
  store i32 %or19, ptr %wolopts, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end13.if.end20_crit_edge
  %15 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wol1, align 8
  %and22 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts, align 4
  %or26 = or i32 %18, 32
  store i32 %or26, ptr %wolopts, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %19 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wol1, align 8
  %and29 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.then31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wolopts, align 4
  %or33 = or i32 %22, 1
  store i32 %or33, ptr %wolopts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_set_wol(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %netdev, i32 2356
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and1 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool5.not, i32 0, i32 -95
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %wol7 = getelementptr i8, ptr %netdev, i32 2560
  %4 = ptrtoint ptr %wol7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wol7, align 8
  %5 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wolopts, align 4
  %and9 = shl i32 %6, 1
  %7 = and i32 %and9, 4
  store i32 %7, ptr %wol7, align 8
  %8 = load i32, ptr %wolopts, align 4
  %and15 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end6.if.end20_crit_edge, label %if.then17

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %or19 = or i32 %7, 8
  %9 = ptrtoint ptr %wol7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or19, ptr %wol7, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end6.if.end20_crit_edge
  %10 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wolopts, align 4
  %and22 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %wol7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wol7, align 8
  %or26 = or i32 %13, 16
  store i32 %or26, ptr %wol7, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %14 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wolopts, align 4
  %and29 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end34_crit_edge, label %if.then31

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %wol7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wol7, align 8
  %or33 = or i32 %17, 2
  store i32 %or33, ptr %wol7, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27.if.end34_crit_edge
  %18 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wolopts, align 4
  %and36 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end41_crit_edge, label %if.then38

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %wol7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wol7, align 8
  %or40 = or i32 %21, 1
  store i32 %or40, ptr %wol7, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end34.if.end41_crit_edge
  %pdev = getelementptr i8, ptr %netdev, i32 2752
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %wol7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wol7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool43 = icmp ne i32 %25, 0
  %call44 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool43) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %cond, %if.then3 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igc_ethtool_get_msglevel(ptr nocapture noundef readonly %netdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2724
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @igc_ethtool_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2724
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_nway_reset(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @igc_reinit_locked(ptr noundef %add.ptr.i) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_get_link(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %get_link_status = getelementptr i8, ptr %netdev, i32 3583
  %3 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %get_link_status, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call3 = tail call zeroext i1 @igc_has_link(ptr noundef %add.ptr.i) #16
  %conv = zext i1 %call3 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igc_ethtool_get_eeprom_len(ptr nocapture noundef readonly %netdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %word_size = getelementptr i8, ptr %netdev, i32 3632
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 1
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_get_eeprom(ptr noundef %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2992
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor_id = getelementptr i8, ptr %netdev, i32 3720
  %2 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor_id, align 4
  %conv = zext i16 %3 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 3714
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
  %shr = lshr i32 %8, 1
  %add = add i32 %1, -1
  %sub = add i32 %add, %8
  %shr5 = lshr i32 %sub, 1
  %sub6 = sub nsw i32 %shr5, %shr
  %add7 = add i32 %sub6, 1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add7, i32 2) #16
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !85

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #19
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %if.end10

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.end7.i
  %type = getelementptr i8, ptr %netdev, i32 3628
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp11 = icmp eq i32 %13, 1
  %read = getelementptr i8, ptr %netdev, i32 3608
  br i1 %cmp11, label %if.then13, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub6)
  %cmp2395 = icmp ult i32 %sub6, 2147483647
  br i1 %cmp2395, label %for.body.lr.ph, label %for.cond.preheader.for.end47_crit_edge

for.cond.preheader.for.end47_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end47

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %14 = trunc i32 %shr to i16
  br label %for.body

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read, align 4
  %conv15 = trunc i32 %shr to i16
  %conv18 = trunc i32 %add7 to i16
  %call19 = tail call i32 %16(ptr noundef %hw1, i16 noundef zeroext %conv15, i16 noundef zeroext %conv18, ptr noundef nonnull %call8.i) #16
  br label %if.end35

for.cond:                                         ; preds = %for.body
  %inc = add i16 %i.096, 1
  %conv20 = zext i16 %inc to i32
  %cmp23 = icmp sgt i32 %add7, %conv20
  br i1 %cmp23, label %for.cond.for.body_crit_edge, label %for.cond.if.end35_crit_edge

for.cond.if.end35_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %conv2097 = phi i32 [ 0, %for.body.lr.ph ], [ %conv20, %for.cond.for.body_crit_edge ]
  %i.096 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %17 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read, align 4
  %conv30 = add i16 %i.096, %14
  %arrayidx = getelementptr i16, ptr %call8.i, i32 %conv2097
  %call31 = tail call i32 %18(ptr noundef %hw1, i16 noundef zeroext %conv30, i16 noundef zeroext 1, ptr noundef %arrayidx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %for.cond, label %for.body.if.end35_crit_edge

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.end35:                                         ; preds = %for.body.if.end35_crit_edge, %for.cond.if.end35_crit_edge, %if.then13
  %ret_val.1 = phi i32 [ %call19, %if.then13 ], [ %call31, %for.body.if.end35_crit_edge ], [ 0, %for.cond.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub6)
  %cmp4099 = icmp ult i32 %sub6, 2147483647
  br i1 %cmp4099, label %if.end35.for.body42_crit_edge, label %if.end35.for.end47_crit_edge

if.end35.for.end47_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end47

if.end35.for.body42_crit_edge:                    ; preds = %if.end35
  br label %for.body42

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %if.end35.for.body42_crit_edge
  %conv37101 = phi i32 [ %conv37, %for.body42.for.body42_crit_edge ], [ 0, %if.end35.for.body42_crit_edge ]
  %i.1100 = phi i16 [ %inc46, %for.body42.for.body42_crit_edge ], [ 0, %if.end35.for.body42_crit_edge ]
  %arrayidx44 = getelementptr i16, ptr %call8.i, i32 %conv37101
  %19 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx44, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #16
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx44, align 2
  %inc46 = add i16 %i.1100, 1
  %conv37 = zext i16 %inc46 to i32
  %cmp40 = icmp sgt i32 %add7, %conv37
  br i1 %cmp40, label %for.body42.for.body42_crit_edge, label %for.body42.for.end47_crit_edge

for.body42.for.end47_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end47

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body42

for.end47:                                        ; preds = %for.body42.for.end47_crit_edge, %if.end35.for.end47_crit_edge, %for.cond.preheader.for.end47_crit_edge
  %ret_val.1104 = phi i32 [ %ret_val.1, %if.end35.for.end47_crit_edge ], [ 0, %for.cond.preheader.for.end47_crit_edge ], [ %ret_val.1, %for.body42.for.end47_crit_edge ]
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %and = and i32 %24, 1
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %27 = call ptr @memcpy(ptr %bytes, ptr %add.ptr, i32 %26)
  tail call void @kfree(ptr noundef nonnull %call8.i) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end47, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.1104, %for.end47 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_set_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2992
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr i8, ptr %netdev, i32 3052
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call zeroext i1 @igc_get_flash_presence_i225(ptr noundef %hw1) #16
  br i1 %call3, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic, align 4
  %vendor_id = getelementptr i8, ptr %netdev, i32 3720
  %6 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vendor_id, align 4
  %conv = zext i16 %7 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 3714
  %8 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device_id, align 2
  %conv6 = zext i16 %9 to i32
  %shl = shl nuw i32 %conv6, 16
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %or)
  %cmp7.not = icmp eq i32 %5, %or
  br i1 %cmp7.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %shr = lshr i32 %11, 1
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %add = add i32 %11, -1
  %sub = add i32 %add, %13
  %shr14 = lshr i32 %sub, 1
  %word_size = getelementptr i8, ptr %netdev, i32 3632
  %14 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %word_size, align 4
  %conv11 = zext i16 %15 to i32
  %mul = shl nuw nsw i32 %conv11, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #19
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end17.if.end24_crit_edge, label %if.then20

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %read = getelementptr i8, ptr %netdev, i32 3608
  %18 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read, align 4
  %conv22 = trunc i32 %shr to i16
  %call23 = tail call i32 %19(ptr noundef %hw1, i16 noundef zeroext %conv22, i16 noundef zeroext 1, ptr noundef nonnull %call9.i) #16
  %incdec.ptr = getelementptr i8, ptr %call9.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %phi.cmp = icmp eq i32 %call23, 0
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end17.if.end24_crit_edge
  %ret_val.0 = phi i1 [ %phi.cmp, %if.then20 ], [ true, %if.end17.if.end24_crit_edge ]
  %ptr.0 = phi ptr [ %incdec.ptr, %if.then20 ], [ %call9.i, %if.end17.if.end24_crit_edge ]
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %add27 = add i32 %23, %21
  %and28 = and i32 %add27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp ne i32 %and28, 0
  %or.cond = select i1 %tobool29.not, i1 %ret_val.0, i1 false
  br i1 %or.cond, label %if.then33, label %if.end24.if.end41_crit_edge

if.end24.if.end41_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %.pre = sub nsw i32 %shr14, %shr
  br label %if.end41

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %read36 = getelementptr i8, ptr %netdev, i32 3608
  %24 = ptrtoint ptr %read36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read36, align 4
  %conv37 = trunc i32 %shr14 to i16
  %sub38 = sub nsw i32 %shr14, %shr
  %arrayidx39 = getelementptr i16, ptr %call9.i, i32 %sub38
  %call40 = tail call i32 %25(ptr noundef %hw1, i16 noundef zeroext %conv37, i16 noundef zeroext 1, ptr noundef %arrayidx39) #16
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %if.end24.if.end41_crit_edge
  %sub43.pre-phi = phi i32 [ %.pre, %if.end24.if.end41_crit_edge ], [ %sub38, %if.then33 ]
  %add44 = add i32 %sub43.pre-phi, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub43.pre-phi)
  %cmp45132 = icmp ult i32 %sub43.pre-phi, 2147483647
  br i1 %cmp45132, label %if.end41.for.body_crit_edge, label %for.end.thread

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

for.end.thread:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %28 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %27)
  br label %for.end60

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end41.for.body_crit_edge
  %conv42134 = phi i32 [ %conv42, %for.body.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %i.0133 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %arrayidx47 = getelementptr i16, ptr %call9.i, i32 %conv42134
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx47, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #16
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx47, align 2
  %inc = add i16 %i.0133, 1
  %conv42 = zext i16 %inc to i32
  %cmp45 = icmp sgt i32 %add44, %conv42
  br i1 %cmp45, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %35 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %34)
  br i1 %cmp45132, label %for.end.for.body55_crit_edge, label %for.end.for.end60_crit_edge

for.end.for.end60_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end60

for.end.for.body55_crit_edge:                     ; preds = %for.end
  br label %for.body55

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.end.for.body55_crit_edge
  %conv50137 = phi i32 [ %conv50, %for.body55.for.body55_crit_edge ], [ 0, %for.end.for.body55_crit_edge ]
  %i.1136 = phi i16 [ %inc59, %for.body55.for.body55_crit_edge ], [ 0, %for.end.for.body55_crit_edge ]
  %arrayidx57 = getelementptr i16, ptr %call9.i, i32 %conv50137
  %36 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx57, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #16
  %39 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx57, align 2
  %inc59 = add i16 %i.1136, 1
  %conv50 = zext i16 %inc59 to i32
  %cmp53 = icmp sgt i32 %add44, %conv50
  br i1 %cmp53, label %for.body55.for.body55_crit_edge, label %for.body55.for.end60_crit_edge

for.body55.for.end60_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end60

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body55

for.end60:                                        ; preds = %for.body55.for.end60_crit_edge, %for.end.for.end60_crit_edge, %for.end.thread
  %write = getelementptr i8, ptr %netdev, i32 3616
  %40 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write, align 4
  %conv63 = trunc i32 %shr to i16
  %conv66 = trunc i32 %add44 to i16
  %call67 = tail call i32 %41(ptr noundef %hw1, i16 noundef zeroext %conv63, i16 noundef zeroext %conv66, ptr noundef nonnull %call9.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %for.end60.if.end74_crit_edge

for.end60.if.end74_crit_edge:                     ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.then70:                                        ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #18
  %update = getelementptr i8, ptr %netdev, i32 3620
  %42 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %update, align 4
  %call73 = tail call i32 %43(ptr noundef %hw1) #16
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %for.end60.if.end74_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %if.end74 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igc_ethtool_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_itr_setting = getelementptr i8, ptr %netdev, i32 2580
  %0 = ptrtoint ptr %rx_itr_setting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_itr_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  %shr = lshr i32 %1, 2
  %spec.select = select i1 %cmp, i32 %1, i32 %shr
  %2 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %flags = getelementptr i8, ptr %netdev, i32 2356
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %tx_itr_setting = getelementptr i8, ptr %netdev, i32 2584
  %6 = ptrtoint ptr %tx_itr_setting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_itr_setting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp5 = icmp ult i32 %7, 4
  %shr10 = lshr i32 %7, 2
  %.sink = select i1 %cmp5, i32 %7, i32 %shr10
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %8 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %tx_coalesce_usecs, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %entry.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_set_coalesce(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %1)
  %cmp = icmp ugt i32 %1, 10000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 8
  br i1 %2, label %switch.hole_check, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %switch.hole_check.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %3 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %4)
  %cmp8 = icmp ugt i32 %4, 10000
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %lor.lhs.false9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end
  %switch.tableidx145 = add i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx145)
  %5 = icmp ult i32 %switch.tableidx145, 8
  br i1 %5, label %switch.hole_check146, label %lor.lhs.false9.if.end19_crit_edge

lor.lhs.false9.if.end19_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.end19:                                         ; preds = %switch.hole_check146.if.end19_crit_edge, %lor.lhs.false9.if.end19_crit_edge
  %flags = getelementptr i8, ptr %netdev, i32 2356
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool22.not = icmp eq i32 %4, 0
  %or.cond133 = select i1 %tobool.not, i1 true, i1 %tobool22.not
  br i1 %or.cond133, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26 = icmp ne i32 %1, 0
  %and29 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %or.cond139 = select i1 %cmp26, i1 true, i1 %tobool30.not
  br i1 %or.cond139, label %if.end24.if.end35_crit_edge, label %if.then31

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %and33 = and i32 %7, -17
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and33, ptr %flags, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end24.if.end35_crit_edge
  %9 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_coalesce_usecs, align 4
  %11 = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %12 = icmp ult i32 %11, 3
  %shl = shl i32 %10, 2
  %spec.select = select i1 %12, i32 %10, i32 %shl
  %13 = getelementptr i8, ptr %netdev, i32 2580
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %13, align 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and47 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else51, label %if.then49

if.then49:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %13, align 4
  br label %if.end65

if.else51:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_coalesce_usecs, align 4
  %21 = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %22 = icmp ult i32 %21, 3
  %shl62 = shl i32 %20, 2
  %spec.select143 = select i1 %22, i32 %20, i32 %shl62
  br label %if.end65

if.end65:                                         ; preds = %if.else51, %if.then49
  %.sink = phi i32 [ %18, %if.then49 ], [ %spec.select143, %if.else51 ]
  %tx_itr_setting59 = getelementptr i8, ptr %netdev, i32 2584
  %23 = ptrtoint ptr %tx_itr_setting59 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %tx_itr_setting59, align 8
  %num_q_vectors = getelementptr i8, ptr %netdev, i32 2360
  %24 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_q_vectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp66140.not = icmp eq i32 %25, 0
  br i1 %cmp66140.not, label %if.end65.cleanup_crit_edge, label %for.body.lr.ph

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end65
  %tx_work_limit = getelementptr i8, ptr %netdev, i32 2368
  %tx_itr_setting72 = getelementptr i8, ptr %netdev, i32 2584
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 39, i32 %i.0141
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %28 = ptrtoint ptr %tx_work_limit to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tx_work_limit, align 8
  %work_limit = getelementptr inbounds %struct.igc_q_vector, ptr %27, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %work_limit to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %work_limit, align 4
  %rx = getelementptr inbounds %struct.igc_q_vector, ptr %27, i32 0, i32 5
  %31 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx, align 16
  %tobool68.not = icmp eq ptr %32, null
  %spec.select142 = select i1 %tobool68.not, ptr %tx_itr_setting72, ptr %13
  %33 = ptrtoint ptr %spec.select142 to i32
  call void @__asan_load4_noabort(i32 %33)
  %conv.sink.in = load i32, ptr %spec.select142, align 4
  %conv.sink = trunc i32 %conv.sink.in to i16
  %34 = getelementptr inbounds %struct.igc_q_vector, ptr %27, i32 0, i32 3
  %35 = add i16 %conv.sink, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %35)
  %36 = icmp ult i16 %35, 3
  %storemerge = select i1 %36, i16 648, i16 %conv.sink
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %storemerge, ptr %34, align 4
  %set_itr = getelementptr inbounds %struct.igc_q_vector, ptr %27, i32 0, i32 4
  %38 = ptrtoint ptr %set_itr to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %set_itr, align 2
  %inc = add nuw i32 %i.0141, 1
  %39 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_q_vectors, align 8
  %cmp66 = icmp ult i32 %inc, %40
  br i1 %cmp66, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

switch.hole_check:                                ; preds = %lor.lhs.false
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -3, %switch.maskindex
  %41 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %switch.lobit.not = icmp eq i8 %41, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

switch.hole_check146:                             ; preds = %lor.lhs.false9
  %switch.maskindex148 = trunc i32 %switch.tableidx145 to i8
  %switch.shifted149 = lshr i8 -3, %switch.maskindex148
  %42 = and i8 %switch.shifted149, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %switch.lobit150.not = icmp eq i8 %42, 0
  br i1 %switch.lobit150.not, label %switch.hole_check146.if.end19_crit_edge, label %switch.hole_check146.cleanup_crit_edge

switch.hole_check146.cleanup_crit_edge:           ; preds = %switch.hole_check146
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

switch.hole_check146.if.end19_crit_edge:          ; preds = %switch.hole_check146
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

cleanup:                                          ; preds = %switch.hole_check146.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ -22, %switch.hole_check146.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @igc_ethtool_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %tx_max_pending, align 4
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 4330
  %2 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_ring_count, align 2
  %conv = zext i16 %3 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %rx_pending, align 4
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 4328
  %5 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tx_ring_count, align 8
  %conv1 = zext i16 %6 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 4096)
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 80)
  %8 = trunc i32 %7 to i16
  %9 = add nuw nsw i16 %8, 7
  %conv15 = and i16 %9, 16376
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %10 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_pending, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 4096)
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 80)
  %14 = trunc i32 %13 to i16
  %15 = add nuw nsw i16 %14, 7
  %conv39 = and i16 %15, 16376
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 4328
  %16 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tx_ring_count, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %conv39, i16 %17)
  %cmp42 = icmp eq i16 %conv39, %17
  br i1 %cmp42, label %land.lhs.true, label %if.end.if.end49_crit_edge

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 4330
  %18 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rx_ring_count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv15, i16 %19)
  %cmp46 = icmp eq i16 %conv15, %19
  br i1 %cmp46, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 2352
  %call50287 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50287)
  %tobool51.not288 = icmp eq i32 %call50287, 0
  br i1 %tobool51.not288, label %if.end49.while.end_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  br label %while.body

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end49.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #16
  %call50 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #16
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end49.while.end_crit_edge
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2376
  %24 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_tx_queues, align 8
  br i1 %tobool.i.not, label %for.cond.preheader, label %if.end68

for.cond.preheader:                               ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp55301 = icmp sgt i32 %25, 0
  br i1 %cmp55301, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.cond57.preheader_crit_edge

for.cond.preheader.for.cond57.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond57.preheader

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond57.preheader:                             ; preds = %for.body.for.cond57.preheader_crit_edge, %for.cond.preheader.for.cond57.preheader_crit_edge
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2396
  %26 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp58303 = icmp sgt i32 %27, 0
  br i1 %cmp58303, label %for.cond57.preheader.for.body60_crit_edge, label %for.cond57.preheader.for.end65_crit_edge

for.cond57.preheader.for.end65_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end65

for.cond57.preheader.for.body60_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body60

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0302 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 10, i32 %i.0302
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %count = getelementptr inbounds %struct.igc_ring, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv39, ptr %count, align 4
  %inc = add nuw nsw i32 %i.0302, 1
  %31 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_tx_queues, align 8
  %cmp55 = icmp slt i32 %inc, %32
  br i1 %cmp55, label %for.body.for.body_crit_edge, label %for.body.for.cond57.preheader_crit_edge

for.body.for.cond57.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond57.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.cond57.preheader.for.body60_crit_edge
  %i.1304 = phi i32 [ %inc64, %for.body60.for.body60_crit_edge ], [ 0, %for.cond57.preheader.for.body60_crit_edge ]
  %arrayidx61 = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 12, i32 %i.1304
  %33 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx61, align 4
  %count62 = getelementptr inbounds %struct.igc_ring, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %count62 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv15, ptr %count62, align 4
  %inc64 = add nuw nsw i32 %i.1304, 1
  %36 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_rx_queues, align 4
  %cmp58 = icmp slt i32 %inc64, %37
  br i1 %cmp58, label %for.body60.for.body60_crit_edge, label %for.body60.for.end65_crit_edge

for.body60.for.end65_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end65

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body60

for.end65:                                        ; preds = %for.body60.for.end65_crit_edge, %for.cond57.preheader.for.end65_crit_edge
  %38 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv39, ptr %tx_ring_count, align 8
  %rx_ring_count67 = getelementptr i8, ptr %netdev, i32 4330
  %39 = ptrtoint ptr %rx_ring_count67 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv15, ptr %rx_ring_count67, align 2
  br label %clear_reset

if.end68:                                         ; preds = %while.end
  %num_rx_queues70 = getelementptr i8, ptr %netdev, i32 2396
  %40 = ptrtoint ptr %num_rx_queues70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_rx_queues70, align 4
  %42 = call i32 @llvm.smax.i32(i32 %25, i32 %41)
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 512) #16
  %44 = extractvalue { i32, i1 } %43, 1
  %45 = extractvalue { i32, i1 } %43, 0
  %retval.0.i283 = select i1 %44, i32 -1, i32 %45
  %call79 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i283) #19
  %tobool81.not = icmp eq ptr %call79, null
  br i1 %tobool81.not, label %if.end68.clear_reset_crit_edge, label %if.end83

if.end68.clear_reset_crit_edge:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %clear_reset

if.end83:                                         ; preds = %if.end68
  tail call void @igc_down(ptr noundef %add.ptr.i) #16
  %46 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %tx_ring_count, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %conv39, i16 %47)
  %cmp87.not = icmp eq i16 %conv39, %47
  br i1 %cmp87.not, label %if.end83.if.end127_crit_edge, label %for.cond90.preheader

if.end83.if.end127_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end127

for.cond90.preheader:                             ; preds = %if.end83
  %48 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp92289 = icmp sgt i32 %49, 0
  br i1 %cmp92289, label %for.cond90.preheader.for.body94_crit_edge, label %for.cond90.preheader.for.end125_crit_edge

for.cond90.preheader.for.end125_crit_edge:        ; preds = %for.cond90.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end125

for.cond90.preheader.for.body94_crit_edge:        ; preds = %for.cond90.preheader
  br label %for.body94

for.cond113.preheader:                            ; preds = %for.inc110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp115291 = icmp sgt i32 %55, 0
  br i1 %cmp115291, label %for.cond113.preheader.for.body117_crit_edge, label %for.cond113.preheader.for.end125_crit_edge

for.cond113.preheader.for.end125_crit_edge:       ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end125

for.cond113.preheader.for.body117_crit_edge:      ; preds = %for.cond113.preheader
  br label %for.body117

for.body94:                                       ; preds = %for.inc110.for.body94_crit_edge, %for.cond90.preheader.for.body94_crit_edge
  %i.2290 = phi i32 [ %inc111, %for.inc110.for.body94_crit_edge ], [ 0, %for.cond90.preheader.for.body94_crit_edge ]
  %arrayidx95 = getelementptr %struct.igc_ring, ptr %call79, i32 %i.2290
  %arrayidx97 = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 10, i32 %i.2290
  %50 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx97, align 4
  %52 = call ptr @memcpy(ptr %arrayidx95, ptr %51, i32 512)
  %count99 = getelementptr %struct.igc_ring, ptr %call79, i32 %i.2290, i32 9
  %53 = ptrtoint ptr %count99 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv39, ptr %count99, align 4
  %call101 = tail call i32 @igc_setup_tx_resources(ptr noundef %arrayidx95) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %for.inc110, label %while.cond104.preheader

while.cond104.preheader:                          ; preds = %for.body94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2290)
  %tobool105.not293 = icmp eq i32 %i.2290, 0
  br i1 %tobool105.not293, label %while.cond104.preheader.err_setup_crit_edge, label %while.cond104.preheader.while.body106_crit_edge

while.cond104.preheader.while.body106_crit_edge:  ; preds = %while.cond104.preheader
  br label %while.body106

while.cond104.preheader.err_setup_crit_edge:      ; preds = %while.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_setup

while.body106:                                    ; preds = %while.body106.while.body106_crit_edge, %while.cond104.preheader.while.body106_crit_edge
  %i.3294 = phi i32 [ %dec, %while.body106.while.body106_crit_edge ], [ %i.2290, %while.cond104.preheader.while.body106_crit_edge ]
  %dec = add nsw i32 %i.3294, -1
  %arrayidx107 = getelementptr %struct.igc_ring, ptr %call79, i32 %dec
  tail call void @igc_free_tx_resources(ptr noundef %arrayidx107) #16
  %tobool105.not = icmp eq i32 %dec, 0
  br i1 %tobool105.not, label %while.body106.err_setup_crit_edge, label %while.body106.while.body106_crit_edge

while.body106.while.body106_crit_edge:            ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body106

while.body106.err_setup_crit_edge:                ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_setup

for.inc110:                                       ; preds = %for.body94
  %inc111 = add nuw nsw i32 %i.2290, 1
  %54 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_tx_queues, align 8
  %cmp92 = icmp slt i32 %inc111, %55
  br i1 %cmp92, label %for.inc110.for.body94_crit_edge, label %for.cond113.preheader

for.inc110.for.body94_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body94

for.body117:                                      ; preds = %for.body117.for.body117_crit_edge, %for.cond113.preheader.for.body117_crit_edge
  %i.4292 = phi i32 [ %inc124, %for.body117.for.body117_crit_edge ], [ 0, %for.cond113.preheader.for.body117_crit_edge ]
  %arrayidx119 = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 10, i32 %i.4292
  %56 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx119, align 4
  tail call void @igc_free_tx_resources(ptr noundef %57) #16
  %58 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx119, align 4
  %arrayidx122 = getelementptr %struct.igc_ring, ptr %call79, i32 %i.4292
  %60 = call ptr @memcpy(ptr %59, ptr %arrayidx122, i32 512)
  %inc124 = add nuw nsw i32 %i.4292, 1
  %61 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_tx_queues, align 8
  %cmp115 = icmp slt i32 %inc124, %62
  br i1 %cmp115, label %for.body117.for.body117_crit_edge, label %for.body117.for.end125_crit_edge

for.body117.for.end125_crit_edge:                 ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end125

for.body117.for.body117_crit_edge:                ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body117

for.end125:                                       ; preds = %for.body117.for.end125_crit_edge, %for.cond113.preheader.for.end125_crit_edge, %for.cond90.preheader.for.end125_crit_edge
  %63 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv39, ptr %tx_ring_count, align 8
  br label %if.end127

if.end127:                                        ; preds = %for.end125, %if.end83.if.end127_crit_edge
  %rx_ring_count129 = getelementptr i8, ptr %netdev, i32 4330
  %64 = ptrtoint ptr %rx_ring_count129 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %rx_ring_count129, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv15, i16 %65)
  %cmp131.not = icmp eq i16 %conv15, %65
  br i1 %cmp131.not, label %if.end127.err_setup_crit_edge, label %for.cond134.preheader

if.end127.err_setup_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_setup

for.cond134.preheader:                            ; preds = %if.end127
  %66 = ptrtoint ptr %num_rx_queues70 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_rx_queues70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp136295 = icmp sgt i32 %67, 0
  br i1 %cmp136295, label %for.cond134.preheader.for.body138_crit_edge, label %for.cond134.preheader.for.end170_crit_edge

for.cond134.preheader.for.end170_crit_edge:       ; preds = %for.cond134.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end170

for.cond134.preheader.for.body138_crit_edge:      ; preds = %for.cond134.preheader
  br label %for.body138

for.cond158.preheader:                            ; preds = %for.inc155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp160297 = icmp sgt i32 %73, 0
  br i1 %cmp160297, label %for.cond158.preheader.for.body162_crit_edge, label %for.cond158.preheader.for.end170_crit_edge

for.cond158.preheader.for.end170_crit_edge:       ; preds = %for.cond158.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end170

for.cond158.preheader.for.body162_crit_edge:      ; preds = %for.cond158.preheader
  br label %for.body162

for.body138:                                      ; preds = %for.inc155.for.body138_crit_edge, %for.cond134.preheader.for.body138_crit_edge
  %i.5296 = phi i32 [ %inc156, %for.inc155.for.body138_crit_edge ], [ 0, %for.cond134.preheader.for.body138_crit_edge ]
  %arrayidx139 = getelementptr %struct.igc_ring, ptr %call79, i32 %i.5296
  %arrayidx141 = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 12, i32 %i.5296
  %68 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx141, align 4
  %70 = call ptr @memcpy(ptr %arrayidx139, ptr %69, i32 512)
  %count143 = getelementptr %struct.igc_ring, ptr %call79, i32 %i.5296, i32 9
  %71 = ptrtoint ptr %count143 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv15, ptr %count143, align 4
  %call145 = tail call i32 @igc_setup_rx_resources(ptr noundef %arrayidx139) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %for.inc155, label %while.cond148.preheader

while.cond148.preheader:                          ; preds = %for.body138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5296)
  %tobool149.not299 = icmp eq i32 %i.5296, 0
  br i1 %tobool149.not299, label %while.cond148.preheader.err_setup_crit_edge, label %while.cond148.preheader.while.body150_crit_edge

while.cond148.preheader.while.body150_crit_edge:  ; preds = %while.cond148.preheader
  br label %while.body150

while.cond148.preheader.err_setup_crit_edge:      ; preds = %while.cond148.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_setup

while.body150:                                    ; preds = %while.body150.while.body150_crit_edge, %while.cond148.preheader.while.body150_crit_edge
  %i.6300 = phi i32 [ %dec151, %while.body150.while.body150_crit_edge ], [ %i.5296, %while.cond148.preheader.while.body150_crit_edge ]
  %dec151 = add nsw i32 %i.6300, -1
  %arrayidx152 = getelementptr %struct.igc_ring, ptr %call79, i32 %dec151
  tail call void @igc_free_rx_resources(ptr noundef %arrayidx152) #16
  %tobool149.not = icmp eq i32 %dec151, 0
  br i1 %tobool149.not, label %while.body150.err_setup_crit_edge, label %while.body150.while.body150_crit_edge

while.body150.while.body150_crit_edge:            ; preds = %while.body150
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body150

while.body150.err_setup_crit_edge:                ; preds = %while.body150
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_setup

for.inc155:                                       ; preds = %for.body138
  %inc156 = add nuw nsw i32 %i.5296, 1
  %72 = ptrtoint ptr %num_rx_queues70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_rx_queues70, align 4
  %cmp136 = icmp slt i32 %inc156, %73
  br i1 %cmp136, label %for.inc155.for.body138_crit_edge, label %for.cond158.preheader

for.inc155.for.body138_crit_edge:                 ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body138

for.body162:                                      ; preds = %for.body162.for.body162_crit_edge, %for.cond158.preheader.for.body162_crit_edge
  %i.7298 = phi i32 [ %inc169, %for.body162.for.body162_crit_edge ], [ 0, %for.cond158.preheader.for.body162_crit_edge ]
  %arrayidx164 = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 12, i32 %i.7298
  %74 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx164, align 4
  tail call void @igc_free_rx_resources(ptr noundef %75) #16
  %76 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx164, align 4
  %arrayidx167 = getelementptr %struct.igc_ring, ptr %call79, i32 %i.7298
  %78 = call ptr @memcpy(ptr %77, ptr %arrayidx167, i32 512)
  %inc169 = add nuw nsw i32 %i.7298, 1
  %79 = ptrtoint ptr %num_rx_queues70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_rx_queues70, align 4
  %cmp160 = icmp slt i32 %inc169, %80
  br i1 %cmp160, label %for.body162.for.body162_crit_edge, label %for.body162.for.end170_crit_edge

for.body162.for.end170_crit_edge:                 ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end170

for.body162.for.body162_crit_edge:                ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body162

for.end170:                                       ; preds = %for.body162.for.end170_crit_edge, %for.cond158.preheader.for.end170_crit_edge, %for.cond134.preheader.for.end170_crit_edge
  %81 = ptrtoint ptr %rx_ring_count129 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv15, ptr %rx_ring_count129, align 2
  br label %err_setup

err_setup:                                        ; preds = %for.end170, %while.body150.err_setup_crit_edge, %while.cond148.preheader.err_setup_crit_edge, %if.end127.err_setup_crit_edge, %while.body106.err_setup_crit_edge, %while.cond104.preheader.err_setup_crit_edge
  %err.3 = phi i32 [ 0, %for.end170 ], [ 0, %if.end127.err_setup_crit_edge ], [ %call145, %while.cond148.preheader.err_setup_crit_edge ], [ %call101, %while.cond104.preheader.err_setup_crit_edge ], [ %call145, %while.body150.err_setup_crit_edge ], [ %call101, %while.body106.err_setup_crit_edge ]
  tail call void @igc_up(ptr noundef %add.ptr.i) #16
  tail call void @vfree(ptr noundef nonnull %call79) #16
  br label %clear_reset

clear_reset:                                      ; preds = %err_setup, %if.end68.clear_reset_crit_edge, %for.end65
  %err.4 = phi i32 [ %err.3, %err_setup ], [ 0, %for.end65 ], [ -12, %if.end68.clear_reset_crit_edge ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #16
  br label %cleanup

cleanup:                                          ; preds = %clear_reset, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %clear_reset ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @igc_ethtool_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pause) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 2720
  %0 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fc_autoneg, align 8, !range !86
  %2 = zext i8 %1 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %3 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %autoneg, align 4
  %current_mode = getelementptr i8, ptr %netdev, i32 3596
  %4 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_mode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.if.end14_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then5
    i32 3, label %if.then10
  ]

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  br label %if.end14.sink.split

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end14.sink.split

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rx_pause11 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %7 = ptrtoint ptr %rx_pause11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %rx_pause11, align 4
  %tx_pause12 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then10, %if.then5, %if.then
  %tx_pause.sink = phi ptr [ %tx_pause, %if.then5 ], [ %tx_pause12, %if.then10 ], [ %rx_pause, %if.then ]
  %8 = ptrtoint ptr %tx_pause.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %tx_pause.sink, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 2992
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 2720
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %fc_autoneg, align 8
  %state = getelementptr i8, ptr %netdev, i32 2352
  %call382 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool4.not83 = icmp eq i32 %call382, 0
  br i1 %tobool4.not83, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #16
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %3 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fc_autoneg, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %if.else11, label %if.then

if.then:                                          ; preds = %while.end
  %requested_mode = getelementptr i8, ptr %netdev, i32 3600
  %5 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 255, ptr %requested_mode, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @igc_down(ptr noundef %add.ptr.i) #16
  tail call void @igc_up(ptr noundef %add.ptr.i) #16
  br label %if.end55

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @igc_reset(ptr noundef %add.ptr.i) #16
  br label %if.end55

if.else11:                                        ; preds = %while.end
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %10 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  %tx_pause30 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %12 = ptrtoint ptr %tx_pause30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_pause30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool31.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %land.lhs.true29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else11
  br i1 %tobool31.not, label %land.lhs.true20, label %land.lhs.true.if.end47.sink.split_crit_edge

land.lhs.true.if.end47.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47.sink.split

land.lhs.true20:                                  ; preds = %land.lhs.true
  %14 = ptrtoint ptr %tx_pause30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_pause30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %land.lhs.true20.if.end47.sink.split_crit_edge, label %land.lhs.true20.if.end47_crit_edge

land.lhs.true20.if.end47_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

land.lhs.true20.if.end47.sink.split_crit_edge:    ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47.sink.split

land.lhs.true29:                                  ; preds = %if.else11
  br i1 %tobool31.not, label %land.lhs.true38, label %land.lhs.true29.if.end47.sink.split_crit_edge

land.lhs.true29.if.end47.sink.split_crit_edge:    ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47.sink.split

land.lhs.true38:                                  ; preds = %land.lhs.true29
  %16 = ptrtoint ptr %tx_pause30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_pause30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool40.not = icmp eq i32 %17, 0
  br i1 %tobool40.not, label %land.lhs.true38.if.end47.sink.split_crit_edge, label %land.lhs.true38.if.end47_crit_edge

land.lhs.true38.if.end47_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

land.lhs.true38.if.end47.sink.split_crit_edge:    ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47.sink.split

if.end47.sink.split:                              ; preds = %land.lhs.true38.if.end47.sink.split_crit_edge, %land.lhs.true29.if.end47.sink.split_crit_edge, %land.lhs.true20.if.end47.sink.split_crit_edge, %land.lhs.true.if.end47.sink.split_crit_edge
  %.sink = phi i32 [ 3, %land.lhs.true.if.end47.sink.split_crit_edge ], [ 1, %land.lhs.true20.if.end47.sink.split_crit_edge ], [ 2, %land.lhs.true29.if.end47.sink.split_crit_edge ], [ 0, %land.lhs.true38.if.end47.sink.split_crit_edge ]
  %requested_mode25 = getelementptr i8, ptr %netdev, i32 3600
  %18 = ptrtoint ptr %requested_mode25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %requested_mode25, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %land.lhs.true38.if.end47_crit_edge, %land.lhs.true20.if.end47_crit_edge
  %requested_mode49 = getelementptr i8, ptr %netdev, i32 3600
  %19 = ptrtoint ptr %requested_mode49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %requested_mode49, align 4
  %current_mode = getelementptr i8, ptr %netdev, i32 3596
  %21 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %current_mode, align 4
  %media_type = getelementptr i8, ptr %netdev, i32 3696
  %22 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp51 = icmp eq i32 %23, 1
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %call53 = tail call i32 @igc_force_mac_fc(ptr noundef %hw1) #16
  br label %if.end55

cond.false:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %call54 = tail call i32 @igc_setup_link(ptr noundef %hw1) #16
  br label %if.end55

if.end55:                                         ; preds = %cond.false, %cond.true, %if.else, %if.then10
  %retval2.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.else ], [ %call53, %cond.true ], [ %call54, %cond.false ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #16
  ret i32 %retval2.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igc_ethtool_diag_test(ptr noundef %netdev, ptr nocapture noundef %eth_test, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  br i1 %cmp, label %if.then, label %if.else30

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.1) #20
  %state = getelementptr i8, ptr %netdev, i32 2352
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #16
  %arrayidx = getelementptr i64, ptr %data, i32 4
  %call3 = tail call zeroext i1 @igc_link_test(ptr noundef %add.ptr.i, ptr noundef %arrayidx) #16
  br i1 %call3, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  br i1 %tobool.i.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call i32 @igc_close(ptr noundef %netdev) #16
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @igc_reset(ptr noundef %add.ptr.i) #16
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %9, ptr noundef nonnull @.str.2) #20
  %call11 = tail call zeroext i1 @igc_reg_test(ptr noundef %add.ptr.i, ptr noundef %data) #16
  br i1 %call11, label %if.end8.if.end15_crit_edge, label %if.then12

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or14 = or i32 %11, 2
  store i32 %or14, ptr %flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end8.if.end15_crit_edge
  tail call void @igc_reset(ptr noundef %add.ptr.i) #16
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %13, ptr noundef nonnull @.str.3) #20
  %arrayidx17 = getelementptr i64, ptr %data, i32 1
  %call18 = tail call zeroext i1 @igc_eeprom_test(ptr noundef %add.ptr.i, ptr noundef %arrayidx17) #16
  br i1 %call18, label %if.end15.if.end22_crit_edge, label %if.then19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or21 = or i32 %15, 2
  store i32 %or21, ptr %flags, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15.if.end22_crit_edge
  tail call void @igc_reset(ptr noundef %add.ptr.i) #16
  %arrayidx24 = getelementptr i64, ptr %data, i32 2
  %16 = call ptr @memset(ptr %arrayidx24, i32 0, i32 16)
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #16
  br i1 %tobool.i.not, label %if.end22.if.end42_crit_edge, label %if.then27

if.end22.if.end42_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %call28 = tail call i32 @igc_open(ptr noundef %netdev) #16
  br label %if.end42

if.else30:                                        ; preds = %entry
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.4) #20
  %arrayidx36 = getelementptr i64, ptr %data, i32 4
  %17 = call ptr @memset(ptr %data, i32 0, i32 32)
  %call37 = tail call zeroext i1 @igc_link_test(ptr noundef %add.ptr.i, ptr noundef %arrayidx36) #16
  br i1 %call37, label %if.else30.if.end42_crit_edge, label %if.then38

if.else30.if.end42_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.then38:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %or40 = or i32 %19, 2
  store i32 %or40, ptr %flags, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.else30.if.end42_crit_edge, %if.then27, %if.end22.if.end42_crit_edge
  %call43 = tail call i32 @msleep_interruptible(i32 noundef 4000) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igc_ethtool_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #16
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %p, align 4
  %1 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.for.body_crit_edge
    i32 2, label %sw.bb23
  ]

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = call ptr @memcpy(ptr %data, ptr @igc_gstrings_test, i32 160)
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [44 x %struct.igc_stats], ptr @igc_gstrings_stats, i32 0, i32 %i.044
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef %arrayidx) #16
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 44
  br i1 %exitcond.not, label %for.body4.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body4.preheader:                              ; preds = %for.body
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @igc_gstrings_net_stats) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igc_stats], ptr @igc_gstrings_net_stats, i32 0, i32 1)) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igc_stats], ptr @igc_gstrings_net_stats, i32 0, i32 2)) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igc_stats], ptr @igc_gstrings_net_stats, i32 0, i32 3)) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igc_stats], ptr @igc_gstrings_net_stats, i32 0, i32 4)) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igc_stats], ptr @igc_gstrings_net_stats, i32 0, i32 5)) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igc_stats], ptr @igc_gstrings_net_stats, i32 0, i32 6)) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igc_stats], ptr @igc_gstrings_net_stats, i32 0, i32 7)) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igc_stats], ptr @igc_gstrings_net_stats, i32 0, i32 8)) #16
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2376
  %3 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1246 = icmp sgt i32 %4, 0
  br i1 %cmp1246, label %for.body4.preheader.for.body13_crit_edge, label %for.body4.preheader.for.cond17.preheader_crit_edge

for.body4.preheader.for.cond17.preheader_crit_edge: ; preds = %for.body4.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond17.preheader

for.body4.preheader.for.body13_crit_edge:         ; preds = %for.body4.preheader
  br label %for.body13

for.cond17.preheader:                             ; preds = %for.body13.for.cond17.preheader_crit_edge, %for.body4.preheader.for.cond17.preheader_crit_edge
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2396
  %5 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1848 = icmp sgt i32 %6, 0
  br i1 %cmp1848, label %for.cond17.preheader.for.body19_crit_edge, label %for.cond17.preheader.sw.epilog_crit_edge

for.cond17.preheader.sw.epilog_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.cond17.preheader.for.body19_crit_edge:        ; preds = %for.cond17.preheader
  br label %for.body19

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body4.preheader.for.body13_crit_edge
  %i.247 = phi i32 [ %inc15, %for.body13.for.body13_crit_edge ], [ 0, %for.body4.preheader.for.body13_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.5, i32 noundef %i.247) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.6, i32 noundef %i.247) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.7, i32 noundef %i.247) #16
  %inc15 = add nuw nsw i32 %i.247, 1
  %7 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_tx_queues, align 8
  %cmp12 = icmp slt i32 %inc15, %8
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.body13.for.cond17.preheader_crit_edge

for.body13.for.cond17.preheader_crit_edge:        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond17.preheader

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body13

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.cond17.preheader.for.body19_crit_edge
  %i.349 = phi i32 [ %inc21, %for.body19.for.body19_crit_edge ], [ 0, %for.cond17.preheader.for.body19_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.8, i32 noundef %i.349) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.9, i32 noundef %i.349) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.10, i32 noundef %i.349) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.11, i32 noundef %i.349) #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.12, i32 noundef %i.349) #16
  %inc21 = add nuw nsw i32 %i.349, 1
  %9 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_rx_queues, align 4
  %cmp18 = icmp slt i32 %inc21, %10
  br i1 %cmp18, label %for.body19.for.body19_crit_edge, label %for.body19.sw.epilog_crit_edge

for.body19.sw.epilog_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body19

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %11 = call ptr @memcpy(ptr %data, ptr @igc_priv_flags_strings, i32 32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %for.body19.sw.epilog_crit_edge, %for.cond17.preheader.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igc_ethtool_get_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %stats64_lock = getelementptr i8, ptr %netdev, i32 2756
  tail call void @_raw_spin_lock(ptr noundef %stats64_lock) #16
  tail call void @igc_update_stats(ptr noundef %add.ptr.i) #16
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry
  %i.0149 = phi i32 [ 0, %entry ], [ %inc, %cond.end.for.body_crit_edge ]
  %stat_offset = getelementptr [44 x %struct.igc_stats], ptr @igc_gstrings_stats, i32 0, i32 %i.0149, i32 2
  %0 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %1
  %sizeof_stat = getelementptr [44 x %struct.igc_stats], ptr @igc_gstrings_stats, i32 0, i32 %i.0149, i32 1
  %2 = ptrtoint ptr %sizeof_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeof_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp2 = icmp eq i32 %3, 8
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %conv = zext i32 %7 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %conv, %cond.false ]
  %arrayidx3 = getelementptr i64, ptr %data, i32 %i.0149
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %cond, ptr %arrayidx3, align 8
  %inc = add nuw nsw i32 %i.0149, 1
  %exitcond.not = icmp eq i32 %inc, 44
  br i1 %exitcond.not, label %cond.true15.preheader, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cond.true15.preheader:                            ; preds = %cond.end
  %add.ptr10 = getelementptr i8, ptr %netdev, i32 2832
  %9 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr10, align 8
  %arrayidx20 = getelementptr i64, ptr %data, i32 44
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx20, align 8
  %add.ptr10.1 = getelementptr i8, ptr %netdev, i32 2840
  %12 = ptrtoint ptr %add.ptr10.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr10.1, align 8
  %arrayidx20.1 = getelementptr i64, ptr %data, i32 45
  %14 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx20.1, align 8
  %add.ptr10.2 = getelementptr i8, ptr %netdev, i32 2856
  %15 = ptrtoint ptr %add.ptr10.2 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr10.2, align 8
  %arrayidx20.2 = getelementptr i64, ptr %data, i32 46
  %17 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx20.2, align 8
  %add.ptr10.3 = getelementptr i8, ptr %netdev, i32 2880
  %18 = ptrtoint ptr %add.ptr10.3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr10.3, align 8
  %arrayidx20.3 = getelementptr i64, ptr %data, i32 47
  %20 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx20.3, align 8
  %add.ptr10.4 = getelementptr i8, ptr %netdev, i32 2888
  %21 = ptrtoint ptr %add.ptr10.4 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr10.4, align 8
  %arrayidx20.4 = getelementptr i64, ptr %data, i32 48
  %23 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx20.4, align 8
  %add.ptr10.5 = getelementptr i8, ptr %netdev, i32 2904
  %24 = ptrtoint ptr %add.ptr10.5 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr10.5, align 8
  %arrayidx20.5 = getelementptr i64, ptr %data, i32 49
  %26 = ptrtoint ptr %arrayidx20.5 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx20.5, align 8
  %add.ptr10.6 = getelementptr i8, ptr %netdev, i32 2912
  %27 = ptrtoint ptr %add.ptr10.6 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr10.6, align 8
  %arrayidx20.6 = getelementptr i64, ptr %data, i32 50
  %29 = ptrtoint ptr %arrayidx20.6 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx20.6, align 8
  %add.ptr10.7 = getelementptr i8, ptr %netdev, i32 2944
  %30 = ptrtoint ptr %add.ptr10.7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr10.7, align 8
  %arrayidx20.7 = getelementptr i64, ptr %data, i32 51
  %32 = ptrtoint ptr %arrayidx20.7 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx20.7, align 8
  %add.ptr10.8 = getelementptr i8, ptr %netdev, i32 2952
  %33 = ptrtoint ptr %add.ptr10.8 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr10.8, align 8
  %arrayidx20.8 = getelementptr i64, ptr %data, i32 52
  %35 = ptrtoint ptr %arrayidx20.8 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx20.8, align 8
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2376
  %36 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp26152 = icmp sgt i32 %37, 0
  br i1 %cmp26152, label %cond.true15.preheader.for.body28_crit_edge, label %cond.true15.preheader.for.cond53.preheader_crit_edge

cond.true15.preheader.for.cond53.preheader_crit_edge: ; preds = %cond.true15.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond53.preheader

cond.true15.preheader.for.body28_crit_edge:       ; preds = %cond.true15.preheader
  br label %for.body28

for.cond53.preheader:                             ; preds = %do.end45.for.cond53.preheader_crit_edge, %cond.true15.preheader.for.cond53.preheader_crit_edge
  %i.2.lcssa = phi i32 [ 53, %cond.true15.preheader.for.cond53.preheader_crit_edge ], [ %add49, %do.end45.for.cond53.preheader_crit_edge ]
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2396
  %38 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp54155 = icmp sgt i32 %39, 0
  br i1 %cmp54155, label %for.cond53.preheader.for.body56_crit_edge, label %for.cond53.preheader.for.end82_crit_edge

for.cond53.preheader.for.end82_crit_edge:         ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end82

for.cond53.preheader.for.body56_crit_edge:        ; preds = %for.cond53.preheader
  br label %for.body56

for.body28:                                       ; preds = %do.end45.for.body28_crit_edge, %cond.true15.preheader.for.body28_crit_edge
  %j.1154 = phi i32 [ %inc51, %do.end45.for.body28_crit_edge ], [ 0, %cond.true15.preheader.for.body28_crit_edge ]
  %i.2153 = phi i32 [ %add49, %do.end45.for.body28_crit_edge ], [ 53, %cond.true15.preheader.for.body28_crit_edge ]
  %arrayidx29 = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 10, i32 %j.1154
  %40 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx29, align 4
  %42 = getelementptr inbounds %struct.igc_ring, ptr %41, i32 0, i32 23
  %tx_syncp = getelementptr inbounds %struct.igc_ring, ptr %41, i32 0, i32 23, i32 0, i32 0, i32 4
  %arrayidx31 = getelementptr i64, ptr %data, i32 %i.2153
  %bytes = getelementptr inbounds %struct.igc_ring, ptr %41, i32 0, i32 23, i32 0, i32 0, i32 1
  %add = add i32 %i.2153, 1
  %arrayidx33 = getelementptr i64, ptr %data, i32 %add
  %restart_queue = getelementptr inbounds %struct.igc_ring, ptr %41, i32 0, i32 23, i32 0, i32 0, i32 2
  %add35 = add i32 %i.2153, 2
  %arrayidx36 = getelementptr i64, ptr %data, i32 %add35
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body28
  %call30 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %tx_syncp)
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %42, align 16
  %45 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %arrayidx31, align 8
  %46 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bytes, align 8
  %48 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx33, align 8
  %49 = ptrtoint ptr %restart_queue to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %restart_queue, align 16
  %51 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx36, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !87
  %52 = ptrtoint ptr %tx_syncp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %tx_syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %53, %call30
  br i1 %cmp.i.i.i.i.not, label %do.body39.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body39.preheader:                              ; preds = %do.body
  %tx_syncp2 = getelementptr inbounds %struct.igc_ring, ptr %41, i32 0, i32 23, i32 0, i32 1, i32 3
  %restart_queue2 = getelementptr inbounds %struct.igc_ring, ptr %41, i32 0, i32 23, i32 0, i32 0, i32 3
  br label %do.body39

do.body39:                                        ; preds = %do.body39.do.body39_crit_edge, %do.body39.preheader
  %call40 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %tx_syncp2)
  %54 = ptrtoint ptr %restart_queue2 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %restart_queue2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !87
  %56 = ptrtoint ptr %tx_syncp2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %tx_syncp2, align 4
  %cmp.i.i.i.i147.not = icmp eq i32 %57, %call40
  br i1 %cmp.i.i.i.i147.not, label %do.end45, label %do.body39.do.body39_crit_edge

do.body39.do.body39_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body39

do.end45:                                         ; preds = %do.body39
  %58 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx36, align 8
  %add48 = add i64 %59, %55
  store i64 %add48, ptr %arrayidx36, align 8
  %add49 = add i32 %i.2153, 3
  %inc51 = add nuw nsw i32 %j.1154, 1
  %60 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_tx_queues, align 8
  %cmp26 = icmp slt i32 %inc51, %61
  br i1 %cmp26, label %do.end45.for.body28_crit_edge, label %do.end45.for.cond53.preheader_crit_edge

do.end45.for.cond53.preheader_crit_edge:          ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond53.preheader

do.end45.for.body28_crit_edge:                    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body28

for.body56:                                       ; preds = %do.end78.for.body56_crit_edge, %for.cond53.preheader.for.body56_crit_edge
  %j.2157 = phi i32 [ %inc81, %do.end78.for.body56_crit_edge ], [ 0, %for.cond53.preheader.for.body56_crit_edge ]
  %i.3156 = phi i32 [ %add79, %do.end78.for.body56_crit_edge ], [ %i.2.lcssa, %for.cond53.preheader.for.body56_crit_edge ]
  %arrayidx57 = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 12, i32 %j.2157
  %62 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx57, align 4
  %64 = getelementptr inbounds %struct.igc_ring, ptr %63, i32 0, i32 23
  %rx_syncp = getelementptr inbounds %struct.igc_ring, ptr %63, i32 0, i32 23, i32 0, i32 2
  %arrayidx61 = getelementptr i64, ptr %data, i32 %i.3156
  %bytes63 = getelementptr inbounds %struct.igc_ring, ptr %63, i32 0, i32 23, i32 0, i32 0, i32 1
  %add64 = add i32 %i.3156, 1
  %arrayidx65 = getelementptr i64, ptr %data, i32 %add64
  %drops = getelementptr inbounds %struct.igc_ring, ptr %63, i32 0, i32 23, i32 0, i32 0, i32 2
  %add67 = add i32 %i.3156, 2
  %arrayidx68 = getelementptr i64, ptr %data, i32 %add67
  %csum_err = getelementptr inbounds %struct.igc_ring, ptr %63, i32 0, i32 23, i32 0, i32 0, i32 3
  %add70 = add i32 %i.3156, 3
  %arrayidx71 = getelementptr i64, ptr %data, i32 %add70
  %alloc_failed = getelementptr inbounds %struct.igc_ring, ptr %63, i32 0, i32 23, i32 0, i32 0, i32 4
  %add73 = add i32 %i.3156, 4
  %arrayidx74 = getelementptr i64, ptr %data, i32 %add73
  br label %do.body58

do.body58:                                        ; preds = %do.body58.do.body58_crit_edge, %for.body56
  %call59 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %rx_syncp)
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %64, align 16
  %67 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %arrayidx61, align 8
  %68 = ptrtoint ptr %bytes63 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %bytes63, align 8
  %70 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %arrayidx65, align 8
  %71 = ptrtoint ptr %drops to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %drops, align 16
  %73 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %arrayidx68, align 8
  %74 = ptrtoint ptr %csum_err to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %csum_err, align 8
  %76 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %arrayidx71, align 8
  %77 = ptrtoint ptr %alloc_failed to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %alloc_failed, align 16
  %79 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %arrayidx74, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !87
  %80 = ptrtoint ptr %rx_syncp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %rx_syncp, align 4
  %cmp.i.i.i.i148.not = icmp eq i32 %81, %call59
  br i1 %cmp.i.i.i.i148.not, label %do.end78, label %do.body58.do.body58_crit_edge

do.body58.do.body58_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body58

do.end78:                                         ; preds = %do.body58
  %add79 = add i32 %i.3156, 5
  %inc81 = add nuw nsw i32 %j.2157, 1
  %82 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_rx_queues, align 4
  %cmp54 = icmp slt i32 %inc81, %83
  br i1 %cmp54, label %do.end78.for.body56_crit_edge, label %do.end78.for.end82_crit_edge

do.end78.for.end82_crit_edge:                     ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end82

do.end78.for.body56_crit_edge:                    ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body56

for.end82:                                        ; preds = %do.end78.for.end82_crit_edge, %for.cond53.preheader.for.end82_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %stats64_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_begin(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %netdev, i32 2752
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igc_ethtool_complete(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %netdev, i32 2752
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igc_ethtool_get_priv_flags(ptr nocapture noundef readonly %netdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %netdev, i32 2356
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 16
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_set_priv_flags(ptr noundef %netdev, i32 noundef %priv_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags1 = getelementptr i8, ptr %netdev, i32 2356
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, -65537
  %and2 = shl i32 %priv_flags, 16
  %2 = and i32 %and2, 65536
  %spec.select = or i32 %and, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %1)
  %cmp.not = icmp eq i32 %spec.select, %1
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then4

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then4:                                         ; preds = %entry
  %3 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %flags1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then4.if.end9_crit_edge, label %if.then7

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @igc_reinit_locked(ptr noundef %add.ptr.i) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igc_ethtool_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %sset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %sset, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %entry.return_crit_edge
    i32 2, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2396
  %1 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_rx_queues, align 4
  %mul = mul i32 %2, 5
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2376
  %3 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_tx_queues, align 8
  %mul2 = mul i32 %4, 3
  %add = add i32 %mul, 53
  %add3 = add i32 %add, %mul2
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -524, %sw.default ], [ 1, %sw.bb5 ], [ %add3, %sw.bb ], [ 5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_get_rxnfc(ptr noundef %dev, ptr noundef %cmd, ptr nocapture noundef writeonly %rule_locs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 45, label %sw.bb
    i32 46, label %sw.bb2
    i32 47, label %sw.bb3
    i32 48, label %sw.bb5
    i32 41, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %num_rx_queues = getelementptr i8, ptr %dev, i32 2396
  %3 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_rx_queues, align 4
  %conv = sext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %nfc_rule_count = getelementptr i8, ptr %dev, i32 4452
  %6 = ptrtoint ptr %nfc_rule_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nfc_rule_count, align 4
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 64, ptr %data.i, align 8
  %nfc_rule_lock.i = getelementptr i8, ptr %dev, i32 4352
  tail call void @mutex_lock_nested(ptr noundef %nfc_rule_lock.i, i32 noundef 0) #16
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %location.i, align 8
  %call.i = tail call ptr @igc_get_nfc_rule(ptr noundef %add.ptr.i, i32 noundef %12) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb3.igc_ethtool_get_nfc_rule.exit_crit_edge, label %if.end.i

sw.bb3.igc_ethtool_get_nfc_rule.exit_crit_edge:   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #18
  br label %igc_ethtool_get_nfc_rule.exit

if.end.i:                                         ; preds = %sw.bb3
  %13 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 18, ptr %fs.i, align 8
  %action.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %action.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %action.i, align 4
  %conv.i = zext i16 %15 to i64
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %16 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.i, ptr %ring_cookie.i, align 8
  %filter.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %filter.i, align 4
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i = icmp eq i8 %19, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %etype.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %etype.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %etype.i, align 2
  %h_proto.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %h_proto.i, align 4
  %h_proto5.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %h_proto5.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %h_proto5.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %24 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %filter.i, align 4
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool11.not.i = icmp eq i8 %26, 0
  br i1 %tobool11.not.i, label %if.end6.i.if.end17.i_crit_edge, label %if.then12.i

if.end6.i.if.end17.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -2147483630, ptr %fs.i, align 8
  %vlan_tci.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call.i, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vlan_tci.i, align 2
  %vlan_tci15.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %30 = ptrtoint ptr %vlan_tci15.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %vlan_tci15.i, align 2
  %vlan_tci16.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %31 = ptrtoint ptr %vlan_tci16.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -8192, ptr %vlan_tci16.i, align 2
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i, %if.end6.i.if.end17.i_crit_edge
  %32 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %filter.i, align 4
  %34 = and i8 %33, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool22.not.i = icmp eq i8 %34, 0
  br i1 %tobool22.not.i, label %if.end17.i.if.end30.i_crit_edge, label %if.then23.i

if.end17.i.if.end30.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30.i

if.then23.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %h_u24.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %dst_addr.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call.i, i32 0, i32 1, i32 5
  %35 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dst_addr.i, align 4
  %37 = ptrtoint ptr %h_u24.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %h_u24.i, align 4
  %add.ptr.i.i = getelementptr %struct.igc_nfc_rule, ptr %call.i, i32 0, i32 1, i32 5, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %add.ptr1.i.i, align 2
  %m_u27.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %41 = call ptr @memset(ptr %m_u27.i, i32 255, i32 6)
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then23.i, %if.end17.i.if.end30.i_crit_edge
  %42 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %filter.i, align 4
  %44 = and i8 %43, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool35.not.i = icmp eq i8 %44, 0
  br i1 %tobool35.not.i, label %if.end30.i.if.end44.i_crit_edge, label %if.then36.i

if.end30.i.if.end44.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44.i

if.then36.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #18
  %h_u37.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %h_u37.i, i32 0, i32 1
  %src_addr.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call.i, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %src_addr.i, align 4
  %47 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %h_source.i, align 4
  %add.ptr.i97.i = getelementptr %struct.igc_nfc_rule, ptr %call.i, i32 0, i32 1, i32 4, i32 4
  %48 = ptrtoint ptr %add.ptr.i97.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr.i97.i, align 2
  %add.ptr1.i98.i = getelementptr %struct.ethhdr, ptr %h_u37.i, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %add.ptr1.i98.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %add.ptr1.i98.i, align 2
  %m_u41.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_source42.i = getelementptr inbounds %struct.ethhdr, ptr %m_u41.i, i32 0, i32 1
  %51 = call ptr @memset(ptr %h_source42.i, i32 255, i32 6)
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then36.i, %if.end30.i.if.end44.i_crit_edge
  %52 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %filter.i, align 4
  %54 = and i8 %53, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool49.not.i = icmp eq i8 %54, 0
  br i1 %tobool49.not.i, label %if.end44.i.igc_ethtool_get_nfc_rule.exit_crit_edge, label %if.then50.i

if.end44.i.igc_ethtool_get_nfc_rule.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igc_ethtool_get_nfc_rule.exit

if.then50.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fs.i, align 8
  %or52.i = or i32 %56, -2147483648
  store i32 %or52.i, ptr %fs.i, align 8
  %data54.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 4
  %user_data.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call.i, i32 0, i32 1, i32 6
  %57 = ptrtoint ptr %user_data.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %user_data.i, align 4
  %59 = ptrtoint ptr %data54.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %data54.i, align 4
  %data59.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4
  %user_mask.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call.i, i32 0, i32 1, i32 7
  %60 = ptrtoint ptr %user_mask.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %user_mask.i, align 4
  %62 = ptrtoint ptr %data59.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %61, ptr %data59.i, align 4
  br label %igc_ethtool_get_nfc_rule.exit

igc_ethtool_get_nfc_rule.exit:                    ; preds = %if.then50.i, %if.end44.i.igc_ethtool_get_nfc_rule.exit_crit_edge, %sw.bb3.igc_ethtool_get_nfc_rule.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then50.i ], [ 0, %if.end44.i.igc_ethtool_get_nfc_rule.exit_crit_edge ], [ -22, %sw.bb3.igc_ethtool_get_nfc_rule.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %nfc_rule_lock.i) #16
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %data.i18 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %63 = ptrtoint ptr %data.i18 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 64, ptr %data.i18, align 8
  %nfc_rule_lock.i19 = getelementptr i8, ptr %dev, i32 4352
  tail call void @mutex_lock_nested(ptr noundef %nfc_rule_lock.i19, i32 noundef 0) #16
  %nfc_rule_list.i = getelementptr i8, ptr %dev, i32 4444
  %64 = ptrtoint ptr %nfc_rule_list.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %rule.023.i = load ptr, ptr %nfc_rule_list.i, align 4
  %cmp.not24.i = icmp eq ptr %rule.023.i, %nfc_rule_list.i
  br i1 %cmp.not24.i, label %sw.bb5.for.end.i_crit_edge, label %for.body.lr.ph.i

sw.bb5.for.end.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb5
  %65 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i21.for.body.i_crit_edge, %for.body.lr.ph.i
  %rule.026.i = phi ptr [ %rule.023.i, %for.body.lr.ph.i ], [ %rule.0.i, %if.end.i21.for.body.i_crit_edge ]
  %cnt.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i21.for.body.i_crit_edge ]
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.025.i, i32 %67)
  %cmp2.i = icmp eq i32 %cnt.025.i, %67
  br i1 %cmp2.i, label %if.then.i, label %if.end.i21

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef %nfc_rule_lock.i19) #16
  br label %cleanup

if.end.i21:                                       ; preds = %for.body.i
  %location.i20 = getelementptr inbounds %struct.igc_nfc_rule, ptr %rule.026.i, i32 0, i32 2
  %68 = ptrtoint ptr %location.i20 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %location.i20, align 4
  %arrayidx.i = getelementptr i32, ptr %rule_locs, i32 %cnt.025.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx.i, align 4
  %inc.i = add i32 %cnt.025.i, 1
  %71 = ptrtoint ptr %rule.026.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %rule.0.i = load ptr, ptr %rule.026.i, align 4
  %cmp.not.i = icmp eq ptr %rule.0.i, %nfc_rule_list.i
  br i1 %cmp.not.i, label %if.end.i21.for.end.i_crit_edge, label %if.end.i21.for.body.i_crit_edge

if.end.i21.for.body.i_crit_edge:                  ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end.i21.for.end.i_crit_edge:                   ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i21.for.end.i_crit_edge, %sw.bb5.for.end.i_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %sw.bb5.for.end.i_crit_edge ], [ %inc.i, %if.end.i21.for.end.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %nfc_rule_lock.i19) #16
  %72 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %cnt.0.lcssa.i, ptr %72, align 8
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %data.i23 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %74 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %data.i23, align 8
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %75 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flow_type.i, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %76, label %sw.bb7.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb7.sw.bb2.i_crit_edge
    i32 3, label %sw.bb7.sw.epilog.i_crit_edge
    i32 4, label %sw.bb7.sw.epilog.i_crit_edge26
    i32 9, label %sw.bb7.sw.epilog.i_crit_edge27
    i32 10, label %sw.bb7.sw.epilog.i_crit_edge28
    i32 16, label %sw.bb7.sw.epilog.i_crit_edge29
    i32 5, label %sw.bb8.i
    i32 6, label %sw.bb7.sw.bb11.i_crit_edge
    i32 7, label %sw.bb7.sw.epilog.i_crit_edge30
    i32 8, label %sw.bb7.sw.epilog.i_crit_edge31
    i32 11, label %sw.bb7.sw.epilog.i_crit_edge32
    i32 12, label %sw.bb7.sw.epilog.i_crit_edge33
    i32 17, label %sw.bb7.sw.epilog.i_crit_edge34
  ]

sw.bb7.sw.epilog.i_crit_edge34:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge33:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge32:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge31:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge30:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb7.sw.bb11.i_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb11.i

sw.bb7.sw.epilog.i_crit_edge29:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge28:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge27:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge26:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb7.sw.bb2.i_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  %78 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 192, ptr %data.i23, align 8
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %sw.bb7.sw.bb2.i_crit_edge
  %flags.i = getelementptr i8, ptr %dev, i32 2356
  %79 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %80, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i24 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i24, label %sw.bb2.i.sw.epilog.i_crit_edge, label %sw.bb2.i.sw.epilog.sink.split.i_crit_edge

sw.bb2.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

sw.bb2.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  %81 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 192, ptr %data.i23, align 8
  br label %sw.bb11.i

sw.bb11.i:                                        ; preds = %sw.bb8.i, %sw.bb7.sw.bb11.i_crit_edge
  %flags12.i = getelementptr i8, ptr %dev, i32 2356
  %82 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags12.i, align 4
  %and13.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %sw.bb11.i.sw.epilog.i_crit_edge, label %sw.bb11.i.sw.epilog.sink.split.i_crit_edge

sw.bb11.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

sw.bb11.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb11.i.sw.epilog.sink.split.i_crit_edge, %sw.bb2.i.sw.epilog.sink.split.i_crit_edge
  %84 = ptrtoint ptr %data.i23 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %data.i23, align 8
  %or17.i = or i64 %85, 192
  store i64 %or17.i, ptr %data.i23, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb11.i.sw.epilog.i_crit_edge, %sw.bb2.i.sw.epilog.i_crit_edge, %sw.bb7.sw.epilog.i_crit_edge, %sw.bb7.sw.epilog.i_crit_edge26, %sw.bb7.sw.epilog.i_crit_edge27, %sw.bb7.sw.epilog.i_crit_edge28, %sw.bb7.sw.epilog.i_crit_edge29, %sw.bb7.sw.epilog.i_crit_edge30, %sw.bb7.sw.epilog.i_crit_edge31, %sw.bb7.sw.epilog.i_crit_edge32, %sw.bb7.sw.epilog.i_crit_edge33, %sw.bb7.sw.epilog.i_crit_edge34
  %86 = ptrtoint ptr %data.i23 to i32
  call void @__asan_load8_noabort(i32 %86)
  %storemerge.in.i = load i64, ptr %data.i23, align 8
  %storemerge.i = or i64 %storemerge.in.i, 48
  store i64 %storemerge.i, ptr %data.i23, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %sw.bb7.cleanup_crit_edge, %for.end.i, %if.then.i, %igc_ethtool_get_nfc_rule.exit, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %igc_ethtool_get_nfc_rule.exit ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -95, %entry.cleanup_crit_edge ], [ -90, %if.then.i ], [ 0, %for.end.i ], [ 0, %sw.epilog.i ], [ -22, %sw.bb7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_set_rxnfc(ptr noundef %dev, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 42, label %sw.bb
    i32 50, label %sw.bb3
    i32 49, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %flags1.i = getelementptr i8, ptr %dev, i32 2356
  %3 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags1.i, align 4
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data.i, align 8
  %and.i = and i64 %6, -241
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flow_type.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %8, label %if.end.i.cleanup_crit_edge [
    i32 1, label %if.end.i.sw.bb.i_crit_edge
    i32 5, label %if.end.i.sw.bb.i_crit_edge16
    i32 2, label %sw.bb18.i
    i32 6, label %sw.bb33.i
    i32 4, label %if.end.i.sw.bb51.i_crit_edge
    i32 9, label %if.end.i.sw.bb51.i_crit_edge17
    i32 10, label %if.end.i.sw.bb51.i_crit_edge18
    i32 3, label %if.end.i.sw.bb51.i_crit_edge19
    i32 8, label %if.end.i.sw.bb51.i_crit_edge20
    i32 11, label %if.end.i.sw.bb51.i_crit_edge21
    i32 12, label %if.end.i.sw.bb51.i_crit_edge22
    i32 7, label %if.end.i.sw.bb51.i_crit_edge23
  ]

if.end.i.sw.bb51.i_crit_edge23:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge22:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge21:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge20:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge19:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge18:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge17:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb51.i

if.end.i.sw.bb.i_crit_edge16:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge16
  %10 = and i64 %6, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 240, i64 %10)
  %.not146.i = icmp eq i64 %10, 240
  br i1 %.not146.i, label %sw.bb.i.sw.epilog70.thread.i_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb.i.sw.epilog70.thread.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog70.thread.i

sw.bb18.i:                                        ; preds = %if.end.i
  %11 = and i64 %6, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %11)
  %.not145.i = icmp eq i64 %11, 48
  br i1 %.not145.i, label %if.end27.i, label %sw.bb18.i.cleanup_crit_edge

sw.bb18.i.cleanup_crit_edge:                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end27.i:                                       ; preds = %sw.bb18.i
  %12 = trunc i64 %6 to i8
  %trunc135.i = and i8 %12, -64
  %13 = zext i8 %trunc135.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %trunc135.i, label %if.end27.i.cleanup_crit_edge [
    i8 0, label %sw.bb30.i
    i8 -64, label %sw.bb32.i
  ]

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb30.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %and31.i = and i32 %4, -65
  br label %sw.epilog70.i

sw.bb32.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %or.i = or i32 %4, 64
  br label %sw.epilog70.i

sw.bb33.i:                                        ; preds = %if.end.i
  %14 = and i64 %6, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %14)
  %.not.i = icmp eq i64 %14, 48
  br i1 %.not.i, label %if.end42.i, label %sw.bb33.i.cleanup_crit_edge

sw.bb33.i.cleanup_crit_edge:                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end42.i:                                       ; preds = %sw.bb33.i
  %15 = trunc i64 %6 to i8
  %trunc.i = and i8 %15, -64
  %16 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %trunc.i, label %if.end42.i.cleanup_crit_edge [
    i8 0, label %sw.bb45.i
    i8 -64, label %sw.bb47.i
  ]

if.end42.i.cleanup_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb45.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #18
  %and46.i = and i32 %4, -129
  br label %sw.epilog70.i

sw.bb47.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #18
  %or48.i = or i32 %4, 128
  br label %sw.epilog70.i

sw.bb51.i:                                        ; preds = %if.end.i.sw.bb51.i_crit_edge, %if.end.i.sw.bb51.i_crit_edge17, %if.end.i.sw.bb51.i_crit_edge18, %if.end.i.sw.bb51.i_crit_edge19, %if.end.i.sw.bb51.i_crit_edge20, %if.end.i.sw.bb51.i_crit_edge21, %if.end.i.sw.bb51.i_crit_edge22, %if.end.i.sw.bb51.i_crit_edge23
  %17 = and i64 %6, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %17)
  %18 = icmp eq i64 %17, 48
  br i1 %18, label %sw.bb51.i.sw.epilog70.thread.i_crit_edge, label %sw.bb51.i.cleanup_crit_edge

sw.bb51.i.cleanup_crit_edge:                      ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb51.i.sw.epilog70.thread.i_crit_edge:         ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog70.thread.i

sw.epilog70.thread.i:                             ; preds = %sw.bb51.i.sw.epilog70.thread.i_crit_edge, %sw.bb.i.sw.epilog70.thread.i_crit_edge
  br label %cleanup

sw.epilog70.i:                                    ; preds = %sw.bb47.i, %sw.bb45.i, %sw.bb32.i, %sw.bb30.i
  %flags.0.i = phi i32 [ %or48.i, %sw.bb47.i ], [ %and46.i, %sw.bb45.i ], [ %or.i, %sw.bb32.i ], [ %and31.i, %sw.bb30.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %4)
  %cmp.not.i = icmp eq i32 %flags.0.i, %4
  br i1 %cmp.not.i, label %sw.epilog70.i.cleanup_crit_edge, label %if.then72.i

sw.epilog70.i.cleanup_crit_edge:                  ; preds = %sw.epilog70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then72.i:                                      ; preds = %sw.epilog70.i
  %hw73.i = getelementptr i8, ptr %dev, i32 2992
  %call.i = tail call i32 @igc_rd32(ptr noundef %hw73.i, i32 noundef 22552) #16
  %and74.i = and i32 %flags.0.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.then72.i.if.end80.i_crit_edge, label %land.lhs.true.i

if.then72.i.if.end80.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80.i

land.lhs.true.i:                                  ; preds = %if.then72.i
  %19 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags1.i, align 4
  %and77.i = and i32 %20, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %if.then79.i, label %land.lhs.true.i.if.end80.i_crit_edge

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80.i

if.then79.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.13) #20
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then79.i, %land.lhs.true.i.if.end80.i_crit_edge, %if.then72.i.if.end80.i_crit_edge
  %23 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  %or82.i = and i32 %call.i, -15925249
  %and84.i = and i32 %flags.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  %spec.select.v.i = select i1 %tobool85.not.i, i32 3342336, i32 7536640
  %and89.i = shl i32 %flags.0.i, 16
  %24 = and i32 %and89.i, 8388608
  %spec.select.i = or i32 %spec.select.v.i, %24
  %25 = or i32 %spec.select.i, %or82.i
  %hw_addr95.i = getelementptr i8, ptr %dev, i32 2996
  %26 = ptrtoint ptr %hw_addr95.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %hw_addr95.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !88
  tail call void @arm_heavy_mb() #16
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #16
  %arrayidx.i = getelementptr i8, ptr %27, i32 22552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %28) #16, !srcloc !84
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call fastcc i32 @igc_ethtool_add_nfc_rule(ptr noundef %add.ptr.i, ptr noundef %cmd)
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %nfc_rule_lock.i = getelementptr i8, ptr %dev, i32 4352
  tail call void @mutex_lock_nested(ptr noundef %nfc_rule_lock.i, i32 noundef 0) #16
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %29 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %location.i, align 8
  %call.i12 = tail call ptr @igc_get_nfc_rule(ptr noundef %add.ptr.i, i32 noundef %30) #16
  %tobool.not.i13 = icmp eq ptr %call.i12, null
  br i1 %tobool.not.i13, label %sw.bb5.igc_ethtool_del_nfc_rule.exit_crit_edge, label %if.end.i14

sw.bb5.igc_ethtool_del_nfc_rule.exit_crit_edge:   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #18
  br label %igc_ethtool_del_nfc_rule.exit

if.end.i14:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @igc_del_nfc_rule(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i12) #16
  br label %igc_ethtool_del_nfc_rule.exit

igc_ethtool_del_nfc_rule.exit:                    ; preds = %if.end.i14, %sw.bb5.igc_ethtool_del_nfc_rule.exit_crit_edge
  %retval.0.i15 = phi i32 [ 0, %if.end.i14 ], [ -22, %sw.bb5.igc_ethtool_del_nfc_rule.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %nfc_rule_lock.i) #16
  br label %cleanup

cleanup:                                          ; preds = %igc_ethtool_del_nfc_rule.exit, %sw.bb3, %if.end80.i, %sw.epilog70.i.cleanup_crit_edge, %sw.epilog70.thread.i, %sw.bb51.i.cleanup_crit_edge, %if.end42.i.cleanup_crit_edge, %sw.bb33.i.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %sw.bb18.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i15, %igc_ethtool_del_nfc_rule.exit ], [ %call4, %sw.bb3 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb18.i.cleanup_crit_edge ], [ -22, %if.end27.i.cleanup_crit_edge ], [ -22, %sw.bb33.i.cleanup_crit_edge ], [ -22, %if.end42.i.cleanup_crit_edge ], [ -22, %sw.bb51.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ 0, %if.end80.i ], [ 0, %sw.epilog70.i.cleanup_crit_edge ], [ 0, %sw.epilog70.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igc_ethtool_get_rxfh_indir_size(ptr nocapture noundef readnone %netdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_get_rxfh(ptr nocapture noundef readonly %netdev, ptr noundef writeonly %indir, ptr nocapture noundef readnone %key, ptr noundef writeonly %hfunc) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %indir, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 52, i32 %i.011
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx4 = getelementptr i32, ptr %indir, i32 %i.011
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_set_rxfh(ptr noundef %netdev, ptr noundef readonly %indir, ptr noundef readnone %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tobool.not = icmp eq ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  %or.cond = and i1 %tobool.not, %switch
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %indir, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %rss_queues = getelementptr i8, ptr %netdev, i32 4344
  %0 = ptrtoint ptr %rss_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss_queues, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.cond.for.body17_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.cond.for.body17_crit_edge:                    ; preds = %for.cond
  br label %for.body17

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end7
  %i.038 = phi i32 [ 0, %if.end7 ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %i.038
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp10.not = icmp ult i32 %3, %1
  br i1 %cmp10.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond.for.body17_crit_edge
  %i.139 = phi i32 [ %inc22, %for.body17.for.body17_crit_edge ], [ 0, %for.cond.for.body17_crit_edge ]
  %arrayidx18 = getelementptr i32, ptr %indir, i32 %i.139
  %4 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx18, align 4
  %conv19 = trunc i32 %5 to i8
  %arrayidx20 = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 52, i32 %i.139
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv19, ptr %arrayidx20, align 1
  %inc22 = add nuw nsw i32 %i.139, 1
  %exitcond41.not = icmp eq i32 %inc22, 128
  br i1 %exitcond41.not, label %for.end23, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body17

for.end23:                                        ; preds = %for.body17
  %hw_addr4.i = getelementptr i8, ptr %netdev, i32 2996
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.cond.preheader.i.for.cond.preheader.i_crit_edge, %for.end23
  %reg.025.i = phi i32 [ 23552, %for.end23 ], [ %add12.i, %for.cond.preheader.i.for.cond.preheader.i_crit_edge ]
  %i.024.i = phi i32 [ 0, %for.end23 ], [ %add13.i, %for.cond.preheader.i.for.cond.preheader.i_crit_edge ]
  %add.i = or i32 %i.024.i, 3
  %arrayidx.i = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 52, i32 %add.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %add.1.i = or i32 %i.024.i, 2
  %arrayidx.1.i = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 52, i32 %add.1.i
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %10 to i32
  %11 = shl nuw nsw i32 %conv.i, 16
  %12 = shl nuw nsw i32 %conv.1.i, 8
  %shl.2.i = or i32 %12, %11
  %add.2.i = or i32 %i.024.i, 1
  %arrayidx.2.i = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 52, i32 %add.2.i
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %14 to i32
  %or.2.i = or i32 %shl.2.i, %conv.2.i
  %shl.3.i = shl nuw i32 %or.2.i, 8
  %arrayidx.3.i = getelementptr %struct.igc_adapter, ptr %add.ptr.i, i32 0, i32 52, i32 %i.024.i
  %15 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %16 to i32
  %or.3.i = or i32 %shl.3.i, %conv.3.i
  %17 = ptrtoint ptr %hw_addr4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw_addr4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !83
  tail call void @arm_heavy_mb() #16
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.3.i) #16
  %arrayidx9.i = getelementptr i8, ptr %18, i32 %reg.025.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx9.i, i32 %19) #16, !srcloc !84
  %add12.i = add nuw nsw i32 %reg.025.i, 4
  %add13.i = add nuw nsw i32 %i.024.i, 4
  %cmp.i = icmp ult i32 %i.024.i, 124
  br i1 %cmp.i, label %for.cond.preheader.i.for.cond.preheader.i_crit_edge, label %for.cond.preheader.i.cleanup_crit_edge

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader.i.for.cond.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.preheader.i

cleanup:                                          ; preds = %for.cond.preheader.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igc_ethtool_get_channels(ptr noundef %netdev, ptr nocapture noundef writeonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @igc_get_max_rss_queues(ptr noundef %add.ptr.i) #16
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %max_combined, align 4
  %flags = getelementptr i8, ptr %netdev, i32 2356
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %max_other = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 3
  %3 = ptrtoint ptr %max_other to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max_other, align 4
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %4 = ptrtoint ptr %other_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %other_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rss_queues = getelementptr i8, ptr %netdev, i32 4344
  %5 = ptrtoint ptr %rss_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rss_queues, align 8
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %7 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %combined_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_set_channels(ptr noundef %netdev, ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %0 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %combined_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %2 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %4 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %6 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %other_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @igc_get_max_rss_queues(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call6)
  %cmp7 = icmp ugt i32 %1, %call6
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %rss_queues = getelementptr i8, ptr %netdev, i32 4344
  %8 = ptrtoint ptr %rss_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rss_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp10.not = icmp eq i32 %1, %9
  br i1 %cmp10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %rss_queues to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %rss_queues, align 8
  tail call void @igc_set_flag_queue_pairs(ptr noundef %add.ptr.i, i32 noundef %call6) #16
  %call13 = tail call i32 @igc_reinit_queues(ptr noundef %add.ptr.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then11 ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_get_ts_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr i8, ptr %dev, i32 4608
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 @ptp_clock_index(ptr noundef nonnull %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2.sink = phi i32 [ %call2, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %2 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2.sink, ptr %2, align 4
  %type = getelementptr i8, ptr %dev, i32 3052
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cond = icmp eq i32 %5, 1
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 95, ptr %so_timestamping, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %rx_filters, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_get_eee(ptr noundef %netdev, ptr nocapture noundef writeonly %edata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2992
  %eee_enable = getelementptr i8, ptr %netdev, i32 3713
  %0 = ptrtoint ptr %eee_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eee_enable, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %eee_advert = getelementptr i8, ptr %netdev, i32 2348
  %2 = ptrtoint ptr %eee_advert to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %eee_advert, align 4
  %conv.i = zext i16 %3 to i32
  %and.i = shl nuw nsw i32 %conv.i, 2
  %4 = and i32 %and.i, 8
  %and2.i = shl nuw nsw i32 %conv.i, 3
  %5 = and i32 %and2.i, 32
  %6 = or i32 %5, %4
  %and8.i = shl nuw nsw i32 %conv.i, 9
  %7 = and i32 %and8.i, 4096
  %8 = or i32 %6, %7
  %and14.i = shl nuw nsw i32 %conv.i, 13
  %9 = and i32 %and14.i, 131072
  %10 = or i32 %8, %9
  %11 = and i32 %and14.i, 262144
  %12 = or i32 %10, %11
  %13 = and i32 %and14.i, 524288
  %14 = or i32 %12, %13
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %15 = ptrtoint ptr %advertised to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %advertised, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %eee = getelementptr i8, ptr %netdev, i32 2308
  %16 = call ptr @memcpy(ptr %edata, ptr %eee, i32 40)
  %supported = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 1
  %17 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 64, ptr %supported, align 4
  %call3 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 3632) #16
  %and = and i32 %call3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %eee_active = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %18 = ptrtoint ptr %eee_active to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %eee_active, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %and7 = and i32 %call3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %19 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %tx_lpi_enabled, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %20 = ptrtoint ptr %eee_enable to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %eee_enable, align 1, !range !86
  %22 = zext i8 %21 to i32
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %23 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %eee_enabled, align 4
  %advertised14 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %24 = ptrtoint ptr %advertised14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 64, ptr %advertised14, align 4
  %lp_advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 3
  %25 = ptrtoint ptr %lp_advertised to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 64, ptr %lp_advertised, align 4
  %link_duplex = getelementptr i8, ptr %netdev, i32 2570
  %26 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %link_duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %27)
  %cmp = icmp eq i16 %27, 1
  br i1 %cmp, label %if.then17, label %if.end10.if.end24_crit_edge

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %eee_enabled, align 4
  %eee_active19 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %29 = ptrtoint ptr %eee_active19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %eee_active19, align 4
  %tx_lpi_enabled20 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %30 = ptrtoint ptr %tx_lpi_enabled20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %tx_lpi_enabled20, align 4
  %31 = ptrtoint ptr %advertised14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %advertised14, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end10.if.end24_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_set_eee(ptr noundef %netdev, ptr nocapture noundef readonly %edata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1.i = getelementptr i8, ptr %netdev, i32 2992
  %eee_enable.i = getelementptr i8, ptr %netdev, i32 3713
  %eee_curr.sroa.15.0.eee.i.sroa_idx = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %eee_curr.sroa.15.0.eee.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %eee_curr.sroa.15.0.copyload = load i32, ptr %eee_curr.sroa.15.0.eee.i.sroa_idx, align 4
  %call3.i = tail call i32 @igc_rd32(ptr noundef %hw1.i, i32 noundef 3632) #16
  %1 = ptrtoint ptr %eee_enable.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %eee_enable.i, align 1, !range !86
  %link_duplex.i = getelementptr i8, ptr %netdev, i32 2570
  %3 = ptrtoint ptr %link_duplex.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %link_duplex.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp.i = icmp eq i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not = icmp eq i8 %2, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.else, label %if.then4

if.then4:                                         ; preds = %entry
  %and7.i = and i32 %call3.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %eee_curr.sroa.15.0 = select i1 %tobool8.not.i, i32 %eee_curr.sroa.15.0.copyload, i32 1
  %tx_lpi_enabled5 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %5 = ptrtoint ptr %tx_lpi_enabled5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_lpi_enabled5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %eee_curr.sroa.15.0, i32 %6)
  %cmp.not = icmp eq i32 %eee_curr.sroa.15.0, %6
  br i1 %cmp.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.25) #20
  br label %cleanup

if.end7:                                          ; preds = %if.then4
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %7 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_lpi_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.end7.if.end15_crit_edge, label %if.then9

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.26) #20
  br label %cleanup

if.else:                                          ; preds = %entry
  %eee_enabled11 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %9 = ptrtoint ptr %eee_enabled11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eee_enabled11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.then13, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.27) #20
  br label %cleanup

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %11 = ptrtoint ptr %advertised to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %advertised, align 4
  %13 = trunc i32 %12 to i16
  %14 = lshr i16 %13, 2
  %15 = and i16 %14, 2
  %16 = lshr i16 %13, 3
  %17 = and i16 %16, 4
  %18 = or i16 %17, %15
  %19 = lshr i16 %13, 9
  %20 = and i16 %19, 8
  %21 = or i16 %18, %20
  %and16.i = lshr i32 %12, 13
  %22 = trunc i32 %and16.i to i16
  %23 = and i16 %22, 16
  %24 = or i16 %21, %23
  %25 = and i16 %22, 32
  %26 = or i16 %24, %25
  %27 = and i16 %22, 64
  %28 = or i16 %26, %27
  %eee_advert = getelementptr i8, ptr %netdev, i32 2348
  %29 = ptrtoint ptr %eee_advert to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %eee_advert, align 4
  %30 = ptrtoint ptr %eee_enable.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %eee_enable.i, align 1, !range !86
  %32 = zext i8 %31 to i32
  %eee_enabled18 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %33 = ptrtoint ptr %eee_enabled18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %eee_enabled18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %32)
  %cmp19.not = icmp eq i32 %34, %32
  br i1 %cmp19.not, label %if.end15.cleanup_crit_edge, label %if.then21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool23 = icmp ne i32 %34, 0
  %frombool = zext i1 %tobool23 to i8
  %35 = ptrtoint ptr %eee_enable.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool, ptr %eee_enable.i, align 1
  %flags = getelementptr i8, ptr %netdev, i32 2356
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %or = or i32 %37, 16384
  store i32 %or, ptr %flags, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else28, label %if.then27

if.then27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @igc_reinit_locked(ptr noundef %add.ptr.i) #16
  br label %cleanup

if.else28:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @igc_reset(ptr noundef %add.ptr.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else28, %if.then27, %if.end15.cleanup_crit_edge, %if.then13, %if.then9, %if.then6
  %retval.0 = phi i32 [ -22, %if.then6 ], [ -22, %if.then9 ], [ -22, %if.then13 ], [ 0, %if.then27 ], [ 0, %if.else28 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_get_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2992
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %0 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %2 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 47, ptr %link_modes, align 4
  %add.ptr.i = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768, ptr %add.ptr.i, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %4 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %port, align 1
  %addr = getelementptr i8, ptr %netdev, i32 3680
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %conv = trunc i32 %6 to i8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %7 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %phy_address, align 2
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 3700
  %8 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %autoneg_advertised, align 4
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %advertising, align 4
  %or.i241 = or i32 %12, 1
  store i32 %or.i241, ptr %advertising, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %autoneg_advertised, align 4
  %15 = and i16 %14, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool32.not = icmp eq i16 %15, 0
  br i1 %tobool32.not, label %if.end.if.end37_crit_edge, label %if.then33

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %advertising, align 4
  %or.i242 = or i32 %17, 2
  store i32 %or.i242, ptr %advertising, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end.if.end37_crit_edge
  %18 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %autoneg_advertised, align 4
  %20 = and i16 %19, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool42.not = icmp eq i16 %20, 0
  br i1 %tobool42.not, label %if.end37.if.end47_crit_edge, label %if.then43

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %advertising, align 4
  %or.i243 = or i32 %22, 4
  store i32 %or.i243, ptr %advertising, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end37.if.end47_crit_edge
  %23 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %autoneg_advertised, align 4
  %25 = and i16 %24, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool52.not = icmp eq i16 %25, 0
  br i1 %tobool52.not, label %if.end47.if.end57_crit_edge, label %if.then53

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %advertising, align 4
  %or.i244 = or i32 %27, 8
  store i32 %or.i244, ptr %advertising, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end47.if.end57_crit_edge
  %28 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %autoneg_advertised, align 4
  %30 = and i16 %29, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool62.not = icmp eq i16 %30, 0
  br i1 %tobool62.not, label %if.end57.if.end67_crit_edge, label %if.then63

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.then63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %advertising, align 4
  %or.i245 = or i32 %32, 32
  store i32 %or.i245, ptr %advertising, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end57.if.end67_crit_edge
  %33 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %autoneg_advertised, align 4
  %35 = and i16 %34, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool72.not = icmp eq i16 %35, 0
  br i1 %tobool72.not, label %if.end67.if.end77_crit_edge, label %if.then73

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

if.then73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i246 = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %36 = ptrtoint ptr %add.ptr.i246 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i246, align 4
  %or.i247 = or i32 %37, 32768
  store i32 %or.i247, ptr %add.ptr.i246, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.end67.if.end77_crit_edge
  %autoneg = getelementptr i8, ptr %netdev, i32 3581
  %38 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %autoneg, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool78.not = icmp eq i8 %39, 0
  br i1 %tobool78.not, label %if.end77.if.end88_crit_edge, label %if.then81

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 111, ptr %link_modes, align 4
  %41 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %advertising, align 4
  %or.i249 = or i32 %42, 64
  store i32 %or.i249, ptr %advertising, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then81, %if.end77.if.end88_crit_edge
  %43 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %link_modes, align 4
  %or.i250 = or i32 %44, 8192
  store i32 %or.i250, ptr %link_modes, align 4
  %requested_mode = getelementptr i8, ptr %netdev, i32 3600
  %45 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %requested_mode, align 4
  %switch.tableidx = add i32 %46, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %47 = icmp ult i32 %switch.tableidx, 3
  br i1 %47, label %switch.lookup, label %if.end88.sw.epilog_crit_edge

if.end88.sw.epilog_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #18
  %switch.idx.mult = mul i32 %switch.tableidx, -8192
  %switch.offset = add i32 %switch.idx.mult, 24576
  %48 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %advertising, align 4
  %or.i254 = or i32 %49, %switch.offset
  store i32 %or.i254, ptr %advertising, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end88.sw.epilog_crit_edge
  %pdev = getelementptr i8, ptr %netdev, i32 2752
  %50 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev, align 8
  %runtime_status.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44, i32 12, i32 18
  %52 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.i = icmp eq i32 %53, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %sw.epilog.cond.end_crit_edge

sw.epilog.cond.end_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

pm_runtime_suspended.exit:                        ; preds = %sw.epilog
  %disable_depth.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44, i32 12, i32 15
  %54 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end143_crit_edge, label %pm_runtime_suspended.exit.cond.end_crit_edge

pm_runtime_suspended.exit.cond.end_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

pm_runtime_suspended.exit.if.end143_crit_edge:    ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end143

cond.end:                                         ; preds = %pm_runtime_suspended.exit.cond.end_crit_edge, %sw.epilog.cond.end_crit_edge
  %call108 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 8) #16
  %and109 = and i32 %call108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %cond.end.if.end143_crit_edge, label %if.then111

cond.end.if.end143_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end143

if.then111:                                       ; preds = %cond.end
  %and112 = and i32 %call108, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.else122, label %if.then114

if.then114:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #18
  %type = getelementptr i8, ptr %netdev, i32 3052
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp116 = icmp ne i32 %56, 1
  %and118 = and i32 %call108, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  %or.cond = select i1 %cmp116, i1 true, i1 %tobool119.not
  %spec.select = select i1 %or.cond, i32 1000, i32 2500
  br label %if.end128

if.else122:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #18
  %and123 = and i32 %call108, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  %. = select i1 %tobool124.not, i32 10, i32 100
  br label %if.end128

if.end128:                                        ; preds = %if.else122, %if.then114
  %speed.0 = phi i32 [ %., %if.else122 ], [ %spec.select, %if.then114 ]
  %and129 = and i32 %call108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %lor.lhs.false, label %if.end128.if.end143_crit_edge

if.end128.if.end143_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end143

lor.lhs.false:                                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #18
  %media_type = getelementptr i8, ptr %netdev, i32 3696
  %57 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp132.not = icmp ne i32 %58, 1
  %spec.select265 = zext i1 %cmp132.not to i8
  br label %if.end143

if.end143:                                        ; preds = %lor.lhs.false, %if.end128.if.end143_crit_edge, %cond.end.if.end143_crit_edge, %pm_runtime_suspended.exit.if.end143_crit_edge
  %.sink263 = phi i8 [ 1, %if.end128.if.end143_crit_edge ], [ -1, %pm_runtime_suspended.exit.if.end143_crit_edge ], [ -1, %cond.end.if.end143_crit_edge ], [ %spec.select265, %lor.lhs.false ]
  %speed.1 = phi i32 [ %speed.0, %if.end128.if.end143_crit_edge ], [ -1, %pm_runtime_suspended.exit.if.end143_crit_edge ], [ -1, %cond.end.if.end143_crit_edge ], [ %speed.0, %lor.lhs.false ]
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %59 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.sink263, ptr %duplex, align 4
  %speed145 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %60 = ptrtoint ptr %speed145 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %speed.1, ptr %speed145, align 4
  %61 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %autoneg, align 1, !range !86
  %63 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %62, ptr %63, align 1
  %media_type157 = getelementptr i8, ptr %netdev, i32 3696
  %65 = ptrtoint ptr %media_type157 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %media_type157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp158 = icmp eq i32 %66, 1
  br i1 %cmp158, label %if.then160, label %if.end143.if.end170_crit_edge

if.end143.if.end170_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end170

if.then160:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #18
  %is_mdix = getelementptr i8, ptr %netdev, i32 3705
  %67 = ptrtoint ptr %is_mdix to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_mdix, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool162.not = icmp eq i8 %68, 0
  %conv165 = select i1 %tobool162.not, i8 1, i8 2
  br label %if.end170

if.end170:                                        ; preds = %if.then160, %if.end143.if.end170_crit_edge
  %.sink259 = phi i8 [ %conv165, %if.then160 ], [ 0, %if.end143.if.end170_crit_edge ]
  %69 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 7
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %.sink259, ptr %69, align 1
  %mdix = getelementptr i8, ptr %netdev, i32 3704
  %71 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %mdix, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp173 = icmp eq i8 %72, 0
  %spec.select264 = select i1 %cmp173, i8 3, i8 %72
  %73 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %spec.select264, ptr %73, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ethtool_set_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #0 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %hw2 = getelementptr i8, ptr %netdev, i32 2992
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #16
  %2 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %advertising, align 4, !annotation !89
  %call3 = tail call i32 @igc_check_reset_block(ptr noundef %hw2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.28) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %eth_tp_mdix_ctrl = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 8
  %3 = ptrtoint ptr %eth_tp_mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %eth_tp_mdix_ctrl, align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %4, label %land.lhs.true [
    i8 0, label %if.end.if.end15_crit_edge
    i8 3, label %if.end.if.end15_crit_edge92
  ]

if.end.if.end15_crit_edge92:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp11.not = icmp eq i8 %7, 1
  br i1 %cmp11.not, label %land.lhs.true.if.end15_crit_edge, label %if.then13

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.29) #20
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge, %if.end.if.end15_crit_edge92
  %state = getelementptr i8, ptr %netdev, i32 2352
  %call1690 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1690)
  %tobool17.not91 = icmp eq i32 %call1690, 0
  br i1 %tobool17.not91, label %if.end15.while.end_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  br label %while.body

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end15.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #16
  %call16 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #16
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end15.while.end_crit_edge
  %advertising18 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call19 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising18) #16
  %arrayidx.i = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %10 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool24.not = icmp eq i32 %10, 0
  br i1 %tobool24.not, label %while.end.if.end26_crit_edge, label %if.then25

while.end.if.end26_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then25:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %advertising, align 4
  %or = or i32 %12, 128
  store i32 %or, ptr %advertising, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %while.end.if.end26_crit_edge
  %autoneg28 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %13 = ptrtoint ptr %autoneg28 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %autoneg28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp30 = icmp eq i8 %14, 1
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end26
  %autoneg33 = getelementptr i8, ptr %netdev, i32 3581
  %15 = ptrtoint ptr %autoneg33 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %autoneg33, align 1
  %16 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %advertising, align 4
  %conv34 = trunc i32 %17 to i16
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 3700
  %18 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv34, ptr %autoneg_advertised, align 4
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 2720
  %19 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fc_autoneg, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool35.not = icmp eq i8 %20, 0
  br i1 %tobool35.not, label %if.then32.if.end38_crit_edge, label %if.then36

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  %requested_mode = getelementptr i8, ptr %netdev, i32 3600
  %21 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 255, ptr %requested_mode, align 4
  br label %if.end38

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.30) #20
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then36, %if.then32.if.end38_crit_edge
  %22 = ptrtoint ptr %eth_tp_mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %eth_tp_mdix_ctrl, align 2
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %23, label %if.else50 [
    i8 0, label %if.end38.if.end56_crit_edge
    i8 3, label %if.end38.if.end56.sink.split_crit_edge
  ]

if.end38.if.end56.sink.split_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56.sink.split

if.end38.if.end56_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.else50:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56.sink.split

if.end56.sink.split:                              ; preds = %if.else50, %if.end38.if.end56.sink.split_crit_edge
  %.sink = phi i8 [ %23, %if.else50 ], [ 0, %if.end38.if.end56.sink.split_crit_edge ]
  %mdix = getelementptr i8, ptr %netdev, i32 3704
  %25 = ptrtoint ptr %mdix to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink, ptr %mdix, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %if.end38.if.end56_crit_edge
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
  br i1 %tobool.i.not, label %if.else60, label %if.then59

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  call void @igc_down(ptr noundef %add.ptr.i) #16
  call void @igc_up(ptr noundef %add.ptr.i) #16
  br label %if.end61

if.else60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  call void @igc_reset(ptr noundef %add.ptr.i) #16
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %if.then59
  call void @_clear_bit(i32 noundef 1, ptr noundef %state) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then13, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then13 ], [ 0, %if.end61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @igc_read_phy_fw_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_reinit_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igc_has_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igc_get_flash_presence_i225(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_setup_tx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_free_tx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_setup_rx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_free_rx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_force_mac_fc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_setup_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igc_link_test(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igc_reg_test(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igc_eeprom_test(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_update_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !90
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #16
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #16
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #16
  tail call void @trace_hardirqs_on() #16
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #16
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #16
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #16
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !91
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !85

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #16, !srcloc !92
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !93
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !94
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !95
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igc_get_nfc_rule(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igc_ethtool_add_nfc_rule(ptr noundef %adapter, ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %hw_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %hw_features, align 8
  %and = and i64 %3, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body2, label %if.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_ethtool_add_nfc_rule, %if.then6)) #16
          to label %cleanup [label %if.then6], !srcloc !96

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug367, ptr noundef %1, ptr noundef nonnull @.str.17) #16
  br label %cleanup

if.end9:                                          ; preds = %entry
  %4 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fs, align 8
  %and10 = and i32 %5, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and10)
  %cmp.not = icmp eq i32 %and10, 18
  br i1 %cmp.not, label %if.end31, label %do.body13

do.body13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_ethtool_add_nfc_rule, %if.then25)) #16
          to label %cleanup [label %if.then25], !srcloc !96

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug368, ptr noundef %1, ptr noundef nonnull @.str.18) #16
  br label %cleanup

if.end31:                                         ; preds = %if.end9
  %ring_cookie = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ring_cookie, align 8
  %num_rx_queues = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 11
  %8 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_rx_queues, align 4
  %conv = sext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv)
  %cmp32.not = icmp ult i64 %7, %conv
  br i1 %cmp32.not, label %if.end54, label %do.body36

do.body36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_ethtool_add_nfc_rule, %if.then48)) #16
          to label %cleanup [label %if.then48], !srcloc !96

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug369, ptr noundef %1, ptr noundef nonnull @.str.19) #16
  br label %cleanup

if.end54:                                         ; preds = %if.end31
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %11)
  %cmp55 = icmp ugt i32 %11, 63
  br i1 %cmp55, label %do.body59, label %if.end77

do.body59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_ethtool_add_nfc_rule, %if.then71)) #16
          to label %cleanup [label %if.then71], !srcloc !96

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug370, ptr noundef %1, ptr noundef nonnull @.str.20) #16
  br label %cleanup

if.end77:                                         ; preds = %if.end54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 60) #21
  %tobool79.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool79.not, label %if.end77.cleanup_crit_edge, label %if.end81

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end81:                                         ; preds = %if.end77
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ring_cookie, align 8
  %conv.i = trunc i64 %16 to i16
  %action.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %action.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %action.i, align 8
  %18 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %location, align 8
  %location1.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %location1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %location1.i, align 4
  %21 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool.not.i = icmp sgt i32 %22, -1
  br i1 %tobool.not.i, label %if.end81.if.end.i_crit_edge, label %land.lhs.true.i

if.end81.if.end.i_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end81
  %vlan_tci.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %23 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vlan_tci.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool3.not.i = icmp eq i16 %24, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %vlan_tci4.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %25 = ptrtoint ptr %vlan_tci4.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vlan_tci4.i, align 2
  %filter.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1
  %vlan_tci5.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %vlan_tci5.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %vlan_tci5.i, align 2
  %28 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %filter.i, align 8
  %30 = or i8 %29, 2
  store i8 %30, ptr %filter.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end81.if.end.i_crit_edge
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_proto.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %31 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %h_proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %32)
  %cmp.i = icmp eq i16 %32, -1
  br i1 %cmp.i, label %if.then11.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %h_proto12.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %33 = ptrtoint ptr %h_proto12.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %h_proto12.i, align 4
  %filter13.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1
  %etype.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %etype.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %etype.i, align 2
  %36 = ptrtoint ptr %filter13.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %filter13.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then11.i, %if.end.i.if.end16.i_crit_edge
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %m_u.i, i32 0, i32 1
  %37 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %h_source.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %39 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %40, %38
  %add.ptr3.i.i = getelementptr %struct.ethhdr, ptr %m_u.i, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %42
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i.i, label %if.then18.i, label %if.end16.i.if.end29.i_crit_edge

if.end16.i.if.end29.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  %filter19.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %filter19.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %filter19.i, align 8
  %45 = or i8 %44, 4
  store i8 %45, ptr %filter19.i, align 8
  %src_addr.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1, i32 4
  %h_u26.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %h_source27.i = getelementptr inbounds %struct.ethhdr, ptr %h_u26.i, i32 0, i32 1
  %46 = ptrtoint ptr %h_source27.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %h_source27.i, align 4
  %48 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %src_addr.i, align 8
  %add.ptr.i.i = getelementptr %struct.ethhdr, ptr %h_u26.i, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i152.i = getelementptr %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 4
  %51 = ptrtoint ptr %add.ptr1.i152.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %add.ptr1.i152.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end29.i_crit_edge
  %52 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %m_u.i, align 2
  %add.ptr1.i153.i = getelementptr i8, ptr %m_u.i, i32 2
  %54 = ptrtoint ptr %add.ptr1.i153.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr1.i153.i, align 2
  %and9.i154.i = and i16 %55, %53
  %add.ptr3.i155.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %add.ptr3.i155.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr3.i155.i, align 2
  %and510.i156.i = and i16 %and9.i154.i, %57
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i156.i)
  %cmp.i157.i = icmp eq i16 %and510.i156.i, -1
  br i1 %cmp.i157.i, label %if.then33.i, label %if.end29.i.if.end44.i_crit_edge

if.end29.i.if.end44.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  %filter34.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %filter34.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %filter34.i, align 8
  %60 = or i8 %59, 8
  store i8 %60, ptr %filter34.i, align 8
  %dst_addr.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1, i32 5
  %h_u41.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %h_u41.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %h_u41.i, align 4
  %63 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %dst_addr.i, align 4
  %add.ptr.i158.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %64 = ptrtoint ptr %add.ptr.i158.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %add.ptr.i158.i, align 2
  %add.ptr1.i159.i = getelementptr %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 4
  %66 = ptrtoint ptr %add.ptr1.i159.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %add.ptr1.i159.i, align 2
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then33.i, %if.end29.i.if.end44.i_crit_edge
  br i1 %tobool.not.i, label %if.end44.i.igc_ethtool_init_nfc_rule.exit_crit_edge, label %land.lhs.true48.i

if.end44.i.igc_ethtool_init_nfc_rule.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igc_ethtool_init_nfc_rule.exit

land.lhs.true48.i:                                ; preds = %if.end44.i
  %vlan_etype.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 2
  %67 = ptrtoint ptr %vlan_etype.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vlan_etype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool51.not.i = icmp eq i16 %68, 0
  br i1 %tobool51.not.i, label %land.lhs.true48.i.land.lhs.true66.i_crit_edge, label %if.then52.i

land.lhs.true48.i.land.lhs.true66.i_crit_edge:    ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true66.i

if.then52.i:                                      ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #18
  %filter55.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1
  %vlan_etype56.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1, i32 2
  %69 = ptrtoint ptr %vlan_etype56.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %vlan_etype56.i, align 4
  %70 = ptrtoint ptr %filter55.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %filter55.i, align 8
  %72 = or i8 %71, 32
  store i8 %72, ptr %filter55.i, align 8
  br label %land.lhs.true66.i

land.lhs.true66.i:                                ; preds = %if.then52.i, %land.lhs.true48.i.land.lhs.true66.i_crit_edge
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 4
  %73 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool68.not.i = icmp eq i32 %74, 0
  br i1 %tobool68.not.i, label %lor.lhs.false.i, label %land.lhs.true66.i.if.then73.i_crit_edge

land.lhs.true66.i.if.then73.i_crit_edge:          ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then73.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true66.i
  %arrayidx71.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 4, i32 1
  %75 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool72.not.i = icmp eq i32 %76, 0
  br i1 %tobool72.not.i, label %lor.lhs.false.i.igc_ethtool_init_nfc_rule.exit_crit_edge, label %lor.lhs.false.i.if.then73.i_crit_edge

lor.lhs.false.i.if.then73.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then73.i

lor.lhs.false.i.igc_ethtool_init_nfc_rule.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igc_ethtool_init_nfc_rule.exit

if.then73.i:                                      ; preds = %lor.lhs.false.i.if.then73.i_crit_edge, %land.lhs.true66.i.if.then73.i_crit_edge
  %filter74.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %filter74.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %filter74.i, align 8
  %79 = or i8 %78, 16
  store i8 %79, ptr %filter74.i, align 8
  %user_data.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1, i32 6
  %80 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 8)
  %81 = load i64, ptr %data.i, align 4
  %82 = ptrtoint ptr %user_data.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 %81, ptr %user_data.i, align 4
  %user_mask.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1, i32 7
  %data87.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4
  %83 = ptrtoint ptr %data87.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 8)
  %84 = load i64, ptr %data87.i, align 4
  %85 = ptrtoint ptr %user_mask.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 %84, ptr %user_mask.i, align 4
  br label %igc_ethtool_init_nfc_rule.exit

igc_ethtool_init_nfc_rule.exit:                   ; preds = %if.then73.i, %lor.lhs.false.i.igc_ethtool_init_nfc_rule.exit_crit_edge, %if.end44.i.igc_ethtool_init_nfc_rule.exit_crit_edge
  %filter90.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %filter90.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %filter90.i, align 8
  %conv92.i = zext i8 %87 to i32
  %88 = and i32 %conv92.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %89 = icmp ne i32 %88, 0
  %sub.i = add nuw nsw i32 %conv92.i, 255
  %and108.i = and i32 %sub.i, %conv92.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp ne i32 %and108.i, 0
  %narrow.i = select i1 %89, i1 true, i1 %tobool109.not.i
  %.sink.i = zext i1 %narrow.i to i8
  %flex111.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %call7.i.i, i32 0, i32 4
  %90 = ptrtoint ptr %flex111.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %.sink.i, ptr %flex111.i, align 2
  %nfc_rule_lock = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 49
  tail call void @mutex_lock_nested(ptr noundef %nfc_rule_lock, i32 noundef 0) #16
  %91 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adapter, align 8
  %93 = ptrtoint ptr %filter90.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %filter90.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i135 = icmp eq i8 %94, 0
  br i1 %tobool.not.i135, label %do.body1.i, label %if.end9.i

do.body1.i:                                       ; preds = %igc_ethtool_init_nfc_rule.exit
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_ethtool_check_nfc_rule.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_ethtool_add_nfc_rule, %if.then6.i)) #16
          to label %err96 [label %if.then6.i], !srcloc !96

if.then6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_ethtool_check_nfc_rule.__UNIQUE_ID_ddebug365, ptr noundef %92, ptr noundef nonnull @.str.22) #16
  br label %err96

if.end9.i:                                        ; preds = %igc_ethtool_init_nfc_rule.exit
  %nfc_rule_list.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 50
  %95 = ptrtoint ptr %nfc_rule_list.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %tmp.061.i = load ptr, ptr %nfc_rule_list.i, align 4
  %cmp.not62.i = icmp eq ptr %tmp.061.i, %nfc_rule_list.i
  br i1 %cmp.not62.i, label %if.end9.i.if.end85_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

if.end9.i.if.end85_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %tmp.063.i = phi ptr [ %tmp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tmp.061.i, %if.end9.i.for.body.i_crit_edge ]
  %filter15.i = getelementptr inbounds %struct.igc_nfc_rule, ptr %tmp.063.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(42) %filter90.i, ptr noundef dereferenceable(42) %filter15.i, i32 42) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i137, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i137:                               ; preds = %for.body.i
  %location.i136 = getelementptr inbounds %struct.igc_nfc_rule, ptr %tmp.063.i, i32 0, i32 2
  %96 = ptrtoint ptr %location.i136 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %location.i136, align 4
  %98 = ptrtoint ptr %location1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %location1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp19.not.i = icmp eq i32 %97, %99
  br i1 %cmp19.not.i, label %land.lhs.true.i137.for.inc.i_crit_edge, label %do.body22.i

land.lhs.true.i137.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

do.body22.i:                                      ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_ethtool_check_nfc_rule.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_ethtool_add_nfc_rule, %if.then34.i)) #16
          to label %err96 [label %if.then34.i], !srcloc !96

if.then34.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_ethtool_check_nfc_rule.__UNIQUE_ID_ddebug366, ptr noundef %92, ptr noundef nonnull @.str.23) #16
  br label %err96

for.inc.i:                                        ; preds = %land.lhs.true.i137.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %100 = ptrtoint ptr %tmp.063.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %tmp.0.i = load ptr, ptr %tmp.063.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %nfc_rule_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end85_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.end85_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.end85:                                         ; preds = %for.inc.i.if.end85_crit_edge, %if.end9.i.if.end85_crit_edge
  %101 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %location, align 8
  %call87 = tail call ptr @igc_get_nfc_rule(ptr noundef %adapter, i32 noundef %102) #16
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.end85.if.end90_crit_edge, label %if.then89

if.end85.if.end90_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @igc_del_nfc_rule(ptr noundef %adapter, ptr noundef nonnull %call87) #16
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end85.if.end90_crit_edge
  %call91 = tail call i32 @igc_add_nfc_rule(ptr noundef %adapter, ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.err96_crit_edge

if.end90.err96_crit_edge:                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %err96

if.end94:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef %nfc_rule_lock) #16
  br label %cleanup

err96:                                            ; preds = %if.end90.err96_crit_edge, %if.then34.i, %do.body22.i, %if.then6.i, %do.body1.i
  %err.0 = phi i32 [ %call91, %if.end90.err96_crit_edge ], [ -22, %if.then6.i ], [ -17, %if.then34.i ], [ -22, %do.body1.i ], [ -17, %do.body22.i ]
  tail call void @mutex_unlock(ptr noundef %nfc_rule_lock) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %err96, %if.end94, %if.end77.cleanup_crit_edge, %if.then71, %do.body59, %if.then48, %do.body36, %if.then25, %do.body13, %if.then6, %do.body2
  %retval.0 = phi i32 [ %err.0, %err96 ], [ 0, %if.end94 ], [ -95, %if.then6 ], [ -95, %if.then25 ], [ -22, %if.then48 ], [ -22, %if.then71 ], [ -12, %if.end77.cleanup_crit_edge ], [ -95, %do.body2 ], [ -95, %do.body13 ], [ -22, %do.body36 ], [ -22, %do.body59 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_del_nfc_rule(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_add_nfc_rule(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_get_max_rss_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_set_flag_queue_pairs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_reinit_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_check_reset_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @igc_ethtool_ops, !1, !"igc_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1935, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 148, i32 5}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1884, i32 32}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1898, i32 32}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1904, i32 32}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1920, i32 32}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 780, i32 24}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 781, i32 24}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 782, i32 24}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 785, i32 24}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 786, i32 24}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 787, i32 24}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 788, i32 24}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 789, i32 24}
!28 = !{ptr @igc_gstrings_test, !29, !"igc_gstrings_test", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 98, i32 19}
!30 = !{ptr @igc_gstrings_stats, !31, !"igc_gstrings_stats", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 25, i32 31}
!32 = !{ptr @igc_gstrings_net_stats, !33, !"igc_gstrings_net_stats", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 78, i32 31}
!34 = !{ptr @igc_priv_flags_strings, !35, !"igc_priv_flags_strings", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 123, i32 19}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1177, i32 8}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1309, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug367, !39, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1314, i32 3}
!46 = !{ptr @igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug368, !45, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1319, i32 3}
!49 = !{ptr @igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug369, !48, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1324, i32 3}
!52 = !{ptr @igc_ethtool_add_nfc_rule.__UNIQUE_ID_ddebug370, !51, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1283, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @igc_ethtool_check_nfc_rule.__UNIQUE_ID_ddebug365, !54, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1291, i32 4}
!59 = !{ptr @igc_ethtool_check_nfc_rule.__UNIQUE_ID_ddebug366, !58, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1635, i32 7}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1642, i32 8}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1649, i32 8}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1654, i32 7}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1816, i32 19}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1827, i32 20}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/igc/igc_ethtool.c", i32 1850, i32 20}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2157054049}
!84 = !{i64 6601747}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i8 0, i8 2}
!87 = !{i64 2150414498}
!88 = !{i64 2157032988}
!89 = !{!"auto-init"}
!90 = !{i64 960128, i64 960189}
!91 = !{i64 962860}
!92 = !{i64 963145}
!93 = !{i64 2150994035}
!94 = !{i64 2150993877}
!95 = !{i64 2150994205}
!96 = !{i64 2149113693, i64 2149113698, i64 2149113711, i64 2149113755, i64 2149113789, i64 2149113810}
