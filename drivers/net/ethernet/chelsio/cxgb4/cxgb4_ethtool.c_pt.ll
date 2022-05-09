; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.192, i32 }
%struct.atomic_t = type { i32 }
%union.anon.192 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.cxgb4_ethtool_filter = type { i32, ptr }
%struct.cxgb4_ethtool_filter_info = type { ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.169, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.191, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.169 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.191 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.168, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.168 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.lb_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sge_eohw_txq = type { %struct.spinlock, %struct.sge_txq, ptr, i32, i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.184, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.184 = type { i32 }
%struct.ethtool_rx_flow_spec_input = type { ptr, i32 }
%struct.ch_filter_specification = type { i32, [6 x i8], [6 x i8], i16, [16 x i8], [16 x i8], i16, i16, i32, i64, [12 x i8], %struct.ch_filter_tuple, %struct.ch_filter_tuple }
%struct.ch_filter_tuple = type { i32, i32, i24, i16, [2 x i8], [3 x i8], [16 x i8], [16 x i8], i16, i16 }
%struct.filter_entry = type { i8, ptr, ptr, ptr, ptr, i32, %struct.ch_filter_specification }
%struct.ethtool_flash = type { i32, i32, [128 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.fw_hdr = type { i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [23 x i32] }
%struct.legacy_pci_rom_hdr = type { [2 x i8], i8, [4 x i8], i8, [16 x i8], i16 }
%struct.cxgb4_pcir_data = type { i32, i16, i16, [2 x i8], [2 x i8], i8, [3 x i8], [2 x i8], [2 x i8], i8, i8, [2 x i8] }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.185, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.185 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }

@cxgb_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 595, i32 0, ptr @get_drvinfo, ptr @get_regs_len, ptr @get_regs, ptr null, ptr null, ptr @get_msglevel, ptr @set_msglevel, ptr @restart_autoneg, ptr @ethtool_op_get_link, ptr null, ptr @get_eeprom_len, ptr @get_eeprom, ptr @set_eeprom, ptr @get_coalesce, ptr @set_coalesce, ptr @get_sge_param, ptr @set_sge_param, ptr null, ptr @get_pauseparam, ptr @set_pauseparam, ptr @cxgb4_self_test, ptr @get_strings, ptr @identify_port, ptr @get_stats, ptr null, ptr null, ptr @cxgb4_get_priv_flags, ptr @cxgb4_set_priv_flags, ptr @get_sset_count, ptr @get_rxnfc, ptr @set_rxnfc, ptr @set_flash, ptr null, ptr null, ptr @get_rss_table_size, ptr @get_rss_table, ptr @set_rss_table, ptr null, ptr null, ptr null, ptr null, ptr @get_dump_flag, ptr @get_dump_data, ptr @set_dump, ptr @get_ts_info, ptr @cxgb4_get_module_info, ptr @cxgb4_get_module_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_link_ksettings, ptr @set_link_ksettings, ptr null, ptr @get_fecparam, ptr @set_fecparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cxgb4_driver_name = external dso_local global [0 x i8], align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%u.%u.%u.%u, TP %u.%u.%u.%u\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u.%u.%u.%u\00", [20 x i8] zeroinitializer }, align 32
@stats_strings = internal constant { [73 x [32 x i8]], [576 x i8] } { [73 x [32 x i8]] [[32 x i8] c"tx_octets_ok           \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_frames_ok           \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_broadcast_frames    \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_multicast_frames    \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_unicast_frames      \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_error_frames        \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_frames_64           \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_frames_65_to_127    \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_frames_128_to_255   \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_frames_256_to_511   \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_frames_512_to_1023  \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_frames_1024_to_1518 \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_frames_1519_to_max  \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_frames_dropped      \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_frames        \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ppp0_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ppp1_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ppp2_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ppp3_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ppp4_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ppp5_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ppp6_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ppp7_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_octets_ok           \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frames_ok           \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_broadcast_frames    \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_multicast_frames    \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_unicast_frames      \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frames_too_long     \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_jabber_errors       \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_fcs_errors          \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_length_errors       \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_symbol_errors       \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_runt_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frames_64           \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frames_65_to_127    \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frames_128_to_255   \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frames_256_to_511   \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frames_512_to_1023  \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frames_1024_to_1518 \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frames_1519_to_max  \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_frames        \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ppp0_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ppp1_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ppp2_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ppp3_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ppp4_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ppp5_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ppp6_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ppp7_frames         \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bg0_frames_dropped  \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bg1_frames_dropped  \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bg2_frames_dropped  \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bg3_frames_dropped  \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bg0_frames_trunc    \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bg1_frames_trunc    \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bg2_frames_trunc    \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bg3_frames_trunc    \00\00\00\00\00\00\00\00\00", [32 x i8] c"tso                    \00\00\00\00\00\00\00\00\00", [32 x i8] c"uso                    \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_csum_offload        \00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_csum_good           \00\00\00\00\00\00\00\00\00", [32 x i8] c"vlan_extractions       \00\00\00\00\00\00\00\00\00", [32 x i8] c"vlan_insertions        \00\00\00\00\00\00\00\00\00", [32 x i8] c"gro_packets            \00\00\00\00\00\00\00\00\00", [32 x i8] c"gro_merged             \00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_tls_encrypted_packets\00\00\00\00\00\00\00\00", [32 x i8] c"tx_tls_encrypted_bytes  \00\00\00\00\00\00\00\00", [32 x i8] c"tx_tls_ctx              \00\00\00\00\00\00\00\00", [32 x i8] c"tx_tls_ooo              \00\00\00\00\00\00\00\00", [32 x i8] c"tx_tls_skip_no_sync_data\00\00\00\00\00\00\00\00", [32 x i8] c"tx_tls_drop_no_sync_data\00\00\00\00\00\00\00\00", [32 x i8] c"tx_tls_drop_bypass_req  \00\00\00\00\00\00\00\00"], [576 x i8] zeroinitializer }, align 32
@adapter_stats_strings = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"db_drop                \00\00\00\00\00\00\00\00\00", [32 x i8] c"db_full                \00\00\00\00\00\00\00\00\00", [32 x i8] c"db_empty               \00\00\00\00\00\00\00\00\00", [32 x i8] c"write_coal_success     \00\00\00\00\00\00\00\00\00", [32 x i8] c"write_coal_fail        \00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@loopback_stats_strings = internal constant { [23 x [32 x i8]], [160 x i8] } { [23 x [32 x i8]] [[32 x i8] c"-------Loopback----------- \00\00\00\00\00", [32 x i8] c"octets_ok              \00\00\00\00\00\00\00\00\00", [32 x i8] c"frames_ok              \00\00\00\00\00\00\00\00\00", [32 x i8] c"bcast_frames           \00\00\00\00\00\00\00\00\00", [32 x i8] c"mcast_frames           \00\00\00\00\00\00\00\00\00", [32 x i8] c"ucast_frames           \00\00\00\00\00\00\00\00\00", [32 x i8] c"error_frames           \00\00\00\00\00\00\00\00\00", [32 x i8] c"frames_64              \00\00\00\00\00\00\00\00\00", [32 x i8] c"frames_65_to_127       \00\00\00\00\00\00\00\00\00", [32 x i8] c"frames_128_to_255      \00\00\00\00\00\00\00\00\00", [32 x i8] c"frames_256_to_511      \00\00\00\00\00\00\00\00\00", [32 x i8] c"frames_512_to_1023     \00\00\00\00\00\00\00\00\00", [32 x i8] c"frames_1024_to_1518    \00\00\00\00\00\00\00\00\00", [32 x i8] c"frames_1519_to_max     \00\00\00\00\00\00\00\00\00", [32 x i8] c"frames_dropped         \00\00\00\00\00\00\00\00\00", [32 x i8] c"bg0_frames_dropped     \00\00\00\00\00\00\00\00\00", [32 x i8] c"bg1_frames_dropped     \00\00\00\00\00\00\00\00\00", [32 x i8] c"bg2_frames_dropped     \00\00\00\00\00\00\00\00\00", [32 x i8] c"bg3_frames_dropped     \00\00\00\00\00\00\00\00\00", [32 x i8] c"bg0_frames_trunc       \00\00\00\00\00\00\00\00\00", [32 x i8] c"bg1_frames_trunc       \00\00\00\00\00\00\00\00\00", [32 x i8] c"bg2_frames_trunc       \00\00\00\00\00\00\00\00\00", [32 x i8] c"bg3_frames_trunc       \00\00\00\00\00\00\00\00\00"], [160 x i8] zeroinitializer }, align 32
@cxgb4_priv_flags_strings = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"port_tx_vm_wr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@cxgb4_selftest_strings = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"Loop back test (offline)\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@cxgb4_ntuple_set_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1887, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Location must be < %u\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxgb4_ntuple_set_filter\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxgb4_ntuple_set_filter._entry_ptr = internal global ptr @cxgb4_ntuple_set_filter._entry, section ".printk_index", align 4
@cxgb4_ntuple_del_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.7, ptr @.str.4, i32 1837, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxgb4_ntuple_del_filter\00", [40 x i8] zeroinitializer }, align 32
@cxgb4_ntuple_del_filter._entry_ptr = internal global ptr @cxgb4_ntuple_del_filter._entry, section ".printk_index", align 4
@set_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 1515, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"cxgb4 driver needs to be loaded as MASTER to support FW flash\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"set_flash\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@set_flash._entry_ptr = internal global ptr @set_flash._entry, section ".printk_index", align 4
@cxgb4_ethtool_flash_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 1421, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"loading %s successful, reload cxgb4 driver\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cxgb4_ethtool_flash_region\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cxgb4_ethtool_flash_region._entry_ptr = internal global ptr @cxgb4_ethtool_flash_region._entry, section ".printk_index", align 4
@flash_region_strings = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [44 x i8] zeroinitializer }, align 32
@cxgb4_ethtool_flash_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 1389, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to flash firmware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxgb4_ethtool_flash_fw\00", [41 x i8] zeroinitializer }, align 32
@cxgb4_ethtool_flash_fw._entry_ptr = internal global ptr @cxgb4_ethtool_flash_fw._entry, section ".printk_index", align 4
@cxgb4_ethtool_flash_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 1344, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PHY signature mismatch\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxgb4_ethtool_flash_phy\00", [40 x i8] zeroinitializer }, align 32
@cxgb4_ethtool_flash_phy._entry_ptr = internal global ptr @cxgb4_ethtool_flash_phy._entry, section ".printk_index", align 4
@cxgb4_ethtool_flash_phy._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 1357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Set FW to RESET for flashing PHY FW failed. ret: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cxgb4_ethtool_flash_phy._entry_ptr.20 = internal global ptr @cxgb4_ethtool_flash_phy._entry.18, section ".printk_index", align 4
@cxgb4_ethtool_flash_phy._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.4, i32 1364, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to load PHY FW. ret: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cxgb4_ethtool_flash_phy._entry_ptr.23 = internal global ptr @cxgb4_ethtool_flash_phy._entry.21, section ".printk_index", align 4
@cxgb4_ethtool_flash_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 1317, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to load boot image\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cxgb4_ethtool_flash_boot\00", [39 x i8] zeroinitializer }, align 32
@cxgb4_ethtool_flash_boot._entry_ptr = internal global ptr @cxgb4_ethtool_flash_boot._entry, section ".printk_index", align 4
@cxgb4_ethtool_flash_bootcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 1296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to load boot cfg image\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cxgb4_ethtool_flash_bootcfg\00", [36 x i8] zeroinitializer }, align 32
@cxgb4_ethtool_flash_bootcfg._entry_ptr = internal global ptr @cxgb4_ethtool_flash_bootcfg._entry, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"All\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PHY Firmware\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Boot\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Boot CFG\00", [23 x i8] zeroinitializer }, align 32
@switch.table.get_sset_count = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 101, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.get_link_ksettings = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\03\03\03\05\05\03", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.35 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 49, i64 50]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 28, i64 31]
@__sancov_gen_cov_switch_values.38 = internal global [10 x i64] [i64 8, i64 32, i64 9, i64 12, i64 13, i64 14, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.39 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 9, i64 12, i64 13, i64 14, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.40 = internal global [11 x i64] [i64 9, i64 32, i64 100, i64 1000, i64 10000, i64 25000, i64 40000, i64 50000, i64 100000, i64 200000, i64 400000]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [24 x i64] [i64 22, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22]
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"cxgb_ethtool_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 2171, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 209, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 221, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"stats_strings\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 45, i32 19 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"adapter_stats_strings\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 131, i32 13 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"loopback_stats_strings\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 139, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant [25 x i8] c"cxgb4_priv_flags_strings\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 165, i32 19 }
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"cxgb4_selftest_strings\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 33, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1885, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1835, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1514, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1419, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"flash_region_strings\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 37, i32 27 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1388, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1344, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1355, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1363, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1317, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1296, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 38, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 39, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 40, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 41, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [54 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 42, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [28 x i8] c"switch.table.get_sset_count\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [32 x i8] c"switch.table.get_link_ksettings\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @cxgb4_ethtool_flash_boot._entry, ptr @cxgb4_ethtool_flash_boot._entry_ptr, ptr @cxgb4_ethtool_flash_bootcfg._entry, ptr @cxgb4_ethtool_flash_bootcfg._entry_ptr, ptr @cxgb4_ethtool_flash_fw._entry, ptr @cxgb4_ethtool_flash_fw._entry_ptr, ptr @cxgb4_ethtool_flash_phy._entry, ptr @cxgb4_ethtool_flash_phy._entry.18, ptr @cxgb4_ethtool_flash_phy._entry.21, ptr @cxgb4_ethtool_flash_phy._entry_ptr, ptr @cxgb4_ethtool_flash_phy._entry_ptr.20, ptr @cxgb4_ethtool_flash_phy._entry_ptr.23, ptr @cxgb4_ethtool_flash_region._entry, ptr @cxgb4_ethtool_flash_region._entry_ptr, ptr @cxgb4_ntuple_del_filter._entry, ptr @cxgb4_ntuple_del_filter._entry_ptr, ptr @cxgb4_ntuple_set_filter._entry, ptr @cxgb4_ntuple_set_filter._entry_ptr, ptr @set_flash._entry, ptr @set_flash._entry_ptr, ptr @cxgb_ethtool_ops, ptr @.str, ptr @.str.1, ptr @stats_strings, ptr @adapter_stats_strings, ptr @loopback_stats_strings, ptr @cxgb4_priv_flags_strings, ptr @cxgb4_selftest_strings, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @flash_region_strings, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.get_sset_count, ptr @switch.table.get_link_ksettings], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_strings to i32), i32 2336, i32 2912, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_stats_strings to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_stats_strings to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_priv_flags_strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_selftest_strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ntuple_set_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ntuple_del_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ethtool_flash_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_region_strings to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ethtool_flash_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ethtool_flash_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ethtool_flash_phy._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ethtool_flash_phy._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ethtool_flash_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ethtool_flash_bootcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_sset_count to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_link_ksettings to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_cleanup_ethtool_filters(ptr nocapture noundef readonly %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_filters = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 88
  %0 = ptrtoint ptr %ethtool_filters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethtool_filters, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %port = getelementptr inbounds %struct.cxgb4_ethtool_filter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %for.cond.preheader

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

for.cond.preheader:                               ; preds = %if.end
  %nports = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %4 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp21.not = icmp eq i8 %5, 0
  br i1 %cmp21.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %3, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @kvfree(ptr noundef %7) #19
  %bmap = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %3, i32 %indvars.iv, i32 1
  %8 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmap, align 4
  tail call void @kfree(ptr noundef %9) #19
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %10 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nports, align 4
  %12 = zext i8 %11 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #19
  br label %if.end8

if.end8:                                          ; preds = %for.end, %if.end.if.end8_crit_edge
  %13 = ptrtoint ptr %ethtool_filters to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ethtool_filters, align 4
  tail call void @kfree(ptr noundef %14) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_init_ethtool_filters(ptr nocapture noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %nports = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %1 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nports, align 4
  %conv = zext i8 %2 to i32
  %3 = mul nuw nsw i32 %conv, 12
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #23
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end.free_eth_filter_crit_edge, label %if.end5

if.end.free_eth_filter_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_eth_filter

if.end5:                                          ; preds = %if.end
  %port = getelementptr inbounds %struct.cxgb4_ethtool_filter, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %port, align 4
  %nhpftids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 14
  %5 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nhpftids, align 8
  %nftids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 18
  %7 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nftids, align 8
  %add = add i32 %8, %6
  %hash_filter.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 28
  %9 = ptrtoint ptr %hash_filter.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hash_filter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %if.end5.if.end13_crit_edge, label %if.then8

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  %nhash = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 7
  %11 = ptrtoint ptr %nhash to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nhash, align 4
  %stid_base = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 6
  %13 = ptrtoint ptr %stid_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stid_base, align 8
  %tid_base = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 1
  %15 = ptrtoint ptr %tid_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tid_base, align 4
  %sub = add i32 %12, %add
  %add11 = add i32 %sub, %14
  %add12 = sub i32 %add11, %16
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end5.if.end13_crit_edge
  %nentries.0 = phi i32 [ %add12, %if.then8 ], [ %add, %if.end5.if.end13_crit_edge ]
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %nentries.0, ptr %call7.i.i, align 8
  %18 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp124.not = icmp eq i8 %19, 0
  br i1 %cmp124.not, label %if.end13.for.end_crit_edge, label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %sub28 = add i32 %nentries.0, 31
  %20 = lshr i32 %sub28, 3
  %21 = and i32 %20, 536870908
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %nentries.0, i32 noundef 3520, i32 noundef -1) #23
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port, align 4
  %arrayidx = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %23, i32 %i.0125
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i, ptr %arrayidx, align 4
  %25 = load ptr, ptr %port, align 4
  %arrayidx22 = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %25, i32 %i.0125
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx22, align 4
  %tobool24.not = icmp eq ptr %27, null
  br i1 %tobool24.not, label %for.body.free_eth_finfo_crit_edge, label %if.end7.i.i113

for.body.free_eth_finfo_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_eth_finfo

if.end7.i.i113:                                   ; preds = %for.body
  %call8.i.i112 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #23
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port, align 4
  %bmap = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %29, i32 %i.0125, i32 1
  %30 = ptrtoint ptr %bmap to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i112, ptr %bmap, align 4
  %31 = load ptr, ptr %port, align 4
  %bmap34 = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %31, i32 %i.0125, i32 1
  %32 = ptrtoint ptr %bmap34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bmap34, align 4
  %tobool35.not = icmp eq ptr %33, null
  br i1 %tobool35.not, label %if.end7.i.i113.free_eth_finfo_crit_edge, label %for.inc

if.end7.i.i113.free_eth_finfo_crit_edge:          ; preds = %if.end7.i.i113
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_eth_finfo

for.inc:                                          ; preds = %if.end7.i.i113
  %inc = add nuw nsw i32 %i.0125, 1
  %34 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %nports, align 4
  %conv17 = zext i8 %35 to i32
  %cmp = icmp ult i32 %inc, %conv17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge
  %ethtool_filters = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 88
  %36 = ptrtoint ptr %ethtool_filters to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %ethtool_filters, align 4
  br label %cleanup

free_eth_finfo:                                   ; preds = %if.end7.i.i113.free_eth_finfo_crit_edge, %for.body.free_eth_finfo_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0125)
  %cmp38.not126 = icmp eq i32 %i.0125, 0
  br i1 %cmp38.not126, label %free_eth_finfo.while.end_crit_edge, label %free_eth_finfo.while.body_crit_edge

free_eth_finfo.while.body_crit_edge:              ; preds = %free_eth_finfo
  br label %while.body

free_eth_finfo.while.end_crit_edge:               ; preds = %free_eth_finfo
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %free_eth_finfo.while.body_crit_edge
  %i.1127 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.0125, %free_eth_finfo.while.body_crit_edge ]
  %dec = add nsw i32 %i.1127, -1
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port, align 4
  %bmap42 = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %38, i32 %dec, i32 1
  %39 = ptrtoint ptr %bmap42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bmap42, align 4
  tail call void @kfree(ptr noundef %40) #19
  %arrayidx44 = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %38, i32 %dec
  %41 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx44, align 4
  tail call void @kvfree(ptr noundef %42) #19
  %cmp38.not = icmp eq i32 %dec, 0
  br i1 %cmp38.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %free_eth_finfo.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #19
  br label %free_eth_filter

free_eth_filter:                                  ; preds = %while.end, %if.end.free_eth_filter_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #19
  br label %cleanup

cleanup:                                          ; preds = %free_eth_filter, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %free_eth_filter ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cxgb4_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cxgb_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #0 align 64 {
entry:
  %exprom_vers = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exprom_vers) #19
  %2 = ptrtoint ptr %exprom_vers to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %exprom_vers, align 4, !annotation !89
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @cxgb4_driver_name, i32 noundef 32) #19
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %entry.pci_name.exit_crit_edge ]
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #19
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call i32 @t4_get_regs_len(ptr noundef %10) #19
  %regdump_len = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 11
  %11 = ptrtoint ptr %regdump_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1.i, ptr %regdump_len, align 4
  %fw_vers = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 10
  %12 = ptrtoint ptr %fw_vers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %pci_name.exit.if.end_crit_edge, label %if.then

pci_name.exit.if.end_crit_edge:                   ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #21
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %shr = lshr i32 %13, 24
  %shr11 = lshr i32 %13, 16
  %and12 = and i32 %shr11, 255
  %shr15 = lshr i32 %13, 8
  %and16 = and i32 %shr15, 255
  %and20 = and i32 %13, 255
  %tp_vers = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 12
  %14 = ptrtoint ptr %tp_vers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tp_vers, align 4
  %shr22 = lshr i32 %15, 24
  %shr26 = lshr i32 %15, 16
  %and27 = and i32 %shr26, 255
  %shr30 = lshr i32 %15, 8
  %and31 = and i32 %shr30, 255
  %and35 = and i32 %15, 255
  %call36 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %shr, i32 noundef %and12, i32 noundef %and16, i32 noundef %and20, i32 noundef %shr22, i32 noundef %and27, i32 noundef %and31, i32 noundef %and35)
  br label %if.end

if.end:                                           ; preds = %if.then, %pci_name.exit.if.end_crit_edge
  %call37 = call i32 @t4_get_exprom_version(ptr noundef %1, ptr noundef nonnull %exprom_vers) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end.if.end50_crit_edge

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

if.then39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %erom_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 5
  %16 = ptrtoint ptr %exprom_vers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %exprom_vers, align 4
  %shr41 = lshr i32 %17, 24
  %shr43 = lshr i32 %17, 16
  %and44 = and i32 %shr43, 255
  %shr45 = lshr i32 %17, 8
  %and46 = and i32 %shr45, 255
  %and48 = and i32 %17, 255
  %call49 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %erom_version, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %shr41, i32 noundef %and44, i32 noundef %and46, i32 noundef %and48)
  br label %if.end50

if.end50:                                         ; preds = %if.then39, %if.end.if.end50_crit_edge
  %n_priv_flags = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 7
  %18 = ptrtoint ptr %n_priv_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %n_priv_flags, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exprom_vers) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_regs_len(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1 = tail call i32 @t4_get_regs_len(ptr noundef %1) #19
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_regs(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %regs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1 = tail call i32 @t4_get_regs_len(ptr noundef %1) #19
  %chip.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip.i, align 8
  %shr.i = lshr i32 %3, 4
  %and.i = and i32 %shr.i, 15
  %and3.i = shl i32 %3, 10
  %shl.i = and i32 %and3.i, 15360
  %or.i = or i32 %and.i, %shl.i
  %or4.i = or i32 %or.i, 65536
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or4.i, ptr %version, align 4
  tail call void @t4_get_regs(ptr noundef %1, ptr noundef %buf, i32 noundef %call1) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_msglevel(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 16
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @set_msglevel(ptr nocapture noundef readonly %dev, i32 noundef %val) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val, ptr %msg_enable, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @restart_autoneg(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %autoneg = getelementptr i8, ptr %dev, i32 2376
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %pf = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pf, align 4
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %8 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_chan, align 2
  %conv6 = zext i8 %9 to i32
  %call7 = tail call i32 @t4_restart_aneg(ptr noundef %5, i32 noundef %7, i32 noundef %conv6) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -11, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_eeprom_len(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 17408
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef %e, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 17408, i32 noundef 3520, i32 noundef -1) #23
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %e, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 954396940, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %e, i32 0, i32 2
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %and = and i32 %4, -4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %e, i32 0, i32 3
  %pf.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add49 = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add49)
  %cmp50 = icmp ult i32 %and, %add49
  br i1 %cmp50, label %if.end.for.body_crit_edge, label %if.end.if.then7.critedge_crit_edge

if.end.if.then7.critedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then7.critedge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

land.rhs:                                         ; preds = %eeprom_rd_phys.exit
  %add5 = add i32 %i.03051, 4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %add = add i32 %10, %8
  %cmp = icmp ult i32 %add5, %add
  br i1 %cmp, label %land.rhs.for.body_crit_edge, label %if.then7.critedge.loopexit

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.03051 = phi i32 [ %add5, %land.rhs.for.body_crit_edge ], [ %and, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pf.i, align 4
  %call.i = tail call i32 @t4_eeprom_ptov(i32 noundef %i.03051, i32 noundef %12, i32 noundef 1024) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %eeprom_rd_phys.exit, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

eeprom_rd_phys.exit:                              ; preds = %for.body
  %arrayidx = getelementptr i8, ptr %call.i.i, i32 %i.03051
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %conv8.i = zext i32 %call.i to i64
  %call1.i = tail call i32 @pci_read_vpd(ptr noundef %14, i64 noundef %conv8.i, i32 noundef 4, ptr noundef %arrayidx) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %tobool2.not = icmp sgt i32 %call1.i, -1
  br i1 %tobool2.not, label %land.rhs, label %eeprom_rd_phys.exit.if.end10_crit_edge

eeprom_rd_phys.exit.if.end10_crit_edge:           ; preds = %eeprom_rd_phys.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

if.then7.critedge.loopexit:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  %15 = tail call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #19
  br label %if.then7.critedge

if.then7.critedge:                                ; preds = %if.then7.critedge.loopexit, %if.end.if.then7.critedge_crit_edge
  %err.032.lcssa = phi i32 [ 0, %if.end.if.then7.critedge_crit_edge ], [ %15, %if.then7.critedge.loopexit ]
  %.lcssa46 = phi i32 [ %4, %if.end.if.then7.critedge_crit_edge ], [ %8, %if.then7.critedge.loopexit ]
  %.lcssa = phi i32 [ %6, %if.end.if.then7.critedge_crit_edge ], [ %10, %if.then7.critedge.loopexit ]
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %.lcssa46
  %16 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %.lcssa)
  br label %if.end10

if.end10:                                         ; preds = %if.then7.critedge, %eeprom_rd_phys.exit.if.end10_crit_edge, %for.body.if.end10_crit_edge
  %err.028 = phi i32 [ %err.032.lcssa, %if.then7.critedge ], [ %call1.i, %eeprom_rd_phys.exit.if.end10_crit_edge ], [ %call.i, %for.body.if.end10_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.028, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %eeprom, ptr noundef %data) #0 align 64 {
entry:
  %v.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 954396940, i32 %3)
  %cmp.not = icmp eq i32 %3, 954396940
  br i1 %cmp.not, label %if.end, label %entry.cleanup56_crit_edge

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup56

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %and = and i32 %5, -4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %and2 = and i32 %5, 3
  %add = add nuw nsw i32 %and2, 3
  %add3 = add i32 %add, %7
  %and4 = and i32 %add3, -4
  %pf = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.not = icmp eq i32 %9, 0
  br i1 %cmp5.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15

if.then6:                                         ; preds = %if.end
  %mul = shl i32 %9, 10
  %add8 = add i32 %mul, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add8)
  %cmp9 = icmp ult i32 %and, %add8
  br i1 %cmp9, label %if.then6.cleanup56_crit_edge, label %lor.lhs.false

if.then6.cleanup56_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup56

lor.lhs.false:                                    ; preds = %if.then6
  %add10 = add i32 %and4, %and
  %add11 = add i32 %mul, 2048
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %add11)
  %cmp12 = icmp ugt i32 %add10, %add11
  br i1 %cmp12, label %lor.lhs.false.cleanup56_crit_edge, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15

lor.lhs.false.cleanup56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup56

if.end15:                                         ; preds = %lor.lhs.false.if.end15_crit_edge, %if.end.if.end15_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp17.not = icmp eq i32 %and, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %7)
  %cmp20.not = icmp eq i32 %and4, %7
  %or.cond125 = select i1 %cmp17.not, i1 %cmp20.not, i1 false
  br i1 %or.cond125, label %if.end15.if.end39_crit_edge, label %if.then21

if.end15.if.end39_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end39

if.then21:                                        ; preds = %if.end15
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %and4, i32 noundef 3520, i32 noundef -1) #23
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then21.cleanup56_crit_edge, label %if.end24

if.then21.cleanup56_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup56

if.end24:                                         ; preds = %if.then21
  %10 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pf, align 4
  %call.i = tail call i32 @t4_eeprom_ptov(i32 noundef %and, i32 noundef %11, i32 noundef 1024) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %eeprom_rd_phys.exit, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

eeprom_rd_phys.exit:                              ; preds = %if.end24
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %conv8.i = zext i32 %call.i to i64
  %call1.i = tail call i32 @pci_read_vpd(ptr noundef %13, i64 noundef %conv8.i, i32 noundef 4, ptr noundef nonnull %call.i.i) #19
  %14 = tail call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %tobool26.not = icmp sgt i32 %call1.i, -1
  br i1 %tobool26.not, label %land.lhs.true, label %eeprom_rd_phys.exit.out_crit_edge

eeprom_rd_phys.exit.out_crit_edge:                ; preds = %eeprom_rd_phys.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

land.lhs.true:                                    ; preds = %eeprom_rd_phys.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and4)
  %cmp27 = icmp ugt i32 %and4, 4
  br i1 %cmp27, label %if.then28, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35

if.then28:                                        ; preds = %land.lhs.true
  %add29 = add i32 %and4, %and
  %sub = add i32 %add29, -4
  %15 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pf, align 4
  %call.i104 = tail call i32 @t4_eeprom_ptov(i32 noundef %sub, i32 noundef %16, i32 noundef 1024) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i104)
  %cmp.i105 = icmp sgt i32 %call.i104, -1
  br i1 %cmp.i105, label %if.end32, label %if.then28.out_crit_edge

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end32:                                         ; preds = %if.then28
  %sub30 = add i32 %and4, -4
  %arrayidx = getelementptr i8, ptr %call.i.i, i32 %sub30
  %pdev.i106 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %pdev.i106 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i106, align 4
  %conv8.i107 = zext i32 %call.i104 to i64
  %call1.i108 = tail call i32 @pci_read_vpd(ptr noundef %18, i64 noundef %conv8.i107, i32 noundef 4, ptr noundef %arrayidx) #19
  %19 = tail call i32 @llvm.smin.i32(i32 %call1.i108, i32 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i108)
  %tobool33.not = icmp sgt i32 %call1.i108, -1
  br i1 %tobool33.not, label %if.end32.if.end35_crit_edge, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35

if.end35:                                         ; preds = %if.end32.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %and37 = and i32 %21, 3
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %and37
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %24 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %23)
  br label %if.end39

if.end39:                                         ; preds = %if.end35, %if.end15.if.end39_crit_edge
  %buf.0 = phi ptr [ %call.i.i, %if.end35 ], [ %data, %if.end15.if.end39_crit_edge ]
  %call40 = tail call i32 @t4_seeprom_wp(ptr noundef %1, i1 noundef zeroext false) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.cond.preheader, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

for.cond.preheader:                               ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool45.not126 = icmp eq i32 %and4, 0
  br i1 %tobool45.not126, label %for.cond.preheader.if.then50_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then50_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then50

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pdev.i115 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %eeprom_wr_phys.exit.for.body_crit_edge, %for.body.lr.ph
  %p.0129 = phi ptr [ %buf.0, %for.body.lr.ph ], [ %incdec.ptr, %eeprom_wr_phys.exit.for.body_crit_edge ]
  %aligned_len.0128 = phi i32 [ %and4, %for.body.lr.ph ], [ %sub48, %eeprom_wr_phys.exit.for.body_crit_edge ]
  %aligned_offset.0127 = phi i32 [ %and, %for.body.lr.ph ], [ %add47, %eeprom_wr_phys.exit.for.body_crit_edge ]
  %25 = ptrtoint ptr %p.0129 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p.0129, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i)
  %27 = ptrtoint ptr %v.addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %v.addr.i, align 4
  %28 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pf, align 4
  %call.i113 = call i32 @t4_eeprom_ptov(i32 noundef %aligned_offset.0127, i32 noundef %29, i32 noundef 1024) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i113)
  %cmp.i114 = icmp sgt i32 %call.i113, -1
  br i1 %cmp.i114, label %eeprom_wr_phys.exit, label %eeprom_wr_phys.exit.thread

eeprom_wr_phys.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i)
  br label %out

eeprom_wr_phys.exit:                              ; preds = %for.body
  %30 = ptrtoint ptr %pdev.i115 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i115, align 4
  %conv8.i116 = zext i32 %call.i113 to i64
  %call1.i117 = call i32 @pci_write_vpd(ptr noundef %31, i64 noundef %conv8.i116, i32 noundef 4, ptr noundef nonnull %v.addr.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i)
  %add47 = add i32 %aligned_offset.0127, 4
  %sub48 = add i32 %aligned_len.0128, -4
  %incdec.ptr = getelementptr i32, ptr %p.0129, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i117)
  %tobool44.not = icmp sgt i32 %call1.i117, -1
  %tobool44.not.not = xor i1 %tobool44.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub48)
  %tobool45.not = icmp eq i32 %sub48, 0
  %or.cond = select i1 %tobool44.not.not, i1 true, i1 %tobool45.not
  br i1 %or.cond, label %for.end, label %eeprom_wr_phys.exit.for.body_crit_edge

eeprom_wr_phys.exit.for.body_crit_edge:           ; preds = %eeprom_wr_phys.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %eeprom_wr_phys.exit
  %32 = call i32 @llvm.smin.i32(i32 %call1.i117, i32 0) #19
  br i1 %tobool44.not, label %for.end.if.then50_crit_edge, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

for.end.if.then50_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then50

if.then50:                                        ; preds = %for.end.if.then50_crit_edge, %for.cond.preheader.if.then50_crit_edge
  %call51 = call i32 @t4_seeprom_wp(ptr noundef %1, i1 noundef zeroext true) #19
  br label %out

out:                                              ; preds = %if.then50, %for.end.out_crit_edge, %eeprom_wr_phys.exit.thread, %if.end39.out_crit_edge, %if.end32.out_crit_edge, %if.then28.out_crit_edge, %eeprom_rd_phys.exit.out_crit_edge, %if.end24.out_crit_edge
  %buf.1 = phi ptr [ %call.i.i, %if.end32.out_crit_edge ], [ %buf.0, %if.end39.out_crit_edge ], [ %buf.0, %for.end.out_crit_edge ], [ %buf.0, %if.then50 ], [ %call.i.i, %eeprom_rd_phys.exit.out_crit_edge ], [ %buf.0, %eeprom_wr_phys.exit.thread ], [ %call.i.i, %if.end24.out_crit_edge ], [ %call.i.i, %if.then28.out_crit_edge ]
  %err.2 = phi i32 [ %19, %if.end32.out_crit_edge ], [ %call40, %if.end39.out_crit_edge ], [ %32, %for.end.out_crit_edge ], [ %call51, %if.then50 ], [ %14, %eeprom_rd_phys.exit.out_crit_edge ], [ %call.i113, %eeprom_wr_phys.exit.thread ], [ %call.i, %if.end24.out_crit_edge ], [ %call.i104, %if.then28.out_crit_edge ]
  %cmp53.not = icmp eq ptr %buf.1, %data
  br i1 %cmp53.not, label %out.cleanup56_crit_edge, label %if.then54

out.cleanup56_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup56

if.then54:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  call void @kvfree(ptr noundef %buf.1) #19
  br label %cleanup56

cleanup56:                                        ; preds = %if.then54, %out.cleanup56_crit_edge, %if.then21.cleanup56_crit_edge, %lor.lhs.false.cleanup56_crit_edge, %if.then6.cleanup56_crit_edge, %entry.cleanup56_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup56_crit_edge ], [ -1, %if.then6.cleanup56_crit_edge ], [ -1, %lor.lhs.false.cleanup56_crit_edge ], [ -12, %if.then21.cleanup56_crit_edge ], [ %err.2, %if.then54 ], [ %err.2, %out.cleanup56_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %c, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %first_qset = getelementptr i8, ptr %dev, i32 2329
  %2 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %first_qset, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 3, i32 %idxprom
  %intr_params.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx, i32 0, i32 4
  %4 = ptrtoint ptr %intr_params.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %intr_params.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %5)
  %cmp.i = icmp ult i8 %5, 12
  br i1 %cmp.i, label %cond.true.i, label %entry.qtimer_val.exit_crit_edge

entry.qtimer_val.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %qtimer_val.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %6 = lshr i8 %5, 1
  %7 = zext i8 %6 to i32
  %arrayidx.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 20, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv2.i = zext i16 %9 to i32
  br label %qtimer_val.exit

qtimer_val.exit:                                  ; preds = %cond.true.i, %entry.qtimer_val.exit_crit_edge
  %cond.i = phi i32 [ %conv2.i, %cond.true.i ], [ 0, %entry.qtimer_val.exit_crit_edge ]
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 1
  %10 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i, ptr %rx_coalesce_usecs, align 4
  %11 = ptrtoint ptr %intr_params.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %intr_params.i, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %qtimer_val.exit.cond.end_crit_edge, label %cond.true

qtimer_val.exit.cond.end_crit_edge:               ; preds = %qtimer_val.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

cond.true:                                        ; preds = %qtimer_val.exit
  call void @__sanitizer_cov_trace_pc() #21
  %pktcnt_idx = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx, i32 0, i32 7
  %14 = ptrtoint ptr %pktcnt_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pktcnt_idx, align 4
  %idxprom3 = zext i8 %15 to i32
  %arrayidx4 = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 21, i32 %idxprom3
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %qtimer_val.exit.cond.end_crit_edge
  %cond = phi i32 [ %conv5, %cond.true ], [ 0, %qtimer_val.exit.cond.end_crit_edge ]
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 2
  %18 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %rx_max_coalesced_frames, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %21 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %first_qset, align 1
  %idxprom.i = zext i8 %22 to i32
  %adaptive_rx.i = getelementptr %struct.adapter, ptr %20, i32 0, i32 22, i32 3, i32 %idxprom.i, i32 0, i32 6
  %23 = ptrtoint ptr %adaptive_rx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %adaptive_rx.i, align 1
  %conv.i = zext i8 %24 to i32
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 10
  %25 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i, ptr %use_adaptive_rx_coalesce, align 4
  %26 = load ptr, ptr %add.ptr.i, align 8
  %flags.i = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %28, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.end.get_dbqtimer_tick.exit_crit_edge, label %if.end.i

cond.end.get_dbqtimer_tick.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_dbqtimer_tick.exit

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  %dbqtimer_tick.i = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 22, i32 22
  %29 = ptrtoint ptr %dbqtimer_tick.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dbqtimer_tick.i, align 2
  %conv.i22 = zext i16 %30 to i32
  br label %get_dbqtimer_tick.exit

get_dbqtimer_tick.exit:                           ; preds = %if.end.i, %cond.end.get_dbqtimer_tick.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i22, %if.end.i ], [ 0, %cond.end.get_dbqtimer_tick.exit_crit_edge ]
  %tx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 7
  %31 = ptrtoint ptr %tx_coalesce_usecs_irq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i, ptr %tx_coalesce_usecs_irq, align 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %flags.i24 = getelementptr inbounds %struct.adapter, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i24, align 32
  %and.i25 = and i32 %35, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %get_dbqtimer_tick.exit.get_dbqtimer.exit_crit_edge, label %if.end.i30

get_dbqtimer_tick.exit.get_dbqtimer.exit_crit_edge: ; preds = %get_dbqtimer_tick.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_dbqtimer.exit

if.end.i30:                                       ; preds = %get_dbqtimer_tick.exit
  call void @__sanitizer_cov_trace_pc() #21
  %sge.i = getelementptr inbounds %struct.adapter, ptr %33, i32 0, i32 22
  %36 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %first_qset, align 1
  %idxprom.i28 = zext i8 %37 to i32
  %dbqtimerix.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i, i32 0, i32 %idxprom.i28, i32 4
  %38 = ptrtoint ptr %dbqtimerix.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dbqtimerix.i, align 4
  %arrayidx2.i = getelementptr %struct.adapter, ptr %33, i32 0, i32 22, i32 23, i32 %39
  %40 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx2.i, align 2
  %conv.i29 = zext i16 %41 to i32
  br label %get_dbqtimer.exit

get_dbqtimer.exit:                                ; preds = %if.end.i30, %get_dbqtimer_tick.exit.get_dbqtimer.exit_crit_edge
  %retval.0.i31 = phi i32 [ %conv.i29, %if.end.i30 ], [ 0, %get_dbqtimer_tick.exit.get_dbqtimer.exit_crit_edge ]
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 5
  %42 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i31, ptr %tx_coalesce_usecs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %coalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %param.i57.i = alloca i32, align 4
  %val.i58.i = alloca i32, align 4
  %param.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %timer.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nqsets.i = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nqsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp2.not.i = icmp eq i8 %1, 0
  br i1 %cmp2.not.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 10
  %2 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  %first_qset.i = getelementptr i8, ptr %dev, i32 2329
  %6 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %first_qset.i, align 1
  %idxprom.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr %struct.adapter, ptr %5, i32 0, i32 22, i32 3, i32 %idxprom.i
  %conv2.i = trunc i32 %3 to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %q.04.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %adaptive_rx3.i = getelementptr inbounds %struct.sge_rspq, ptr %q.04.i, i32 0, i32 6
  %8 = ptrtoint ptr %adaptive_rx3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2.i, ptr %adaptive_rx3.i, align 1
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %incdec.ptr.i = getelementptr %struct.sge_eth_rxq, ptr %q.04.i, i32 1
  %9 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nqsets.i, align 8
  %conv.i = zext i8 %10 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %set_adaptive_rx_setting.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

set_adaptive_rx_setting.exit:                     ; preds = %for.body.i
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 1
  %11 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_coalesce_usecs, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 2
  %13 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp13.not.i = icmp eq i8 %10, 0
  br i1 %cmp13.not.i, label %set_adaptive_rx_setting.exit.if.end_crit_edge, label %for.body.preheader.i

set_adaptive_rx_setting.exit.if.end_crit_edge:    ; preds = %set_adaptive_rx_setting.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

for.body.preheader.i:                             ; preds = %set_adaptive_rx_setting.exit
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i, align 8
  %17 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %first_qset.i, align 1
  %idxprom.i13 = zext i8 %18 to i32
  %arrayidx.i14 = getelementptr %struct.adapter, ptr %16, i32 0, i32 22, i32 3, i32 %idxprom.i13
  br label %for.body.i15

for.body.i15:                                     ; preds = %for.inc.i.for.body.i15_crit_edge, %for.body.preheader.i
  %q.015.i = phi ptr [ %incdec.ptr.i17, %for.inc.i.for.body.i15_crit_edge ], [ %arrayidx.i14, %for.body.preheader.i ]
  %i.014.i = phi i32 [ %inc.i16, %for.inc.i.for.body.i15_crit_edge ], [ 0, %for.body.preheader.i ]
  %call2.i = tail call i32 @cxgb4_set_rspq_intr_params(ptr noundef %q.015.i, i32 noundef %12, i32 noundef %14) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i15.cleanup_crit_edge

for.body.i15.cleanup_crit_edge:                   ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i15
  %inc.i16 = add nuw nsw i32 %i.014.i, 1
  %incdec.ptr.i17 = getelementptr %struct.sge_eth_rxq, ptr %q.015.i, i32 1
  %19 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nqsets.i, align 8
  %conv.i18 = zext i8 %20 to i32
  %cmp.i19 = icmp ult i32 %inc.i16, %conv.i18
  br i1 %cmp.i19, label %for.inc.i.for.body.i15_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

for.inc.i.for.body.i15_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i15

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %set_adaptive_rx_setting.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 7
  %21 = ptrtoint ptr %tx_coalesce_usecs_irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_coalesce_usecs_irq, align 4
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 5
  %23 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_coalesce_usecs, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %dev, i32 2304
  %25 = ptrtoint ptr %add.ptr.i.i20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i.i20, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %timer.i) #19
  %nports.i = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 15, i32 20
  %27 = call ptr @memset(ptr %timer.i, i32 255, i32 16)
  %28 = ptrtoint ptr %nports.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nports.i, align 4
  %conv.i21 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp75.not.i = icmp eq i8 %29, 0
  br i1 %cmp75.not.i, label %if.end.for.end.i_crit_edge, label %for.body.lr.ph.i24

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.lr.ph.i24:                               ; preds = %if.end
  %port_id.i = getelementptr i8, ptr %dev, i32 2325
  %30 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_id.i, align 1
  %conv2.i22 = zext i8 %31 to i32
  %arrayidx.i23 = getelementptr [4 x i32], ptr %timer.i, i32 0, i32 %conv2.i22
  br label %for.body.i25

for.body.i25:                                     ; preds = %for.inc.i27.for.body.i25_crit_edge, %for.body.lr.ph.i24
  %port.076.i = phi i32 [ 0, %for.body.lr.ph.i24 ], [ %inc.i26, %for.inc.i27.for.body.i25_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %port.076.i, i32 %conv2.i22)
  %cmp3.i = icmp eq i32 %port.076.i, %conv2.i22
  br i1 %cmp3.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #21
  %32 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %24, ptr %arrayidx.i23, align 4
  br label %for.inc.i27

if.else.i:                                        ; preds = %for.body.i25
  %arrayidx6.i = getelementptr %struct.adapter, ptr %26, i32 0, i32 23, i32 %port.076.i
  %33 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx6.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 2304
  %35 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.adapter, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i.i, align 32
  %and.i.i = and i32 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.get_dbqtimer.exit.i_crit_edge, label %if.end.i.i

if.else.i.get_dbqtimer.exit.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_dbqtimer.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %sge.i.i = getelementptr inbounds %struct.adapter, ptr %36, i32 0, i32 22
  %first_qset.i.i = getelementptr i8, ptr %34, i32 2329
  %39 = ptrtoint ptr %first_qset.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %first_qset.i.i, align 1
  %idxprom.i.i = zext i8 %40 to i32
  %dbqtimerix.i.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i.i, i32 0, i32 %idxprom.i.i, i32 4
  %41 = ptrtoint ptr %dbqtimerix.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dbqtimerix.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.adapter, ptr %36, i32 0, i32 22, i32 23, i32 %42
  %43 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx2.i.i, align 2
  %conv.i.i = zext i16 %44 to i32
  br label %get_dbqtimer.exit.i

get_dbqtimer.exit.i:                              ; preds = %if.end.i.i, %if.else.i.get_dbqtimer.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ 0, %if.else.i.get_dbqtimer.exit.i_crit_edge ]
  %arrayidx8.i = getelementptr [4 x i32], ptr %timer.i, i32 0, i32 %port.076.i
  %45 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i.i, ptr %arrayidx8.i, align 4
  br label %for.inc.i27

for.inc.i27:                                      ; preds = %get_dbqtimer.exit.i, %if.then.i
  %inc.i26 = add nuw nsw i32 %port.076.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i26, %conv.i21
  br i1 %exitcond.not.i, label %for.inc.i27.for.end.i_crit_edge, label %for.inc.i27.for.body.i25_crit_edge

for.inc.i27.for.body.i25_crit_edge:               ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i25

for.inc.i27.for.end.i_crit_edge:                  ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i27.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #19
  %flags.i51.i = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 8
  %46 = ptrtoint ptr %flags.i51.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i51.i, align 32
  %and.i52.i = and i32 %47, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52.i)
  %tobool.not.i53.i = icmp eq i32 %and.i52.i, 0
  br i1 %tobool.not.i53.i, label %for.end.i.set_dbqtimer_tick.exit.thread81.i_crit_edge, label %if.end.i55.i

for.end.i.set_dbqtimer_tick.exit.thread81.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %set_dbqtimer_tick.exit.thread81.i

if.end.i55.i:                                     ; preds = %for.end.i
  %dbqtimer_tick.i.i = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 22, i32 22
  %48 = ptrtoint ptr %dbqtimer_tick.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %dbqtimer_tick.i.i, align 2
  %conv.i54.i = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i54.i)
  %cmp.i.i = icmp eq i32 %22, %conv.i54.i
  br i1 %cmp.i.i, label %if.end.i55.i.set_dbqtimer_tick.exit.thread81.i_crit_edge, label %if.end3.i.i

if.end.i55.i.set_dbqtimer_tick.exit.thread81.i_crit_edge: ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %set_dbqtimer_tick.exit.thread81.i

if.end3.i.i:                                      ; preds = %if.end.i55.i
  %50 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 19529728, ptr %param.i.i, align 4
  %51 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %22, ptr %val.i.i, align 4
  %mbox.i.i = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 6
  %52 = ptrtoint ptr %mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mbox.i.i, align 8
  %pf.i.i = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 7
  %54 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pf.i.i, align 4
  %call4.i.i = call i32 @t4_set_params(ptr noundef %26, i32 noundef %53, i32 noundef %55, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %param.i.i, ptr noundef nonnull %val.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %set_dbqtimer_tick.exit.i, label %set_dbqtimer_tick.exit.thread.i

set_dbqtimer_tick.exit.thread.i:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #19
  br label %set_dbqtimer_tickval.exit

set_dbqtimer_tick.exit.thread81.i:                ; preds = %if.end.i55.i.set_dbqtimer_tick.exit.thread81.i_crit_edge, %for.end.i.set_dbqtimer_tick.exit.thread81.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #19
  br label %for.cond12.preheader.i

set_dbqtimer_tick.exit.i:                         ; preds = %if.end3.i.i
  %conv8.i.i = trunc i32 %22 to i16
  %56 = ptrtoint ptr %dbqtimer_tick.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv8.i.i, ptr %dbqtimer_tick.i.i, align 2
  %dbqtimer_val.i.i = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 22, i32 23
  %call10.i.i = call i32 @t4_read_sge_dbqtimers(ptr noundef %26, i32 noundef 8, ptr noundef %dbqtimer_val.i.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not.i28 = icmp eq i32 %call10.i.i, 0
  br i1 %tobool.not.i28, label %set_dbqtimer_tick.exit.i.for.cond12.preheader.i_crit_edge, label %set_dbqtimer_tick.exit.i.set_dbqtimer_tickval.exit_crit_edge

set_dbqtimer_tick.exit.i.set_dbqtimer_tickval.exit_crit_edge: ; preds = %set_dbqtimer_tick.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %set_dbqtimer_tickval.exit

set_dbqtimer_tick.exit.i.for.cond12.preheader.i_crit_edge: ; preds = %set_dbqtimer_tick.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %set_dbqtimer_tick.exit.i.for.cond12.preheader.i_crit_edge, %set_dbqtimer_tick.exit.thread81.i
  %57 = ptrtoint ptr %nports.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp1679.not.i = icmp eq i8 %58, 0
  br i1 %cmp1679.not.i, label %for.cond12.preheader.i.set_dbqtimer_tickval.exit_crit_edge, label %for.cond12.preheader.i.for.body18.i_crit_edge

for.cond12.preheader.i.for.body18.i_crit_edge:    ; preds = %for.cond12.preheader.i
  br label %for.body18.i

for.cond12.preheader.i.set_dbqtimer_tickval.exit_crit_edge: ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %set_dbqtimer_tickval.exit

for.body18.i:                                     ; preds = %for.inc26.i.for.body18.i_crit_edge, %for.cond12.preheader.i.for.body18.i_crit_edge
  %port.180.i = phi i32 [ %inc27.i, %for.inc26.i.for.body18.i_crit_edge ], [ 0, %for.cond12.preheader.i.for.body18.i_crit_edge ]
  %arrayidx20.i = getelementptr %struct.adapter, ptr %26, i32 0, i32 23, i32 %port.180.i
  %59 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx20.i, align 4
  %arrayidx21.i = getelementptr [4 x i32], ptr %timer.i, i32 0, i32 %port.180.i
  %61 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx21.i, align 4
  %add.ptr.i.i59.i = getelementptr i8, ptr %60, i32 2304
  %63 = ptrtoint ptr %add.ptr.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i.i59.i, align 8
  %sge.i60.i = getelementptr inbounds %struct.adapter, ptr %64, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i57.i) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i58.i) #19
  %flags.i61.i = getelementptr inbounds %struct.adapter, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %flags.i61.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i61.i, align 32
  %and.i62.i = and i32 %66, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62.i)
  %tobool.not.i63.i = icmp eq i32 %and.i62.i, 0
  br i1 %tobool.not.i63.i, label %for.body18.i.for.inc26.i_crit_edge, label %for.body.preheader.i.i

for.body18.i.for.inc26.i_crit_edge:               ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc26.i

for.body.preheader.i.i:                           ; preds = %for.body18.i
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %64, i32 0, i32 22, i32 23, i32 0
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i64.i = zext i16 %68 to i32
  %sub.i.i = sub i32 %conv.i64.i, %62
  %69 = call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #19
  %arrayidx.1.i.i = getelementptr %struct.adapter, ptr %64, i32 0, i32 22, i32 23, i32 1
  %70 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.1.i.i, align 2
  %conv.1.i.i = zext i16 %71 to i32
  %sub.1.i.i = sub i32 %conv.1.i.i, %62
  %72 = call i32 @llvm.abs.i32(i32 %sub.1.i.i, i1 false) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %69)
  %cmp6.1.i.i = icmp slt i32 %72, %69
  %min_timerix.1.1.i.i = zext i1 %cmp6.1.i.i to i32
  %73 = call i32 @llvm.smin.i32(i32 %72, i32 %69) #19
  %arrayidx.2.i.i = getelementptr %struct.adapter, ptr %64, i32 0, i32 22, i32 23, i32 2
  %74 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.2.i.i, align 2
  %conv.2.i.i = zext i16 %75 to i32
  %sub.2.i.i = sub i32 %conv.2.i.i, %62
  %76 = call i32 @llvm.abs.i32(i32 %sub.2.i.i, i1 false) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %73)
  %cmp6.2.i.i = icmp slt i32 %76, %73
  %min_timerix.1.2.i.i = select i1 %cmp6.2.i.i, i32 2, i32 %min_timerix.1.1.i.i
  %77 = call i32 @llvm.smin.i32(i32 %76, i32 %73) #19
  %arrayidx.3.i.i = getelementptr %struct.adapter, ptr %64, i32 0, i32 22, i32 23, i32 3
  %78 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx.3.i.i, align 2
  %conv.3.i.i = zext i16 %79 to i32
  %sub.3.i.i = sub i32 %conv.3.i.i, %62
  %80 = call i32 @llvm.abs.i32(i32 %sub.3.i.i, i1 false) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %77)
  %cmp6.3.i.i = icmp slt i32 %80, %77
  %min_timerix.1.3.i.i = select i1 %cmp6.3.i.i, i32 3, i32 %min_timerix.1.2.i.i
  %81 = call i32 @llvm.smin.i32(i32 %80, i32 %77) #19
  %arrayidx.4.i.i = getelementptr %struct.adapter, ptr %64, i32 0, i32 22, i32 23, i32 4
  %82 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx.4.i.i, align 2
  %conv.4.i.i = zext i16 %83 to i32
  %sub.4.i.i = sub i32 %conv.4.i.i, %62
  %84 = call i32 @llvm.abs.i32(i32 %sub.4.i.i, i1 false) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %81)
  %cmp6.4.i.i = icmp slt i32 %84, %81
  %min_timerix.1.4.i.i = select i1 %cmp6.4.i.i, i32 4, i32 %min_timerix.1.3.i.i
  %85 = call i32 @llvm.smin.i32(i32 %84, i32 %81) #19
  %arrayidx.5.i.i = getelementptr %struct.adapter, ptr %64, i32 0, i32 22, i32 23, i32 5
  %86 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx.5.i.i, align 2
  %conv.5.i.i = zext i16 %87 to i32
  %sub.5.i.i = sub i32 %conv.5.i.i, %62
  %88 = call i32 @llvm.abs.i32(i32 %sub.5.i.i, i1 false) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %85)
  %cmp6.5.i.i = icmp slt i32 %88, %85
  %min_timerix.1.5.i.i = select i1 %cmp6.5.i.i, i32 5, i32 %min_timerix.1.4.i.i
  %89 = call i32 @llvm.smin.i32(i32 %88, i32 %85) #19
  %arrayidx.6.i.i = getelementptr %struct.adapter, ptr %64, i32 0, i32 22, i32 23, i32 6
  %90 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx.6.i.i, align 2
  %conv.6.i.i = zext i16 %91 to i32
  %sub.6.i.i = sub i32 %conv.6.i.i, %62
  %92 = call i32 @llvm.abs.i32(i32 %sub.6.i.i, i1 false) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %89)
  %cmp6.6.i.i = icmp slt i32 %92, %89
  %min_timerix.1.6.i.i = select i1 %cmp6.6.i.i, i32 6, i32 %min_timerix.1.5.i.i
  %93 = call i32 @llvm.smin.i32(i32 %92, i32 %89) #19
  %arrayidx.7.i.i = getelementptr %struct.adapter, ptr %64, i32 0, i32 22, i32 23, i32 7
  %94 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx.7.i.i, align 2
  %conv.7.i.i = zext i16 %95 to i32
  %sub.7.i.i = sub i32 %conv.7.i.i, %62
  %96 = call i32 @llvm.abs.i32(i32 %sub.7.i.i, i1 false) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %93)
  %cmp6.7.i.i = icmp slt i32 %96, %93
  %min_timerix.1.7.i.i = select i1 %cmp6.7.i.i, i32 7, i32 %min_timerix.1.6.i.i
  %first_qset.i65.i = getelementptr i8, ptr %60, i32 2329
  %97 = ptrtoint ptr %first_qset.i65.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %first_qset.i65.i, align 1
  %idxprom.i66.i = zext i8 %98 to i32
  %dbqtimerix.i67.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i60.i, i32 0, i32 %idxprom.i66.i, i32 4
  %99 = ptrtoint ptr %dbqtimerix.i67.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dbqtimerix.i67.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %min_timerix.1.7.i.i)
  %cmp11.i.i = icmp eq i32 %100, %min_timerix.1.7.i.i
  br i1 %cmp11.i.i, label %for.body.preheader.i.i.for.inc26.i_crit_edge, label %if.end14.i.i

for.body.preheader.i.i.for.inc26.i_crit_edge:     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc26.i

if.end14.i.i:                                     ; preds = %for.body.preheader.i.i
  %nqsets.i.i = getelementptr i8, ptr %60, i32 2328
  %101 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %nqsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp1769.not.i.i = icmp eq i8 %102, 0
  br i1 %cmp1769.not.i.i, label %if.end14.i.i.for.inc26.i_crit_edge, label %for.body19.lr.ph.i.i

if.end14.i.i.for.inc26.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc26.i

for.body19.lr.ph.i.i:                             ; preds = %if.end14.i.i
  %arrayidx10.i.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i60.i, i32 0, i32 %idxprom.i66.i
  %mbox.i68.i = getelementptr inbounds %struct.adapter, ptr %64, i32 0, i32 6
  %pf.i69.i = getelementptr inbounds %struct.adapter, ptr %64, i32 0, i32 7
  br label %for.body19.i.i

for.body19.i.i:                                   ; preds = %if.end28.i.i.for.body19.i.i_crit_edge, %for.body19.lr.ph.i.i
  %txq.071.i.i = phi ptr [ %arrayidx10.i.i, %for.body19.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end28.i.i.for.body19.i.i_crit_edge ]
  %qix.070.i.i = phi i32 [ 0, %for.body19.lr.ph.i.i ], [ %inc31.i.i, %if.end28.i.i.for.body19.i.i_crit_edge ]
  %103 = ptrtoint ptr %flags.i61.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i61.i, align 32
  %and21.i.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %for.body19.i.i.if.end28.i.i_crit_edge, label %if.then23.i.i

for.body19.i.i.if.end28.i.i_crit_edge:            ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28.i.i

if.then23.i.i:                                    ; preds = %for.body19.i.i
  %cntxt_id.i.i = getelementptr inbounds %struct.sge_txq, ptr %txq.071.i.i, i32 0, i32 7
  %105 = ptrtoint ptr %cntxt_id.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cntxt_id.i.i, align 4
  %or.i.i = or i32 %106, 68485120
  %107 = ptrtoint ptr %param.i57.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or.i.i, ptr %param.i57.i, align 4
  %108 = ptrtoint ptr %val.i58.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %min_timerix.1.7.i.i, ptr %val.i58.i, align 4
  %109 = ptrtoint ptr %mbox.i68.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mbox.i68.i, align 8
  %111 = ptrtoint ptr %pf.i69.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pf.i69.i, align 4
  %call24.i.i = call i32 @t4_set_params(ptr noundef %64, i32 noundef %110, i32 noundef %112, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %param.i57.i, ptr noundef nonnull %val.i58.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.then23.i.i.if.end28.i.i_crit_edge, label %set_dbqtimer.exit.i

if.then23.i.i.if.end28.i.i_crit_edge:             ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then23.i.i.if.end28.i.i_crit_edge, %for.body19.i.i.if.end28.i.i_crit_edge
  %dbqtimerix29.i.i = getelementptr inbounds %struct.sge_eth_txq, ptr %txq.071.i.i, i32 0, i32 4
  %113 = ptrtoint ptr %dbqtimerix29.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %min_timerix.1.7.i.i, ptr %dbqtimerix29.i.i, align 4
  %inc31.i.i = add nuw nsw i32 %qix.070.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.sge_eth_txq, ptr %txq.071.i.i, i32 1
  %114 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %nqsets.i.i, align 8
  %conv16.i.i = zext i8 %115 to i32
  %cmp17.i.i = icmp ult i32 %inc31.i.i, %conv16.i.i
  br i1 %cmp17.i.i, label %if.end28.i.i.for.body19.i.i_crit_edge, label %if.end28.i.i.for.inc26.i_crit_edge

if.end28.i.i.for.inc26.i_crit_edge:               ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc26.i

if.end28.i.i.for.body19.i.i_crit_edge:            ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body19.i.i

set_dbqtimer.exit.i:                              ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i58.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i57.i) #19
  br label %set_dbqtimer_tickval.exit

for.inc26.i:                                      ; preds = %if.end28.i.i.for.inc26.i_crit_edge, %if.end14.i.i.for.inc26.i_crit_edge, %for.body.preheader.i.i.for.inc26.i_crit_edge, %for.body18.i.for.inc26.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i58.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i57.i) #19
  %inc27.i = add nuw nsw i32 %port.180.i, 1
  %116 = ptrtoint ptr %nports.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %nports.i, align 4
  %conv15.i = zext i8 %117 to i32
  %cmp16.i = icmp ult i32 %inc27.i, %conv15.i
  br i1 %cmp16.i, label %for.inc26.i.for.body18.i_crit_edge, label %for.inc26.i.set_dbqtimer_tickval.exit_crit_edge

for.inc26.i.set_dbqtimer_tickval.exit_crit_edge:  ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %set_dbqtimer_tickval.exit

for.inc26.i.for.body18.i_crit_edge:               ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body18.i

set_dbqtimer_tickval.exit:                        ; preds = %for.inc26.i.set_dbqtimer_tickval.exit_crit_edge, %set_dbqtimer.exit.i, %for.cond12.preheader.i.set_dbqtimer_tickval.exit_crit_edge, %set_dbqtimer_tick.exit.i.set_dbqtimer_tickval.exit_crit_edge, %set_dbqtimer_tick.exit.thread.i
  %retval.0.i29 = phi i32 [ %call10.i.i, %set_dbqtimer_tick.exit.i.set_dbqtimer_tickval.exit_crit_edge ], [ %call24.i.i, %set_dbqtimer.exit.i ], [ %call4.i.i, %set_dbqtimer_tick.exit.thread.i ], [ 0, %for.cond12.preheader.i.set_dbqtimer_tickval.exit_crit_edge ], [ 0, %for.inc26.i.set_dbqtimer_tickval.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %timer.i) #19
  br label %cleanup

cleanup:                                          ; preds = %set_dbqtimer_tickval.exit, %for.body.i15.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i29, %set_dbqtimer_tickval.exit ], [ %call2.i, %for.body.i15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @get_sge_param(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %e, ptr nocapture noundef readnone %kernel_e, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sge = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 1
  %2 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16384, ptr %rx_max_pending, align 4
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 2
  %3 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16384, ptr %rx_mini_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 3
  %4 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rx_jumbo_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 4
  %5 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16384, ptr %tx_max_pending, align 4
  %first_qset = getelementptr i8, ptr %dev, i32 2329
  %6 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %first_qset, align 1
  %idxprom = zext i8 %7 to i32
  %size = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 3, i32 %idxprom, i32 1, i32 10
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 8
  %sub = add i32 %9, -8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 5
  %10 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %rx_pending, align 4
  %11 = load i8, ptr %first_qset, align 1
  %idxprom3 = zext i8 %11 to i32
  %size5 = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 3, i32 %idxprom3, i32 0, i32 18
  %12 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size5, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 6
  %14 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rx_mini_pending, align 4
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 7
  %15 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rx_jumbo_pending, align 4
  %16 = load i8, ptr %first_qset, align 1
  %idxprom7 = zext i8 %16 to i32
  %size9 = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %idxprom7, i32 0, i32 2
  %17 = ptrtoint ptr %size9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size9, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 8
  %19 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_sge_param(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %e, ptr nocapture noundef readnone %kernel_e, ptr nocapture noundef readnone %extack) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sge = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %3)
  %cmp = icmp ugt i32 %3, 16384
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 7
  %4 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 8
  %6 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %7)
  %cmp3 = icmp ugt i32 %7, 16384
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 6
  %8 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_mini_pending, align 4
  %10 = add i32 %9, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16257, i32 %10)
  %11 = icmp ult i32 %10, -16257
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp11 = icmp ult i32 %3, 16
  %or.cond61 = select i1 %11, i1 true, i1 %cmp11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp14 = icmp ult i32 %7, 32
  %or.cond62 = select i1 %or.cond61, i1 true, i1 %cmp14
  br i1 %or.cond62, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 32
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %nqsets = getelementptr i8, ptr %dev, i32 2328
  %14 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nqsets, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1864.not = icmp eq i8 %15, 0
  br i1 %cmp1864.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %first_qset = getelementptr i8, ptr %dev, i32 2329
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_pending, align 4
  %18 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %first_qset, align 1
  %conv21 = zext i8 %19 to i32
  %add = add nuw nsw i32 %i.065, %conv21
  %size = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add, i32 0, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %size, align 8
  %21 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_pending, align 4
  %add23 = add i32 %22, 8
  %23 = load i8, ptr %first_qset, align 1
  %conv25 = zext i8 %23 to i32
  %add26 = add nuw nsw i32 %i.065, %conv25
  %size28 = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 3, i32 %add26, i32 1, i32 10
  %24 = ptrtoint ptr %size28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add23, ptr %size28, align 8
  %25 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_mini_pending, align 4
  %27 = load i8, ptr %first_qset, align 1
  %conv32 = zext i8 %27 to i32
  %add33 = add nuw nsw i32 %i.065, %conv32
  %size35 = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 3, i32 %add33, i32 0, i32 18
  %28 = ptrtoint ptr %size35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %size35, align 4
  %inc = add nuw nsw i32 %i.065, 1
  %29 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nqsets, align 8
  %conv = zext i8 %30 to i32
  %cmp18 = icmp ult i32 %inc, %conv
  br i1 %cmp18, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %epause) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_fc = getelementptr i8, ptr %dev, i32 2356
  %0 = ptrtoint ptr %requested_fc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requested_fc, align 4
  %and = lshr i32 %1, 2
  %and.lobit = and i32 %and, 1
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.lobit, ptr %autoneg, align 4
  %advertised_fc = getelementptr i8, ptr %dev, i32 2364
  %3 = ptrtoint ptr %advertised_fc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %advertised_fc, align 4
  %and2 = and i32 %4, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %5 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and2, ptr %rx_pause, align 4
  %6 = load i32, ptr %advertised_fc, align 4
  %and7 = lshr i32 %6, 1
  %and7.lobit = and i32 %and7, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %7 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and7.lobit, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pauseparam(ptr noundef %dev, ptr nocapture noundef readonly %epause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %link_cfg = getelementptr i8, ptr %dev, i32 2332
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %link_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_cfg, align 4
  %and = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %entry.if.end4_crit_edge
  %.sink = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 4, %if.else.if.end4_crit_edge ]
  %requested_fc2 = getelementptr i8, ptr %dev, i32 2356
  %4 = ptrtoint ptr %requested_fc2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %requested_fc2, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %5 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  %requested_fc7 = getelementptr i8, ptr %dev, i32 2356
  %7 = ptrtoint ptr %requested_fc7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %requested_fc7, align 4
  %or = or i32 %8, 1
  store i32 %or, ptr %requested_fc7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %9 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  %requested_fc11 = getelementptr i8, ptr %dev, i32 2356
  %11 = ptrtoint ptr %requested_fc11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %requested_fc11, align 4
  %or12 = or i32 %12, 2
  store i32 %or12, ptr %requested_fc11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %mbox = getelementptr inbounds %struct.adapter, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbox, align 8
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %19 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx_chan, align 2
  %conv = zext i8 %20 to i32
  %call.i = tail call i32 @t4_link_l1cfg_core(ptr noundef %16, i32 noundef %18, i32 noundef %conv, ptr noundef %link_cfg, i8 noundef zeroext 1, i32 noundef 10000) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end13.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then15 ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4_self_test(ptr noundef %netdev, ptr nocapture noundef %eth_test, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %data, align 8
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 32
  %5 = and i32 %4, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %.not = icmp eq i32 %5, 17
  %flags5 = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %6 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags5, align 4
  br i1 %.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %and6 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end9thread-pre-split_crit_edge, label %if.then8

if.end.if.end9thread-pre-split_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9thread-pre-split

if.then8:                                         ; preds = %if.end
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end5.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %if.then8
  tail call void @netif_tx_stop_all_queues(ptr noundef %netdev) #19
  tail call void @netif_carrier_off(ptr noundef %netdev) #19
  %call1.c.i = tail call i32 @cxgb4_selftest_lb_pkt(ptr noundef %netdev) #19
  %conv2.c.i = sext i32 %call1.c.i to i64
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv2.c.i, ptr %data, align 8
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %11 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4.not.i.i = icmp eq i32 %12, 0
  br i1 %cmp4.not.i.i, label %if.then.i.netif_tx_start_all_queues.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.netif_tx_start_all_queues.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %netif_tx_start_all_queues.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %14, i32 %i.05.i.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #19
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %15 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %16
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.netif_tx_start_all_queues.exit.i_crit_edge

for.body.i.i.netif_tx_start_all_queues.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %netif_tx_start_all_queues.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i

netif_tx_start_all_queues.exit.i:                 ; preds = %for.body.i.i.netif_tx_start_all_queues.exit.i_crit_edge, %if.then.i.netif_tx_start_all_queues.exit.i_crit_edge
  tail call void @netif_carrier_on(ptr noundef %netdev) #19
  br label %if.end9thread-pre-split

if.end5.critedge.i:                               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #21
  %call1.c12.i = tail call i32 @cxgb4_selftest_lb_pkt(ptr noundef %netdev) #19
  %conv2.c13.i = sext i32 %call1.c12.i to i64
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv2.c13.i, ptr %data, align 8
  br label %if.end9

if.end9thread-pre-split:                          ; preds = %netif_tx_start_all_queues.exit.i, %if.end.if.end9thread-pre-split_crit_edge
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %18)
  %.pr = load i64, ptr %data, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end9thread-pre-split, %if.end5.critedge.i
  %19 = phi i64 [ %.pr, %if.end9thread-pre-split ], [ %conv2.c13.i, %if.end5.critedge.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool11.not = icmp eq i64 %19, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  %20 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags5, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then12, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %21, %if.then12 ], [ %7, %entry.cleanup.sink.split_crit_edge ]
  %or14 = or i32 %.sink, 2
  %22 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or14, ptr %flags5, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %stringset, label %entry.if.end8_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then3
    i32 0, label %if.then6
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %1 = call ptr @memcpy(ptr %data, ptr @stats_strings, i32 2336)
  %add.ptr = getelementptr i8, ptr %data, i32 2336
  %2 = call ptr @memcpy(ptr %add.ptr, ptr @adapter_stats_strings, i32 160)
  %add.ptr1 = getelementptr i8, ptr %data, i32 2496
  %3 = call ptr @memcpy(ptr %add.ptr1, ptr @loopback_stats_strings, i32 736)
  br label %if.end8

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %4 = call ptr @memcpy(ptr %data, ptr @cxgb4_priv_flags_strings, i32 32)
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %5 = call ptr @memcpy(ptr %data, ptr @cxgb4_selftest_strings, i32 32)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3, %if.then, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @identify_port(ptr nocapture noundef readonly %dev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end4_crit_edge
    i32 0, label %if.then2
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry.if.end4_crit_edge
  %val.0 = phi i32 [ 0, %if.then2 ], [ 65535, %entry.if.end4_crit_edge ]
  %pf = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pf, align 4
  %viid = getelementptr i8, ptr %dev, i32 2308
  %5 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %viid, align 4
  %conv = zext i16 %6 to i32
  %call6 = tail call i32 @t4_identify_port(ptr noundef %1, i32 noundef %4, i32 noundef %conv, i32 noundef %val.0) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  %s = alloca %struct.lb_port_stats, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %s) #19
  %2 = call ptr @memset(ptr %s, i32 255, i32 176)
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %3 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx_chan, align 2
  %conv = zext i8 %4 to i32
  %stats_base = getelementptr i8, ptr %dev, i32 2392
  tail call void @t4_get_port_stats_offset(ptr noundef %1, i32 noundef %conv, ptr noundef %data, ptr noundef %stats_base) #19
  %add.ptr = getelementptr i64, ptr %data, i32 58
  %first_qset.i = getelementptr i8, ptr %dev, i32 2329
  %5 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %first_qset.i, align 1
  %7 = call ptr @memset(ptr %add.ptr, i32 0, i32 120)
  %nqsets.i = getelementptr i8, ptr %dev, i32 2328
  %8 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nqsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp131.not.i = icmp eq i8 %9, 0
  br i1 %cmp131.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %idxprom.i = zext i8 %6 to i32
  %arrayidx4.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 3, i32 %idxprom.i
  %sge.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %arrayidx.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i, i32 0, i32 %idxprom.i
  %uso9.i = getelementptr i64, ptr %data, i32 59
  %tx_csum.i = getelementptr i64, ptr %data, i32 60
  %rx_csum.i = getelementptr i64, ptr %data, i32 61
  %vlan_ex17.i = getelementptr i64, ptr %data, i32 62
  %vlan_ins20.i = getelementptr i64, ptr %data, i32 63
  %gro_pkts.i = getelementptr i64, ptr %data, i32 64
  %gro_merged.i = getelementptr i64, ptr %data, i32 65
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0134.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %rx.0133.i = phi ptr [ %arrayidx4.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %tx.0132.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr28.i, %for.body.i.for.body.i_crit_edge ]
  %tso.i = getelementptr inbounds %struct.sge_eth_txq, ptr %tx.0132.i, i32 0, i32 5
  %10 = ptrtoint ptr %tso.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tso.i, align 8
  %conv6.i = zext i32 %11 to i64
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr, align 8
  %add.i = add i64 %13, %conv6.i
  store i64 %add.i, ptr %add.ptr, align 8
  %uso.i = getelementptr inbounds %struct.sge_eth_txq, ptr %tx.0132.i, i32 0, i32 6
  %14 = ptrtoint ptr %uso.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uso.i, align 4
  %conv8.i = zext i32 %15 to i64
  %16 = ptrtoint ptr %uso9.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %uso9.i, align 8
  %add10.i = add i64 %17, %conv8.i
  store i64 %add10.i, ptr %uso9.i, align 8
  %tx_cso.i = getelementptr inbounds %struct.sge_eth_txq, ptr %tx.0132.i, i32 0, i32 7
  %18 = ptrtoint ptr %tx_cso.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_cso.i, align 128
  %conv11.i = zext i32 %19 to i64
  %20 = ptrtoint ptr %tx_csum.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_csum.i, align 8
  %add12.i = add i64 %21, %conv11.i
  store i64 %add12.i, ptr %tx_csum.i, align 8
  %rx_cso.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rx.0133.i, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %rx_cso.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_cso.i, align 4
  %conv13.i = zext i32 %23 to i64
  %24 = ptrtoint ptr %rx_csum.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_csum.i, align 8
  %add14.i = add i64 %25, %conv13.i
  store i64 %add14.i, ptr %rx_csum.i, align 8
  %vlan_ex.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rx.0133.i, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %vlan_ex.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vlan_ex.i, align 8
  %conv16.i = zext i32 %27 to i64
  %28 = ptrtoint ptr %vlan_ex17.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vlan_ex17.i, align 8
  %add18.i = add i64 %29, %conv16.i
  store i64 %add18.i, ptr %vlan_ex17.i, align 8
  %vlan_ins.i = getelementptr inbounds %struct.sge_eth_txq, ptr %tx.0132.i, i32 0, i32 8
  %30 = ptrtoint ptr %vlan_ins.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vlan_ins.i, align 4
  %conv19.i = zext i32 %31 to i64
  %32 = ptrtoint ptr %vlan_ins20.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %vlan_ins20.i, align 8
  %add21.i = add i64 %33, %conv19.i
  store i64 %add21.i, ptr %vlan_ins20.i, align 8
  %lro_pkts.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rx.0133.i, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %lro_pkts.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lro_pkts.i, align 4
  %conv23.i = zext i32 %35 to i64
  %36 = ptrtoint ptr %gro_pkts.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %gro_pkts.i, align 8
  %add24.i = add i64 %37, %conv23.i
  store i64 %add24.i, ptr %gro_pkts.i, align 8
  %lro_merged.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rx.0133.i, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %lro_merged.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lro_merged.i, align 8
  %conv26.i = zext i32 %39 to i64
  %40 = ptrtoint ptr %gro_merged.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %gro_merged.i, align 8
  %add27.i = add i64 %41, %conv26.i
  store i64 %add27.i, ptr %gro_merged.i, align 8
  %inc.i = add nuw nsw i32 %i.0134.i, 1
  %incdec.ptr.i = getelementptr %struct.sge_eth_rxq, ptr %rx.0133.i, i32 1
  %incdec.ptr28.i = getelementptr %struct.sge_eth_txq, ptr %tx.0132.i, i32 1
  %42 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nqsets.i, align 8
  %conv.i = zext i8 %43 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %eohw_txq.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 10
  %44 = ptrtoint ptr %eohw_txq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %eohw_txq.i, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %for.end.i.collect_sge_port_stats.exit_crit_edge, label %if.then.i

for.end.i.collect_sge_port_stats.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %collect_sge_port_stats.exit

if.then.i:                                        ; preds = %for.end.i
  %46 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %nqsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp38136.not.i = icmp eq i8 %47, 0
  br i1 %cmp38136.not.i, label %if.then.i.collect_sge_port_stats.exit_crit_edge, label %for.body40.lr.ph.i

if.then.i.collect_sge_port_stats.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %collect_sge_port_stats.exit

for.body40.lr.ph.i:                               ; preds = %if.then.i
  %48 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %first_qset.i, align 1
  %idxprom33.i = zext i8 %49 to i32
  %arrayidx34.i = getelementptr %struct.sge_eohw_txq, ptr %45, i32 %idxprom33.i
  %uso47.i = getelementptr i64, ptr %data, i32 59
  %tx_csum51.i = getelementptr i64, ptr %data, i32 60
  %vlan_ins55.i = getelementptr i64, ptr %data, i32 63
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.body40.i.for.body40.i_crit_edge, %for.body40.lr.ph.i
  %i.1138.i = phi i32 [ 0, %for.body40.lr.ph.i ], [ %inc58.i, %for.body40.i.for.body40.i_crit_edge ]
  %eohw_tx.0137.i = phi ptr [ %arrayidx34.i, %for.body40.lr.ph.i ], [ %incdec.ptr59.i, %for.body40.i.for.body40.i_crit_edge ]
  %tso41.i = getelementptr inbounds %struct.sge_eohw_txq, ptr %eohw_tx.0137.i, i32 0, i32 3
  %50 = ptrtoint ptr %tso41.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tso41.i, align 4
  %conv42.i = zext i32 %51 to i64
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %add.ptr, align 8
  %add44.i = add i64 %53, %conv42.i
  store i64 %add44.i, ptr %add.ptr, align 8
  %uso45.i = getelementptr inbounds %struct.sge_eohw_txq, ptr %eohw_tx.0137.i, i32 0, i32 4
  %54 = ptrtoint ptr %uso45.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %uso45.i, align 4
  %conv46.i = zext i32 %55 to i64
  %56 = ptrtoint ptr %uso47.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %uso47.i, align 8
  %add48.i = add i64 %57, %conv46.i
  store i64 %add48.i, ptr %uso47.i, align 8
  %tx_cso49.i = getelementptr inbounds %struct.sge_eohw_txq, ptr %eohw_tx.0137.i, i32 0, i32 5
  %58 = ptrtoint ptr %tx_cso49.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_cso49.i, align 4
  %conv50.i = zext i32 %59 to i64
  %60 = ptrtoint ptr %tx_csum51.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %tx_csum51.i, align 8
  %add52.i = add i64 %61, %conv50.i
  store i64 %add52.i, ptr %tx_csum51.i, align 8
  %vlan_ins53.i = getelementptr inbounds %struct.sge_eohw_txq, ptr %eohw_tx.0137.i, i32 0, i32 6
  %62 = ptrtoint ptr %vlan_ins53.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vlan_ins53.i, align 4
  %conv54.i = zext i32 %63 to i64
  %64 = ptrtoint ptr %vlan_ins55.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %vlan_ins55.i, align 8
  %add56.i = add i64 %65, %conv54.i
  store i64 %add56.i, ptr %vlan_ins55.i, align 8
  %inc58.i = add nuw nsw i32 %i.1138.i, 1
  %incdec.ptr59.i = getelementptr %struct.sge_eohw_txq, ptr %eohw_tx.0137.i, i32 1
  %66 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %nqsets.i, align 8
  %conv37.i = zext i8 %67 to i32
  %cmp38.i = icmp ult i32 %inc58.i, %conv37.i
  br i1 %cmp38.i, label %for.body40.i.for.body40.i_crit_edge, label %for.body40.i.collect_sge_port_stats.exit_crit_edge

for.body40.i.collect_sge_port_stats.exit_crit_edge: ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %collect_sge_port_stats.exit

for.body40.i.for.body40.i_crit_edge:              ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body40.i

collect_sge_port_stats.exit:                      ; preds = %for.body40.i.collect_sge_port_stats.exit_crit_edge, %if.then.i.collect_sge_port_stats.exit_crit_edge, %for.end.i.collect_sge_port_stats.exit_crit_edge
  %ch_ktls_stats.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 74
  %port_id.i = getelementptr i8, ptr %dev, i32 2325
  %68 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %port_id.i, align 1
  %idxprom61.i = zext i8 %69 to i32
  %ktls_tx_encrypted_packets.i = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats.i, i32 0, i32 %idxprom61.i, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ktls_tx_encrypted_packets.i, i32 noundef 8) #19
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %ktls_tx_encrypted_packets.i) #19
  %tx_tls_encrypted_packets.i = getelementptr i64, ptr %data, i32 66
  %70 = ptrtoint ptr %tx_tls_encrypted_packets.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call.i.i, ptr %tx_tls_encrypted_packets.i, align 8
  %ktls_tx_encrypted_bytes.i = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats.i, i32 0, i32 %idxprom61.i, i32 4
  %call.i.i118.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ktls_tx_encrypted_bytes.i, i32 noundef 8) #19
  %call.i119.i = tail call i64 @generic_atomic64_read(ptr noundef %ktls_tx_encrypted_bytes.i) #19
  %tx_tls_encrypted_bytes.i = getelementptr i64, ptr %data, i32 67
  %71 = ptrtoint ptr %tx_tls_encrypted_bytes.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %call.i119.i, ptr %tx_tls_encrypted_bytes.i, align 8
  %ktls_tx_ctx.i = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats.i, i32 0, i32 %idxprom61.i, i32 5
  %call.i.i120.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ktls_tx_ctx.i, i32 noundef 8) #19
  %call.i121.i = tail call i64 @generic_atomic64_read(ptr noundef %ktls_tx_ctx.i) #19
  %tx_tls_ctx.i = getelementptr i64, ptr %data, i32 68
  %72 = ptrtoint ptr %tx_tls_ctx.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %call.i121.i, ptr %tx_tls_ctx.i, align 8
  %ktls_tx_ooo.i = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats.i, i32 0, i32 %idxprom61.i, i32 6
  %call.i.i122.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ktls_tx_ooo.i, i32 noundef 8) #19
  %call.i123.i = tail call i64 @generic_atomic64_read(ptr noundef %ktls_tx_ooo.i) #19
  %tx_tls_ooo.i = getelementptr i64, ptr %data, i32 69
  %73 = ptrtoint ptr %tx_tls_ooo.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %call.i123.i, ptr %tx_tls_ooo.i, align 8
  %ktls_tx_skip_no_sync_data.i = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats.i, i32 0, i32 %idxprom61.i, i32 7
  %call.i.i124.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ktls_tx_skip_no_sync_data.i, i32 noundef 8) #19
  %call.i125.i = tail call i64 @generic_atomic64_read(ptr noundef %ktls_tx_skip_no_sync_data.i) #19
  %tx_tls_skip_no_sync_data.i = getelementptr i64, ptr %data, i32 70
  %74 = ptrtoint ptr %tx_tls_skip_no_sync_data.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %call.i125.i, ptr %tx_tls_skip_no_sync_data.i, align 8
  %ktls_tx_drop_no_sync_data.i = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats.i, i32 0, i32 %idxprom61.i, i32 8
  %call.i.i126.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ktls_tx_drop_no_sync_data.i, i32 noundef 8) #19
  %call.i127.i = tail call i64 @generic_atomic64_read(ptr noundef %ktls_tx_drop_no_sync_data.i) #19
  %tx_tls_drop_no_sync_data.i = getelementptr i64, ptr %data, i32 71
  %75 = ptrtoint ptr %tx_tls_drop_no_sync_data.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %call.i127.i, ptr %tx_tls_drop_no_sync_data.i, align 8
  %ktls_tx_drop_bypass_req.i = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats.i, i32 0, i32 %idxprom61.i, i32 9
  %call.i.i128.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ktls_tx_drop_bypass_req.i, i32 noundef 8) #19
  %call.i129.i = tail call i64 @generic_atomic64_read(ptr noundef %ktls_tx_drop_bypass_req.i) #19
  %tx_tls_drop_bypass_req.i = getelementptr i64, ptr %data, i32 72
  %76 = ptrtoint ptr %tx_tls_drop_bypass_req.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %call.i129.i, ptr %tx_tls_drop_bypass_req.i, align 8
  %add.ptr2 = getelementptr i64, ptr %data, i32 73
  %77 = call ptr @memset(ptr %add.ptr2, i32 0, i32 40)
  %db_stats.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 20
  %78 = ptrtoint ptr %db_stats.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %db_stats.i, align 16
  %conv.i26 = zext i32 %79 to i64
  %80 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv.i26, ptr %add.ptr2, align 8
  %db_full.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 20, i32 2
  %81 = ptrtoint ptr %db_full.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %db_full.i, align 8
  %conv3.i = zext i32 %82 to i64
  %db_full4.i = getelementptr i64, ptr %data, i32 74
  %83 = ptrtoint ptr %db_full4.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv3.i, ptr %db_full4.i, align 8
  %db_empty.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 20, i32 1
  %84 = ptrtoint ptr %db_empty.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %db_empty.i, align 4
  %conv6.i27 = zext i32 %85 to i64
  %db_empty7.i = getelementptr i64, ptr %data, i32 75
  %86 = ptrtoint ptr %db_empty7.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv6.i27, ptr %db_empty7.i, align 8
  %chip.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %87 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %chip.i, align 8
  %89 = and i32 %88, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %89)
  %cmp.i.not.i = icmp eq i32 %89, 64
  br i1 %cmp.i.not.i, label %collect_sge_port_stats.exit.collect_adapter_stats.exit_crit_edge, label %if.then.i29

collect_sge_port_stats.exit.collect_adapter_stats.exit_crit_edge: ; preds = %collect_sge_port_stats.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %collect_adapter_stats.exit

if.then.i29:                                      ; preds = %collect_sge_port_stats.exit
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 128
  %add.ptr.i.i = getelementptr i8, ptr %91, i32 4332
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #19, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !91
  %93 = and i32 %92, 1966080
  call void @__sanitizer_cov_trace_const_cmp4(i32 917504, i32 %93)
  %cmp.i28 = icmp eq i32 %93, 917504
  br i1 %cmp.i28, label %if.then10.i, label %if.then.i29.collect_adapter_stats.exit_crit_edge

if.then.i29.collect_adapter_stats.exit_crit_edge: ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #21
  br label %collect_adapter_stats.exit

if.then10.i:                                      ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #21
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 128
  %add.ptr.i28.i = getelementptr i8, ptr %95, i32 4328
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #19, !srcloc !90
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !91
  %conv12.i = zext i32 %97 to i64
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 128
  %add.ptr.i29.i = getelementptr i8, ptr %99, i32 4324
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #19, !srcloc !90
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !91
  %conv14.i = zext i32 %101 to i64
  %sub.i = sub nsw i64 %conv14.i, %conv12.i
  %wc_success.i = getelementptr i64, ptr %data, i32 76
  %102 = ptrtoint ptr %wc_success.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %sub.i, ptr %wc_success.i, align 8
  %wc_fail.i = getelementptr i64, ptr %data, i32 77
  %103 = ptrtoint ptr %wc_fail.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %conv12.i, ptr %wc_fail.i, align 8
  br label %collect_adapter_stats.exit

collect_adapter_stats.exit:                       ; preds = %if.then10.i, %if.then.i29.collect_adapter_stats.exit_crit_edge, %collect_sge_port_stats.exit.collect_adapter_stats.exit_crit_edge
  %add.ptr3 = getelementptr i64, ptr %data, i32 78
  %104 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %port_id.i, align 1
  %conv4 = zext i8 %105 to i64
  %incdec.ptr = getelementptr i64, ptr %data, i32 79
  %106 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv4, ptr %add.ptr3, align 8
  %107 = call ptr @memset(ptr %s, i32 0, i32 176)
  %108 = load i8, ptr %port_id.i, align 1
  %conv6 = zext i8 %108 to i32
  call void @t4_get_lb_stats(ptr noundef %1, i32 noundef %conv6, ptr noundef nonnull %s) #19
  %109 = call ptr @memcpy(ptr %incdec.ptr, ptr %s, i32 176)
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %s) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4_get_priv_flags(ptr nocapture noundef readonly %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %eth_flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %eth_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eth_flags, align 4
  %eth_flags2 = getelementptr i8, ptr %netdev, i32 2960
  %4 = ptrtoint ptr %eth_flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eth_flags2, align 8
  %or = or i32 %5, %3
  ret i32 %or
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4_set_priv_flags(ptr nocapture noundef %netdev, i32 noundef %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %eth_flags2 = getelementptr i8, ptr %netdev, i32 2960
  %0 = ptrtoint ptr %eth_flags2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eth_flags2, align 4
  %and.i = and i32 %1, -2
  %and1.i = and i32 %flags, 1
  %or.i = or i32 %and.i, %and1.i
  store i32 %or.i, ptr %eth_flags2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sset)
  %0 = icmp ult i32 %sset, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.get_sset_count, i32 0, i32 %sset
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_rxnfc(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr nocapture noundef writeonly %rules) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 41, label %sw.bb
    i32 45, label %sw.bb62
    i32 46, label %sw.bb65
    i32 47, label %sw.bb66
    i32 48, label %sw.bb68
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %rss_mode = getelementptr i8, ptr %dev, i32 2330
  %5 = ptrtoint ptr %rss_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rss_mode, align 2
  %conv = zext i8 %6 to i32
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %data, align 8
  %flow_type = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flow_type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %9, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb2
    i32 2, label %sw.bb9
    i32 3, label %sw.bb.sw.bb23_crit_edge
    i32 4, label %sw.bb.sw.bb23_crit_edge129
    i32 16, label %sw.bb.sw.bb23_crit_edge130
    i32 5, label %sw.bb29
    i32 6, label %sw.bb41
    i32 7, label %sw.bb.sw.bb56_crit_edge
    i32 8, label %sw.bb.sw.bb56_crit_edge131
    i32 17, label %sw.bb.sw.bb56_crit_edge132
  ]

sw.bb.sw.bb56_crit_edge132:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb56

sw.bb.sw.bb56_crit_edge131:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb56

sw.bb.sw.bb56_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb56

sw.bb.sw.bb23_crit_edge130:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb23

sw.bb.sw.bb23_crit_edge129:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb23

sw.bb.sw.bb23_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb23

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 240, ptr %data, align 8
  br label %cleanup

if.else:                                          ; preds = %sw.bb2
  %and4 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %if.then6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 48, ptr %data, align 8
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb
  %13 = and i32 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %.not124 = icmp eq i32 %13, 5
  br i1 %.not124, label %if.then14, label %if.else16

if.then14:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #21
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 240, ptr %data, align 8
  br label %cleanup

if.else16:                                        ; preds = %sw.bb9
  %and17 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else16.cleanup_crit_edge, label %if.then19

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #21
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 48, ptr %data, align 8
  br label %cleanup

sw.bb23:                                          ; preds = %sw.bb.sw.bb23_crit_edge, %sw.bb.sw.bb23_crit_edge129, %sw.bb.sw.bb23_crit_edge130
  %and24 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %sw.bb23.cleanup_crit_edge, label %if.then26

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #21
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 48, ptr %data, align 8
  br label %cleanup

sw.bb29:                                          ; preds = %sw.bb
  %and30 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else34, label %if.then32

if.then32:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #21
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 240, ptr %data, align 8
  br label %cleanup

if.else34:                                        ; preds = %sw.bb29
  %and35 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else34.cleanup_crit_edge, label %if.then37

if.else34.cleanup_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #21
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 48, ptr %data, align 8
  br label %cleanup

sw.bb41:                                          ; preds = %sw.bb
  %19 = and i32 %conv, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %19)
  %.not = icmp eq i32 %19, 17
  br i1 %.not, label %if.then47, label %if.else49

if.then47:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #21
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 240, ptr %data, align 8
  br label %cleanup

if.else49:                                        ; preds = %sw.bb41
  %and50 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else49.cleanup_crit_edge, label %if.then52

if.else49.cleanup_crit_edge:                      ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then52:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #21
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 48, ptr %data, align 8
  br label %cleanup

sw.bb56:                                          ; preds = %sw.bb.sw.bb56_crit_edge, %sw.bb.sw.bb56_crit_edge131, %sw.bb.sw.bb56_crit_edge132
  %and57 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %sw.bb56.cleanup_crit_edge, label %if.then59

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then59:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #21
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 48, ptr %data, align 8
  br label %cleanup

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %nqsets = getelementptr i8, ptr %dev, i32 2328
  %23 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nqsets, align 8
  %conv63 = zext i8 %24 to i64
  %data64 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %25 = ptrtoint ptr %data64 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv63, ptr %data64, align 8
  br label %cleanup

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %ethtool_filters = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 88
  %26 = ptrtoint ptr %ethtool_filters to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ethtool_filters, align 4
  %port = getelementptr inbounds %struct.cxgb4_ethtool_filter, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port, align 4
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %30 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_id, align 1
  %idxprom = zext i8 %31 to i32
  %in_use = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %29, i32 %idxprom, i32 2
  %32 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %in_use, align 4
  %34 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %34, align 8
  br label %cleanup

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %36 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %location, align 8
  %call67 = tail call fastcc i32 @cxgb4_ntuple_get_filter(ptr noundef %dev, ptr noundef %info, i32 noundef %37)
  br label %cleanup

sw.bb68:                                          ; preds = %entry
  %ethtool_filters69 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 88
  %38 = ptrtoint ptr %ethtool_filters69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ethtool_filters69, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %conv70 = zext i32 %41 to i64
  %data71 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %42 = ptrtoint ptr %data71 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv70, ptr %data71, align 8
  %43 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp125.not = icmp eq i32 %45, 0
  br i1 %cmp125.not, label %sw.bb68.cleanup_crit_edge, label %sw.bb68.while.body_crit_edge

sw.bb68.while.body_crit_edge:                     ; preds = %sw.bb68
  br label %while.body

sw.bb68.cleanup_crit_edge:                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

while.body:                                       ; preds = %if.end77.while.body_crit_edge, %sw.bb68.while.body_crit_edge
  %index.0127 = phi i32 [ %inc78, %if.end77.while.body_crit_edge ], [ 0, %sw.bb68.while.body_crit_edge ]
  %count.0126 = phi i32 [ %count.1, %if.end77.while.body_crit_edge ], [ 0, %sw.bb68.while.body_crit_edge ]
  %call73 = tail call fastcc i32 @cxgb4_ntuple_get_filter(ptr noundef %dev, ptr noundef %info, i32 noundef %index.0127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %while.body.if.end77_crit_edge

while.body.if.end77_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end77

if.then75:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %inc = add nuw i32 %count.0126, 1
  %arrayidx76 = getelementptr i32, ptr %rules, i32 %count.0126
  %46 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %index.0127, ptr %arrayidx76, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %while.body.if.end77_crit_edge
  %count.1 = phi i32 [ %count.0126, %while.body.if.end77_crit_edge ], [ %inc, %if.then75 ]
  %inc78 = add i32 %index.0127, 1
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %43, align 8
  %cmp = icmp ult i32 %count.1, %48
  br i1 %cmp, label %if.end77.while.body_crit_edge, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end77.while.body_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

cleanup:                                          ; preds = %if.end77.cleanup_crit_edge, %sw.bb68.cleanup_crit_edge, %sw.bb66, %sw.bb65, %sw.bb62, %if.then59, %sw.bb56.cleanup_crit_edge, %if.then52, %if.else49.cleanup_crit_edge, %if.then47, %if.then37, %if.else34.cleanup_crit_edge, %if.then32, %if.then26, %sw.bb23.cleanup_crit_edge, %if.then19, %if.else16.cleanup_crit_edge, %if.then14, %if.then6, %if.else.cleanup_crit_edge, %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %sw.bb66 ], [ 0, %sw.bb65 ], [ 0, %sw.bb62 ], [ 0, %sw.bb56.cleanup_crit_edge ], [ 0, %if.then59 ], [ 0, %if.then47 ], [ 0, %if.then52 ], [ 0, %if.else49.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.then37 ], [ 0, %if.else34.cleanup_crit_edge ], [ 0, %sw.bb23.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.then14 ], [ 0, %if.then19 ], [ 0, %if.else16.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %sw.bb68.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_rxnfc(ptr noundef %dev, ptr noundef %cmd) #0 align 64 {
entry:
  %input.i = alloca %struct.ethtool_rx_flow_spec_input, align 8
  %fs.i = alloca %struct.ch_filter_specification, align 8
  %tid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 50, label %sw.bb
    i32 49, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %input.i) #19
  %3 = ptrtoint ptr %input.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %input.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %fs.i) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid.i) #19
  %6 = ptrtoint ptr %tid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tid.i, align 4, !annotation !89
  %flags.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.cxgb4_ntuple_set_filter.exit_crit_edge, label %if.end.i

sw.bb.cxgb4_ntuple_set_filter.exit_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %cxgb4_ntuple_set_filter.exit

if.end.i:                                         ; preds = %sw.bb
  %ethtool_filters.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 88
  %9 = ptrtoint ptr %ethtool_filters.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ethtool_filters.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.end.i.cxgb4_ntuple_set_filter.exit_crit_edge, label %if.end4.i

if.end.i.cxgb4_ntuple_set_filter.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cxgb4_ntuple_set_filter.exit

if.end4.i:                                        ; preds = %if.end.i
  %fs5.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %location.i, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i = icmp ult i32 %12, %14
  br i1 %cmp.not.i, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev_dev.i, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %14) #24
  br label %cxgb4_ntuple_set_filter.exit

if.end10.i:                                       ; preds = %if.end4.i
  %port.i = getelementptr inbounds %struct.cxgb4_ethtool_filter, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port.i, align 4
  %port_id.i = getelementptr i8, ptr %dev, i32 2325
  %19 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port_id.i, align 1
  %idxprom.i = zext i8 %20 to i32
  %bmap.i = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %18, i32 %idxprom.i, i32 1
  %21 = ptrtoint ptr %bmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmap.i, align 4
  %div3.i.i = lshr i32 %12, 5
  %arrayidx.i.i = getelementptr i32, ptr %22, i32 %div3.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %12, 31
  %25 = shl nuw i32 1, %and.i.i
  %26 = and i32 %24, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool15.not.i = icmp eq i32 %26, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end10.i.cxgb4_ntuple_set_filter.exit_crit_edge

if.end10.i.cxgb4_ntuple_set_filter.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cxgb4_ntuple_set_filter.exit

if.end17.i:                                       ; preds = %if.end10.i
  %27 = call ptr @memset(ptr %fs.i, i32 0, i32 200)
  %28 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fs5.i, ptr %input.i, align 8
  %call20.i = call ptr @ethtool_rx_flow_rule_create(ptr noundef nonnull %input.i) #19
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then22.i, label %if.end24.i

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %call20.i to i32
  br label %cxgb4_ntuple_set_filter.exit

if.end24.i:                                       ; preds = %if.end17.i
  %30 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load.i = load i32, ptr %fs.i, align 8
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %fs.i, align 8
  %31 = ptrtoint ptr %call20.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call20.i, align 4
  %33 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %location.i, align 8
  %call27.i = call i32 @cxgb4_flow_rule_replace(ptr noundef %dev, ptr noundef %32, i32 noundef %34, ptr noundef null, ptr noundef nonnull %fs.i, ptr noundef nonnull %tid.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end24.i.free.i_crit_edge

if.end24.i.free.i_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %free.i

if.end30.i:                                       ; preds = %if.end24.i
  %35 = ptrtoint ptr %ethtool_filters.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ethtool_filters.i, align 4
  %port32.i = getelementptr inbounds %struct.cxgb4_ethtool_filter, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %port32.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port32.i, align 4
  %39 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %port_id.i, align 1
  %idxprom34.i = zext i8 %40 to i32
  %arrayidx35.i = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %38, i32 %idxprom34.i
  %41 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load36.i = load i32, ptr %fs.i, align 8
  %42 = and i32 %bf.load36.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool38.not.i = icmp eq i32 %42, 0
  br i1 %tobool38.not.i, label %if.else.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #21
  %hpftid_base.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 48, i32 15
  %43 = ptrtoint ptr %hpftid_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hpftid_base.i, align 4
  %45 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tid.i, align 4
  %add.i = add i32 %46, %44
  store i32 %add.i, ptr %tid.i, align 4
  br label %if.end49.i

if.else.i:                                        ; preds = %if.end30.i
  %47 = and i32 %bf.load36.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool43.not.i = icmp eq i32 %47, 0
  br i1 %tobool43.not.i, label %if.then44.i, label %if.else.i.if.end49.i_crit_edge

if.else.i.if.end49.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end49.i

if.then44.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %ftid_base.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 48, i32 19
  %48 = ptrtoint ptr %ftid_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ftid_base.i, align 4
  %nhpftids.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 48, i32 14
  %50 = ptrtoint ptr %nhpftids.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nhpftids.i, align 8
  %sub.i = sub i32 %49, %51
  %52 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tid.i, align 4
  %add47.i = add i32 %sub.i, %53
  store i32 %add47.i, ptr %tid.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then44.i, %if.else.i.if.end49.i_crit_edge, %if.then39.i
  %54 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tid.i, align 4
  %56 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx35.i, align 4
  %58 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %location.i, align 8
  %arrayidx52.i = getelementptr i32, ptr %57, i32 %59
  %60 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %55, ptr %arrayidx52.i, align 4
  %61 = load i32, ptr %location.i, align 8
  %bmap55.i = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %38, i32 %idxprom34.i, i32 1
  %62 = ptrtoint ptr %bmap55.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bmap55.i, align 4
  call void @_set_bit(i32 noundef %61, ptr noundef %63) #19
  %in_use.i = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %38, i32 %idxprom34.i, i32 2
  %64 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %in_use.i, align 4
  %inc.i = add i32 %65, 1
  store i32 %inc.i, ptr %in_use.i, align 4
  br label %free.i

free.i:                                           ; preds = %if.end49.i, %if.end24.i.free.i_crit_edge
  call void @ethtool_rx_flow_rule_destroy(ptr noundef %call20.i) #19
  br label %cxgb4_ntuple_set_filter.exit

cxgb4_ntuple_set_filter.exit:                     ; preds = %free.i, %if.then22.i, %if.end10.i.cxgb4_ntuple_set_filter.exit_crit_edge, %do.end.i, %if.end.i.cxgb4_ntuple_set_filter.exit_crit_edge, %sw.bb.cxgb4_ntuple_set_filter.exit_crit_edge
  %retval.0.i = phi i32 [ -34, %do.end.i ], [ -11, %sw.bb.cxgb4_ntuple_set_filter.exit_crit_edge ], [ -95, %if.end.i.cxgb4_ntuple_set_filter.exit_crit_edge ], [ -17, %if.end10.i.cxgb4_ntuple_set_filter.exit_crit_edge ], [ %29, %if.then22.i ], [ %call27.i, %free.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid.i) #19
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %fs.i) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %input.i) #19
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %add.ptr.i.i.i.i7 = getelementptr i8, ptr %dev, i32 2304
  %66 = ptrtoint ptr %add.ptr.i.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i.i.i.i7, align 8
  %flags.i8 = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %flags.i8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i8, align 32
  %and.i9 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i13

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end.i13:                                       ; preds = %sw.bb2
  %ethtool_filters.i11 = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 88
  %70 = ptrtoint ptr %ethtool_filters.i11 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ethtool_filters.i11, align 4
  %tobool2.not.i12 = icmp eq ptr %71, null
  br i1 %tobool2.not.i12, label %if.end.i13.sw.epilog_crit_edge, label %if.end4.i16

if.end.i13.sw.epilog_crit_edge:                   ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end4.i16:                                      ; preds = %if.end.i13
  %location.i14 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %72 = ptrtoint ptr %location.i14 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %location.i14, align 8
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp.not.i15 = icmp ult i32 %73, %75
  br i1 %cmp.not.i15, label %if.end9.i, label %do.end.i18

do.end.i18:                                       ; preds = %if.end4.i16
  call void @__sanitizer_cov_trace_pc() #21
  %pdev_dev.i17 = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 4
  %76 = ptrtoint ptr %pdev_dev.i17 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev_dev.i17, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.2, i32 noundef %75) #24
  br label %sw.epilog

if.end9.i:                                        ; preds = %if.end4.i16
  %port.i19 = getelementptr inbounds %struct.cxgb4_ethtool_filter, ptr %71, i32 0, i32 1
  %78 = ptrtoint ptr %port.i19 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %port.i19, align 4
  %port_id.i20 = getelementptr i8, ptr %dev, i32 2325
  %80 = ptrtoint ptr %port_id.i20 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %port_id.i20, align 1
  %idxprom.i21 = zext i8 %81 to i32
  %bmap.i22 = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %79, i32 %idxprom.i21, i32 1
  %82 = ptrtoint ptr %bmap.i22 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bmap.i22, align 4
  %div3.i.i23 = lshr i32 %73, 5
  %arrayidx.i.i24 = getelementptr i32, ptr %83, i32 %div3.i.i23
  %84 = ptrtoint ptr %arrayidx.i.i24 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %arrayidx.i.i24, align 4
  %and.i.i25 = and i32 %73, 31
  %86 = shl nuw i32 1, %and.i.i25
  %87 = and i32 %85, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool14.not.i = icmp eq i32 %87, 0
  br i1 %tobool14.not.i, label %if.end9.i.sw.epilog_crit_edge, label %if.end16.i

if.end9.i.sw.epilog_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end16.i:                                       ; preds = %if.end9.i
  %arrayidx.i = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %79, i32 %idxprom.i21
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx19.i = getelementptr i32, ptr %89, i32 %73
  %90 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx19.i, align 4
  %tids.i.i = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 48
  %hpftid_base.i.i = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 48, i32 15
  %92 = ptrtoint ptr %hpftid_base.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hpftid_base.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp.not.i.i = icmp ult i32 %91, %93
  br i1 %cmp.not.i.i, label %if.end16.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end16.i.if.end.i.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end16.i
  %nhpftids.i.i = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 48, i32 14
  %94 = ptrtoint ptr %nhpftids.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nhpftids.i.i, align 8
  %add.i.i = add i32 %95, %93
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %91)
  %cmp2.i.i = icmp ugt i32 %add.i.i, %91
  br i1 %cmp2.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %hpftid_tab.i.i = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 48, i32 12
  %96 = ptrtoint ptr %hpftid_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hpftid_tab.i.i, align 16
  %sub.i.i = sub i32 %91, %93
  %arrayidx.i76.i = getelementptr %struct.filter_entry, ptr %97, i32 %sub.i.i
  br label %cxgb4_get_filter_entry.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end16.i.if.end.i.i_crit_edge
  %ftid_base.i.i = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 48, i32 19
  %98 = ptrtoint ptr %ftid_base.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ftid_base.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %99)
  %cmp4.not.i.i = icmp ult i32 %91, %99
  br i1 %cmp4.not.i.i, label %if.end.i.i.if.end13.i.i_crit_edge, label %land.lhs.true5.i.i

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13.i.i

land.lhs.true5.i.i:                               ; preds = %if.end.i.i
  %nftids.i.i = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 48, i32 18
  %100 = ptrtoint ptr %nftids.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nftids.i.i, align 8
  %add7.i.i = add i32 %101, %99
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i, i32 %91)
  %cmp8.i.i = icmp ugt i32 %add7.i.i, %91
  br i1 %cmp8.i.i, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end13.i.i_crit_edge

land.lhs.true5.i.i.if.end13.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %ftid_tab.i.i = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 48, i32 16
  %102 = ptrtoint ptr %ftid_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ftid_tab.i.i, align 64
  %sub11.i.i = sub i32 %91, %99
  %arrayidx12.i.i = getelementptr %struct.filter_entry, ptr %103, i32 %sub11.i.i
  br label %cxgb4_get_filter_entry.exit.i

if.end13.i.i:                                     ; preds = %land.lhs.true5.i.i.if.end13.i.i_crit_edge, %if.end.i.i.if.end13.i.i_crit_edge
  %tid_base.i.i.i = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 48, i32 1
  %104 = ptrtoint ptr %tid_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tid_base.i.i.i, align 4
  %sub.i.i.i = sub i32 %91, %105
  %ntids.i.i.i = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 48, i32 2
  %106 = ptrtoint ptr %ntids.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ntids.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %107)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %107
  br i1 %cmp.i.i.i, label %cond.true.i.i.i, label %if.end13.i.i.cxgb4_get_filter_entry.exit.i_crit_edge

if.end13.i.i.cxgb4_get_filter_entry.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cxgb4_get_filter_entry.exit.i

cond.true.i.i.i:                                  ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %108 = ptrtoint ptr %tids.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tids.i.i, align 128
  %arrayidx.i.i.i = getelementptr ptr, ptr %109, i32 %sub.i.i.i
  %110 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i.i.i, align 4
  br label %cxgb4_get_filter_entry.exit.i

cxgb4_get_filter_entry.exit.i:                    ; preds = %cond.true.i.i.i, %if.end13.i.i.cxgb4_get_filter_entry.exit.i_crit_edge, %if.then9.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %arrayidx.i76.i, %if.then.i.i ], [ %arrayidx12.i.i, %if.then9.i.i ], [ %111, %cond.true.i.i.i ], [ null, %if.end13.i.i.cxgb4_get_filter_entry.exit.i_crit_edge ]
  %fs21.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i.i, i32 0, i32 6
  %112 = ptrtoint ptr %fs21.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %bf.load.i26 = load i32, ptr %fs21.i, align 8
  %113 = and i32 %bf.load.i26, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool22.not.i = icmp eq i32 %113, 0
  br i1 %tobool22.not.i, label %if.else.i29, label %if.then23.i

if.then23.i:                                      ; preds = %cxgb4_get_filter_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i27 = sub i32 %91, %93
  br label %if.end35.i

if.else.i29:                                      ; preds = %cxgb4_get_filter_entry.exit.i
  %114 = and i32 %bf.load.i26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool28.not.i28 = icmp eq i32 %114, 0
  br i1 %tobool28.not.i28, label %if.then29.i, label %if.else.i29.if.end35.i_crit_edge

if.else.i29.if.end35.i_crit_edge:                 ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35.i

if.then29.i:                                      ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #21
  %ftid_base.i30 = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 48, i32 19
  %115 = ptrtoint ptr %ftid_base.i30 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ftid_base.i30, align 4
  %nhpftids.i31 = getelementptr inbounds %struct.adapter, ptr %67, i32 0, i32 48, i32 14
  %117 = ptrtoint ptr %nhpftids.i31 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nhpftids.i31, align 8
  %sub32.neg.i = sub i32 %91, %116
  %sub33.i = add i32 %sub32.neg.i, %118
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then29.i, %if.else.i29.if.end35.i_crit_edge, %if.then23.i
  %filter_id.0.i = phi i32 [ %sub.i27, %if.then23.i ], [ %91, %if.else.i29.if.end35.i_crit_edge ], [ %sub33.i, %if.then29.i ]
  %tc_prio.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i.i, i32 0, i32 6, i32 8
  %119 = ptrtoint ptr %tc_prio.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tc_prio.i, align 8
  %call38.i = tail call i32 @cxgb4_flow_rule_destroy(ptr noundef %dev, i32 noundef %120, ptr noundef %fs21.i, i32 noundef %filter_id.0.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end35.i.sw.epilog_crit_edge

if.end35.i.sw.epilog_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end41.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #21
  %121 = ptrtoint ptr %location.i14 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %location.i14, align 8
  %123 = ptrtoint ptr %bmap.i22 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bmap.i22, align 4
  tail call void @_clear_bit(i32 noundef %122, ptr noundef %124) #19
  %in_use.i32 = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %79, i32 %idxprom.i21, i32 2
  %125 = ptrtoint ptr %in_use.i32 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %in_use.i32, align 4
  %dec.i = add i32 %126, -1
  store i32 %dec.i, ptr %in_use.i32, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end41.i, %if.end35.i.sw.epilog_crit_edge, %if.end9.i.sw.epilog_crit_edge, %do.end.i18, %if.end.i13.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %cxgb4_ntuple_set_filter.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ %retval.0.i, %cxgb4_ntuple_set_filter.exit ], [ -34, %do.end.i18 ], [ -11, %sw.bb2.sw.epilog_crit_edge ], [ -95, %if.end.i13.sw.epilog_crit_edge ], [ -2, %if.end9.i.sw.epilog_crit_edge ], [ %call38.i, %if.end35.i.sw.epilog_crit_edge ], [ 0, %if.end41.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_flash(ptr nocapture noundef readonly %netdev, ptr noundef %ef) #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #19
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !89
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %4, i32 12472
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #19, !srcloc !90
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !91
  %and2 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %shr = lshr i32 %6, 12
  %and = and i32 %shr, 7
  %pf = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %8)
  %cmp.not = icmp eq i32 %and, %8
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %do.end

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.8) #24
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %data = getelementptr inbounds %struct.ethtool_flash, ptr %ef, i32 0, i32 2
  %arrayidx = getelementptr %struct.ethtool_flash, ptr %ef, i32 0, i32 2, i32 127
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  %pdev_dev8 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %pdev_dev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev_dev8, align 16
  %call9 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %data, ptr noundef %13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  %data14 = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data14, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %region16 = getelementptr inbounds %struct.ethtool_flash, ptr %ef, i32 0, i32 1
  %20 = ptrtoint ptr %region16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %region16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp17 = icmp eq i32 %21, 0
  br i1 %cmp17, label %while.cond.preheader, label %if.else

while.cond.preheader:                             ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp20.not75 = icmp eq i32 %19, 0
  br i1 %cmp20.not75, label %while.cond.preheader.out_free_fw_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.out_free_fw_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_fw

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %fw_size.078 = phi i32 [ %sub, %if.end31.while.body_crit_edge ], [ %19, %while.cond.preheader.while.body_crit_edge ]
  %fw_data.076 = phi ptr [ %add.ptr, %if.end31.while.body_crit_edge ], [ %17, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %fw_data.076, i32 352
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1130915180, i32 %23)
  %cmp.not.i.i = icmp eq i32 %23, 1130915180
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %len512.i.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.076, i32 0, i32 2
  %24 = ptrtoint ptr %len512.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len512.i.i, align 2
  %conv.i.i = zext i16 %25 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 9
  br label %lor.lhs.false

if.end.i:                                         ; preds = %while.body
  %26 = ptrtoint ptr %fw_data.076 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fw_data.076, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %27)
  %cmp.not.i19.i = icmp eq i16 %27, 21930
  br i1 %cmp.not.i19.i, label %if.end.i.do.body.i.i_crit_edge, label %if.end4.i

if.end.i.do.body.i.i_crit_edge:                   ; preds = %if.end.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end.i.do.body.i.i_crit_edge
  %size.0 = phi i32 [ %add.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 0, %if.end.i.do.body.i.i_crit_edge ]
  %cur_header.0.i.i = phi ptr [ %add.ptr9.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %fw_data.076, %if.end.i.do.body.i.i_crit_edge ]
  %pcir_offset3.i.i = getelementptr inbounds %struct.legacy_pci_rom_hdr, ptr %cur_header.0.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %pcir_offset3.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pcir_offset3.i.i, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29) #19
  %conv4.i.i = zext i16 %30 to i32
  %add.ptr.i.i = getelementptr i8, ptr %cur_header.0.i.i, i32 %conv4.i.i
  %size512.i.i = getelementptr inbounds %struct.legacy_pci_rom_hdr, ptr %cur_header.0.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %size512.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %size512.i.i, align 2
  %conv5.i.i = zext i8 %32 to i32
  %mul.i22.i = shl nuw nsw i32 %conv5.i.i, 9
  %add.i.i = add i32 %mul.i22.i, %size.0
  %add.ptr9.i.i = getelementptr i8, ptr %cur_header.0.i.i, i32 %mul.i22.i
  %indicator.i.i = getelementptr inbounds %struct.cxgb4_pcir_data, ptr %add.ptr.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %indicator.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %indicator.i.i, align 1
  %tobool11.not.i.i = icmp sgt i8 %34, -1
  br i1 %tobool11.not.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.lor.lhs.false_crit_edge

do.body.i.i.lor.lhs.false_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i

if.end4.i:                                        ; preds = %if.end.i
  %35 = ptrtoint ptr %fw_data.076 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_data.076, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 318767338, i32 %36)
  %cmp.not.i24.i = icmp eq i32 %36, 318767338
  br i1 %cmp.not.i24.i, label %if.end4.i.lor.lhs.false.thread_crit_edge, label %if.end8.i

if.end4.i.lor.lhs.false.thread_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false.thread

if.end8.i:                                        ; preds = %if.end4.i
  %37 = ptrtoint ptr %fw_data.076 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %fw_data.076, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17218, i16 %38)
  %cmp.not.i25.i = icmp eq i16 %38, 17218
  br i1 %cmp.not.i25.i, label %if.end8.i.lor.lhs.false.thread_crit_edge, label %if.end8.i.out_free_fw_crit_edge

if.end8.i.out_free_fw_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_fw

if.end8.i.lor.lhs.false.thread_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false.thread

lor.lhs.false.thread:                             ; preds = %if.end8.i.lor.lhs.false.thread_crit_edge, %if.end4.i.lor.lhs.false.thread_crit_edge
  %retval.0.i.ph.ph = phi i32 [ 2, %if.end4.i.lor.lhs.false.thread_crit_edge ], [ 4, %if.end8.i.lor.lhs.false.thread_crit_edge ]
  br label %out_free_fw

lor.lhs.false:                                    ; preds = %do.body.i.i.lor.lhs.false_crit_edge, %if.end.i.i
  %size.1.ph = phi i32 [ %mul.i.i, %if.end.i.i ], [ %add.i.i, %do.body.i.i.lor.lhs.false_crit_edge ]
  %retval.0.i.ph = phi i32 [ 1, %if.end.i.i ], [ 3, %do.body.i.i.lor.lhs.false_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1.ph)
  %tobool25.not = icmp eq i32 %size.1.ph, 0
  br i1 %tobool25.not, label %lor.lhs.false.out_free_fw_crit_edge, label %if.end27

lor.lhs.false.out_free_fw_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_fw

if.end27:                                         ; preds = %lor.lhs.false
  %call28 = call fastcc i32 @cxgb4_ethtool_flash_region(ptr noundef %netdev, ptr noundef %fw_data.076, i32 noundef %size.1.ph, i32 noundef %retval.0.i.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.out_free_fw_crit_edge

if.end27.out_free_fw_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_fw

if.end31:                                         ; preds = %if.end27
  %add.ptr = getelementptr i8, ptr %fw_data.076, i32 %size.1.ph
  %sub = sub i32 %fw_size.078, %size.1.ph
  %cmp20.not = icmp eq i32 %sub, 0
  br i1 %cmp20.not, label %if.end31.out_free_fw_crit_edge, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

if.end31.out_free_fw_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_fw

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  %call33 = call fastcc i32 @cxgb4_ethtool_flash_region(ptr noundef %netdev, ptr noundef %17, i32 noundef %19, i32 noundef %21)
  br label %out_free_fw

out_free_fw:                                      ; preds = %if.else, %if.end31.out_free_fw_crit_edge, %if.end27.out_free_fw_crit_edge, %lor.lhs.false.out_free_fw_crit_edge, %lor.lhs.false.thread, %if.end8.i.out_free_fw_crit_edge, %while.cond.preheader.out_free_fw_crit_edge
  %ret.1 = phi i32 [ %call33, %if.else ], [ -95, %if.end8.i.out_free_fw_crit_edge ], [ %retval.0.i.ph.ph, %lor.lhs.false.thread ], [ %call9, %while.cond.preheader.out_free_fw_crit_edge ], [ %call28, %if.end27.out_free_fw_crit_edge ], [ 0, %if.end31.out_free_fw_crit_edge ], [ %retval.0.i.ph, %lor.lhs.false.out_free_fw_crit_edge ]
  %39 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %40) #19
  br label %cleanup

cleanup:                                          ; preds = %out_free_fw, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %ret.1, %out_free_fw ], [ %call9, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #19
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_rss_table_size(ptr nocapture noundef readonly %dev) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_size = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rss_size, align 4
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_rss_table(ptr nocapture noundef readonly %dev, ptr noundef writeonly %p, ptr nocapture noundef readnone %key, ptr noundef writeonly %hfunc) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_size = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rss_size, align 4
  %conv = zext i16 %1 to i32
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %2 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %p, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool4.not13 = icmp eq i16 %1, 0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool4.not13
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %rss = getelementptr i8, ptr %dev, i32 2384
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %n.014 = phi i32 [ %conv, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %n.014, -1
  %3 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rss, align 8
  %arrayidx = getelementptr i16, ptr %4, i32 %dec
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv5 = zext i16 %6 to i32
  %arrayidx6 = getelementptr i32, ptr %p, i32 %dec
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv5, ptr %arrayidx6, align 4
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_rss_table(ptr noundef %dev, ptr noundef readonly %p, ptr noundef readnone %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  %or.cond = and i1 %tobool.not, %switch
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %p, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 32
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %for.cond.preheader

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  %rss_size = getelementptr i8, ptr %dev, i32 2316
  %4 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rss_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp1129.not = icmp eq i16 %5, 0
  br i1 %cmp1129.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rss = getelementptr i8, ptr %dev, i32 2384
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %p, i32 %i.030
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %conv13 = trunc i32 %7 to i16
  %8 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rss, align 8
  %arrayidx14 = getelementptr i16, ptr %9, i32 %i.030
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv13, ptr %arrayidx14, align 2
  %inc = add nuw nsw i32 %i.030, 1
  %11 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rss_size, align 4
  %conv10 = zext i16 %12 to i32
  %cmp11 = icmp ult i32 %inc, %conv10
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %rss15 = getelementptr i8, ptr %dev, i32 2384
  %13 = ptrtoint ptr %rss15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rss15, align 8
  %call16 = tail call i32 @cxgb4_write_rss(ptr noundef %add.ptr.i, ptr noundef %14) #19
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %for.end ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_dump_flag(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %eth_dump) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %flag = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 81, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flag, align 4
  %flag2 = getelementptr inbounds %struct.ethtool_dump, ptr %eth_dump, i32 0, i32 2
  %4 = ptrtoint ptr %flag2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flag2, align 4
  %len = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 81, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %len4 = getelementptr inbounds %struct.ethtool_dump, ptr %eth_dump, i32 0, i32 3
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %len4, align 4
  %version = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 81, i32 1
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version, align 4
  %version6 = getelementptr inbounds %struct.ethtool_dump, ptr %eth_dump, i32 0, i32 1
  %10 = ptrtoint ptr %version6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %version6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_dump_data(ptr nocapture noundef readonly %dev, ptr nocapture noundef %eth_dump, ptr noundef %buf) #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #19
  %flag = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 81, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @cxgb4_get_dump_length(ptr noundef %1, i32 noundef %3) #19
  %add = add i32 %call4, 3800
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %len, align 4
  %len5 = getelementptr inbounds %struct.ethtool_dump, ptr %eth_dump, i32 0, i32 3
  %5 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add)
  %cmp6 = icmp ult i32 %6, %add
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flag, align 4
  %call11 = call i32 @cxgb4_cudbg_collect(ptr noundef %1, ptr noundef %buf, ptr noundef nonnull %len, i32 noundef %8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flag, align 4
  %flag16 = getelementptr inbounds %struct.ethtool_dump, ptr %eth_dump, i32 0, i32 2
  %11 = ptrtoint ptr %flag16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %flag16, align 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = ptrtoint ptr %len5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %len5, align 4
  %version = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 81, i32 1
  %15 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version, align 4
  %version19 = getelementptr inbounds %struct.ethtool_dump, ptr %eth_dump, i32 0, i32 1
  %17 = ptrtoint ptr %version19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %version19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_dump(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %eth_dump) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %eth_dump, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flag, align 4
  %call1 = tail call i32 @cxgb4_get_dump_length(ptr noundef %1, i32 noundef %3) #19
  %add = add i32 %call1, 3800
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flag, align 4
  %flag4 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 81, i32 2
  %6 = ptrtoint ptr %flag4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %flag4, align 4
  %len6 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 81, i32 3
  %7 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %len6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_ts_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ts_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 1
  %2 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 95, ptr %so_timestamping, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 3
  %3 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 5
  %4 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 497, ptr %rx_filters, align 4
  %ptp_clock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 64
  %5 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp_clock, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call4 = tail call i32 @ptp_clock_index(ptr noundef nonnull %6) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4.sink = phi i32 [ %call4, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %7 = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call4.sink, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_get_module_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %modinfo) #0 align 64 {
entry:
  %sff8472_comp = alloca i8, align 1
  %sff_diag_type = alloca i8, align 1
  %sff_rev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sff8472_comp) #19
  %0 = ptrtoint ptr %sff8472_comp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sff8472_comp, align 1, !annotation !89
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sff_diag_type) #19
  %1 = ptrtoint ptr %sff_diag_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %sff_diag_type, align 1, !annotation !89
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sff_rev) #19
  %2 = ptrtoint ptr %sff_rev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %sff_rev, align 1, !annotation !89
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %mod_type = getelementptr i8, ptr %dev, i32 2324
  %5 = ptrtoint ptr %mod_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mod_type, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %6, label %if.end [
    i8 31, label %entry.cleanup_crit_edge
    i8 28, label %entry.cleanup_crit_edge73
  ]

entry.cleanup_crit_edge73:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_type = getelementptr i8, ptr %dev, i32 2320
  %8 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_type, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 9, label %if.end.sw.bb_crit_edge
    i32 13, label %if.end.sw.bb_crit_edge74
    i32 20, label %if.end.sw.bb_crit_edge75
    i32 14, label %if.end.sw.bb28_crit_edge
    i32 12, label %if.end.sw.bb28_crit_edge76
    i32 18, label %if.end.sw.bb28_crit_edge77
    i32 19, label %if.end.sw.bb28_crit_edge78
    i32 17, label %if.end.sw.bb28_crit_edge79
  ]

if.end.sw.bb28_crit_edge79:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb28

if.end.sw.bb28_crit_edge78:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb28

if.end.sw.bb28_crit_edge77:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb28

if.end.sw.bb28_crit_edge76:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb28

if.end.sw.bb28_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb28

if.end.sw.bb_crit_edge75:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb

if.end.sw.bb_crit_edge74:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge74, %if.end.sw.bb_crit_edge75
  %mbox = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 6
  %11 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbox, align 8
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %13 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tx_chan, align 2
  %conv3 = zext i8 %14 to i32
  %call4 = call i32 @t4_i2c_rd(ptr noundef %4, i32 noundef %12, i32 noundef %conv3, i32 noundef 160, i32 noundef 94, i32 noundef 1, ptr noundef nonnull %sff8472_comp) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %15 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mbox, align 8
  %17 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_chan, align 2
  %conv9 = zext i8 %18 to i32
  %call10 = call i32 @t4_i2c_rd(ptr noundef %4, i32 noundef %16, i32 noundef %conv9, i32 noundef 160, i32 noundef 92, i32 noundef 1, ptr noundef nonnull %sff_diag_type) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %19 = ptrtoint ptr %sff8472_comp to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sff8472_comp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool14.not = icmp eq i8 %20, 0
  br i1 %tobool14.not, label %if.end13.if.then17_crit_edge, label %lor.lhs.false

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end13
  %21 = ptrtoint ptr %sff_diag_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sff_diag_type, align 1
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool16.not = icmp eq i8 %23, 0
  br i1 %tobool16.not, label %if.else, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end13.if.then17_crit_edge
  %type = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %type, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %25 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 256, ptr %eeprom_len, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %type18 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %26 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %type18, align 4
  %27 = and i8 %22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool21.not = icmp eq i8 %27, 0
  %eeprom_len25 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %28 = ptrtoint ptr %eeprom_len25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 512, ptr %eeprom_len25, align 4
  br label %cleanup

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %eeprom_len25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 256, ptr %eeprom_len25, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %if.end.sw.bb28_crit_edge, %if.end.sw.bb28_crit_edge76, %if.end.sw.bb28_crit_edge77, %if.end.sw.bb28_crit_edge78, %if.end.sw.bb28_crit_edge79
  %mbox29 = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 6
  %30 = ptrtoint ptr %mbox29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mbox29, align 8
  %tx_chan30 = getelementptr i8, ptr %dev, i32 2326
  %32 = ptrtoint ptr %tx_chan30 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tx_chan30, align 2
  %conv31 = zext i8 %33 to i32
  %call32 = call i32 @t4_i2c_rd(ptr noundef %4, i32 noundef %31, i32 noundef %conv31, i32 noundef 160, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %sff_rev) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end35:                                         ; preds = %sw.bb28
  %34 = ptrtoint ptr %sff_rev to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sff_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp = icmp ugt i8 %35, 2
  %type39 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  br i1 %cmp, label %if.then38, label %if.else41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  %36 = ptrtoint ptr %type39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %type39, align 4
  %eeprom_len40 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %37 = ptrtoint ptr %eeprom_len40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 256, ptr %eeprom_len40, align 4
  br label %cleanup

if.else41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  %38 = ptrtoint ptr %type39 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %type39, align 4
  %eeprom_len43 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %39 = ptrtoint ptr %eeprom_len43 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 256, ptr %eeprom_len43, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else41, %if.then38, %sw.bb28.cleanup_crit_edge, %if.else24, %if.then22, %if.then17, %if.end6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge73
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %sw.bb.cleanup_crit_edge ], [ %call10, %if.end6.cleanup_crit_edge ], [ %call32, %sw.bb28.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %if.else41 ], [ 0, %if.then17 ], [ 0, %if.else24 ], [ 0, %if.then22 ], [ -22, %entry.cleanup_crit_edge73 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sff_rev) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sff_diag_type) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sff8472_comp) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_get_module_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %eprom, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eprom, i32 0, i32 3
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %6 = call ptr @memset(ptr %data, i32 0, i32 %3)
  %add = add i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %add)
  %cmp = icmp slt i32 %add, 257
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %mbox = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mbox, align 8
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %9 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx_chan, align 2
  %conv = zext i8 %10 to i32
  %call5 = tail call i32 @t4_i2c_rd(ptr noundef %5, i32 noundef %8, i32 noundef %conv, i32 noundef 160, i32 noundef %1, i32 noundef %3, ptr noundef %data) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %1)
  %cmp6 = icmp slt i32 %1, 257
  br i1 %cmp6, label %if.then8, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then8:                                         ; preds = %if.end
  %sub = sub i32 256, %1
  %mbox9 = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %mbox9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbox9, align 8
  %tx_chan10 = getelementptr i8, ptr %dev, i32 2326
  %13 = ptrtoint ptr %tx_chan10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tx_chan10, align 2
  %conv11 = zext i8 %14 to i32
  %call12 = tail call i32 @t4_i2c_rd(ptr noundef %5, i32 noundef %12, i32 noundef %conv11, i32 noundef 160, i32 noundef %1, i32 noundef %sub, ptr noundef %data) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #21
  %15 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len2, align 4
  %sub16 = sub i32 %16, %sub
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end.if.end17_crit_edge
  %offset.0 = phi i32 [ 256, %if.end14 ], [ %1, %if.end.if.end17_crit_edge ]
  %len.0 = phi i32 [ %sub16, %if.end14 ], [ %3, %if.end.if.end17_crit_edge ]
  %mbox18 = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %mbox18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbox18, align 8
  %tx_chan19 = getelementptr i8, ptr %dev, i32 2326
  %19 = ptrtoint ptr %tx_chan19 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx_chan19, align 2
  %conv20 = zext i8 %20 to i32
  %21 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len2, align 4
  %sub22 = sub i32 %22, %len.0
  %arrayidx = getelementptr i8, ptr %data, i32 %sub22
  %call23 = tail call i32 @t4_i2c_rd(ptr noundef %5, i32 noundef %18, i32 noundef %conv20, i32 noundef 162, i32 noundef %offset.0, i32 noundef %len.0, ptr noundef %arrayidx) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ %call23, %if.end17 ], [ %call12, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_link_ksettings(ptr noundef %dev, ptr noundef %link_ksettings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call3 = tail call i32 @t4_update_port_info(ptr noundef %add.ptr.i) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 1
  %lp_advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 2
  %port_type = getelementptr i8, ptr %dev, i32 2320
  %2 = call ptr @memset(ptr %link_modes, i32 0, i32 36)
  %3 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_type, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %4, label %if.end48.i [
    i32 2, label %if.end.from_fw_port_mod_type.exit_crit_edge
    i32 3, label %if.end.from_fw_port_mod_type.exit_crit_edge95
    i32 4, label %if.end.from_fw_port_mod_type.exit_crit_edge96
    i32 0, label %if.end.if.then7.i_crit_edge
    i32 1, label %if.end.if.then7.i_crit_edge97
    i32 9, label %if.end.if.then24.i_crit_edge
    i32 12, label %if.end.if.then24.i_crit_edge98
    i32 13, label %if.end.if.then24.i_crit_edge99
    i32 14, label %if.end.if.then24.i_crit_edge100
    i32 17, label %if.end.if.then24.i_crit_edge101
    i32 18, label %if.end.if.then24.i_crit_edge102
    i32 19, label %if.end.if.then24.i_crit_edge103
    i32 20, label %if.end.if.then24.i_crit_edge104
    i32 16, label %if.end.if.then45.i_crit_edge
    i32 21, label %if.end.if.then45.i_crit_edge105
    i32 22, label %if.end.if.then45.i_crit_edge106
  ]

if.end.if.then45.i_crit_edge106:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then45.i

if.end.if.then45.i_crit_edge105:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then45.i

if.end.if.then45.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then45.i

if.end.if.then24.i_crit_edge104:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24.i

if.end.if.then24.i_crit_edge103:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24.i

if.end.if.then24.i_crit_edge102:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24.i

if.end.if.then24.i_crit_edge101:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24.i

if.end.if.then24.i_crit_edge100:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24.i

if.end.if.then24.i_crit_edge99:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24.i

if.end.if.then24.i_crit_edge98:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24.i

if.end.if.then24.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24.i

if.end.if.then7.i_crit_edge97:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then7.i

if.end.if.then7.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then7.i

if.end.from_fw_port_mod_type.exit_crit_edge96:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %from_fw_port_mod_type.exit

if.end.from_fw_port_mod_type.exit_crit_edge95:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %from_fw_port_mod_type.exit

if.end.from_fw_port_mod_type.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %from_fw_port_mod_type.exit

if.then7.i:                                       ; preds = %if.end.if.then7.i_crit_edge, %if.end.if.then7.i_crit_edge97
  br label %from_fw_port_mod_type.exit

if.then24.i:                                      ; preds = %if.end.if.then24.i_crit_edge, %if.end.if.then24.i_crit_edge98, %if.end.if.then24.i_crit_edge99, %if.end.if.then24.i_crit_edge100, %if.end.if.then24.i_crit_edge101, %if.end.if.then24.i_crit_edge102, %if.end.if.then24.i_crit_edge103, %if.end.if.then24.i_crit_edge104
  %mod_type = getelementptr i8, ptr %dev, i32 2324
  %6 = ptrtoint ptr %mod_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mod_type, align 4
  %switch.tableidx = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %8 = icmp ult i8 %switch.tableidx, 6
  br i1 %8, label %switch.lookup, label %if.then24.i.from_fw_port_mod_type.exit_crit_edge

if.then24.i.from_fw_port_mod_type.exit_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %from_fw_port_mod_type.exit

if.then45.i:                                      ; preds = %if.end.if.then45.i_crit_edge, %if.end.if.then45.i_crit_edge105, %if.end.if.then45.i_crit_edge106
  br label %from_fw_port_mod_type.exit

if.end48.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %from_fw_port_mod_type.exit

switch.lookup:                                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #21
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.get_link_ksettings, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %10)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %from_fw_port_mod_type.exit

from_fw_port_mod_type.exit:                       ; preds = %switch.lookup, %if.end48.i, %if.then45.i, %if.then24.i.from_fw_port_mod_type.exit_crit_edge, %if.then7.i, %if.end.from_fw_port_mod_type.exit_crit_edge, %if.end.from_fw_port_mod_type.exit_crit_edge95, %if.end.from_fw_port_mod_type.exit_crit_edge96
  %retval.0.i = phi i8 [ 3, %if.then7.i ], [ -17, %if.then45.i ], [ -1, %if.end48.i ], [ 0, %if.end.from_fw_port_mod_type.exit_crit_edge ], [ 0, %if.end.from_fw_port_mod_type.exit_crit_edge95 ], [ 0, %if.end.from_fw_port_mod_type.exit_crit_edge96 ], [ %switch.load, %switch.lookup ], [ -1, %if.then24.i.from_fw_port_mod_type.exit_crit_edge ]
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 3
  %11 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %retval.0.i, ptr %port, align 1
  %mdio_addr = getelementptr i8, ptr %dev, i32 2318
  %12 = ptrtoint ptr %mdio_addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mdio_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp = icmp sgt i8 %13, -1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 4
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %from_fw_port_mod_type.exit
  call void @__sanitizer_cov_trace_pc() #21
  %14 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %phy_address, align 2
  %15 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp15 = icmp eq i32 %16, 2
  %conv17 = select i1 %cmp15, i8 1, i8 2
  br label %if.end20

if.else:                                          ; preds = %from_fw_port_mod_type.exit
  call void @__sanitizer_cov_trace_pc() #21
  %17 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %phy_address, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then12
  %.sink = phi i8 [ %conv17, %if.then12 ], [ 0, %if.else ]
  %18 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 6
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %18, align 4
  %20 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_type, align 8
  %link_cfg = getelementptr i8, ptr %dev, i32 2332
  %22 = ptrtoint ptr %link_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %link_cfg, align 4
  tail call fastcc void @fw_caps_to_lmm(i32 noundef %21, i32 noundef %23, ptr noundef %link_modes)
  %24 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_type, align 8
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %lport = getelementptr i8, ptr %dev, i32 2327
  %28 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %lport, align 1
  %conv26 = zext i8 %29 to i32
  %call28 = tail call i32 @t4_link_acaps(ptr noundef %27, i32 noundef %conv26, ptr noundef %link_cfg) #19
  tail call fastcc void @fw_caps_to_lmm(i32 noundef %25, i32 noundef %call28, ptr noundef %advertising)
  %30 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_type, align 8
  %lpacaps = getelementptr i8, ptr %dev, i32 2344
  %32 = ptrtoint ptr %lpacaps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lpacaps, align 4
  tail call fastcc void @fw_caps_to_lmm(i32 noundef %31, i32 noundef %33, ptr noundef %lp_advertising)
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i, align 4
  %36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %cond.true, label %if.end20.cond.end_crit_edge

if.end20.cond.end_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

cond.true:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  %speed = getelementptr i8, ptr %dev, i32 2352
  %37 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %speed, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end20.cond.end_crit_edge
  %cond40 = phi i32 [ %38, %cond.true ], [ -1, %if.end20.cond.end_crit_edge ]
  %speed41 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 1
  %39 = ptrtoint ptr %speed41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond40, ptr %speed41, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 2
  %40 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %duplex, align 4
  %autoneg = getelementptr i8, ptr %dev, i32 2376
  %41 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %autoneg, align 4
  %autoneg43 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %43 = ptrtoint ptr %autoneg43 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %autoneg43, align 1
  %44 = ptrtoint ptr %link_cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %link_cfg, align 4
  %and = and i32 %45, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end.if.end50_crit_edge, label %if.then46

cond.end.if.end50_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

if.then46:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  %46 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %link_modes, align 4
  %or.i = or i32 %47, 64
  store i32 %or.i, ptr %link_modes, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %cond.end.if.end50_crit_edge
  %48 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool53.not = icmp eq i8 %49, 0
  br i1 %tobool53.not, label %if.end50.if.end58_crit_edge, label %if.then54

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end58

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  %50 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %advertising, align 4
  %or.i93 = or i32 %51, 64
  store i32 %or.i93, ptr %advertising, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end50.if.end58_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_link_ksettings(ptr noundef %dev, ptr noundef %link_ksettings) #0 align 64 {
entry:
  %old_lc = alloca %struct.link_config, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %link_cfg = getelementptr i8, ptr %dev, i32 2332
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %old_lc)
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 2
  %0 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memcpy(ptr %old_lc, ptr %link_cfg, i32 52)
  %3 = ptrtoint ptr %link_cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link_cfg, align 4
  %and = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.then6_crit_edge, label %lor.lhs.false

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %5 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp4 = icmp eq i8 %6, 0
  br i1 %cmp4, label %lor.lhs.false.if.then6_crit_edge, label %if.else

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 1
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %8, label %if.end24.i [
    i32 100, label %if.then6.speed_to_fw_caps.exit_crit_edge
    i32 1000, label %if.then2.i
    i32 10000, label %if.then5.i
    i32 25000, label %if.then8.i
    i32 40000, label %if.then11.i
    i32 50000, label %if.then14.i
    i32 100000, label %if.then17.i
    i32 200000, label %if.then20.i
    i32 400000, label %if.then23.i
  ]

if.then6.speed_to_fw_caps.exit_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %speed_to_fw_caps.exit

if.then2.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %speed_to_fw_caps.exit

if.then5.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %speed_to_fw_caps.exit

if.then8.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %speed_to_fw_caps.exit

if.then11.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %speed_to_fw_caps.exit

if.then14.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %speed_to_fw_caps.exit

if.then17.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %speed_to_fw_caps.exit

if.then20.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %speed_to_fw_caps.exit

if.then23.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %speed_to_fw_caps.exit

if.end24.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %speed_to_fw_caps.exit

speed_to_fw_caps.exit:                            ; preds = %if.end24.i, %if.then23.i, %if.then20.i, %if.then17.i, %if.then14.i, %if.then11.i, %if.then8.i, %if.then5.i, %if.then2.i, %if.then6.speed_to_fw_caps.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %if.then2.i ], [ 4, %if.then5.i ], [ 8, %if.then8.i ], [ 16, %if.then11.i ], [ 32, %if.then14.i ], [ 64, %if.then17.i ], [ 128, %if.then20.i ], [ 256, %if.then23.i ], [ 0, %if.end24.i ], [ 1, %if.then6.speed_to_fw_caps.exit_crit_edge ]
  %and9 = and i32 %retval.0.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %speed_to_fw_caps.exit.cleanup_crit_edge, label %if.end12

speed_to_fw_caps.exit.cleanup_crit_edge:          ; preds = %speed_to_fw_caps.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %speed_to_fw_caps.exit
  call void @__sanitizer_cov_trace_pc() #21
  %speed_caps = getelementptr i8, ptr %dev, i32 2348
  %10 = ptrtoint ptr %speed_caps to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %speed_caps, align 4
  br label %if.end21

if.else:                                          ; preds = %lor.lhs.false
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %advertising, align 4
  %13 = lshr i32 %12, 3
  %.lobit.i = and i32 %13, 1
  %14 = load volatile i32, ptr %advertising, align 4
  %15 = lshr i32 %14, 4
  %16 = and i32 %15, 2
  %17 = or i32 %16, %.lobit.i
  %18 = load volatile i32, ptr %advertising, align 4
  %19 = lshr i32 %18, 10
  %20 = and i32 %19, 4
  %21 = or i32 %17, %20
  %22 = load volatile i32, ptr %advertising, align 4
  %23 = lshr i32 %22, 21
  %24 = and i32 %23, 16
  %25 = or i32 %21, %24
  %26 = load volatile i32, ptr %advertising, align 4
  %or29.i = or i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool27.not74.i = icmp slt i32 %26, 0
  %fw_caps.4.i = select i1 %tobool27.not74.i, i32 %or29.i, i32 %25
  %arrayidx.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i.i, align 4
  %29 = shl i32 %28, 3
  %30 = and i32 %29, 32
  %31 = load volatile i32, ptr %arrayidx.i.i, align 4
  %32 = and i32 %31, 64
  %33 = or i32 %32, %30
  %34 = or i32 %33, %fw_caps.4.i
  %and15 = and i32 %34, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else.cleanup_crit_edge, label %if.end18

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end18:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %speed_caps19 = getelementptr i8, ptr %dev, i32 2348
  %35 = ptrtoint ptr %speed_caps19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %speed_caps19, align 4
  %or = or i32 %34, 1048576
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %if.end12
  %or.sink = phi i32 [ %or, %if.end18 ], [ %retval.0.i, %if.end12 ]
  %acaps20 = getelementptr i8, ptr %dev, i32 2340
  %36 = ptrtoint ptr %acaps20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.sink, ptr %acaps20, align 4
  %autoneg22 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %37 = ptrtoint ptr %autoneg22 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %autoneg22, align 1
  %autoneg23 = getelementptr i8, ptr %dev, i32 2376
  %39 = ptrtoint ptr %autoneg23 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %autoneg23, align 4
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 8
  %mbox = getelementptr inbounds %struct.adapter, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mbox, align 8
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %44 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tx_chan, align 2
  %conv25 = zext i8 %45 to i32
  %call.i = tail call i32 @t4_link_l1cfg_core(ptr noundef %41, i32 noundef %43, i32 noundef %conv25, ptr noundef %link_cfg, i8 noundef zeroext 1, i32 noundef 10000) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.end21.cleanup_crit_edge, label %if.then28

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  %46 = call ptr @memcpy(ptr %link_cfg, ptr %old_lc, i32 52)
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end21.cleanup_crit_edge, %if.else.cleanup_crit_edge, %speed_to_fw_caps.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %speed_to_fw_caps.exit.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call.i, %if.then28 ], [ 0, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %old_lc)
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_fecparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %fec) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %link_cfg = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %link_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_cfg, align 4
  %and.i = lshr i32 %1, 20
  %2 = and i32 %and.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool6.not.i = icmp eq i32 %2, 0
  %or = or i32 %2, 2
  %spec.select = select i1 %tobool6.not.i, i32 4, i32 %or
  %fec2 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 2
  %3 = ptrtoint ptr %fec2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %fec2, align 4
  %fec5 = getelementptr i8, ptr %dev, i32 2372
  %4 = ptrtoint ptr %fec5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fec5, align 4
  %and.i11 = shl i32 %5, 1
  %6 = and i32 %and.i11, 2
  %and1.i = shl i32 %5, 2
  %7 = and i32 %and1.i, 8
  %8 = or i32 %7, %6
  %9 = and i32 %and1.i, 16
  %10 = or i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not.i = icmp eq i32 %10, 0
  %spec.store.select.i12 = select i1 %tobool11.not.i, i32 4, i32 %10
  %active_fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 1
  %11 = ptrtoint ptr %active_fec to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select.i12, ptr %active_fec, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_fecparam(ptr noundef %dev, ptr nocapture noundef readonly %fec) #0 align 64 {
entry:
  %old_lc = alloca %struct.link_config, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %link_cfg = getelementptr i8, ptr %dev, i32 2332
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %old_lc)
  %0 = call ptr @memcpy(ptr %old_lc, ptr %link_cfg, i32 52)
  %fec1 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 2
  %1 = ptrtoint ptr %fec1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fec1, align 4
  %and.i = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.eth_to_cc_fec.exit_crit_edge

entry.eth_to_cc_fec.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %eth_to_cc_fec.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %and1.i = lshr i32 %2, 1
  %and1.lobit.i = and i32 %and1.i, 1
  %and5.i = lshr i32 %2, 2
  %3 = and i32 %and5.i, 2
  %4 = or i32 %3, %and1.lobit.i
  %5 = and i32 %and5.i, 4
  %6 = or i32 %4, %5
  br label %eth_to_cc_fec.exit

eth_to_cc_fec.exit:                               ; preds = %if.end.i, %entry.eth_to_cc_fec.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.end.i ], [ 0, %entry.eth_to_cc_fec.exit_crit_edge ]
  %requested_fec = getelementptr i8, ptr %dev, i32 2368
  %7 = ptrtoint ptr %requested_fec to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i, ptr %requested_fec, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %mbox = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox, align 8
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %12 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_chan, align 2
  %conv = zext i8 %13 to i32
  %call.i = tail call i32 @t4_link_l1cfg_core(ptr noundef %9, i32 noundef %11, i32 noundef %conv, ptr noundef %link_cfg, i8 noundef zeroext 1, i32 noundef 10000) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %eth_to_cc_fec.exit.if.end_crit_edge, label %if.then

eth_to_cc_fec.exit.if.end_crit_edge:              ; preds = %eth_to_cc_fec.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %eth_to_cc_fec.exit
  call void @__sanitizer_cov_trace_pc() #21
  %14 = call ptr @memcpy(ptr %link_cfg, ptr %old_lc, i32 52)
  br label %if.end

if.end:                                           ; preds = %if.then, %eth_to_cc_fec.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %old_lc)
  ret i32 %call.i
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_get_exprom_version(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_get_regs_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_get_regs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_restart_aneg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_eeprom_ptov(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_vpd(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_seeprom_wp(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_vpd(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_set_rspq_intr_params(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_set_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_read_sge_dbqtimers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_link_l1cfg_core(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_selftest_lb_pkt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_identify_port(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_get_port_stats_offset(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_get_lb_stats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @cxgb4_ntuple_get_filter(ptr nocapture noundef readonly %dev, ptr noundef %cmd, i32 noundef %loc) unnamed_addr #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 32
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %ethtool_filters = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 88
  %4 = ptrtoint ptr %ethtool_filters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ethtool_filters, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %loc)
  %cmp.not = icmp ugt i32 %7, %loc
  br i1 %cmp.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %port = getelementptr inbounds %struct.cxgb4_ethtool_filter, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 4
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %10 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_id, align 1
  %idxprom = zext i8 %11 to i32
  %bmap = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %9, i32 %idxprom, i32 1
  %12 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmap, align 4
  %div3.i = lshr i32 %loc, 5
  %arrayidx.i = getelementptr i32, ptr %13, i32 %div3.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %loc, 31
  %16 = shl nuw i32 1, %and.i
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %arrayidx17 = getelementptr %struct.cxgb4_ethtool_filter_info, ptr %9, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr i32, ptr %19, i32 %loc
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 4
  %tids.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48
  %hpftid_base.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 15
  %22 = ptrtoint ptr %hpftid_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hpftid_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.not.i = icmp ult i32 %21, %23
  br i1 %cmp.not.i, label %if.end12.if.end.i_crit_edge, label %land.lhs.true.i

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end12
  %nhpftids.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 14
  %24 = ptrtoint ptr %nhpftids.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nhpftids.i, align 8
  %add.i = add i32 %25, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %21)
  %cmp2.i = icmp ugt i32 %add.i, %21
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %hpftid_tab.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 12
  %26 = ptrtoint ptr %hpftid_tab.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hpftid_tab.i, align 16
  %sub.i = sub i32 %21, %23
  %arrayidx.i33 = getelementptr %struct.filter_entry, ptr %27, i32 %sub.i
  br label %cxgb4_get_filter_entry.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end12.if.end.i_crit_edge
  %ftid_base.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 19
  %28 = ptrtoint ptr %ftid_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ftid_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %29)
  %cmp4.not.i = icmp ult i32 %21, %29
  br i1 %cmp4.not.i, label %if.end.i.if.end13.i_crit_edge, label %land.lhs.true5.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13.i

land.lhs.true5.i:                                 ; preds = %if.end.i
  %nftids.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 18
  %30 = ptrtoint ptr %nftids.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nftids.i, align 8
  %add7.i = add i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %21)
  %cmp8.i = icmp ugt i32 %add7.i, %21
  br i1 %cmp8.i, label %if.then9.i, label %land.lhs.true5.i.if.end13.i_crit_edge

land.lhs.true5.i.if.end13.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #21
  %ftid_tab.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 16
  %32 = ptrtoint ptr %ftid_tab.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ftid_tab.i, align 64
  %sub11.i = sub i32 %21, %29
  %arrayidx12.i = getelementptr %struct.filter_entry, ptr %33, i32 %sub11.i
  br label %cxgb4_get_filter_entry.exit

if.end13.i:                                       ; preds = %land.lhs.true5.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %tid_base.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 1
  %34 = ptrtoint ptr %tid_base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tid_base.i.i, align 4
  %sub.i.i = sub i32 %21, %35
  %ntids.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 2
  %36 = ptrtoint ptr %ntids.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ntids.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %37)
  %cmp.i.i = icmp ult i32 %sub.i.i, %37
  br i1 %cmp.i.i, label %cond.true.i.i, label %if.end13.i.cxgb4_get_filter_entry.exit_crit_edge

if.end13.i.cxgb4_get_filter_entry.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cxgb4_get_filter_entry.exit

cond.true.i.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #21
  %38 = ptrtoint ptr %tids.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tids.i, align 128
  %arrayidx.i.i = getelementptr ptr, ptr %39, i32 %sub.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  br label %cxgb4_get_filter_entry.exit

cxgb4_get_filter_entry.exit:                      ; preds = %cond.true.i.i, %if.end13.i.cxgb4_get_filter_entry.exit_crit_edge, %if.then9.i, %if.then.i
  %retval.0.i = phi ptr [ %arrayidx.i33, %if.then.i ], [ %arrayidx12.i, %if.then9.i ], [ %41, %cond.true.i.i ], [ null, %if.end13.i.cxgb4_get_filter_entry.exit_crit_edge ]
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %fs20 = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6
  %proto.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 11, i32 1
  %42 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i = load i32, ptr %proto.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 18
  %trunc.i = trunc i32 %bf.lshr.i to i8
  %43 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %trunc.i, label %cxgb4_get_filter_entry.exit.sw.epilog.i_crit_edge [
    i8 6, label %sw.bb.i
    i8 17, label %sw.bb5.i
  ]

cxgb4_get_filter_entry.exit.sw.epilog.i_crit_edge: ; preds = %cxgb4_get_filter_entry.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %cxgb4_get_filter_entry.exit
  call void @__sanitizer_cov_trace_pc() #21
  %44 = ptrtoint ptr %fs20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load1.i = load i32, ptr %fs20, align 8
  %45 = and i32 %bf.load1.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 5
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %cxgb4_get_filter_entry.exit
  call void @__sanitizer_cov_trace_pc() #21
  %46 = ptrtoint ptr %fs20 to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load6.i = load i32, ptr %fs20, align 8
  %47 = and i32 %bf.load6.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool9.not.i = icmp eq i32 %47, 0
  %.189.i = select i1 %tobool9.not.i, i32 2, i32 6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb5.i, %sw.bb.i
  %.sink.i = phi i32 [ %..i, %sw.bb.i ], [ %.189.i, %sw.bb5.i ]
  %48 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink.i, ptr %fs, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %cxgb4_get_filter_entry.exit.sw.epilog.i_crit_edge
  %49 = ptrtoint ptr %fs20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load15.i = load i32, ptr %fs20, align 8
  %50 = and i32 %bf.load15.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool18.not.i = icmp eq i32 %50, 0
  %fport59.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 11, i32 9
  %51 = ptrtoint ptr %fport59.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %fport59.i, align 2
  %h_u60.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  br i1 %tobool18.not.i, label %if.else57.i, label %if.then19.i

if.then19.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %53 = ptrtoint ptr %psrc.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %psrc.i, align 4
  %fport21.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 12, i32 9
  %54 = ptrtoint ptr %fport21.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %fport21.i, align 2
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %psrc22.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %56 = ptrtoint ptr %psrc22.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %psrc22.i, align 4
  %lport.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 11, i32 8
  %57 = ptrtoint ptr %lport.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %lport.i, align 4
  %pdst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 3
  %59 = ptrtoint ptr %pdst.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %pdst.i, align 2
  %lport26.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 12, i32 8
  %60 = ptrtoint ptr %lport26.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %lport26.i, align 4
  %pdst28.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 3
  %62 = ptrtoint ptr %pdst28.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %pdst28.i, align 2
  %fip.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 11, i32 7
  %63 = call ptr @memcpy(ptr %h_u60.i, ptr %fip.i, i32 16)
  %fip34.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 12, i32 7
  %64 = call ptr @memcpy(ptr %m_u.i, ptr %fip34.i, i32 16)
  %ip6dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %lip.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 11, i32 6
  %65 = call ptr @memcpy(ptr %ip6dst.i, ptr %lip.i, i32 16)
  %ip6dst40.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %lip42.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 12, i32 6
  %66 = call ptr @memcpy(ptr %ip6dst40.i, ptr %lip42.i, i32 16)
  %67 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load45.i = load i32, ptr %proto.i, align 4
  %bf.lshr46.i = lshr i32 %bf.load45.i, 10
  %conv.i = trunc i32 %bf.lshr46.i to i8
  %tclass.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 4
  %68 = ptrtoint ptr %tclass.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.i, ptr %tclass.i, align 4
  %tos50.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 12, i32 1
  %69 = ptrtoint ptr %tos50.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load51.i = load i32, ptr %tos50.i, align 4
  %bf.lshr52.i = lshr i32 %bf.load51.i, 10
  %conv54.i = trunc i32 %bf.lshr52.i to i8
  %tclass56.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %70 = ptrtoint ptr %tclass56.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv54.i, ptr %tclass56.i, align 4
  br label %cxgb4_fill_filter_rule.exit

if.else57.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  %psrc61.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %71 = ptrtoint ptr %psrc61.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %52, ptr %psrc61.i, align 4
  %fport63.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 12, i32 9
  %72 = ptrtoint ptr %fport63.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %fport63.i, align 2
  %m_u64.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %psrc65.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %74 = ptrtoint ptr %psrc65.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %psrc65.i, align 4
  %lport67.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 11, i32 8
  %75 = ptrtoint ptr %lport67.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %lport67.i, align 4
  %pdst69.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u60.i, i32 0, i32 3
  %77 = ptrtoint ptr %pdst69.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %pdst69.i, align 2
  %lport71.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 12, i32 8
  %78 = ptrtoint ptr %lport71.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %lport71.i, align 4
  %pdst73.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u64.i, i32 0, i32 3
  %80 = ptrtoint ptr %pdst73.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %pdst73.i, align 2
  %fip76.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 11, i32 7
  %81 = ptrtoint ptr %fip76.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %fip76.i, align 1
  %83 = ptrtoint ptr %h_u60.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %h_u60.i, align 4
  %fip81.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 12, i32 7
  %84 = ptrtoint ptr %fip81.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %fip81.i, align 1
  %86 = ptrtoint ptr %m_u64.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %m_u64.i, align 4
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %lip85.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 11, i32 6
  %87 = ptrtoint ptr %lip85.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %lip85.i, align 1
  %89 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %ip4dst.i, align 4
  %ip4dst88.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %lip90.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 12, i32 6
  %90 = ptrtoint ptr %lip90.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %lip90.i, align 1
  %92 = ptrtoint ptr %ip4dst88.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %ip4dst88.i, align 4
  %93 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %bf.load94.i = load i32, ptr %proto.i, align 4
  %bf.lshr95.i = lshr i32 %bf.load94.i, 10
  %conv97.i = trunc i32 %bf.lshr95.i to i8
  %tos99.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %94 = ptrtoint ptr %tos99.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv97.i, ptr %tos99.i, align 4
  %tos101.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 12, i32 1
  %95 = ptrtoint ptr %tos101.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %bf.load102.i = load i32, ptr %tos101.i, align 4
  %bf.lshr103.i = lshr i32 %bf.load102.i, 10
  %conv105.i = trunc i32 %bf.lshr103.i to i8
  %tos107.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %96 = ptrtoint ptr %tos107.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv105.i, ptr %tos107.i, align 4
  br label %cxgb4_fill_filter_rule.exit

cxgb4_fill_filter_rule.exit:                      ; preds = %if.else57.i, %if.then19.i
  %ivlan.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 11, i32 2
  %97 = ptrtoint ptr %ivlan.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %bf.load110.i = load i32, ptr %ivlan.i, align 4
  %bf.lshr111.i = lshr i32 %bf.load110.i, 8
  %conv113.i = trunc i32 %bf.lshr111.i to i16
  %vlan_tci.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %98 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv113.i, ptr %vlan_tci.i, align 2
  %ivlan115.i = getelementptr inbounds %struct.filter_entry, ptr %retval.0.i, i32 0, i32 6, i32 12, i32 2
  %99 = ptrtoint ptr %ivlan115.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %bf.load116.i = load i32, ptr %ivlan115.i, align 4
  %bf.lshr117.i = lshr i32 %bf.load116.i, 8
  %conv119.i = trunc i32 %bf.lshr117.i to i16
  %vlan_tci120.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %100 = ptrtoint ptr %vlan_tci120.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv119.i, ptr %vlan_tci120.i, align 2
  %101 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fs, align 8
  %or.i = or i32 %102, -2147483648
  store i32 %or.i, ptr %fs, align 8
  %103 = ptrtoint ptr %fs20 to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load122.i = load i32, ptr %fs20, align 8
  %104 = and i32 %bf.load122.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %104)
  %cmp.i = icmp eq i32 %104, 67108864
  %bf.lshr129.i = lshr i32 %bf.load122.i, 14
  %bf.clear130.i = and i32 %bf.lshr129.i, 1023
  %conv131.i = zext i32 %bf.clear130.i to i64
  %conv131.sink.i = select i1 %cmp.i, i64 -1, i64 %conv131.i
  %105 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv131.sink.i, ptr %105, align 8
  br label %cleanup

cleanup:                                          ; preds = %cxgb4_fill_filter_rule.exit, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cxgb4_fill_filter_rule.exit ], [ -11, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -34, %if.end4.cleanup_crit_edge ], [ -2, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ethtool_rx_flow_rule_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_flow_rule_replace(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_rx_flow_rule_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_flow_rule_destroy(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4_ethtool_flash_region(ptr nocapture noundef readonly %netdev, ptr noundef %data, i32 noundef %size, i32 noundef %region) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %2 = zext i32 %region to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %region, label %entry.if.end_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb6
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

sw.bb:                                            ; preds = %entry
  %flags.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %mbox1.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %mbox1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbox1.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %mbox.0.i = phi i32 [ %6, %if.then.i ], [ 8, %sw.bb.if.end.i_crit_edge ]
  %call2.i = tail call i32 @t4_fw_upgrade(ptr noundef %1, i32 noundef %mbox.0.i, ptr noundef %data, i32 noundef %size, i32 noundef 1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.do.end_crit_edge, label %do.end.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev_dev.i, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14) #24
  br label %if.end

sw.bb2:                                           ; preds = %entry
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 318767338, i32 %10)
  %cmp.not.i.i = icmp eq i32 %10, 318767338
  br i1 %cmp.not.i.i, label %if.end.i24, label %do.end.i22

do.end.i22:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  %pdev_dev.i21 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %pdev_dev.i21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev_dev.i21, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16) #24
  br label %if.end

if.end.i24:                                       ; preds = %sw.bb2
  %mbox.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mbox.i, align 8
  %call2.i23 = tail call i32 @t4_fw_reset(ptr noundef %1, i32 noundef %14, i32 noundef 3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i23)
  %cmp.i = icmp slt i32 %call2.i23, 0
  br i1 %cmp.i, label %do.end6.i, label %if.end8.i

do.end6.i:                                        ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #21
  %pdev_dev7.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %pdev_dev7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev_dev7.i, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %call2.i23) #24
  br label %if.end

if.end8.i:                                        ; preds = %if.end.i24
  %call9.i = tail call i32 @t4_load_phy_fw(ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef %data, i32 noundef %size) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end14.i, label %if.end8.i.do.end_crit_edge

if.end8.i.do.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

do.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  %pdev_dev15.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %pdev_dev15.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev_dev15.i, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.22, i32 noundef %call9.i) #24
  br label %if.end

sw.bb4:                                           ; preds = %entry
  %call1.i = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %size, i32 noundef 3264) #19
  %tobool.not.i26 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i26, label %sw.bb4.if.end_crit_edge, label %if.end.i28

sw.bb4.if.end_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end.i28:                                       ; preds = %sw.bb4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 122956
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #19, !srcloc !90
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !91
  %shr.i = lshr i32 %22, 10
  %and.i27 = and i32 %shr.i, 16383
  %call3.i = tail call i32 @t4_load_boot(ptr noundef %1, ptr noundef nonnull %call1.i, i32 noundef %and.i27, i32 noundef %size) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %sw.epilog.thread47, label %sw.epilog

sw.epilog.thread47:                               ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef nonnull %call1.i) #19
  br label %do.end

sw.bb6:                                           ; preds = %entry
  %call1.i33 = tail call i32 @t4_load_bootcfg(ptr noundef %1, ptr noundef %data, i32 noundef %size) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %sw.bb6.do.end_crit_edge, label %do.end.i36

sw.bb6.do.end_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

do.end.i36:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #21
  %pdev_dev.i35 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %pdev_dev.i35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev_dev.i35, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.26) #24
  br label %if.end

sw.epilog:                                        ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #21
  %pdev_dev.i29 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %pdev_dev.i29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev_dev.i29, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.24) #24
  tail call void @kfree(ptr noundef nonnull %call1.i) #19
  br label %if.end

do.end:                                           ; preds = %sw.bb6.do.end_crit_edge, %sw.epilog.thread47, %if.end8.i.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev_dev, align 16
  %arrayidx = getelementptr [5 x ptr], ptr @flash_region_strings, i32 0, i32 %region
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.11, ptr noundef %30) #24
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.epilog, %do.end.i36, %sw.bb4.if.end_crit_edge, %do.end14.i, %do.end6.i, %do.end.i22, %do.end.i, %entry.if.end_crit_edge
  %ret.040 = phi i32 [ 0, %do.end ], [ %call3.i, %sw.epilog ], [ %call1.i33, %do.end.i36 ], [ -12, %sw.bb4.if.end_crit_edge ], [ %call9.i, %do.end14.i ], [ %call2.i23, %do.end6.i ], [ -22, %do.end.i22 ], [ %call2.i, %do.end.i ], [ -95, %entry.if.end_crit_edge ]
  ret i32 %ret.040
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #16

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_fw_upgrade(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_fw_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_load_phy_fw(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_load_boot(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_load_bootcfg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_write_rss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_get_dump_length(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_cudbg_collect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_i2c_rd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_update_port_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @fw_caps_to_lmm(i32 noundef %port_type, i32 noundef %fw_caps, ptr noundef %link_mode_mask) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %port_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %port_type, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.do.body_crit_edge
    i32 3, label %entry.do.body_crit_edge516
    i32 4, label %entry.do.body_crit_edge517
    i32 5, label %entry.do.body22_crit_edge
    i32 7, label %entry.do.body22_crit_edge518
    i32 8, label %do.body41
    i32 10, label %do.body52
    i32 11, label %do.body79
    i32 0, label %entry.do.body114_crit_edge
    i32 1, label %entry.do.body114_crit_edge519
    i32 9, label %entry.do.body114_crit_edge520
    i32 12, label %entry.do.body114_crit_edge521
    i32 13, label %entry.do.body114_crit_edge522
    i32 15, label %entry.do.body133_crit_edge
    i32 14, label %entry.do.body133_crit_edge523
    i32 18, label %entry.do.body160_crit_edge
    i32 20, label %entry.do.body160_crit_edge524
    i32 21, label %do.body187
    i32 22, label %do.body214
    i32 19, label %do.body241
    i32 16, label %entry.do.body252_crit_edge
    i32 17, label %entry.do.body252_crit_edge525
  ]

entry.do.body252_crit_edge525:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body252

entry.do.body252_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body252

entry.do.body160_crit_edge524:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body160

entry.do.body160_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body160

entry.do.body133_crit_edge523:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body133

entry.do.body133_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body133

entry.do.body114_crit_edge522:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body114

entry.do.body114_crit_edge521:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body114

entry.do.body114_crit_edge520:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body114

entry.do.body114_crit_edge519:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body114

entry.do.body114_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body114

entry.do.body22_crit_edge518:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body22

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body22

entry.do.body_crit_edge517:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

entry.do.body_crit_edge516:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge516, %entry.do.body_crit_edge517
  %1 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %link_mode_mask, align 4
  %and = and i32 %fw_caps, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i32 128, i32 136
  %spec.select = or i32 %2, %spec.select.v
  %3 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %link_mode_mask, align 4
  %and6 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body.do.body13_crit_edge, label %do.body9

do.body.do.body13_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body13

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_mode_mask, align 4
  %or.i440 = or i32 %5, 32
  store i32 %or.i440, ptr %link_mode_mask, align 4
  br label %do.body13

do.body13:                                        ; preds = %do.body9, %do.body.do.body13_crit_edge
  %and14 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.sw.epilog_crit_edge, label %do.body17

do.body13.sw.epilog_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_mode_mask, align 4
  %or.i441 = or i32 %7, 4096
  store i32 %or.i441, ptr %link_mode_mask, align 4
  br label %sw.epilog

do.body22:                                        ; preds = %entry.do.body22_crit_edge, %entry.do.body22_crit_edge518
  %8 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_mode_mask, align 4
  %and25 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %spec.select505.v = select i1 %tobool26.not, i32 65536, i32 196608
  %spec.select505 = or i32 %9, %spec.select505.v
  %10 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select505, ptr %link_mode_mask, align 4
  %and33 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body22.sw.epilog_crit_edge, label %do.body36

do.body22.sw.epilog_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %link_mode_mask, align 4
  %or.i444 = or i32 %12, 262144
  store i32 %or.i444, ptr %link_mode_mask, align 4
  br label %sw.epilog

do.body41:                                        ; preds = %entry
  %13 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %link_mode_mask, align 4
  %or.i445 = or i32 %14, 65536
  store i32 %or.i445, ptr %link_mode_mask, align 4
  %and44 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body41.sw.epilog_crit_edge, label %do.body47

do.body41.sw.epilog_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body47:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #21
  %or.i446 = or i32 %14, 589824
  %15 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i446, ptr %link_mode_mask, align 4
  br label %sw.epilog

do.body52:                                        ; preds = %entry
  %16 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %link_mode_mask, align 4
  %and55 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %spec.select506.v = select i1 %tobool56.not, i32 65536, i32 196608
  %spec.select506 = or i32 %17, %spec.select506.v
  %18 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select506, ptr %link_mode_mask, align 4
  %and63 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body52.sw.epilog_crit_edge, label %do.body66

do.body52.sw.epilog_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #21
  %19 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_mode_mask, align 4
  %or.i450 = or i32 %20, 1572864
  store i32 %or.i450, ptr %link_mode_mask, align 4
  br label %sw.epilog

do.body79:                                        ; preds = %entry
  %21 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %link_mode_mask, align 4
  %and82 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %spec.select507.v = select i1 %tobool83.not, i32 65536, i32 196608
  %spec.select507 = or i32 %22, %spec.select507.v
  %23 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select507, ptr %link_mode_mask, align 4
  %and90 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.body79.sw.epilog_crit_edge, label %do.body93

do.body79.sw.epilog_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body93:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #21
  %24 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_mode_mask, align 4
  %or.i455 = or i32 %25, 1835008
  store i32 %or.i455, ptr %link_mode_mask, align 4
  br label %sw.epilog

do.body114:                                       ; preds = %entry.do.body114_crit_edge, %entry.do.body114_crit_edge519, %entry.do.body114_crit_edge520, %entry.do.body114_crit_edge521, %entry.do.body114_crit_edge522
  %26 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %link_mode_mask, align 4
  %and117 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  %spec.select508.v = select i1 %tobool118.not, i32 1024, i32 1056
  %spec.select508 = or i32 %27, %spec.select508.v
  %28 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select508, ptr %link_mode_mask, align 4
  %and125 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %do.body114.sw.epilog_crit_edge, label %do.body128

do.body114.sw.epilog_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body128:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %link_mode_mask, align 4
  %or.i458 = or i32 %30, 4096
  store i32 %or.i458, ptr %link_mode_mask, align 4
  br label %sw.epilog

do.body133:                                       ; preds = %entry.do.body133_crit_edge, %entry.do.body133_crit_edge523
  %31 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %link_mode_mask, align 4
  %and136 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  %spec.select509.v = select i1 %tobool137.not, i32 1024, i32 1056
  %spec.select509 = or i32 %32, %spec.select509.v
  %33 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select509, ptr %link_mode_mask, align 4
  %and144 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body133.do.body151_crit_edge, label %do.body147

do.body133.do.body151_crit_edge:                  ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body151

do.body147:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #21
  %34 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %link_mode_mask, align 4
  %or.i461 = or i32 %35, 4096
  store i32 %or.i461, ptr %link_mode_mask, align 4
  br label %do.body151

do.body151:                                       ; preds = %do.body147, %do.body133.do.body151_crit_edge
  %and152 = and i32 %fw_caps, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %do.body151.sw.epilog_crit_edge, label %do.body155

do.body151.sw.epilog_crit_edge:                   ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body155:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #21
  %36 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %link_mode_mask, align 4
  %or.i462 = or i32 %37, 33554432
  store i32 %or.i462, ptr %link_mode_mask, align 4
  br label %sw.epilog

do.body160:                                       ; preds = %entry.do.body160_crit_edge, %entry.do.body160_crit_edge524
  %38 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %link_mode_mask, align 4
  %and163 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  %spec.select510.v = select i1 %tobool164.not, i32 1024, i32 1056
  %spec.select510 = or i32 %39, %spec.select510.v
  %40 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select510, ptr %link_mode_mask, align 4
  %and171 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %do.body160.do.body178_crit_edge, label %do.body174

do.body160.do.body178_crit_edge:                  ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body178

do.body174:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #21
  %41 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %link_mode_mask, align 4
  %or.i465 = or i32 %42, 4096
  store i32 %or.i465, ptr %link_mode_mask, align 4
  br label %do.body178

do.body178:                                       ; preds = %do.body174, %do.body160.do.body178_crit_edge
  %and179 = and i32 %fw_caps, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %do.body178.sw.epilog_crit_edge, label %do.body182

do.body178.sw.epilog_crit_edge:                   ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body182:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #21
  %43 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %link_mode_mask, align 4
  %or.i466 = or i32 %44, -2147483648
  store i32 %or.i466, ptr %link_mode_mask, align 4
  br label %sw.epilog

do.body187:                                       ; preds = %entry
  %45 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %link_mode_mask, align 4
  %and190 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  %spec.select511.v = select i1 %tobool191.not, i32 65536, i32 65568
  %spec.select511 = or i32 %46, %spec.select511.v
  %47 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %spec.select511, ptr %link_mode_mask, align 4
  %and198 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %do.body187.do.body205_crit_edge, label %do.body201

do.body187.do.body205_crit_edge:                  ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body205

do.body201:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #21
  %48 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %link_mode_mask, align 4
  %or.i469 = or i32 %49, 524288
  store i32 %or.i469, ptr %link_mode_mask, align 4
  br label %do.body205

do.body205:                                       ; preds = %do.body201, %do.body187.do.body205_crit_edge
  %and206 = and i32 %fw_caps, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %do.body205.sw.epilog_crit_edge, label %do.body209

do.body205.sw.epilog_crit_edge:                   ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body209:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i = getelementptr i32, ptr %link_mode_mask, i32 1
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i, align 4
  %or.i470 = or i32 %51, 1
  store i32 %or.i470, ptr %add.ptr.i, align 4
  br label %sw.epilog

do.body214:                                       ; preds = %entry
  %52 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %link_mode_mask, align 4
  %and217 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  %spec.select512.v = select i1 %tobool218.not, i32 65536, i32 196608
  %spec.select512 = or i32 %53, %spec.select512.v
  %54 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select512, ptr %link_mode_mask, align 4
  %and225 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %do.body214.do.body232_crit_edge, label %do.body228

do.body214.do.body232_crit_edge:                  ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body232

do.body228:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #21
  %55 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %link_mode_mask, align 4
  %or.i473 = or i32 %56, 524288
  store i32 %or.i473, ptr %link_mode_mask, align 4
  br label %do.body232

do.body232:                                       ; preds = %do.body228, %do.body214.do.body232_crit_edge
  %and233 = and i32 %fw_caps, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %do.body232.sw.epilog_crit_edge, label %do.body236

do.body232.sw.epilog_crit_edge:                   ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body236:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #21
  %57 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %link_mode_mask, align 4
  %or.i474 = or i32 %58, 8388608
  store i32 %or.i474, ptr %link_mode_mask, align 4
  br label %sw.epilog

do.body241:                                       ; preds = %entry
  %59 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %link_mode_mask, align 4
  %or.i475 = or i32 %60, 1024
  store i32 %or.i475, ptr %link_mode_mask, align 4
  %and244 = and i32 %fw_caps, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %do.body241.sw.epilog_crit_edge, label %do.body247

do.body241.sw.epilog_crit_edge:                   ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body247:                                       ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i476 = getelementptr i32, ptr %link_mode_mask, i32 1
  %61 = ptrtoint ptr %add.ptr.i476 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i476, align 4
  %or.i477 = or i32 %62, 256
  store i32 %or.i477, ptr %add.ptr.i476, align 4
  br label %sw.epilog

do.body252:                                       ; preds = %entry.do.body252_crit_edge, %entry.do.body252_crit_edge525
  %63 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %link_mode_mask, align 4
  %and255 = and i32 %fw_caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  %spec.select513.v = select i1 %tobool256.not, i32 1024, i32 1056
  %spec.select513 = or i32 %64, %spec.select513.v
  %65 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %spec.select513, ptr %link_mode_mask, align 4
  %and263 = and i32 %fw_caps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %do.body252.do.body270_crit_edge, label %do.body266

do.body252.do.body270_crit_edge:                  ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body270

do.body266:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #21
  %66 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %link_mode_mask, align 4
  %or.i480 = or i32 %67, 524288
  store i32 %or.i480, ptr %link_mode_mask, align 4
  br label %do.body270

do.body270:                                       ; preds = %do.body266, %do.body252.do.body270_crit_edge
  %and271 = and i32 %fw_caps, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and271)
  %tobool272.not = icmp eq i32 %and271, 0
  br i1 %tobool272.not, label %do.body270.do.body278_crit_edge, label %do.body274

do.body270.do.body278_crit_edge:                  ; preds = %do.body270
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body278

do.body274:                                       ; preds = %do.body270
  call void @__sanitizer_cov_trace_pc() #21
  %68 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %link_mode_mask, align 4
  %or.i481 = or i32 %69, 33554432
  store i32 %or.i481, ptr %link_mode_mask, align 4
  br label %do.body278

do.body278:                                       ; preds = %do.body274, %do.body270.do.body278_crit_edge
  %and279 = and i32 %fw_caps, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %do.body278.do.body286_crit_edge, label %do.body282

do.body278.do.body286_crit_edge:                  ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body286

do.body282:                                       ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #21
  %70 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %link_mode_mask, align 4
  %or.i482 = or i32 %71, -2147483648
  store i32 %or.i482, ptr %link_mode_mask, align 4
  br label %do.body286

do.body286:                                       ; preds = %do.body282, %do.body278.do.body286_crit_edge
  %and287 = and i32 %fw_caps, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and287)
  %tobool288.not = icmp eq i32 %and287, 0
  br i1 %tobool288.not, label %do.body286.do.body294_crit_edge, label %do.body290

do.body286.do.body294_crit_edge:                  ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body294

do.body290:                                       ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i483 = getelementptr i32, ptr %link_mode_mask, i32 1
  %72 = ptrtoint ptr %add.ptr.i483 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i483, align 4
  %or.i484 = or i32 %73, 4
  store i32 %or.i484, ptr %add.ptr.i483, align 4
  br label %do.body294

do.body294:                                       ; preds = %do.body290, %do.body286.do.body294_crit_edge
  %and295 = and i32 %fw_caps, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %do.body294.sw.epilog_crit_edge, label %do.body298

do.body294.sw.epilog_crit_edge:                   ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body298:                                       ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i485 = getelementptr i32, ptr %link_mode_mask, i32 1
  %74 = ptrtoint ptr %add.ptr.i485 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i485, align 4
  %or.i486 = or i32 %75, 64
  store i32 %or.i486, ptr %add.ptr.i485, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body298, %do.body294.sw.epilog_crit_edge, %do.body247, %do.body241.sw.epilog_crit_edge, %do.body236, %do.body232.sw.epilog_crit_edge, %do.body209, %do.body205.sw.epilog_crit_edge, %do.body182, %do.body178.sw.epilog_crit_edge, %do.body155, %do.body151.sw.epilog_crit_edge, %do.body128, %do.body114.sw.epilog_crit_edge, %do.body93, %do.body79.sw.epilog_crit_edge, %do.body66, %do.body52.sw.epilog_crit_edge, %do.body47, %do.body41.sw.epilog_crit_edge, %do.body36, %do.body22.sw.epilog_crit_edge, %do.body17, %do.body13.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %and302 = and i32 %fw_caps, 260046848
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and302)
  %tobool303.not = icmp eq i32 %and302, 0
  br i1 %tobool303.not, label %sw.epilog.do.body324.sink.split_crit_edge, label %do.body305

sw.epilog.do.body324.sink.split_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body324.sink.split

do.body305:                                       ; preds = %sw.epilog
  %and306 = and i32 %fw_caps, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306)
  %tobool307.not = icmp eq i32 %and306, 0
  br i1 %tobool307.not, label %do.body305.do.body313_crit_edge, label %do.body309

do.body305.do.body313_crit_edge:                  ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body313

do.body309:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i487 = getelementptr i32, ptr %link_mode_mask, i32 1
  %76 = ptrtoint ptr %add.ptr.i487 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i487, align 4
  %or.i488 = or i32 %77, 262144
  store i32 %or.i488, ptr %add.ptr.i487, align 4
  br label %do.body313

do.body313:                                       ; preds = %do.body309, %do.body305.do.body313_crit_edge
  %and314 = and i32 %fw_caps, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314)
  %tobool315.not = icmp eq i32 %and314, 0
  br i1 %tobool315.not, label %do.body313.do.body324_crit_edge, label %do.body313.do.body324.sink.split_crit_edge

do.body313.do.body324.sink.split_crit_edge:       ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body324.sink.split

do.body313.do.body324_crit_edge:                  ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body324

do.body324.sink.split:                            ; preds = %do.body313.do.body324.sink.split_crit_edge, %sw.epilog.do.body324.sink.split_crit_edge
  %.sink514 = phi i32 [ 524288, %do.body313.do.body324.sink.split_crit_edge ], [ 131072, %sw.epilog.do.body324.sink.split_crit_edge ]
  %add.ptr.i489 = getelementptr i32, ptr %link_mode_mask, i32 1
  %78 = ptrtoint ptr %add.ptr.i489 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i489, align 4
  %or.i492 = or i32 %79, %.sink514
  store i32 %or.i492, ptr %add.ptr.i489, align 4
  br label %do.body324

do.body324:                                       ; preds = %do.body324.sink.split, %do.body313.do.body324_crit_edge
  %and325 = and i32 %fw_caps, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325)
  %tobool326.not = icmp eq i32 %and325, 0
  br i1 %tobool326.not, label %do.body324.do.body332_crit_edge, label %do.body328

do.body324.do.body332_crit_edge:                  ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body332

do.body328:                                       ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #21
  %80 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %link_mode_mask, align 4
  %or.i493 = or i32 %81, 64
  store i32 %or.i493, ptr %link_mode_mask, align 4
  br label %do.body332

do.body332:                                       ; preds = %do.body328, %do.body324.do.body332_crit_edge
  %and333 = and i32 %fw_caps, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and333)
  %tobool334.not = icmp eq i32 %and333, 0
  br i1 %tobool334.not, label %do.body332.do.body340_crit_edge, label %do.body336

do.body332.do.body340_crit_edge:                  ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body340

do.body336:                                       ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #21
  %82 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %link_mode_mask, align 4
  %or.i494 = or i32 %83, 8192
  store i32 %or.i494, ptr %link_mode_mask, align 4
  br label %do.body340

do.body340:                                       ; preds = %do.body336, %do.body332.do.body340_crit_edge
  %and341 = and i32 %fw_caps, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and341)
  %tobool342.not = icmp eq i32 %and341, 0
  br i1 %tobool342.not, label %do.body340.do.end347_crit_edge, label %do.body344

do.body340.do.end347_crit_edge:                   ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end347

do.body344:                                       ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #21
  %84 = ptrtoint ptr %link_mode_mask to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %link_mode_mask, align 4
  %or.i495 = or i32 %85, 16384
  store i32 %or.i495, ptr %link_mode_mask, align 4
  br label %do.end347

do.end347:                                        ; preds = %do.body344, %do.body340.do.end347_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_link_acaps(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @cxgb_ethtool_ops, !1, !"cxgb_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 2171, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 209, i32 5}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 221, i32 5}
!6 = !{ptr @stats_strings, !7, !"stats_strings", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 45, i32 19}
!8 = !{ptr @adapter_stats_strings, !9, !"adapter_stats_strings", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 131, i32 13}
!10 = !{ptr @loopback_stats_strings, !11, !"loopback_stats_strings", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 139, i32 13}
!12 = !{ptr @cxgb4_priv_flags_strings, !13, !"cxgb4_priv_flags_strings", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 165, i32 19}
!14 = !{ptr @cxgb4_selftest_strings, !15, !"cxgb4_selftest_strings", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 33, i32 19}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 1885, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cxgb4_ntuple_set_filter._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cxgb4_ntuple_set_filter._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 1835, i32 3}
!26 = !{ptr @cxgb4_ntuple_del_filter._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cxgb4_ntuple_del_filter._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 1514, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @set_flash._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @set_flash._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 1419, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cxgb4_ethtool_flash_region._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @cxgb4_ethtool_flash_region._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 1388, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cxgb4_ethtool_flash_fw._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @cxgb4_ethtool_flash_fw._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 1344, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cxgb4_ethtool_flash_phy._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @cxgb4_ethtool_flash_phy._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 1355, i32 3}
!52 = !{ptr @cxgb4_ethtool_flash_phy._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cxgb4_ethtool_flash_phy._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 1363, i32 3}
!56 = !{ptr @cxgb4_ethtool_flash_phy._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cxgb4_ethtool_flash_phy._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 1317, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cxgb4_ethtool_flash_boot._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @cxgb4_ethtool_flash_boot._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 1296, i32 3}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cxgb4_ethtool_flash_bootcfg._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @cxgb4_ethtool_flash_bootcfg._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 38, i32 2}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 39, i32 2}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 40, i32 2}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 41, i32 2}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 42, i32 2}
!78 = !{ptr @flash_region_strings, !79, !"flash_region_strings", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c", i32 37, i32 27}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"auto-init"}
!90 = !{i64 6286124}
!91 = !{i64 2160217528}
