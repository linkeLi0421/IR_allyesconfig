; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_reg_test = type { i16, i8, i8, i32, i32 }
%struct.ixgbe_stats = type { [32 x i8], i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ixgbe_adapter = type { [128 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i64, i32, i16, i64, i16, i16, i32, [64 x ptr], ptr, [52 x i8], [64 x ptr], i64, i64, i32, [64 x ptr], i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, [64 x ptr], ptr, ptr, %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config, i8, i8, i8, i32, i32, i32, [68 x i8], [5 x %struct.ixgbe_ring_feature], ptr, i32, [120 x i8], %struct.ixgbe_ring, %struct.ixgbe_ring, %struct.ixgbe_hw, i16, %struct.ixgbe_hw_stats, i64, i32, i32, i32, i32, i8, i32, i32, %struct.timer_list, %struct.work_struct, %struct.hlist_head, i32, %union.ixgbe_atr_input, i32, i32, i32, %struct.spinlock, %struct.ixgbe_fcoe, ptr, i32, i16, [32 x i8], i16, i32, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, ptr, [2 x i32], i32, ptr, i32, %struct.vf_macvlans, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, [2 x i32], [10 x ptr], i32, [512 x i8], ptr, ptr, [88 x i8] }
%struct.ixgbe_dcb_config = type { %struct.dcb_support, %struct.dcb_num_tcs, [8 x %struct.tc_configuration], [2 x [8 x i8]], i8, i32, i32 }
%struct.dcb_support = type { i32, i8, i8 }
%struct.dcb_num_tcs = type { i8, i8 }
%struct.tc_configuration = type { [2 x %struct.tc_bw_alloc], i32, i16, i8 }
%struct.tc_bw_alloc = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.ixgbe_ring_feature = type { i16, i16, i16, i16, [120 x i8] }
%struct.ixgbe_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.118, i32, ptr, i32, i32, i16, i8, i8, i16, i16, i32, %union.anon.125, i8, %struct.ixgbe_queue_stats, %struct.u64_stats_sync, %union.anon.127, i16, [86 x i8], %struct.xdp_rxq_info, %struct.spinlock, ptr, i16, i16, [76 x i8] }
%union.anon.118 = type { ptr }
%union.anon.125 = type { i16 }
%struct.ixgbe_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.127 = type { %struct.ixgbe_rx_queue_stats }
%struct.ixgbe_rx_queue_stats = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_addr_filter_info, %struct.ixgbe_fc_info, %struct.ixgbe_phy_info, %struct.ixgbe_link_info, %struct.ixgbe_eeprom_info, %struct.ixgbe_bus_info, %struct.ixgbe_mbx_info, ptr, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, i32, [6 x i8], [6 x i8], [6 x i8], i16, i16, i16, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.ixgbe_thermal_sensor_data, i8, i8 }
%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_thermal_sensor_data = type { [3 x %struct.ixgbe_thermal_diode_data] }
%struct.ixgbe_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.ixgbe_addr_filter_info = type { i32, i32, i32, i32, i8, i8 }
%struct.ixgbe_fc_info = type { [8 x i32], [8 x i32], i16, i8, i8, i8, i8, i32, i32 }
%struct.ixgbe_phy_info = type { %struct.ixgbe_phy_operations, %struct.mdio_if_info, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.ixgbe_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ixgbe_link_info = type { %struct.ixgbe_link_operations, i8 }
%struct.ixgbe_link_operations = type { ptr, ptr, ptr, ptr }
%struct.ixgbe_eeprom_info = type { %struct.ixgbe_eeprom_operations, i32, i32, i16, i16, i16, i16 }
%struct.ixgbe_eeprom_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_bus_info = type { i32, i32, i32, i8, i8, i8 }
%struct.ixgbe_mbx_info = type { ptr, %struct.ixgbe_mbx_stats, i32, i32, i32, i16 }
%struct.ixgbe_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.ixgbe_hw_stats = type { i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64], [8 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%union.ixgbe_atr_input = type { %struct.anon.128 }
%struct.anon.128 = type { i8, i8, i16, [4 x i32], [4 x i32], i16, i16, i16, i16 }
%struct.ixgbe_fcoe = type { ptr, %struct.atomic_t, %struct.spinlock, [2048 x %struct.ixgbe_fcoe_ddp], ptr, i32, i32, i8 }
%struct.ixgbe_fcoe_ddp = type { i32, i32, i32, ptr, i32, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.vf_macvlans = type { %struct.list_head, i32, i8, i8, [6 x i8] }
%struct.ixgbe_fdir_filter = type { %struct.hlist_node, %union.ixgbe_atr_input, i16, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.117, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.117 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ixgbe_q_vector = type { ptr, i16, i16, %struct.ixgbe_ring_container, %struct.ixgbe_ring_container, %struct.napi_struct, %struct.cpumask, i32, %struct.callback_head, [25 x i8], [71 x i8], [0 x %struct.ixgbe_ring] }
%struct.ixgbe_ring_container = type { ptr, i32, i32, i32, i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pause_stats = type { i64, i64 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.vf_data_storage = type { ptr, [6 x i8], [30 x i16], i16, i8, i8, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%union.ixgbe_adv_rx_desc = type { %struct.anon.136 }
%struct.anon.136 = type { i64, i64 }
%struct.anon.137 = type { %struct.anon.138, %struct.anon.143 }
%struct.anon.138 = type { %union.anon.139, %union.anon.141 }
%union.anon.139 = type { i32 }
%union.anon.141 = type { i32 }
%struct.anon.143 = type { i32, i16, i16 }
%union.ixgbe_adv_tx_desc = type { %struct.anon.119 }
%struct.anon.119 = type { i64, i32, i32 }
%struct.ixgbe_tx_buffer = type { ptr, i32, %union.anon.121, i32, i16, i16, i32, i32, i32 }
%union.anon.121 = type { ptr }
%struct.ixgbe_rx_buffer = type { %union.anon.122 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { ptr, i32, ptr, i32, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.114, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.114 = type { i32 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }

@ixgbe_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 17, i32 0, ptr @ixgbe_get_drvinfo, ptr @ixgbe_get_regs_len, ptr @ixgbe_get_regs, ptr @ixgbe_get_wol, ptr @ixgbe_set_wol, ptr @ixgbe_get_msglevel, ptr @ixgbe_set_msglevel, ptr @ixgbe_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @ixgbe_get_eeprom_len, ptr @ixgbe_get_eeprom, ptr @ixgbe_set_eeprom, ptr @ixgbe_get_coalesce, ptr @ixgbe_set_coalesce, ptr @ixgbe_get_ringparam, ptr @ixgbe_set_ringparam, ptr @ixgbe_get_pause_stats, ptr @ixgbe_get_pauseparam, ptr @ixgbe_set_pauseparam, ptr @ixgbe_diag_test, ptr @ixgbe_get_strings, ptr @ixgbe_set_phys_id, ptr @ixgbe_get_ethtool_stats, ptr null, ptr null, ptr @ixgbe_get_priv_flags, ptr @ixgbe_set_priv_flags, ptr @ixgbe_get_sset_count, ptr @ixgbe_get_rxnfc, ptr @ixgbe_set_rxnfc, ptr null, ptr null, ptr @ixgbe_get_rxfh_key_size, ptr @ixgbe_rss_indir_size, ptr @ixgbe_get_rxfh, ptr @ixgbe_set_rxfh, ptr null, ptr null, ptr @ixgbe_get_channels, ptr @ixgbe_set_channels, ptr null, ptr null, ptr null, ptr @ixgbe_get_ts_info, ptr @ixgbe_get_module_info, ptr @ixgbe_get_module_eeprom, ptr @ixgbe_get_eee, ptr @ixgbe_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_get_link_ksettings, ptr @ixgbe_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ixgbe_driver_name = external dso_local global [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rx-usecs value high enough to re-enable RSC\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rx-usecs set too low, disabling RSC\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Adapter removed - test blocked\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"offline diagnostic is not supported when VFs are present\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"offline testing starting\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register testing starting\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"eeprom testing starting\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"interrupt testing starting\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Skip MAC loopback diagnostic in VT mode\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"loopback testing starting\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"online testing starting\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Adapter removed - register test blocked\0A\00", [55 x i8] zeroinitializer }, align 32
@reg_test_82598 = internal constant { [22 x %struct.ixgbe_reg_test], [88 x i8] } { [22 x %struct.ixgbe_reg_test] [%struct.ixgbe_reg_test { i16 12832, i8 1, i8 1, i32 -2146959376, i32 -2146959376 }, %struct.ixgbe_reg_test { i16 12896, i8 1, i8 1, i32 -2146959376, i32 -2146959376 }, %struct.ixgbe_reg_test { i16 12296, i8 1, i8 1, i32 -1, i32 -1 }, %struct.ixgbe_reg_test { i16 20616, i8 1, i8 1, i32 0, i32 0 }, %struct.ixgbe_reg_test { i16 4096, i8 4, i8 1, i32 -128, i32 -1 }, %struct.ixgbe_reg_test { i16 4100, i8 4, i8 1, i32 -1, i32 -1 }, %struct.ixgbe_reg_test { i16 4104, i8 4, i8 1, i32 1048448, i32 1048575 }, %struct.ixgbe_reg_test { i16 4136, i8 4, i8 3, i32 0, i32 33554432 }, %struct.ixgbe_reg_test { i16 4120, i8 4, i8 1, i32 65535, i32 65535 }, %struct.ixgbe_reg_test { i16 4136, i8 4, i8 3, i32 0, i32 0 }, %struct.ixgbe_reg_test { i16 12896, i8 1, i8 1, i32 -2146959376, i32 -2146959376 }, %struct.ixgbe_reg_test { i16 12800, i8 1, i8 1, i32 -1, i32 -1 }, %struct.ixgbe_reg_test { i16 -13568, i8 1, i8 1, i32 255, i32 255 }, %struct.ixgbe_reg_test { i16 24576, i8 4, i8 1, i32 -128, i32 -1 }, %struct.ixgbe_reg_test { i16 24580, i8 4, i8 1, i32 -1, i32 -1 }, %struct.ixgbe_reg_test { i16 24584, i8 4, i8 1, i32 1048448, i32 1048575 }, %struct.ixgbe_reg_test { i16 12288, i8 1, i8 2, i32 3, i32 3 }, %struct.ixgbe_reg_test { i16 32256, i8 1, i8 2, i32 5, i32 5 }, %struct.ixgbe_reg_test { i16 21504, i8 16, i8 5, i32 -1, i32 -1 }, %struct.ixgbe_reg_test { i16 21504, i8 16, i8 6, i32 -2146631681, i32 -2146631681 }, %struct.ixgbe_reg_test { i16 20992, i8 -128, i8 4, i32 -1, i32 -1 }, %struct.ixgbe_reg_test zeroinitializer], [88 x i8] zeroinitializer }, align 32
@reg_test_82599 = internal constant { [20 x %struct.ixgbe_reg_test], [48 x i8] } { [20 x %struct.ixgbe_reg_test] [%struct.ixgbe_reg_test { i16 12832, i8 1, i8 1, i32 -2146959376, i32 -2146959376 }, %struct.ixgbe_reg_test { i16 12896, i8 1, i8 1, i32 -2146959376, i32 -2146959376 }, %struct.ixgbe_reg_test { i16 12296, i8 1, i8 1, i32 -1, i32 -1 }, %struct.ixgbe_reg_test { i16 20616, i8 1, i8 1, i32 0, i32 0 }, %struct.ixgbe_reg_test { i16 4096, i8 4, i8 1, i32 -128, i32 -128 }, %struct.ixgbe_reg_test { i16 4100, i8 4, i8 1, i32 -1, i32 -1 }, %struct.ixgbe_reg_test { i16 4104, i8 4, i8 1, i32 1048448, i32 1048575 }, %struct.ixgbe_reg_test { i16 4136, i8 4, i8 3, i32 0, i32 33554432 }, %struct.ixgbe_reg_test { i16 4120, i8 4, i8 1, i32 65535, i32 65535 }, %struct.ixgbe_reg_test { i16 4136, i8 4, i8 3, i32 0, i32 0 }, %struct.ixgbe_reg_test { i16 12896, i8 1, i8 1, i32 -2146959376, i32 -2146959376 }, %struct.ixgbe_reg_test { i16 12800, i8 1, i8 1, i32 -1, i32 -1 }, %struct.ixgbe_reg_test { i16 24576, i8 4, i8 1, i32 -128, i32 -1 }, %struct.ixgbe_reg_test { i16 24580, i8 4, i8 1, i32 -1, i32 -1 }, %struct.ixgbe_reg_test { i16 24584, i8 4, i8 1, i32 1048448, i32 1048448 }, %struct.ixgbe_reg_test { i16 12288, i8 1, i8 2, i32 1, i32 1 }, %struct.ixgbe_reg_test { i16 21504, i8 16, i8 5, i32 -1, i32 -1 }, %struct.ixgbe_reg_test { i16 21504, i8 16, i8 6, i32 -2147352577, i32 -2146631681 }, %struct.ixgbe_reg_test { i16 20992, i8 -128, i8 4, i32 -1, i32 -1 }, %struct.ixgbe_reg_test zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"pattern test reg %04X failed: got 0x%08X expected 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"set/check reg %04X test failed: got 0x%08X expected 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"testing %s interrupt\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shared\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unshared\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@ixgbe_gstrings_test = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"Register test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Eeprom test    (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Interrupt test (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Loopback test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Link test   (on/offline)\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@ixgbe_gstrings_stats = internal constant { [64 x %struct.ixgbe_stats], [704 x i8] } { [64 x %struct.ixgbe_stats] [%struct.ixgbe_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 0 }, %struct.ixgbe_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 8 }, %struct.ixgbe_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 16 }, %struct.ixgbe_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 24 }, %struct.ixgbe_stats { [32 x i8] c"rx_pkts_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 5992 }, %struct.ixgbe_stats { [32 x i8] c"tx_pkts_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 6016 }, %struct.ixgbe_stats { [32 x i8] c"rx_bytes_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 6024 }, %struct.ixgbe_stats { [32 x i8] c"tx_bytes_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 6032 }, %struct.ixgbe_stats { [32 x i8] c"lsc_int\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1160 }, %struct.ixgbe_stats { [32 x i8] c"tx_busy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7296 }, %struct.ixgbe_stats { [32 x i8] c"non_eop_descs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1472 }, %struct.ixgbe_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 32 }, %struct.ixgbe_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 40 }, %struct.ixgbe_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 48 }, %struct.ixgbe_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 56 }, %struct.ixgbe_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 64 }, %struct.ixgbe_stats { [32 x i8] c"broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 6000 }, %struct.ixgbe_stats { [32 x i8] c"rx_no_buffer_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 6040 }, %struct.ixgbe_stats { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 72 }, %struct.ixgbe_stats { [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 88 }, %struct.ixgbe_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 96 }, %struct.ixgbe_stats { [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 104 }, %struct.ixgbe_stats { [32 x i8] c"hw_rsc_aggregated\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1456 }, %struct.ixgbe_stats { [32 x i8] c"hw_rsc_flushed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1464 }, %struct.ixgbe_stats { [32 x i8] c"fdir_match\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7184 }, %struct.ixgbe_stats { [32 x i8] c"fdir_miss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7192 }, %struct.ixgbe_stats { [32 x i8] c"fdir_overflow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 7428 }, %struct.ixgbe_stats { [32 x i8] c"rx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 112 }, %struct.ixgbe_stats { [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 120 }, %struct.ixgbe_stats { [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 128 }, %struct.ixgbe_stats { [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 136 }, %struct.ixgbe_stats { [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 144 }, %struct.ixgbe_stats { [32 x i8] c"tx_heartbeat_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 152 }, %struct.ixgbe_stats { [32 x i8] c"tx_timeout_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1168 }, %struct.ixgbe_stats { [32 x i8] c"tx_restart_queue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1152 }, %struct.ixgbe_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 5648 }, %struct.ixgbe_stats { [32 x i8] c"rx_long_length_errors\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 6120 }, %struct.ixgbe_stats { [32 x i8] c"rx_short_length_errors\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 6104 }, %struct.ixgbe_stats { [32 x i8] c"tx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 5656 }, %struct.ixgbe_stats { [32 x i8] c"rx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 5664 }, %struct.ixgbe_stats { [32 x i8] c"tx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 5672 }, %struct.ixgbe_stats { [32 x i8] c"rx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 5680 }, %struct.ixgbe_stats { [32 x i8] c"rx_csum_offload_errors\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1440 }, %struct.ixgbe_stats { [32 x i8] c"alloc_rx_page\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1480 }, %struct.ixgbe_stats { [32 x i8] c"alloc_rx_page_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1484 }, %struct.ixgbe_stats { [32 x i8] c"alloc_rx_buff_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1488 }, %struct.ixgbe_stats { [32 x i8] c"rx_no_dma_resources\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1448 }, %struct.ixgbe_stats { [32 x i8] c"os2bmc_rx_by_bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7280 }, %struct.ixgbe_stats { [32 x i8] c"os2bmc_tx_by_bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7264 }, %struct.ixgbe_stats { [32 x i8] c"os2bmc_tx_by_host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7288 }, %struct.ixgbe_stats { [32 x i8] c"os2bmc_rx_by_host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7272 }, %struct.ixgbe_stats { [32 x i8] c"tx_hwtstamp_timeouts\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 65300 }, %struct.ixgbe_stats { [32 x i8] c"tx_hwtstamp_skipped\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 65304 }, %struct.ixgbe_stats { [32 x i8] c"rx_hwtstamp_cleared\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 65308 }, %struct.ixgbe_stats { [32 x i8] c"tx_ipsec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 552 }, %struct.ixgbe_stats { [32 x i8] c"rx_ipsec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 568 }, %struct.ixgbe_stats { [32 x i8] c"fcoe_bad_fccrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7200 }, %struct.ixgbe_stats { [32 x i8] c"rx_fcoe_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7208 }, %struct.ixgbe_stats { [32 x i8] c"rx_fcoe_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7216 }, %struct.ixgbe_stats { [32 x i8] c"rx_fcoe_dwords\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7232 }, %struct.ixgbe_stats { [32 x i8] c"fcoe_noddp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7248 }, %struct.ixgbe_stats { [32 x i8] c"fcoe_noddp_ext_buff\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7256 }, %struct.ixgbe_stats { [32 x i8] c"tx_fcoe_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7224 }, %struct.ixgbe_stats { [32 x i8] c"tx_fcoe_dwords\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 7240 }], [704 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_queue_%u_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_queue_%u_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_queue_%u_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_queue_%u_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_pb_%u_pxon\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_pb_%u_pxoff\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_pb_%u_pxon\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_pb_%u_pxoff\00", [17 x i8] zeroinitializer }, align 32
@ixgbe_priv_flags_strings = internal constant { [2 x [32 x i8]], [32 x i8] } { [2 x [32 x i8]] [[32 x i8] c"legacy-rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"vf-ipsec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Location out of range\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unrecognized flow type\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Error writing mask\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Only one mask supported per port\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"enabling UDP RSS: fragmented packets may arrive out of order to the stack above\0A\00", [47 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.32 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"Address change required to access page 0xA2, but not supported. Please report the module type to the driver maintainers.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Setting EEE Tx LPI timer is not supported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Setting EEE advertised speeds is not supported\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"setup link failed with code %d\0A\00", [32 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 3, i32 2, i32 2, i32 2, i32 2, i32 2], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.37 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 32576, i32 18688, i32 18688, i32 18688, i32 18688, i32 18688], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.38 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 20640, i32 9264, i32 9264, i32 9264, i32 9264, i32 9264], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.39 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15392, i32 8512, i32 8512, i32 8512, i32 8512, i32 8512], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.40 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15396, i32 8516, i32 8516, i32 8516, i32 8516, i32 8516], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.41 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15400, i32 8520, i32 8520, i32 8520, i32 8520, i32 8520], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.42 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15404, i32 8524, i32 8524, i32 8524, i32 8524, i32 8524], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.43 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15408, i32 8528, i32 8528, i32 8528, i32 8528, i32 8528], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.44 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15412, i32 8532, i32 8532, i32 8532, i32 8532, i32 8532], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.45 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15416, i32 8536, i32 8536, i32 8536, i32 8536, i32 8536], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.46 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15420, i32 8540, i32 8540, i32 8540, i32 8540, i32 8540], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.47 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15424, i32 8544, i32 8544, i32 8544, i32 8544, i32 8544], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.48 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15428, i32 8548, i32 8548, i32 8548, i32 8548, i32 8548], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.49 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15432, i32 8552, i32 8552, i32 8552, i32 8552, i32 8552], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.50 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15436, i32 8556, i32 8556, i32 8556, i32 8556, i32 8556], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.51 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15440, i32 8560, i32 8560, i32 8560, i32 8560, i32 8560], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.52 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15444, i32 8564, i32 8564, i32 8564, i32 8564, i32 8564], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.53 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15448, i32 8568, i32 8568, i32 8568, i32 8568, i32 8568], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.54 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 15452, i32 8572, i32 8572, i32 8572, i32 8572, i32 8572], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.55 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 24620, i32 18704, i32 18704, i32 18704, i32 18704, i32 18704], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.56 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 24684, i32 18708, i32 18708, i32 18708, i32 18708, i32 18708], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.57 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 24748, i32 18712, i32 18712, i32 18712, i32 18712, i32 18712], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.58 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 24812, i32 18716, i32 18716, i32 18716, i32 18716, i32 18716], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.59 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 24876, i32 18720, i32 18720, i32 18720, i32 18720, i32 18720], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.60 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 24940, i32 18724, i32 18724, i32 18724, i32 18724, i32 18724], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.61 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25004, i32 18728, i32 18728, i32 18728, i32 18728, i32 18728], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.62 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25068, i32 18732, i32 18732, i32 18732, i32 18732, i32 18732], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.63 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25132, i32 18736, i32 18736, i32 18736, i32 18736, i32 18736], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.64 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25196, i32 18740, i32 18740, i32 18740, i32 18740, i32 18740], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.65 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25260, i32 18744, i32 18744, i32 18744, i32 18744, i32 18744], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.66 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25324, i32 18748, i32 18748, i32 18748, i32 18748, i32 18748], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.67 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25388, i32 18752, i32 18752, i32 18752, i32 18752, i32 18752], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.68 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25452, i32 18756, i32 18756, i32 18756, i32 18756, i32 18756], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.69 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25516, i32 18760, i32 18760, i32 18760, i32 18760, i32 18760], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_regs.70 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25580, i32 18764, i32 18764, i32 18764, i32 18764, i32 18764], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_diag_test = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @reg_test_82598, ptr @reg_test_82599, ptr @reg_test_82599, ptr @reg_test_82599, ptr @reg_test_82599, ptr @reg_test_82599], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_diag_test.71 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2147480575, i32 2147480335, i32 2147480335, i32 2147480335, i32 2147480335, i32 2147480335], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_channels = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 16, i32 16, i32 16, i32 63, i32 63, i32 63], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_set_channels = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 16, i32 16, i32 16, i32 63, i32 63, i32 63], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_set_channels.72 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 16, i32 16, i32 16, i32 63, i32 63, i32 63], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_ts_info = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4145, i32 4145, i32 3, i32 3, i32 3], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 42, i64 49, i64 50]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 13]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.86 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@__sancov_gen_cov_switch_values.89 = internal global [10 x i64] [i64 8, i64 16, i64 4278, i64 4343, i64 5384, i64 5396, i64 5399, i64 5546, i64 5547, i64 5552]
@__sancov_gen_cov_switch_values.90 = internal global [10 x i64] [i64 8, i64 16, i64 4278, i64 4343, i64 5384, i64 5396, i64 5399, i64 5546, i64 5547, i64 5552]
@__sancov_gen_cov_switch_values.91 = internal global [10 x i64] [i64 8, i64 16, i64 4278, i64 4343, i64 5384, i64 5396, i64 5399, i64 5546, i64 5547, i64 5552]
@__sancov_gen_cov_switch_values.92 = internal global [20 x i64] [i64 18, i64 32, i64 2, i64 3, i64 7, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 27]
@__sancov_gen_cov_switch_values.93 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 65534]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 8, i64 32, i64 128, i64 1024, i64 2048]
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"ixgbe_ethtool_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 3540, i32 33 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2407, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2413, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2156, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2173, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2188, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2202, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2207, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2212, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2220, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2226, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2240, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1565, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"reg_test_82598\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1481, i32 36 }
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"reg_test_82599\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1457, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1598, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1524, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1548, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1708, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 44, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c"ixgbe_gstrings_test\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 129, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant [21 x i8] c"ixgbe_gstrings_stats\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 39, i32 33 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1387, i32 24 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1388, i32 24 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1391, i32 24 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1392, i32 24 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1395, i32 24 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1396, i32 24 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1399, i32 24 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1400, i32 24 }
@___asan_gen_.192 = private unnamed_addr constant [25 x i8] c"ixgbe_priv_flags_strings\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 136, i32 19 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2808, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2824, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2869, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2873, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2998, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 3319, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 3465, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 3470, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 3476, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [52 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 515, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant [28 x i8] c"switch.table.ixgbe_get_regs\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.37\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.38\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.39\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.40\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.41\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.42\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.43\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.44\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.45\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.46\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.47\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.48\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.49\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.50\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.51\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.52\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.53\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.54\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.55\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.56\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.57\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.58\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.59\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.60\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.61\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.62\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.63\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.64\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.65\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.66\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.67\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.68\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.69\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_regs.70\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [29 x i8] c"switch.table.ixgbe_diag_test\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [32 x i8] c"switch.table.ixgbe_diag_test.71\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [32 x i8] c"switch.table.ixgbe_get_channels\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [32 x i8] c"switch.table.ixgbe_set_channels\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [35 x i8] c"switch.table.ixgbe_set_channels.72\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [31 x i8] c"switch.table.ixgbe_get_ts_info\00", align 1
@llvm.compiler.used = appending global [84 x ptr] [ptr @ixgbe_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @reg_test_82598, ptr @reg_test_82599, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ixgbe_gstrings_test, ptr @ixgbe_gstrings_stats, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ixgbe_priv_flags_strings, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @switch.table.ixgbe_get_regs, ptr @switch.table.ixgbe_get_regs.37, ptr @switch.table.ixgbe_get_regs.38, ptr @switch.table.ixgbe_get_regs.39, ptr @switch.table.ixgbe_get_regs.40, ptr @switch.table.ixgbe_get_regs.41, ptr @switch.table.ixgbe_get_regs.42, ptr @switch.table.ixgbe_get_regs.43, ptr @switch.table.ixgbe_get_regs.44, ptr @switch.table.ixgbe_get_regs.45, ptr @switch.table.ixgbe_get_regs.46, ptr @switch.table.ixgbe_get_regs.47, ptr @switch.table.ixgbe_get_regs.48, ptr @switch.table.ixgbe_get_regs.49, ptr @switch.table.ixgbe_get_regs.50, ptr @switch.table.ixgbe_get_regs.51, ptr @switch.table.ixgbe_get_regs.52, ptr @switch.table.ixgbe_get_regs.53, ptr @switch.table.ixgbe_get_regs.54, ptr @switch.table.ixgbe_get_regs.55, ptr @switch.table.ixgbe_get_regs.56, ptr @switch.table.ixgbe_get_regs.57, ptr @switch.table.ixgbe_get_regs.58, ptr @switch.table.ixgbe_get_regs.59, ptr @switch.table.ixgbe_get_regs.60, ptr @switch.table.ixgbe_get_regs.61, ptr @switch.table.ixgbe_get_regs.62, ptr @switch.table.ixgbe_get_regs.63, ptr @switch.table.ixgbe_get_regs.64, ptr @switch.table.ixgbe_get_regs.65, ptr @switch.table.ixgbe_get_regs.66, ptr @switch.table.ixgbe_get_regs.67, ptr @switch.table.ixgbe_get_regs.68, ptr @switch.table.ixgbe_get_regs.69, ptr @switch.table.ixgbe_get_regs.70, ptr @switch.table.ixgbe_diag_test, ptr @switch.table.ixgbe_diag_test.71, ptr @switch.table.ixgbe_get_channels, ptr @switch.table.ixgbe_set_channels, ptr @switch.table.ixgbe_set_channels.72, ptr @switch.table.ixgbe_get_ts_info], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_test_82598 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_test_82599 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_gstrings_test to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_gstrings_stats to i32), i32 2816, i32 3520, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_priv_flags_strings to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_regs.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_diag_test to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_diag_test.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_channels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_set_channels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_set_channels.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_ts_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_update_ethtool_fdir_entry(ptr noundef %adapter, ptr noundef %input, i16 noundef zeroext %sw_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %fdir_filter_list = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 67
  br label %for.cond

for.cond:                                         ; preds = %land.rhs.for.cond_crit_edge, %entry
  %parent.0 = phi ptr [ null, %entry ], [ %rule.0, %land.rhs.for.cond_crit_edge ]
  %rule.0.in = phi ptr [ %fdir_filter_list, %entry ], [ %rule.0, %land.rhs.for.cond_crit_edge ]
  %0 = ptrtoint ptr %rule.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %rule.0 = load ptr, ptr %rule.0.in, align 8
  %tobool3.not = icmp eq ptr %rule.0, null
  br i1 %tobool3.not, label %for.cond.if.end37_crit_edge, label %land.rhs

for.cond.if.end37_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

land.rhs:                                         ; preds = %for.cond
  %sw_idx6 = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0, i32 0, i32 2
  %1 = ptrtoint ptr %sw_idx6 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sw_idx6, align 4
  %cmp.not = icmp ult i16 %2, %sw_idx
  br i1 %cmp.not, label %land.rhs.for.cond_crit_edge, label %land.lhs.true.critedge

land.rhs.for.cond_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond

land.lhs.true.critedge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %sw_idx)
  %cmp23 = icmp eq i16 %2, %sw_idx
  br i1 %cmp23, label %if.then25, label %land.lhs.true.critedge.if.end37_crit_edge

land.lhs.true.critedge.if.end37_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

if.then25:                                        ; preds = %land.lhs.true.critedge
  %tobool26.not = icmp eq ptr %input, null
  br i1 %tobool26.not, label %if.then25.if.then33_crit_edge, label %lor.lhs.false

if.then25.if.then33_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then33

lor.lhs.false:                                    ; preds = %if.then25
  %bkt_hash = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0, i32 0, i32 1, i32 0, i32 8
  %3 = ptrtoint ptr %bkt_hash to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bkt_hash, align 2
  %bkt_hash29 = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %input, i32 0, i32 1, i32 0, i32 8
  %5 = ptrtoint ptr %bkt_hash29 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bkt_hash29, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp31.not = icmp eq i16 %4, %6
  br i1 %cmp31.not, label %lor.lhs.false.if.end35_crit_edge, label %lor.lhs.false.if.then33_crit_edge

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then33

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35

if.then33:                                        ; preds = %lor.lhs.false.if.then33_crit_edge, %if.then25.if.then33_crit_edge
  %filter34 = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0, i32 0, i32 1
  %call = tail call i32 @ixgbe_fdir_erase_perfect_filter_82599(ptr noundef %hw1, ptr noundef %filter34, i16 noundef zeroext %sw_idx) #19
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %lor.lhs.false.if.end35_crit_edge
  %err.0 = phi i32 [ %call, %if.then33 ], [ -22, %lor.lhs.false.if.end35_crit_edge ]
  %7 = ptrtoint ptr %rule.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rule.0, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %rule.0, i32 0, i32 1
  %9 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev2.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %8, ptr %10, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end35.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end35.hlist_del.exit_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end35.hlist_del.exit_crit_edge
  %13 = ptrtoint ptr %rule.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.0, align 4
  %14 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %rule.0) #19
  %fdir_filter_count = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 70
  %15 = ptrtoint ptr %fdir_filter_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fdir_filter_count, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %fdir_filter_count, align 4
  br label %if.end37

if.end37:                                         ; preds = %hlist_del.exit, %land.lhs.true.critedge.if.end37_crit_edge, %for.cond.if.end37_crit_edge
  %err.1 = phi i32 [ %err.0, %hlist_del.exit ], [ -22, %land.lhs.true.critedge.if.end37_crit_edge ], [ -22, %for.cond.if.end37_crit_edge ]
  %tobool38.not = icmp eq ptr %input, null
  br i1 %tobool38.not, label %if.end37.cleanup_crit_edge, label %if.end40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end40:                                         ; preds = %if.end37
  %17 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %input, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %input, i32 0, i32 1
  %18 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pprev.i, align 4
  %tobool42.not = icmp eq ptr %parent.0, null
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.end40
  %19 = ptrtoint ptr %parent.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.0, align 4
  %21 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %input, align 4
  store volatile ptr %input, ptr %parent.0, align 4
  %22 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %parent.0, ptr %pprev.i, align 4
  %23 = load ptr, ptr %input, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then43.if.end48_crit_edge, label %do.body24.i

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48

do.body24.i:                                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #21
  %pprev27.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pprev27.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %input, ptr %pprev27.i, align 4
  br label %if.end48

if.else:                                          ; preds = %if.end40
  %25 = ptrtoint ptr %fdir_filter_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fdir_filter_list, align 4
  %27 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %input, align 4
  %tobool.not.i80 = icmp eq ptr %26, null
  br i1 %tobool.not.i80, label %if.else.hlist_add_head.exit_crit_edge, label %do.body12.i

if.else.hlist_add_head.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %pprev.i81 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %pprev.i81 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %input, ptr %pprev.i81, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.else.hlist_add_head.exit_crit_edge
  %29 = ptrtoint ptr %fdir_filter_list to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %input, ptr %fdir_filter_list, align 4
  %30 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %fdir_filter_list, ptr %pprev.i, align 4
  br label %if.end48

if.end48:                                         ; preds = %hlist_add_head.exit, %do.body24.i, %if.then43.if.end48_crit_edge
  %fdir_filter_count49 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 70
  %31 = ptrtoint ptr %fdir_filter_count49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fdir_filter_count49, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %fdir_filter_count49, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ %err.1, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_fdir_erase_perfect_filter_82599(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ixgbe_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ixgbe_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_get_drvinfo(ptr noundef %netdev, ptr noundef %drvinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @ixgbe_driver_name, i32 noundef 32) #19
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %eeprom_id = getelementptr i8, ptr %netdev, i32 67258
  %call4 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef %eeprom_id, i32 noundef 32) #19
  %pdev = getelementptr i8, ptr %netdev, i32 2824
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call7 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #19
  %n_priv_flags = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 7
  %6 = ptrtoint ptr %n_priv_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %n_priv_flags, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_get_regs_len(ptr nocapture noundef readnone %netdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4580
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_get_regs(ptr noundef %netdev, ptr nocapture noundef writeonly %regs, ptr noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 6528
  %0 = call ptr @memset(ptr %p, i32 0, i32 4580)
  %type = getelementptr i8, ptr %netdev, i32 6808
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %shl = shl i32 %2, 24
  %revision_id = getelementptr i8, ptr %netdev, i32 7820
  %3 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %revision_id, align 4
  %conv = zext i8 %4 to i32
  %shl2 = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl2, %shl
  %device_id = getelementptr i8, ptr %netdev, i32 7812
  %5 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device_id, align 4
  %conv3 = zext i16 %6 to i32
  %or4 = or i32 %or, %conv3
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or4, ptr %version, align 4
  %call5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 0) #19
  %8 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call5, ptr %p, align 4
  %call6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #19
  %arrayidx7 = getelementptr i32, ptr %p, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call6, ptr %arrayidx7, align 4
  %call8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 24) #19
  %arrayidx9 = getelementptr i32, ptr %p, i32 2
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call8, ptr %arrayidx9, align 4
  %call10 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 32) #19
  %arrayidx11 = getelementptr i32, ptr %p, i32 3
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call10, ptr %arrayidx11, align 4
  %call12 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 40) #19
  %arrayidx13 = getelementptr i32, ptr %p, i32 4
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call12, ptr %arrayidx13, align 4
  %call14 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 512) #19
  %arrayidx15 = getelementptr i32, ptr %p, i32 5
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call14, ptr %arrayidx15, align 4
  %call16 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 72) #19
  %arrayidx17 = getelementptr i32, ptr %p, i32 6
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call16, ptr %arrayidx17, align 4
  %call18 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 76) #19
  %arrayidx19 = getelementptr i32, ptr %p, i32 7
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call18, ptr %arrayidx19, align 4
  %mvals = getelementptr i8, ptr %netdev, i32 7808
  %16 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mvals, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %call21 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %19) #19
  %arrayidx22 = getelementptr i32, ptr %p, i32 8
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call21, ptr %arrayidx22, align 4
  %call23 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 65556) #19
  %arrayidx24 = getelementptr i32, ptr %p, i32 9
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call23, ptr %arrayidx24, align 4
  %22 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mvals, align 4
  %arrayidx26 = getelementptr i32, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26, align 4
  %call27 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %25) #19
  %arrayidx28 = getelementptr i32, ptr %p, i32 10
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call27, ptr %arrayidx28, align 4
  %call29 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 65808) #19
  %arrayidx30 = getelementptr i32, ptr %p, i32 11
  %27 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call29, ptr %arrayidx30, align 4
  %call31 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 65812) #19
  %arrayidx32 = getelementptr i32, ptr %p, i32 12
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call31, ptr %arrayidx32, align 4
  %call33 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 65816) #19
  %arrayidx34 = getelementptr i32, ptr %p, i32 13
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call33, ptr %arrayidx34, align 4
  %call35 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 65820) #19
  %arrayidx36 = getelementptr i32, ptr %p, i32 14
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call35, ptr %arrayidx36, align 4
  %call37 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 65824) #19
  %arrayidx38 = getelementptr i32, ptr %p, i32 15
  %31 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call37, ptr %arrayidx38, align 4
  %call39 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 65852) #19
  %arrayidx40 = getelementptr i32, ptr %p, i32 16
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call39, ptr %arrayidx40, align 4
  %33 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mvals, align 4
  %arrayidx42 = getelementptr i32, ptr %34, i32 2
  %35 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx42, align 4
  %call43 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %36) #19
  %arrayidx44 = getelementptr i32, ptr %p, i32 17
  %37 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call43, ptr %arrayidx44, align 4
  %call45 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 2056) #19
  %arrayidx46 = getelementptr i32, ptr %p, i32 18
  %38 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call45, ptr %arrayidx46, align 4
  %call47 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 2056) #19
  %arrayidx48 = getelementptr i32, ptr %p, i32 19
  %39 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call47, ptr %arrayidx48, align 4
  %call49 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 2176) #19
  %arrayidx50 = getelementptr i32, ptr %p, i32 20
  %40 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call49, ptr %arrayidx50, align 4
  %call51 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 2184) #19
  %arrayidx52 = getelementptr i32, ptr %p, i32 21
  %41 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call51, ptr %arrayidx52, align 4
  %call53 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 2064) #19
  %arrayidx54 = getelementptr i32, ptr %p, i32 22
  %42 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call53, ptr %arrayidx54, align 4
  %call55 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 2192) #19
  %arrayidx56 = getelementptr i32, ptr %p, i32 23
  %43 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call55, ptr %arrayidx56, align 4
  %call57 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 2080) #19
  %arrayidx58 = getelementptr i32, ptr %p, i32 24
  %44 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call57, ptr %arrayidx58, align 4
  %call59 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 2304) #19
  %arrayidx60 = getelementptr i32, ptr %p, i32 25
  %45 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call59, ptr %arrayidx60, align 4
  %call61 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 0) #19
  %arrayidx62 = getelementptr i32, ptr %p, i32 26
  %46 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call61, ptr %arrayidx62, align 4
  %call63 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8192) #19
  %arrayidx64 = getelementptr i32, ptr %p, i32 27
  %47 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call63, ptr %arrayidx64, align 4
  %call65 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 69736) #19
  %arrayidx66 = getelementptr i32, ptr %p, i32 28
  %48 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call65, ptr %arrayidx66, align 4
  %call67 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 2200) #19
  %arrayidx68 = getelementptr i32, ptr %p, i32 29
  %49 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call67, ptr %arrayidx68, align 4
  %call69 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12296) #19
  %arrayidx70 = getelementptr i32, ptr %p, i32 30
  %50 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call69, ptr %arrayidx70, align 4
  %call74 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12800) #19
  %arrayidx77 = getelementptr i32, ptr %p, i32 31
  %51 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call74, ptr %arrayidx77, align 4
  %call74.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12804) #19
  %arrayidx77.1 = getelementptr i32, ptr %p, i32 32
  %52 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call74.1, ptr %arrayidx77.1, align 4
  %call74.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12808) #19
  %arrayidx77.2 = getelementptr i32, ptr %p, i32 33
  %53 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call74.2, ptr %arrayidx77.2, align 4
  %call74.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12812) #19
  %arrayidx77.3 = getelementptr i32, ptr %p, i32 34
  %54 = ptrtoint ptr %arrayidx77.3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call74.3, ptr %arrayidx77.3, align 4
  br label %for.body82

for.body82:                                       ; preds = %for.inc114.for.body82_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc114.for.body82_crit_edge ]
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %57 = icmp ult i32 %switch.tableidx, 6
  br i1 %57, label %switch.lookup, label %for.body82.for.inc114_crit_edge

for.body82.for.inc114_crit_edge:                  ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc114

switch.lookup:                                    ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #21
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs, i32 0, i32 %switch.tableidx
  %58 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %58)
  %switch.load = load i32, ptr %switch.gep, align 4
  %mul101 = shl nuw nsw i32 %indvars.iv, %switch.load
  %add87 = add nuw nsw i32 %mul101, 12832
  %call88 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add87) #19
  %add90 = add nuw nsw i32 %indvars.iv, 35
  %arrayidx91 = getelementptr i32, ptr %p, i32 %add90
  %59 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call88, ptr %arrayidx91, align 4
  %add94 = add nuw nsw i32 %mul101, 12896
  %call95 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add94) #19
  %add97 = add nuw nsw i32 %indvars.iv, 43
  %arrayidx98 = getelementptr i32, ptr %p, i32 %add97
  %60 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call95, ptr %arrayidx98, align 4
  br label %for.inc114

for.inc114:                                       ; preds = %switch.lookup, %for.body82.for.inc114_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end116, label %for.inc114.for.body82_crit_edge

for.inc114.for.body82_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body82

for.end116:                                       ; preds = %for.inc114
  %call117 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12960) #19
  %arrayidx118 = getelementptr i32, ptr %p, i32 51
  %61 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call117, ptr %arrayidx118, align 4
  %call119 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52736) #19
  %arrayidx120 = getelementptr i32, ptr %p, i32 52
  %62 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call119, ptr %arrayidx120, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %for.end116
  %indvars.iv2097 = phi i32 [ 0, %for.end116 ], [ %indvars.iv.next2098, %cond.end.cond.end_crit_edge ]
  %mul130 = shl nuw nsw i32 %indvars.iv2097, 6
  %add131 = add nuw nsw i32 %mul130, 4096
  %call135 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add131) #19
  %add137 = add nuw nsw i32 %indvars.iv2097, 53
  %arrayidx138 = getelementptr i32, ptr %p, i32 %add137
  %63 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call135, ptr %arrayidx138, align 4
  %indvars.iv.next2098 = add nuw nsw i32 %indvars.iv2097, 1
  %exitcond2099.not = icmp eq i32 %indvars.iv.next2098, 64
  br i1 %exitcond2099.not, label %cond.end.cond.end159_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

cond.end.cond.end159_crit_edge:                   ; preds = %cond.end
  br label %cond.end159

cond.end159:                                      ; preds = %cond.end159.cond.end159_crit_edge, %cond.end.cond.end159_crit_edge
  %indvars.iv2100 = phi i32 [ %indvars.iv.next2101, %cond.end159.cond.end159_crit_edge ], [ 0, %cond.end.cond.end159_crit_edge ]
  %mul152 = shl nuw nsw i32 %indvars.iv2100, 6
  %add153 = add nuw nsw i32 %mul152, 4100
  %call161 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add153) #19
  %add163 = add nuw nsw i32 %indvars.iv2100, 117
  %arrayidx164 = getelementptr i32, ptr %p, i32 %add163
  %64 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call161, ptr %arrayidx164, align 4
  %indvars.iv.next2101 = add nuw nsw i32 %indvars.iv2100, 1
  %exitcond2102.not = icmp eq i32 %indvars.iv.next2101, 64
  br i1 %exitcond2102.not, label %cond.end159.cond.end185_crit_edge, label %cond.end159.cond.end159_crit_edge

cond.end159.cond.end159_crit_edge:                ; preds = %cond.end159
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end159

cond.end159.cond.end185_crit_edge:                ; preds = %cond.end159
  br label %cond.end185

cond.end185:                                      ; preds = %cond.end185.cond.end185_crit_edge, %cond.end159.cond.end185_crit_edge
  %indvars.iv2103 = phi i32 [ %indvars.iv.next2104, %cond.end185.cond.end185_crit_edge ], [ 0, %cond.end159.cond.end185_crit_edge ]
  %mul178 = shl nuw nsw i32 %indvars.iv2103, 6
  %add179 = add nuw nsw i32 %mul178, 4104
  %call187 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add179) #19
  %add189 = add nuw nsw i32 %indvars.iv2103, 181
  %arrayidx190 = getelementptr i32, ptr %p, i32 %add189
  %65 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call187, ptr %arrayidx190, align 4
  %indvars.iv.next2104 = add nuw nsw i32 %indvars.iv2103, 1
  %exitcond2105.not = icmp eq i32 %indvars.iv.next2104, 64
  br i1 %exitcond2105.not, label %cond.end185.cond.end211_crit_edge, label %cond.end185.cond.end185_crit_edge

cond.end185.cond.end185_crit_edge:                ; preds = %cond.end185
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end185

cond.end185.cond.end211_crit_edge:                ; preds = %cond.end185
  br label %cond.end211

cond.end211:                                      ; preds = %cond.end211.cond.end211_crit_edge, %cond.end185.cond.end211_crit_edge
  %indvars.iv2106 = phi i32 [ %indvars.iv.next2107, %cond.end211.cond.end211_crit_edge ], [ 0, %cond.end185.cond.end211_crit_edge ]
  %mul204 = shl nuw nsw i32 %indvars.iv2106, 6
  %add205 = add nuw nsw i32 %mul204, 4112
  %call213 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add205) #19
  %add215 = add nuw nsw i32 %indvars.iv2106, 245
  %arrayidx216 = getelementptr i32, ptr %p, i32 %add215
  %66 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call213, ptr %arrayidx216, align 4
  %indvars.iv.next2107 = add nuw nsw i32 %indvars.iv2106, 1
  %exitcond2108.not = icmp eq i32 %indvars.iv.next2107, 64
  br i1 %exitcond2108.not, label %cond.end211.cond.end237_crit_edge, label %cond.end211.cond.end211_crit_edge

cond.end211.cond.end211_crit_edge:                ; preds = %cond.end211
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end211

cond.end211.cond.end237_crit_edge:                ; preds = %cond.end211
  br label %cond.end237

cond.end237:                                      ; preds = %cond.end237.cond.end237_crit_edge, %cond.end211.cond.end237_crit_edge
  %indvars.iv2109 = phi i32 [ %indvars.iv.next2110, %cond.end237.cond.end237_crit_edge ], [ 0, %cond.end211.cond.end237_crit_edge ]
  %mul230 = shl nuw nsw i32 %indvars.iv2109, 6
  %add231 = add nuw nsw i32 %mul230, 4120
  %call239 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add231) #19
  %add241 = add nuw nsw i32 %indvars.iv2109, 309
  %arrayidx242 = getelementptr i32, ptr %p, i32 %add241
  %67 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call239, ptr %arrayidx242, align 4
  %indvars.iv.next2110 = add nuw nsw i32 %indvars.iv2109, 1
  %exitcond2111.not = icmp eq i32 %indvars.iv.next2110, 64
  br i1 %exitcond2111.not, label %cond.end237.cond.end263_crit_edge, label %cond.end237.cond.end237_crit_edge

cond.end237.cond.end237_crit_edge:                ; preds = %cond.end237
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end237

cond.end237.cond.end263_crit_edge:                ; preds = %cond.end237
  br label %cond.end263

cond.end263:                                      ; preds = %cond.end263.cond.end263_crit_edge, %cond.end237.cond.end263_crit_edge
  %indvars.iv2112 = phi i32 [ %indvars.iv.next2113, %cond.end263.cond.end263_crit_edge ], [ 0, %cond.end237.cond.end263_crit_edge ]
  %mul256 = shl nuw nsw i32 %indvars.iv2112, 6
  %add257 = add nuw nsw i32 %mul256, 4136
  %call265 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add257) #19
  %add267 = add nuw nsw i32 %indvars.iv2112, 373
  %arrayidx268 = getelementptr i32, ptr %p, i32 %add267
  %68 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call265, ptr %arrayidx268, align 4
  %indvars.iv.next2113 = add nuw nsw i32 %indvars.iv2112, 1
  %exitcond2114.not = icmp eq i32 %indvars.iv.next2113, 64
  br i1 %exitcond2114.not, label %cond.end299.preheader, label %cond.end263.cond.end263_crit_edge

cond.end263.cond.end263_crit_edge:                ; preds = %cond.end263
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end263

cond.end299.preheader:                            ; preds = %cond.end263
  %call301 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8448) #19
  %arrayidx304 = getelementptr i32, ptr %p, i32 437
  %69 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call301, ptr %arrayidx304, align 4
  %call301.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8452) #19
  %arrayidx304.1 = getelementptr i32, ptr %p, i32 438
  %70 = ptrtoint ptr %arrayidx304.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call301.1, ptr %arrayidx304.1, align 4
  %call301.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8456) #19
  %arrayidx304.2 = getelementptr i32, ptr %p, i32 439
  %71 = ptrtoint ptr %arrayidx304.2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call301.2, ptr %arrayidx304.2, align 4
  %call301.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8460) #19
  %arrayidx304.3 = getelementptr i32, ptr %p, i32 440
  %72 = ptrtoint ptr %arrayidx304.3 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call301.3, ptr %arrayidx304.3, align 4
  %call301.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8464) #19
  %arrayidx304.4 = getelementptr i32, ptr %p, i32 441
  %73 = ptrtoint ptr %arrayidx304.4 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call301.4, ptr %arrayidx304.4, align 4
  %call301.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8468) #19
  %arrayidx304.5 = getelementptr i32, ptr %p, i32 442
  %74 = ptrtoint ptr %arrayidx304.5 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call301.5, ptr %arrayidx304.5, align 4
  %call301.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8472) #19
  %arrayidx304.6 = getelementptr i32, ptr %p, i32 443
  %75 = ptrtoint ptr %arrayidx304.6 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call301.6, ptr %arrayidx304.6, align 4
  %call301.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8476) #19
  %arrayidx304.7 = getelementptr i32, ptr %p, i32 444
  %76 = ptrtoint ptr %arrayidx304.7 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call301.7, ptr %arrayidx304.7, align 4
  %call301.8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8480) #19
  %arrayidx304.8 = getelementptr i32, ptr %p, i32 445
  %77 = ptrtoint ptr %arrayidx304.8 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call301.8, ptr %arrayidx304.8, align 4
  %call301.9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8484) #19
  %arrayidx304.9 = getelementptr i32, ptr %p, i32 446
  %78 = ptrtoint ptr %arrayidx304.9 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call301.9, ptr %arrayidx304.9, align 4
  %call301.10 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8488) #19
  %arrayidx304.10 = getelementptr i32, ptr %p, i32 447
  %79 = ptrtoint ptr %arrayidx304.10 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call301.10, ptr %arrayidx304.10, align 4
  %call301.11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8492) #19
  %arrayidx304.11 = getelementptr i32, ptr %p, i32 448
  %80 = ptrtoint ptr %arrayidx304.11 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call301.11, ptr %arrayidx304.11, align 4
  %call301.12 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8496) #19
  %arrayidx304.12 = getelementptr i32, ptr %p, i32 449
  %81 = ptrtoint ptr %arrayidx304.12 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call301.12, ptr %arrayidx304.12, align 4
  %call301.13 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8500) #19
  %arrayidx304.13 = getelementptr i32, ptr %p, i32 450
  %82 = ptrtoint ptr %arrayidx304.13 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call301.13, ptr %arrayidx304.13, align 4
  %call301.14 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8504) #19
  %arrayidx304.14 = getelementptr i32, ptr %p, i32 451
  %83 = ptrtoint ptr %arrayidx304.14 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call301.14, ptr %arrayidx304.14, align 4
  %call301.15 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8508) #19
  %arrayidx304.15 = getelementptr i32, ptr %p, i32 452
  %84 = ptrtoint ptr %arrayidx304.15 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call301.15, ptr %arrayidx304.15, align 4
  %call337 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8704) #19
  %arrayidx340 = getelementptr i32, ptr %p, i32 453
  %85 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call337, ptr %arrayidx340, align 4
  %call337.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8708) #19
  %arrayidx340.1 = getelementptr i32, ptr %p, i32 454
  %86 = ptrtoint ptr %arrayidx340.1 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call337.1, ptr %arrayidx340.1, align 4
  %call337.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8712) #19
  %arrayidx340.2 = getelementptr i32, ptr %p, i32 455
  %87 = ptrtoint ptr %arrayidx340.2 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call337.2, ptr %arrayidx340.2, align 4
  %call337.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8716) #19
  %arrayidx340.3 = getelementptr i32, ptr %p, i32 456
  %88 = ptrtoint ptr %arrayidx340.3 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call337.3, ptr %arrayidx340.3, align 4
  %call337.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8720) #19
  %arrayidx340.4 = getelementptr i32, ptr %p, i32 457
  %89 = ptrtoint ptr %arrayidx340.4 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call337.4, ptr %arrayidx340.4, align 4
  %call337.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8724) #19
  %arrayidx340.5 = getelementptr i32, ptr %p, i32 458
  %90 = ptrtoint ptr %arrayidx340.5 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call337.5, ptr %arrayidx340.5, align 4
  %call337.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8728) #19
  %arrayidx340.6 = getelementptr i32, ptr %p, i32 459
  %91 = ptrtoint ptr %arrayidx340.6 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call337.6, ptr %arrayidx340.6, align 4
  %call337.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8732) #19
  %arrayidx340.7 = getelementptr i32, ptr %p, i32 460
  %92 = ptrtoint ptr %arrayidx340.7 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call337.7, ptr %arrayidx340.7, align 4
  %call337.8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8736) #19
  %arrayidx340.8 = getelementptr i32, ptr %p, i32 461
  %93 = ptrtoint ptr %arrayidx340.8 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call337.8, ptr %arrayidx340.8, align 4
  %call337.9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8740) #19
  %arrayidx340.9 = getelementptr i32, ptr %p, i32 462
  %94 = ptrtoint ptr %arrayidx340.9 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call337.9, ptr %arrayidx340.9, align 4
  %call337.10 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8744) #19
  %arrayidx340.10 = getelementptr i32, ptr %p, i32 463
  %95 = ptrtoint ptr %arrayidx340.10 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call337.10, ptr %arrayidx340.10, align 4
  %call337.11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8748) #19
  %arrayidx340.11 = getelementptr i32, ptr %p, i32 464
  %96 = ptrtoint ptr %arrayidx340.11 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call337.11, ptr %arrayidx340.11, align 4
  %call337.12 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8752) #19
  %arrayidx340.12 = getelementptr i32, ptr %p, i32 465
  %97 = ptrtoint ptr %arrayidx340.12 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call337.12, ptr %arrayidx340.12, align 4
  %call337.13 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8756) #19
  %arrayidx340.13 = getelementptr i32, ptr %p, i32 466
  %98 = ptrtoint ptr %arrayidx340.13 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call337.13, ptr %arrayidx340.13, align 4
  %call337.14 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8760) #19
  %arrayidx340.14 = getelementptr i32, ptr %p, i32 467
  %99 = ptrtoint ptr %arrayidx340.14 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call337.14, ptr %arrayidx340.14, align 4
  %call337.15 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8764) #19
  %arrayidx340.15 = getelementptr i32, ptr %p, i32 468
  %100 = ptrtoint ptr %arrayidx340.15 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call337.15, ptr %arrayidx340.15, align 4
  %call344 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12032) #19
  %arrayidx345 = getelementptr i32, ptr %p, i32 469
  %101 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call344, ptr %arrayidx345, align 4
  %call354 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 15360) #19
  %arrayidx357 = getelementptr i32, ptr %p, i32 470
  %102 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call354, ptr %arrayidx357, align 4
  %call354.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 15364) #19
  %arrayidx357.1 = getelementptr i32, ptr %p, i32 471
  %103 = ptrtoint ptr %arrayidx357.1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call354.1, ptr %arrayidx357.1, align 4
  %call354.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 15368) #19
  %arrayidx357.2 = getelementptr i32, ptr %p, i32 472
  %104 = ptrtoint ptr %arrayidx357.2 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call354.2, ptr %arrayidx357.2, align 4
  %call354.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 15372) #19
  %arrayidx357.3 = getelementptr i32, ptr %p, i32 473
  %105 = ptrtoint ptr %arrayidx357.3 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %call354.3, ptr %arrayidx357.3, align 4
  %call354.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 15376) #19
  %arrayidx357.4 = getelementptr i32, ptr %p, i32 474
  %106 = ptrtoint ptr %arrayidx357.4 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call354.4, ptr %arrayidx357.4, align 4
  %call354.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 15380) #19
  %arrayidx357.5 = getelementptr i32, ptr %p, i32 475
  %107 = ptrtoint ptr %arrayidx357.5 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call354.5, ptr %arrayidx357.5, align 4
  %call354.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 15384) #19
  %arrayidx357.6 = getelementptr i32, ptr %p, i32 476
  %108 = ptrtoint ptr %arrayidx357.6 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call354.6, ptr %arrayidx357.6, align 4
  %call354.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 15388) #19
  %arrayidx357.7 = getelementptr i32, ptr %p, i32 477
  %109 = ptrtoint ptr %arrayidx357.7 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call354.7, ptr %arrayidx357.7, align 4
  %call361 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12288) #19
  %arrayidx362 = getelementptr i32, ptr %p, i32 478
  %110 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call361, ptr %arrayidx362, align 4
  %call363 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 15620) #19
  %arrayidx364 = getelementptr i32, ptr %p, i32 479
  %111 = ptrtoint ptr %arrayidx364 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call363, ptr %arrayidx364, align 4
  %call365 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 20480) #19
  %arrayidx366 = getelementptr i32, ptr %p, i32 480
  %112 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %call365, ptr %arrayidx366, align 4
  %call367 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 20488) #19
  %arrayidx368 = getelementptr i32, ptr %p, i32 481
  %113 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call367, ptr %arrayidx368, align 4
  %call387 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21504) #19
  %arrayidx390 = getelementptr i32, ptr %p, i32 482
  %114 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %call387, ptr %arrayidx390, align 4
  %call387.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21512) #19
  %arrayidx390.1 = getelementptr i32, ptr %p, i32 483
  %115 = ptrtoint ptr %arrayidx390.1 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %call387.1, ptr %arrayidx390.1, align 4
  %call387.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21520) #19
  %arrayidx390.2 = getelementptr i32, ptr %p, i32 484
  %116 = ptrtoint ptr %arrayidx390.2 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call387.2, ptr %arrayidx390.2, align 4
  %call387.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21528) #19
  %arrayidx390.3 = getelementptr i32, ptr %p, i32 485
  %117 = ptrtoint ptr %arrayidx390.3 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call387.3, ptr %arrayidx390.3, align 4
  %call387.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21536) #19
  %arrayidx390.4 = getelementptr i32, ptr %p, i32 486
  %118 = ptrtoint ptr %arrayidx390.4 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %call387.4, ptr %arrayidx390.4, align 4
  %call387.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21544) #19
  %arrayidx390.5 = getelementptr i32, ptr %p, i32 487
  %119 = ptrtoint ptr %arrayidx390.5 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %call387.5, ptr %arrayidx390.5, align 4
  %call387.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21552) #19
  %arrayidx390.6 = getelementptr i32, ptr %p, i32 488
  %120 = ptrtoint ptr %arrayidx390.6 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %call387.6, ptr %arrayidx390.6, align 4
  %call387.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21560) #19
  %arrayidx390.7 = getelementptr i32, ptr %p, i32 489
  %121 = ptrtoint ptr %arrayidx390.7 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call387.7, ptr %arrayidx390.7, align 4
  %call387.8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21568) #19
  %arrayidx390.8 = getelementptr i32, ptr %p, i32 490
  %122 = ptrtoint ptr %arrayidx390.8 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call387.8, ptr %arrayidx390.8, align 4
  %call387.9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21576) #19
  %arrayidx390.9 = getelementptr i32, ptr %p, i32 491
  %123 = ptrtoint ptr %arrayidx390.9 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call387.9, ptr %arrayidx390.9, align 4
  %call387.10 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21584) #19
  %arrayidx390.10 = getelementptr i32, ptr %p, i32 492
  %124 = ptrtoint ptr %arrayidx390.10 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call387.10, ptr %arrayidx390.10, align 4
  %call387.11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21592) #19
  %arrayidx390.11 = getelementptr i32, ptr %p, i32 493
  %125 = ptrtoint ptr %arrayidx390.11 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %call387.11, ptr %arrayidx390.11, align 4
  %call387.12 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21600) #19
  %arrayidx390.12 = getelementptr i32, ptr %p, i32 494
  %126 = ptrtoint ptr %arrayidx390.12 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %call387.12, ptr %arrayidx390.12, align 4
  %call387.13 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21608) #19
  %arrayidx390.13 = getelementptr i32, ptr %p, i32 495
  %127 = ptrtoint ptr %arrayidx390.13 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call387.13, ptr %arrayidx390.13, align 4
  %call387.14 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21616) #19
  %arrayidx390.14 = getelementptr i32, ptr %p, i32 496
  %128 = ptrtoint ptr %arrayidx390.14 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %call387.14, ptr %arrayidx390.14, align 4
  %call387.15 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21624) #19
  %arrayidx390.15 = getelementptr i32, ptr %p, i32 497
  %129 = ptrtoint ptr %arrayidx390.15 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %call387.15, ptr %arrayidx390.15, align 4
  %call412 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21508) #19
  %arrayidx415 = getelementptr i32, ptr %p, i32 498
  %130 = ptrtoint ptr %arrayidx415 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %call412, ptr %arrayidx415, align 4
  %call412.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21516) #19
  %arrayidx415.1 = getelementptr i32, ptr %p, i32 499
  %131 = ptrtoint ptr %arrayidx415.1 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call412.1, ptr %arrayidx415.1, align 4
  %call412.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21524) #19
  %arrayidx415.2 = getelementptr i32, ptr %p, i32 500
  %132 = ptrtoint ptr %arrayidx415.2 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %call412.2, ptr %arrayidx415.2, align 4
  %call412.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21532) #19
  %arrayidx415.3 = getelementptr i32, ptr %p, i32 501
  %133 = ptrtoint ptr %arrayidx415.3 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %call412.3, ptr %arrayidx415.3, align 4
  %call412.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21540) #19
  %arrayidx415.4 = getelementptr i32, ptr %p, i32 502
  %134 = ptrtoint ptr %arrayidx415.4 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call412.4, ptr %arrayidx415.4, align 4
  %call412.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21548) #19
  %arrayidx415.5 = getelementptr i32, ptr %p, i32 503
  %135 = ptrtoint ptr %arrayidx415.5 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %call412.5, ptr %arrayidx415.5, align 4
  %call412.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21556) #19
  %arrayidx415.6 = getelementptr i32, ptr %p, i32 504
  %136 = ptrtoint ptr %arrayidx415.6 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call412.6, ptr %arrayidx415.6, align 4
  %call412.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21564) #19
  %arrayidx415.7 = getelementptr i32, ptr %p, i32 505
  %137 = ptrtoint ptr %arrayidx415.7 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %call412.7, ptr %arrayidx415.7, align 4
  %call412.8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21572) #19
  %arrayidx415.8 = getelementptr i32, ptr %p, i32 506
  %138 = ptrtoint ptr %arrayidx415.8 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %call412.8, ptr %arrayidx415.8, align 4
  %call412.9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21580) #19
  %arrayidx415.9 = getelementptr i32, ptr %p, i32 507
  %139 = ptrtoint ptr %arrayidx415.9 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %call412.9, ptr %arrayidx415.9, align 4
  %call412.10 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21588) #19
  %arrayidx415.10 = getelementptr i32, ptr %p, i32 508
  %140 = ptrtoint ptr %arrayidx415.10 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %call412.10, ptr %arrayidx415.10, align 4
  %call412.11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21596) #19
  %arrayidx415.11 = getelementptr i32, ptr %p, i32 509
  %141 = ptrtoint ptr %arrayidx415.11 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call412.11, ptr %arrayidx415.11, align 4
  %call412.12 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21604) #19
  %arrayidx415.12 = getelementptr i32, ptr %p, i32 510
  %142 = ptrtoint ptr %arrayidx415.12 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call412.12, ptr %arrayidx415.12, align 4
  %call412.13 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21612) #19
  %arrayidx415.13 = getelementptr i32, ptr %p, i32 511
  %143 = ptrtoint ptr %arrayidx415.13 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %call412.13, ptr %arrayidx415.13, align 4
  %call412.14 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21620) #19
  %arrayidx415.14 = getelementptr i32, ptr %p, i32 512
  %144 = ptrtoint ptr %arrayidx415.14 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call412.14, ptr %arrayidx415.14, align 4
  %call412.15 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21628) #19
  %arrayidx415.15 = getelementptr i32, ptr %p, i32 513
  %145 = ptrtoint ptr %arrayidx415.15 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %call412.15, ptr %arrayidx415.15, align 4
  %call419 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 21632) #19
  %arrayidx420 = getelementptr i32, ptr %p, i32 514
  %146 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %call419, ptr %arrayidx420, align 4
  %call421 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 20608) #19
  %arrayidx422 = getelementptr i32, ptr %p, i32 515
  %147 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %call421, ptr %arrayidx422, align 4
  %call423 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 20616) #19
  %arrayidx424 = getelementptr i32, ptr %p, i32 516
  %148 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %call423, ptr %arrayidx424, align 4
  %call425 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 20624) #19
  %arrayidx426 = getelementptr i32, ptr %p, i32 517
  %149 = ptrtoint ptr %arrayidx426 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %call425, ptr %arrayidx426, align 4
  %call427 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 22552) #19
  %arrayidx428 = getelementptr i32, ptr %p, i32 518
  %150 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %call427, ptr %arrayidx428, align 4
  %call429 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 22556) #19
  %arrayidx430 = getelementptr i32, ptr %p, i32 519
  %151 = ptrtoint ptr %arrayidx430 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %call429, ptr %arrayidx430, align 4
  %call439 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23168) #19
  %arrayidx442 = getelementptr i32, ptr %p, i32 520
  %152 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %call439, ptr %arrayidx442, align 4
  %call439.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23172) #19
  %arrayidx442.1 = getelementptr i32, ptr %p, i32 521
  %153 = ptrtoint ptr %arrayidx442.1 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %call439.1, ptr %arrayidx442.1, align 4
  %call439.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23176) #19
  %arrayidx442.2 = getelementptr i32, ptr %p, i32 522
  %154 = ptrtoint ptr %arrayidx442.2 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %call439.2, ptr %arrayidx442.2, align 4
  %call439.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23180) #19
  %arrayidx442.3 = getelementptr i32, ptr %p, i32 523
  %155 = ptrtoint ptr %arrayidx442.3 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %call439.3, ptr %arrayidx442.3, align 4
  %call439.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23184) #19
  %arrayidx442.4 = getelementptr i32, ptr %p, i32 524
  %156 = ptrtoint ptr %arrayidx442.4 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %call439.4, ptr %arrayidx442.4, align 4
  %call439.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23188) #19
  %arrayidx442.5 = getelementptr i32, ptr %p, i32 525
  %157 = ptrtoint ptr %arrayidx442.5 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %call439.5, ptr %arrayidx442.5, align 4
  %call439.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23192) #19
  %arrayidx442.6 = getelementptr i32, ptr %p, i32 526
  %158 = ptrtoint ptr %arrayidx442.6 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %call439.6, ptr %arrayidx442.6, align 4
  %call439.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23196) #19
  %arrayidx442.7 = getelementptr i32, ptr %p, i32 527
  %159 = ptrtoint ptr %arrayidx442.7 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %call439.7, ptr %arrayidx442.7, align 4
  %call454 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23200) #19
  %arrayidx457 = getelementptr i32, ptr %p, i32 528
  %160 = ptrtoint ptr %arrayidx457 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %call454, ptr %arrayidx457, align 4
  %call454.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23204) #19
  %arrayidx457.1 = getelementptr i32, ptr %p, i32 529
  %161 = ptrtoint ptr %arrayidx457.1 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %call454.1, ptr %arrayidx457.1, align 4
  %call454.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23208) #19
  %arrayidx457.2 = getelementptr i32, ptr %p, i32 530
  %162 = ptrtoint ptr %arrayidx457.2 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %call454.2, ptr %arrayidx457.2, align 4
  %call454.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23212) #19
  %arrayidx457.3 = getelementptr i32, ptr %p, i32 531
  %163 = ptrtoint ptr %arrayidx457.3 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %call454.3, ptr %arrayidx457.3, align 4
  %call454.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23216) #19
  %arrayidx457.4 = getelementptr i32, ptr %p, i32 532
  %164 = ptrtoint ptr %arrayidx457.4 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %call454.4, ptr %arrayidx457.4, align 4
  %call454.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23220) #19
  %arrayidx457.5 = getelementptr i32, ptr %p, i32 533
  %165 = ptrtoint ptr %arrayidx457.5 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %call454.5, ptr %arrayidx457.5, align 4
  %call454.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23224) #19
  %arrayidx457.6 = getelementptr i32, ptr %p, i32 534
  %166 = ptrtoint ptr %arrayidx457.6 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call454.6, ptr %arrayidx457.6, align 4
  %call454.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23228) #19
  %arrayidx457.7 = getelementptr i32, ptr %p, i32 535
  %167 = ptrtoint ptr %arrayidx457.7 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %call454.7, ptr %arrayidx457.7, align 4
  %call461 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23232) #19
  %arrayidx462 = getelementptr i32, ptr %p, i32 536
  %168 = ptrtoint ptr %arrayidx462 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %call461, ptr %arrayidx462, align 4
  br label %for.body467

for.body467:                                      ; preds = %for.body467.for.body467_crit_edge, %cond.end299.preheader
  %indvars.iv2136 = phi i32 [ 0, %cond.end299.preheader ], [ %indvars.iv.next2137, %for.body467.for.body467_crit_edge ]
  %mul469 = shl nuw nsw i32 %indvars.iv2136, 6
  %add470 = or i32 %mul469, 24576
  %call471 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add470) #19
  %add473 = add nuw nsw i32 %indvars.iv2136, 537
  %arrayidx474 = getelementptr i32, ptr %p, i32 %add473
  %169 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %call471, ptr %arrayidx474, align 4
  %indvars.iv.next2137 = add nuw nsw i32 %indvars.iv2136, 1
  %exitcond2138.not = icmp eq i32 %indvars.iv.next2137, 32
  br i1 %exitcond2138.not, label %for.body467.for.body482_crit_edge, label %for.body467.for.body467_crit_edge

for.body467.for.body467_crit_edge:                ; preds = %for.body467
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body467

for.body467.for.body482_crit_edge:                ; preds = %for.body467
  br label %for.body482

for.body482:                                      ; preds = %for.body482.for.body482_crit_edge, %for.body467.for.body482_crit_edge
  %indvars.iv2139 = phi i32 [ %indvars.iv.next2140, %for.body482.for.body482_crit_edge ], [ 0, %for.body467.for.body482_crit_edge ]
  %mul484 = shl nuw nsw i32 %indvars.iv2139, 6
  %add485 = or i32 %mul484, 24580
  %call486 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add485) #19
  %add488 = add nuw nsw i32 %indvars.iv2139, 569
  %arrayidx489 = getelementptr i32, ptr %p, i32 %add488
  %170 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %call486, ptr %arrayidx489, align 4
  %indvars.iv.next2140 = add nuw nsw i32 %indvars.iv2139, 1
  %exitcond2141.not = icmp eq i32 %indvars.iv.next2140, 32
  br i1 %exitcond2141.not, label %for.body482.for.body497_crit_edge, label %for.body482.for.body482_crit_edge

for.body482.for.body482_crit_edge:                ; preds = %for.body482
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body482

for.body482.for.body497_crit_edge:                ; preds = %for.body482
  br label %for.body497

for.body497:                                      ; preds = %for.body497.for.body497_crit_edge, %for.body482.for.body497_crit_edge
  %indvars.iv2142 = phi i32 [ %indvars.iv.next2143, %for.body497.for.body497_crit_edge ], [ 0, %for.body482.for.body497_crit_edge ]
  %mul499 = shl nuw nsw i32 %indvars.iv2142, 6
  %add500 = or i32 %mul499, 24584
  %call501 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add500) #19
  %add503 = add nuw nsw i32 %indvars.iv2142, 601
  %arrayidx504 = getelementptr i32, ptr %p, i32 %add503
  %171 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %call501, ptr %arrayidx504, align 4
  %indvars.iv.next2143 = add nuw nsw i32 %indvars.iv2142, 1
  %exitcond2144.not = icmp eq i32 %indvars.iv.next2143, 32
  br i1 %exitcond2144.not, label %for.body497.for.body512_crit_edge, label %for.body497.for.body497_crit_edge

for.body497.for.body497_crit_edge:                ; preds = %for.body497
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body497

for.body497.for.body512_crit_edge:                ; preds = %for.body497
  br label %for.body512

for.body512:                                      ; preds = %for.body512.for.body512_crit_edge, %for.body497.for.body512_crit_edge
  %indvars.iv2145 = phi i32 [ %indvars.iv.next2146, %for.body512.for.body512_crit_edge ], [ 0, %for.body497.for.body512_crit_edge ]
  %mul514 = shl nuw nsw i32 %indvars.iv2145, 6
  %add515 = or i32 %mul514, 24592
  %call516 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add515) #19
  %add518 = add nuw nsw i32 %indvars.iv2145, 633
  %arrayidx519 = getelementptr i32, ptr %p, i32 %add518
  %172 = ptrtoint ptr %arrayidx519 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %call516, ptr %arrayidx519, align 4
  %indvars.iv.next2146 = add nuw nsw i32 %indvars.iv2145, 1
  %exitcond2147.not = icmp eq i32 %indvars.iv.next2146, 32
  br i1 %exitcond2147.not, label %for.body512.for.body527_crit_edge, label %for.body512.for.body512_crit_edge

for.body512.for.body512_crit_edge:                ; preds = %for.body512
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body512

for.body512.for.body527_crit_edge:                ; preds = %for.body512
  br label %for.body527

for.body527:                                      ; preds = %for.body527.for.body527_crit_edge, %for.body512.for.body527_crit_edge
  %indvars.iv2148 = phi i32 [ %indvars.iv.next2149, %for.body527.for.body527_crit_edge ], [ 0, %for.body512.for.body527_crit_edge ]
  %mul529 = shl nuw nsw i32 %indvars.iv2148, 6
  %add530 = or i32 %mul529, 24600
  %call531 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add530) #19
  %add533 = add nuw nsw i32 %indvars.iv2148, 665
  %arrayidx534 = getelementptr i32, ptr %p, i32 %add533
  %173 = ptrtoint ptr %arrayidx534 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %call531, ptr %arrayidx534, align 4
  %indvars.iv.next2149 = add nuw nsw i32 %indvars.iv2148, 1
  %exitcond2150.not = icmp eq i32 %indvars.iv.next2149, 32
  br i1 %exitcond2150.not, label %for.body527.for.body542_crit_edge, label %for.body527.for.body527_crit_edge

for.body527.for.body527_crit_edge:                ; preds = %for.body527
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body527

for.body527.for.body542_crit_edge:                ; preds = %for.body527
  br label %for.body542

for.body542:                                      ; preds = %for.body542.for.body542_crit_edge, %for.body527.for.body542_crit_edge
  %indvars.iv2151 = phi i32 [ %indvars.iv.next2152, %for.body542.for.body542_crit_edge ], [ 0, %for.body527.for.body542_crit_edge ]
  %mul544 = shl nuw nsw i32 %indvars.iv2151, 6
  %add545 = or i32 %mul544, 24616
  %call546 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add545) #19
  %add548 = add nuw nsw i32 %indvars.iv2151, 697
  %arrayidx549 = getelementptr i32, ptr %p, i32 %add548
  %174 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %call546, ptr %arrayidx549, align 4
  %indvars.iv.next2152 = add nuw nsw i32 %indvars.iv2151, 1
  %exitcond2153.not = icmp eq i32 %indvars.iv.next2152, 32
  br i1 %exitcond2153.not, label %for.body542.for.body557_crit_edge, label %for.body542.for.body542_crit_edge

for.body542.for.body542_crit_edge:                ; preds = %for.body542
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body542

for.body542.for.body557_crit_edge:                ; preds = %for.body542
  br label %for.body557

for.body557:                                      ; preds = %for.body557.for.body557_crit_edge, %for.body542.for.body557_crit_edge
  %indvars.iv2154 = phi i32 [ %indvars.iv.next2155, %for.body557.for.body557_crit_edge ], [ 0, %for.body542.for.body557_crit_edge ]
  %mul559 = shl nuw nsw i32 %indvars.iv2154, 6
  %add560 = or i32 %mul559, 24632
  %call561 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add560) #19
  %add563 = add nuw nsw i32 %indvars.iv2154, 729
  %arrayidx564 = getelementptr i32, ptr %p, i32 %add563
  %175 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %call561, ptr %arrayidx564, align 4
  %indvars.iv.next2155 = add nuw nsw i32 %indvars.iv2154, 1
  %exitcond2156.not = icmp eq i32 %indvars.iv.next2155, 32
  br i1 %exitcond2156.not, label %for.body557.for.body572_crit_edge, label %for.body557.for.body557_crit_edge

for.body557.for.body557_crit_edge:                ; preds = %for.body557
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body557

for.body557.for.body572_crit_edge:                ; preds = %for.body557
  br label %for.body572

for.body572:                                      ; preds = %for.body572.for.body572_crit_edge, %for.body557.for.body572_crit_edge
  %indvars.iv2157 = phi i32 [ %indvars.iv.next2158, %for.body572.for.body572_crit_edge ], [ 0, %for.body557.for.body572_crit_edge ]
  %mul574 = shl nuw nsw i32 %indvars.iv2157, 6
  %add575 = or i32 %mul574, 24636
  %call576 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add575) #19
  %add578 = add nuw nsw i32 %indvars.iv2157, 761
  %arrayidx579 = getelementptr i32, ptr %p, i32 %add578
  %176 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %call576, ptr %arrayidx579, align 4
  %indvars.iv.next2158 = add nuw nsw i32 %indvars.iv2157, 1
  %exitcond2159.not = icmp eq i32 %indvars.iv.next2158, 32
  br i1 %exitcond2159.not, label %for.end582, label %for.body572.for.body572_crit_edge

for.body572.for.body572_crit_edge:                ; preds = %for.body572
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body572

for.end582:                                       ; preds = %for.body572
  %call583 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 32256) #19
  %arrayidx584 = getelementptr i32, ptr %p, i32 793
  %177 = ptrtoint ptr %arrayidx584 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %call583, ptr %arrayidx584, align 4
  %call593 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29184) #19
  %arrayidx596 = getelementptr i32, ptr %p, i32 794
  %178 = ptrtoint ptr %arrayidx596 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %call593, ptr %arrayidx596, align 4
  %call593.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29188) #19
  %arrayidx596.1 = getelementptr i32, ptr %p, i32 795
  %179 = ptrtoint ptr %arrayidx596.1 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %call593.1, ptr %arrayidx596.1, align 4
  %call593.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29192) #19
  %arrayidx596.2 = getelementptr i32, ptr %p, i32 796
  %180 = ptrtoint ptr %arrayidx596.2 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %call593.2, ptr %arrayidx596.2, align 4
  %call593.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29196) #19
  %arrayidx596.3 = getelementptr i32, ptr %p, i32 797
  %181 = ptrtoint ptr %arrayidx596.3 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %call593.3, ptr %arrayidx596.3, align 4
  %call593.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29200) #19
  %arrayidx596.4 = getelementptr i32, ptr %p, i32 798
  %182 = ptrtoint ptr %arrayidx596.4 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %call593.4, ptr %arrayidx596.4, align 4
  %call593.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29204) #19
  %arrayidx596.5 = getelementptr i32, ptr %p, i32 799
  %183 = ptrtoint ptr %arrayidx596.5 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %call593.5, ptr %arrayidx596.5, align 4
  %call593.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29208) #19
  %arrayidx596.6 = getelementptr i32, ptr %p, i32 800
  %184 = ptrtoint ptr %arrayidx596.6 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %call593.6, ptr %arrayidx596.6, align 4
  %call593.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29212) #19
  %arrayidx596.7 = getelementptr i32, ptr %p, i32 801
  %185 = ptrtoint ptr %arrayidx596.7 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %call593.7, ptr %arrayidx596.7, align 4
  %call593.8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29216) #19
  %arrayidx596.8 = getelementptr i32, ptr %p, i32 802
  %186 = ptrtoint ptr %arrayidx596.8 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %call593.8, ptr %arrayidx596.8, align 4
  %call593.9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29220) #19
  %arrayidx596.9 = getelementptr i32, ptr %p, i32 803
  %187 = ptrtoint ptr %arrayidx596.9 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %call593.9, ptr %arrayidx596.9, align 4
  %call593.10 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29224) #19
  %arrayidx596.10 = getelementptr i32, ptr %p, i32 804
  %188 = ptrtoint ptr %arrayidx596.10 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %call593.10, ptr %arrayidx596.10, align 4
  %call593.11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29228) #19
  %arrayidx596.11 = getelementptr i32, ptr %p, i32 805
  %189 = ptrtoint ptr %arrayidx596.11 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %call593.11, ptr %arrayidx596.11, align 4
  %call593.12 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29232) #19
  %arrayidx596.12 = getelementptr i32, ptr %p, i32 806
  %190 = ptrtoint ptr %arrayidx596.12 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %call593.12, ptr %arrayidx596.12, align 4
  %call593.13 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29236) #19
  %arrayidx596.13 = getelementptr i32, ptr %p, i32 807
  %191 = ptrtoint ptr %arrayidx596.13 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %call593.13, ptr %arrayidx596.13, align 4
  %call593.14 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29240) #19
  %arrayidx596.14 = getelementptr i32, ptr %p, i32 808
  %192 = ptrtoint ptr %arrayidx596.14 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %call593.14, ptr %arrayidx596.14, align 4
  %call593.15 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 29244) #19
  %arrayidx596.15 = getelementptr i32, ptr %p, i32 809
  %193 = ptrtoint ptr %arrayidx596.15 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %call593.15, ptr %arrayidx596.15, align 4
  %call600 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 51968) #19
  %arrayidx601 = getelementptr i32, ptr %p, i32 810
  %194 = ptrtoint ptr %arrayidx601 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %call600, ptr %arrayidx601, align 4
  %call610 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52224) #19
  %arrayidx613 = getelementptr i32, ptr %p, i32 811
  %195 = ptrtoint ptr %arrayidx613 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %call610, ptr %arrayidx613, align 4
  %call610.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52228) #19
  %arrayidx613.1 = getelementptr i32, ptr %p, i32 812
  %196 = ptrtoint ptr %arrayidx613.1 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %call610.1, ptr %arrayidx613.1, align 4
  %call610.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52232) #19
  %arrayidx613.2 = getelementptr i32, ptr %p, i32 813
  %197 = ptrtoint ptr %arrayidx613.2 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %call610.2, ptr %arrayidx613.2, align 4
  %call610.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52236) #19
  %arrayidx613.3 = getelementptr i32, ptr %p, i32 814
  %198 = ptrtoint ptr %arrayidx613.3 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %call610.3, ptr %arrayidx613.3, align 4
  %call610.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52240) #19
  %arrayidx613.4 = getelementptr i32, ptr %p, i32 815
  %199 = ptrtoint ptr %arrayidx613.4 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %call610.4, ptr %arrayidx613.4, align 4
  %call610.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52244) #19
  %arrayidx613.5 = getelementptr i32, ptr %p, i32 816
  %200 = ptrtoint ptr %arrayidx613.5 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %call610.5, ptr %arrayidx613.5, align 4
  %call610.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52248) #19
  %arrayidx613.6 = getelementptr i32, ptr %p, i32 817
  %201 = ptrtoint ptr %arrayidx613.6 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %call610.6, ptr %arrayidx613.6, align 4
  %call610.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52252) #19
  %arrayidx613.7 = getelementptr i32, ptr %p, i32 818
  %202 = ptrtoint ptr %arrayidx613.7 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %call610.7, ptr %arrayidx613.7, align 4
  %call617 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52496) #19
  %arrayidx618 = getelementptr i32, ptr %p, i32 819
  %203 = ptrtoint ptr %arrayidx618 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %call617, ptr %arrayidx618, align 4
  %call619 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 22528) #19
  %arrayidx620 = getelementptr i32, ptr %p, i32 820
  %204 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %call619, ptr %arrayidx620, align 4
  %call621 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 22536) #19
  %arrayidx622 = getelementptr i32, ptr %p, i32 821
  %205 = ptrtoint ptr %arrayidx622 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %call621, ptr %arrayidx622, align 4
  %call623 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 22544) #19
  %arrayidx624 = getelementptr i32, ptr %p, i32 822
  %206 = ptrtoint ptr %arrayidx624 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %call623, ptr %arrayidx624, align 4
  %call625 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 22584) #19
  %arrayidx626 = getelementptr i32, ptr %p, i32 823
  %207 = ptrtoint ptr %arrayidx626 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %call625, ptr %arrayidx626, align 4
  %call627 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 22592) #19
  %arrayidx628 = getelementptr i32, ptr %p, i32 824
  %208 = ptrtoint ptr %arrayidx628 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %call627, ptr %arrayidx628, align 4
  %call629 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 22656) #19
  %arrayidx630 = getelementptr i32, ptr %p, i32 825
  %209 = ptrtoint ptr %arrayidx630 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %call629, ptr %arrayidx630, align 4
  %call631 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 22784) #19
  %arrayidx632 = getelementptr i32, ptr %p, i32 826
  %210 = ptrtoint ptr %arrayidx632 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %call631, ptr %arrayidx632, align 4
  %call633 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 23040) #19
  %arrayidx634 = getelementptr i32, ptr %p, i32 827
  %211 = ptrtoint ptr %arrayidx634 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %call633, ptr %arrayidx634, align 4
  %call635 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 36864) #19
  %arrayidx636 = getelementptr i32, ptr %p, i32 828
  %212 = ptrtoint ptr %arrayidx636 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %call635, ptr %arrayidx636, align 4
  %call637 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 15616) #19
  %arrayidx638 = getelementptr i32, ptr %p, i32 829
  %213 = ptrtoint ptr %arrayidx638 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %call637, ptr %arrayidx638, align 4
  %call639 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52480) #19
  %arrayidx640 = getelementptr i32, ptr %p, i32 831
  %214 = ptrtoint ptr %arrayidx640 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %call639, ptr %arrayidx640, align 4
  %215 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %type, align 4
  %switch.tableidx2286 = add i32 %216, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx2286)
  %217 = icmp ult i32 %switch.tableidx2286, 6
  br i1 %217, label %switch.lookup2285, label %for.end582.sw.epilog774_crit_edge

for.end582.sw.epilog774_crit_edge:                ; preds = %for.end582
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog774

switch.lookup2285:                                ; preds = %for.end582
  call void @__sanitizer_cov_trace_pc() #21
  %switch.gep2287 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.37, i32 0, i32 %switch.tableidx2286
  %218 = ptrtoint ptr %switch.gep2287 to i32
  call void @__asan_load4_noabort(i32 %218)
  %switch.load2288 = load i32, ptr %switch.gep2287, align 4
  %switch.gep2289 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.38, i32 0, i32 %switch.tableidx2286
  %219 = ptrtoint ptr %switch.gep2289 to i32
  call void @__asan_load4_noabort(i32 %219)
  %switch.load2290 = load i32, ptr %switch.gep2289, align 4
  %switch.gep2291 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.39, i32 0, i32 %switch.tableidx2286
  %220 = ptrtoint ptr %switch.gep2291 to i32
  call void @__asan_load4_noabort(i32 %220)
  %switch.load2292 = load i32, ptr %switch.gep2291, align 4
  %switch.gep2293 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.40, i32 0, i32 %switch.tableidx2286
  %221 = ptrtoint ptr %switch.gep2293 to i32
  call void @__asan_load4_noabort(i32 %221)
  %switch.load2294 = load i32, ptr %switch.gep2293, align 4
  %switch.gep2295 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.41, i32 0, i32 %switch.tableidx2286
  %222 = ptrtoint ptr %switch.gep2295 to i32
  call void @__asan_load4_noabort(i32 %222)
  %switch.load2296 = load i32, ptr %switch.gep2295, align 4
  %switch.gep2297 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.42, i32 0, i32 %switch.tableidx2286
  %223 = ptrtoint ptr %switch.gep2297 to i32
  call void @__asan_load4_noabort(i32 %223)
  %switch.load2298 = load i32, ptr %switch.gep2297, align 4
  %switch.gep2299 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.43, i32 0, i32 %switch.tableidx2286
  %224 = ptrtoint ptr %switch.gep2299 to i32
  call void @__asan_load4_noabort(i32 %224)
  %switch.load2300 = load i32, ptr %switch.gep2299, align 4
  %switch.gep2301 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.44, i32 0, i32 %switch.tableidx2286
  %225 = ptrtoint ptr %switch.gep2301 to i32
  call void @__asan_load4_noabort(i32 %225)
  %switch.load2302 = load i32, ptr %switch.gep2301, align 4
  %switch.gep2303 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.45, i32 0, i32 %switch.tableidx2286
  %226 = ptrtoint ptr %switch.gep2303 to i32
  call void @__asan_load4_noabort(i32 %226)
  %switch.load2304 = load i32, ptr %switch.gep2303, align 4
  %switch.gep2305 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.46, i32 0, i32 %switch.tableidx2286
  %227 = ptrtoint ptr %switch.gep2305 to i32
  call void @__asan_load4_noabort(i32 %227)
  %switch.load2306 = load i32, ptr %switch.gep2305, align 4
  %switch.gep2307 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.47, i32 0, i32 %switch.tableidx2286
  %228 = ptrtoint ptr %switch.gep2307 to i32
  call void @__asan_load4_noabort(i32 %228)
  %switch.load2308 = load i32, ptr %switch.gep2307, align 4
  %switch.gep2309 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.48, i32 0, i32 %switch.tableidx2286
  %229 = ptrtoint ptr %switch.gep2309 to i32
  call void @__asan_load4_noabort(i32 %229)
  %switch.load2310 = load i32, ptr %switch.gep2309, align 4
  %switch.gep2311 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.49, i32 0, i32 %switch.tableidx2286
  %230 = ptrtoint ptr %switch.gep2311 to i32
  call void @__asan_load4_noabort(i32 %230)
  %switch.load2312 = load i32, ptr %switch.gep2311, align 4
  %switch.gep2313 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.50, i32 0, i32 %switch.tableidx2286
  %231 = ptrtoint ptr %switch.gep2313 to i32
  call void @__asan_load4_noabort(i32 %231)
  %switch.load2314 = load i32, ptr %switch.gep2313, align 4
  %switch.gep2315 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.51, i32 0, i32 %switch.tableidx2286
  %232 = ptrtoint ptr %switch.gep2315 to i32
  call void @__asan_load4_noabort(i32 %232)
  %switch.load2316 = load i32, ptr %switch.gep2315, align 4
  %switch.gep2317 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.52, i32 0, i32 %switch.tableidx2286
  %233 = ptrtoint ptr %switch.gep2317 to i32
  call void @__asan_load4_noabort(i32 %233)
  %switch.load2318 = load i32, ptr %switch.gep2317, align 4
  %switch.gep2319 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.53, i32 0, i32 %switch.tableidx2286
  %234 = ptrtoint ptr %switch.gep2319 to i32
  call void @__asan_load4_noabort(i32 %234)
  %switch.load2320 = load i32, ptr %switch.gep2319, align 4
  %switch.gep2321 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.54, i32 0, i32 %switch.tableidx2286
  %235 = ptrtoint ptr %switch.gep2321 to i32
  call void @__asan_load4_noabort(i32 %235)
  %switch.load2322 = load i32, ptr %switch.gep2321, align 4
  %switch.gep2323 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.55, i32 0, i32 %switch.tableidx2286
  %236 = ptrtoint ptr %switch.gep2323 to i32
  call void @__asan_load4_noabort(i32 %236)
  %switch.load2324 = load i32, ptr %switch.gep2323, align 4
  %switch.gep2325 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.56, i32 0, i32 %switch.tableidx2286
  %237 = ptrtoint ptr %switch.gep2325 to i32
  call void @__asan_load4_noabort(i32 %237)
  %switch.load2326 = load i32, ptr %switch.gep2325, align 4
  %switch.gep2327 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.57, i32 0, i32 %switch.tableidx2286
  %238 = ptrtoint ptr %switch.gep2327 to i32
  call void @__asan_load4_noabort(i32 %238)
  %switch.load2328 = load i32, ptr %switch.gep2327, align 4
  %switch.gep2329 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.58, i32 0, i32 %switch.tableidx2286
  %239 = ptrtoint ptr %switch.gep2329 to i32
  call void @__asan_load4_noabort(i32 %239)
  %switch.load2330 = load i32, ptr %switch.gep2329, align 4
  %switch.gep2331 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.59, i32 0, i32 %switch.tableidx2286
  %240 = ptrtoint ptr %switch.gep2331 to i32
  call void @__asan_load4_noabort(i32 %240)
  %switch.load2332 = load i32, ptr %switch.gep2331, align 4
  %switch.gep2333 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.60, i32 0, i32 %switch.tableidx2286
  %241 = ptrtoint ptr %switch.gep2333 to i32
  call void @__asan_load4_noabort(i32 %241)
  %switch.load2334 = load i32, ptr %switch.gep2333, align 4
  %switch.gep2335 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.61, i32 0, i32 %switch.tableidx2286
  %242 = ptrtoint ptr %switch.gep2335 to i32
  call void @__asan_load4_noabort(i32 %242)
  %switch.load2336 = load i32, ptr %switch.gep2335, align 4
  %switch.gep2337 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.62, i32 0, i32 %switch.tableidx2286
  %243 = ptrtoint ptr %switch.gep2337 to i32
  call void @__asan_load4_noabort(i32 %243)
  %switch.load2338 = load i32, ptr %switch.gep2337, align 4
  %switch.gep2339 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.63, i32 0, i32 %switch.tableidx2286
  %244 = ptrtoint ptr %switch.gep2339 to i32
  call void @__asan_load4_noabort(i32 %244)
  %switch.load2340 = load i32, ptr %switch.gep2339, align 4
  %switch.gep2341 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.64, i32 0, i32 %switch.tableidx2286
  %245 = ptrtoint ptr %switch.gep2341 to i32
  call void @__asan_load4_noabort(i32 %245)
  %switch.load2342 = load i32, ptr %switch.gep2341, align 4
  %switch.gep2343 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.65, i32 0, i32 %switch.tableidx2286
  %246 = ptrtoint ptr %switch.gep2343 to i32
  call void @__asan_load4_noabort(i32 %246)
  %switch.load2344 = load i32, ptr %switch.gep2343, align 4
  %switch.gep2345 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.66, i32 0, i32 %switch.tableidx2286
  %247 = ptrtoint ptr %switch.gep2345 to i32
  call void @__asan_load4_noabort(i32 %247)
  %switch.load2346 = load i32, ptr %switch.gep2345, align 4
  %switch.gep2347 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.67, i32 0, i32 %switch.tableidx2286
  %248 = ptrtoint ptr %switch.gep2347 to i32
  call void @__asan_load4_noabort(i32 %248)
  %switch.load2348 = load i32, ptr %switch.gep2347, align 4
  %switch.gep2349 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.68, i32 0, i32 %switch.tableidx2286
  %249 = ptrtoint ptr %switch.gep2349 to i32
  call void @__asan_load4_noabort(i32 %249)
  %switch.load2350 = load i32, ptr %switch.gep2349, align 4
  %switch.gep2351 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.69, i32 0, i32 %switch.tableidx2286
  %250 = ptrtoint ptr %switch.gep2351 to i32
  call void @__asan_load4_noabort(i32 %250)
  %switch.load2352 = load i32, ptr %switch.gep2351, align 4
  %switch.gep2353 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_regs.70, i32 0, i32 %switch.tableidx2286
  %251 = ptrtoint ptr %switch.gep2353 to i32
  call void @__asan_load4_noabort(i32 %251)
  %switch.load2354 = load i32, ptr %switch.gep2353, align 4
  %call709 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2288) #19
  %arrayidx710 = getelementptr i32, ptr %p, i32 830
  %252 = ptrtoint ptr %arrayidx710 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %call709, ptr %arrayidx710, align 4
  %call711 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2290) #19
  %arrayidx712 = getelementptr i32, ptr %p, i32 832
  %253 = ptrtoint ptr %arrayidx712 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %call711, ptr %arrayidx712, align 4
  %call721 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2292) #19
  %arrayidx724 = getelementptr i32, ptr %p, i32 833
  %254 = ptrtoint ptr %arrayidx724 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %call721, ptr %arrayidx724, align 4
  %call721.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2294) #19
  %arrayidx724.1 = getelementptr i32, ptr %p, i32 834
  %255 = ptrtoint ptr %arrayidx724.1 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %call721.1, ptr %arrayidx724.1, align 4
  %call721.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2296) #19
  %arrayidx724.2 = getelementptr i32, ptr %p, i32 835
  %256 = ptrtoint ptr %arrayidx724.2 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %call721.2, ptr %arrayidx724.2, align 4
  %call721.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2298) #19
  %arrayidx724.3 = getelementptr i32, ptr %p, i32 836
  %257 = ptrtoint ptr %arrayidx724.3 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %call721.3, ptr %arrayidx724.3, align 4
  %call721.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2300) #19
  %arrayidx724.4 = getelementptr i32, ptr %p, i32 837
  %258 = ptrtoint ptr %arrayidx724.4 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %call721.4, ptr %arrayidx724.4, align 4
  %call721.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2302) #19
  %arrayidx724.5 = getelementptr i32, ptr %p, i32 838
  %259 = ptrtoint ptr %arrayidx724.5 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %call721.5, ptr %arrayidx724.5, align 4
  %call721.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2304) #19
  %arrayidx724.6 = getelementptr i32, ptr %p, i32 839
  %260 = ptrtoint ptr %arrayidx724.6 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %call721.6, ptr %arrayidx724.6, align 4
  %call721.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2306) #19
  %arrayidx724.7 = getelementptr i32, ptr %p, i32 840
  %261 = ptrtoint ptr %arrayidx724.7 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %call721.7, ptr %arrayidx724.7, align 4
  %call736 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2308) #19
  %arrayidx739 = getelementptr i32, ptr %p, i32 841
  %262 = ptrtoint ptr %arrayidx739 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %call736, ptr %arrayidx739, align 4
  %call736.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2310) #19
  %arrayidx739.1 = getelementptr i32, ptr %p, i32 842
  %263 = ptrtoint ptr %arrayidx739.1 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %call736.1, ptr %arrayidx739.1, align 4
  %call736.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2312) #19
  %arrayidx739.2 = getelementptr i32, ptr %p, i32 843
  %264 = ptrtoint ptr %arrayidx739.2 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %call736.2, ptr %arrayidx739.2, align 4
  %call736.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2314) #19
  %arrayidx739.3 = getelementptr i32, ptr %p, i32 844
  %265 = ptrtoint ptr %arrayidx739.3 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %call736.3, ptr %arrayidx739.3, align 4
  %call736.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2316) #19
  %arrayidx739.4 = getelementptr i32, ptr %p, i32 845
  %266 = ptrtoint ptr %arrayidx739.4 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %call736.4, ptr %arrayidx739.4, align 4
  %call736.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2318) #19
  %arrayidx739.5 = getelementptr i32, ptr %p, i32 846
  %267 = ptrtoint ptr %arrayidx739.5 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %call736.5, ptr %arrayidx739.5, align 4
  %call736.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2320) #19
  %arrayidx739.6 = getelementptr i32, ptr %p, i32 847
  %268 = ptrtoint ptr %arrayidx739.6 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %call736.6, ptr %arrayidx739.6, align 4
  %call736.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2322) #19
  %arrayidx739.7 = getelementptr i32, ptr %p, i32 848
  %269 = ptrtoint ptr %arrayidx739.7 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %call736.7, ptr %arrayidx739.7, align 4
  %call751 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2324) #19
  %arrayidx754 = getelementptr i32, ptr %p, i32 849
  %270 = ptrtoint ptr %arrayidx754 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %call751, ptr %arrayidx754, align 4
  %call751.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2326) #19
  %arrayidx754.1 = getelementptr i32, ptr %p, i32 850
  %271 = ptrtoint ptr %arrayidx754.1 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %call751.1, ptr %arrayidx754.1, align 4
  %call751.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2328) #19
  %arrayidx754.2 = getelementptr i32, ptr %p, i32 851
  %272 = ptrtoint ptr %arrayidx754.2 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %call751.2, ptr %arrayidx754.2, align 4
  %call751.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2330) #19
  %arrayidx754.3 = getelementptr i32, ptr %p, i32 852
  %273 = ptrtoint ptr %arrayidx754.3 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %call751.3, ptr %arrayidx754.3, align 4
  %call751.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2332) #19
  %arrayidx754.4 = getelementptr i32, ptr %p, i32 853
  %274 = ptrtoint ptr %arrayidx754.4 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %call751.4, ptr %arrayidx754.4, align 4
  %call751.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2334) #19
  %arrayidx754.5 = getelementptr i32, ptr %p, i32 854
  %275 = ptrtoint ptr %arrayidx754.5 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %call751.5, ptr %arrayidx754.5, align 4
  %call751.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2336) #19
  %arrayidx754.6 = getelementptr i32, ptr %p, i32 855
  %276 = ptrtoint ptr %arrayidx754.6 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %call751.6, ptr %arrayidx754.6, align 4
  %call751.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2338) #19
  %arrayidx754.7 = getelementptr i32, ptr %p, i32 856
  %277 = ptrtoint ptr %arrayidx754.7 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %call751.7, ptr %arrayidx754.7, align 4
  %call766 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2340) #19
  %arrayidx769 = getelementptr i32, ptr %p, i32 857
  %278 = ptrtoint ptr %arrayidx769 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %call766, ptr %arrayidx769, align 4
  %call766.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2342) #19
  %arrayidx769.1 = getelementptr i32, ptr %p, i32 858
  %279 = ptrtoint ptr %arrayidx769.1 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %call766.1, ptr %arrayidx769.1, align 4
  %call766.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2344) #19
  %arrayidx769.2 = getelementptr i32, ptr %p, i32 859
  %280 = ptrtoint ptr %arrayidx769.2 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %call766.2, ptr %arrayidx769.2, align 4
  %call766.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2346) #19
  %arrayidx769.3 = getelementptr i32, ptr %p, i32 860
  %281 = ptrtoint ptr %arrayidx769.3 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %call766.3, ptr %arrayidx769.3, align 4
  %call766.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2348) #19
  %arrayidx769.4 = getelementptr i32, ptr %p, i32 861
  %282 = ptrtoint ptr %arrayidx769.4 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %call766.4, ptr %arrayidx769.4, align 4
  %call766.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2350) #19
  %arrayidx769.5 = getelementptr i32, ptr %p, i32 862
  %283 = ptrtoint ptr %arrayidx769.5 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %call766.5, ptr %arrayidx769.5, align 4
  %call766.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2352) #19
  %arrayidx769.6 = getelementptr i32, ptr %p, i32 863
  %284 = ptrtoint ptr %arrayidx769.6 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %call766.6, ptr %arrayidx769.6, align 4
  %call766.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %switch.load2354) #19
  %arrayidx769.7 = getelementptr i32, ptr %p, i32 864
  %285 = ptrtoint ptr %arrayidx769.7 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %call766.7, ptr %arrayidx769.7, align 4
  br label %sw.epilog774

sw.epilog774:                                     ; preds = %switch.lookup2285, %for.end582.sw.epilog774_crit_edge
  %call783 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52512) #19
  %arrayidx786 = getelementptr i32, ptr %p, i32 865
  %286 = ptrtoint ptr %arrayidx786 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %call783, ptr %arrayidx786, align 4
  %call783.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52516) #19
  %arrayidx786.1 = getelementptr i32, ptr %p, i32 866
  %287 = ptrtoint ptr %arrayidx786.1 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %call783.1, ptr %arrayidx786.1, align 4
  %call783.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52520) #19
  %arrayidx786.2 = getelementptr i32, ptr %p, i32 867
  %288 = ptrtoint ptr %arrayidx786.2 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %call783.2, ptr %arrayidx786.2, align 4
  %call783.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52524) #19
  %arrayidx786.3 = getelementptr i32, ptr %p, i32 868
  %289 = ptrtoint ptr %arrayidx786.3 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %call783.3, ptr %arrayidx786.3, align 4
  %call783.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52528) #19
  %arrayidx786.4 = getelementptr i32, ptr %p, i32 869
  %290 = ptrtoint ptr %arrayidx786.4 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %call783.4, ptr %arrayidx786.4, align 4
  %call783.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52532) #19
  %arrayidx786.5 = getelementptr i32, ptr %p, i32 870
  %291 = ptrtoint ptr %arrayidx786.5 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %call783.5, ptr %arrayidx786.5, align 4
  %call783.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52536) #19
  %arrayidx786.6 = getelementptr i32, ptr %p, i32 871
  %292 = ptrtoint ptr %arrayidx786.6 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %call783.6, ptr %arrayidx786.6, align 4
  %call783.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52540) #19
  %arrayidx786.7 = getelementptr i32, ptr %p, i32 872
  %293 = ptrtoint ptr %arrayidx786.7 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %call783.7, ptr %arrayidx786.7, align 4
  %call798 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52544) #19
  %arrayidx801 = getelementptr i32, ptr %p, i32 873
  %294 = ptrtoint ptr %arrayidx801 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %call798, ptr %arrayidx801, align 4
  %call798.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52548) #19
  %arrayidx801.1 = getelementptr i32, ptr %p, i32 874
  %295 = ptrtoint ptr %arrayidx801.1 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %call798.1, ptr %arrayidx801.1, align 4
  %call798.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52552) #19
  %arrayidx801.2 = getelementptr i32, ptr %p, i32 875
  %296 = ptrtoint ptr %arrayidx801.2 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %call798.2, ptr %arrayidx801.2, align 4
  %call798.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52556) #19
  %arrayidx801.3 = getelementptr i32, ptr %p, i32 876
  %297 = ptrtoint ptr %arrayidx801.3 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %call798.3, ptr %arrayidx801.3, align 4
  %call798.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52560) #19
  %arrayidx801.4 = getelementptr i32, ptr %p, i32 877
  %298 = ptrtoint ptr %arrayidx801.4 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %call798.4, ptr %arrayidx801.4, align 4
  %call798.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52564) #19
  %arrayidx801.5 = getelementptr i32, ptr %p, i32 878
  %299 = ptrtoint ptr %arrayidx801.5 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %call798.5, ptr %arrayidx801.5, align 4
  %call798.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52568) #19
  %arrayidx801.6 = getelementptr i32, ptr %p, i32 879
  %300 = ptrtoint ptr %arrayidx801.6 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %call798.6, ptr %arrayidx801.6, align 4
  %call798.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 52572) #19
  %arrayidx801.7 = getelementptr i32, ptr %p, i32 880
  %301 = ptrtoint ptr %arrayidx801.7 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %call798.7, ptr %arrayidx801.7, align 4
  %stats = getelementptr i8, ptr %netdev, i32 7832
  %302 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %302)
  %303 = load i64, ptr %stats, align 8
  %conv805 = trunc i64 %303 to i32
  %arrayidx806 = getelementptr i32, ptr %p, i32 881
  %304 = ptrtoint ptr %arrayidx806 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %conv805, ptr %arrayidx806, align 4
  %illerrc = getelementptr i8, ptr %netdev, i32 7840
  %305 = ptrtoint ptr %illerrc to i32
  call void @__asan_load8_noabort(i32 %305)
  %306 = load i64, ptr %illerrc, align 8
  %conv808 = trunc i64 %306 to i32
  %arrayidx809 = getelementptr i32, ptr %p, i32 882
  %307 = ptrtoint ptr %arrayidx809 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %conv808, ptr %arrayidx809, align 4
  %errbc = getelementptr i8, ptr %netdev, i32 7848
  %308 = ptrtoint ptr %errbc to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %errbc, align 8
  %conv811 = trunc i64 %309 to i32
  %arrayidx812 = getelementptr i32, ptr %p, i32 883
  %310 = ptrtoint ptr %arrayidx812 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %conv811, ptr %arrayidx812, align 4
  %mspdc = getelementptr i8, ptr %netdev, i32 7856
  %311 = ptrtoint ptr %mspdc to i32
  call void @__asan_load8_noabort(i32 %311)
  %312 = load i64, ptr %mspdc, align 8
  %conv814 = trunc i64 %312 to i32
  %arrayidx815 = getelementptr i32, ptr %p, i32 884
  %313 = ptrtoint ptr %arrayidx815 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %conv814, ptr %arrayidx815, align 4
  %arrayidx822 = getelementptr i8, ptr %netdev, i32 7872
  %314 = ptrtoint ptr %arrayidx822 to i32
  call void @__asan_load8_noabort(i32 %314)
  %315 = load i64, ptr %arrayidx822, align 8
  %conv823 = trunc i64 %315 to i32
  %arrayidx826 = getelementptr i32, ptr %p, i32 885
  %316 = ptrtoint ptr %arrayidx826 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %conv823, ptr %arrayidx826, align 4
  %arrayidx822.1 = getelementptr i8, ptr %netdev, i32 7880
  %317 = ptrtoint ptr %arrayidx822.1 to i32
  call void @__asan_load8_noabort(i32 %317)
  %318 = load i64, ptr %arrayidx822.1, align 8
  %conv823.1 = trunc i64 %318 to i32
  %arrayidx826.1 = getelementptr i32, ptr %p, i32 886
  %319 = ptrtoint ptr %arrayidx826.1 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %conv823.1, ptr %arrayidx826.1, align 4
  %arrayidx822.2 = getelementptr i8, ptr %netdev, i32 7888
  %320 = ptrtoint ptr %arrayidx822.2 to i32
  call void @__asan_load8_noabort(i32 %320)
  %321 = load i64, ptr %arrayidx822.2, align 8
  %conv823.2 = trunc i64 %321 to i32
  %arrayidx826.2 = getelementptr i32, ptr %p, i32 887
  %322 = ptrtoint ptr %arrayidx826.2 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %conv823.2, ptr %arrayidx826.2, align 4
  %arrayidx822.3 = getelementptr i8, ptr %netdev, i32 7896
  %323 = ptrtoint ptr %arrayidx822.3 to i32
  call void @__asan_load8_noabort(i32 %323)
  %324 = load i64, ptr %arrayidx822.3, align 8
  %conv823.3 = trunc i64 %324 to i32
  %arrayidx826.3 = getelementptr i32, ptr %p, i32 888
  %325 = ptrtoint ptr %arrayidx826.3 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %conv823.3, ptr %arrayidx826.3, align 4
  %arrayidx822.4 = getelementptr i8, ptr %netdev, i32 7904
  %326 = ptrtoint ptr %arrayidx822.4 to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %arrayidx822.4, align 8
  %conv823.4 = trunc i64 %327 to i32
  %arrayidx826.4 = getelementptr i32, ptr %p, i32 889
  %328 = ptrtoint ptr %arrayidx826.4 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %conv823.4, ptr %arrayidx826.4, align 4
  %arrayidx822.5 = getelementptr i8, ptr %netdev, i32 7912
  %329 = ptrtoint ptr %arrayidx822.5 to i32
  call void @__asan_load8_noabort(i32 %329)
  %330 = load i64, ptr %arrayidx822.5, align 8
  %conv823.5 = trunc i64 %330 to i32
  %arrayidx826.5 = getelementptr i32, ptr %p, i32 890
  %331 = ptrtoint ptr %arrayidx826.5 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %conv823.5, ptr %arrayidx826.5, align 4
  %arrayidx822.6 = getelementptr i8, ptr %netdev, i32 7920
  %332 = ptrtoint ptr %arrayidx822.6 to i32
  call void @__asan_load8_noabort(i32 %332)
  %333 = load i64, ptr %arrayidx822.6, align 8
  %conv823.6 = trunc i64 %333 to i32
  %arrayidx826.6 = getelementptr i32, ptr %p, i32 891
  %334 = ptrtoint ptr %arrayidx826.6 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %conv823.6, ptr %arrayidx826.6, align 4
  %arrayidx822.7 = getelementptr i8, ptr %netdev, i32 7928
  %335 = ptrtoint ptr %arrayidx822.7 to i32
  call void @__asan_load8_noabort(i32 %335)
  %336 = load i64, ptr %arrayidx822.7, align 8
  %conv823.7 = trunc i64 %336 to i32
  %arrayidx826.7 = getelementptr i32, ptr %p, i32 892
  %337 = ptrtoint ptr %arrayidx826.7 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %conv823.7, ptr %arrayidx826.7, align 4
  %mlfc = getelementptr i8, ptr %netdev, i32 7936
  %338 = ptrtoint ptr %mlfc to i32
  call void @__asan_load8_noabort(i32 %338)
  %339 = load i64, ptr %mlfc, align 8
  %conv831 = trunc i64 %339 to i32
  %arrayidx832 = getelementptr i32, ptr %p, i32 893
  %340 = ptrtoint ptr %arrayidx832 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %conv831, ptr %arrayidx832, align 4
  %mrfc = getelementptr i8, ptr %netdev, i32 7944
  %341 = ptrtoint ptr %mrfc to i32
  call void @__asan_load8_noabort(i32 %341)
  %342 = load i64, ptr %mrfc, align 8
  %conv834 = trunc i64 %342 to i32
  %arrayidx835 = getelementptr i32, ptr %p, i32 894
  %343 = ptrtoint ptr %arrayidx835 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %conv834, ptr %arrayidx835, align 4
  %rlec = getelementptr i8, ptr %netdev, i32 7952
  %344 = ptrtoint ptr %rlec to i32
  call void @__asan_load8_noabort(i32 %344)
  %345 = load i64, ptr %rlec, align 8
  %conv837 = trunc i64 %345 to i32
  %arrayidx838 = getelementptr i32, ptr %p, i32 895
  %346 = ptrtoint ptr %arrayidx838 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %conv837, ptr %arrayidx838, align 4
  %lxontxc = getelementptr i8, ptr %netdev, i32 7960
  %347 = ptrtoint ptr %lxontxc to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %lxontxc, align 8
  %conv840 = trunc i64 %348 to i32
  %arrayidx841 = getelementptr i32, ptr %p, i32 896
  %349 = ptrtoint ptr %arrayidx841 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %conv840, ptr %arrayidx841, align 4
  %lxonrxc = getelementptr i8, ptr %netdev, i32 7968
  %350 = ptrtoint ptr %lxonrxc to i32
  call void @__asan_load8_noabort(i32 %350)
  %351 = load i64, ptr %lxonrxc, align 8
  %conv843 = trunc i64 %351 to i32
  %arrayidx844 = getelementptr i32, ptr %p, i32 897
  %352 = ptrtoint ptr %arrayidx844 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %conv843, ptr %arrayidx844, align 4
  %lxofftxc = getelementptr i8, ptr %netdev, i32 7976
  %353 = ptrtoint ptr %lxofftxc to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %lxofftxc, align 8
  %conv846 = trunc i64 %354 to i32
  %arrayidx847 = getelementptr i32, ptr %p, i32 898
  %355 = ptrtoint ptr %arrayidx847 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %conv846, ptr %arrayidx847, align 4
  %lxoffrxc = getelementptr i8, ptr %netdev, i32 7984
  %356 = ptrtoint ptr %lxoffrxc to i32
  call void @__asan_load8_noabort(i32 %356)
  %357 = load i64, ptr %lxoffrxc, align 8
  %conv849 = trunc i64 %357 to i32
  %arrayidx850 = getelementptr i32, ptr %p, i32 899
  %358 = ptrtoint ptr %arrayidx850 to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %conv849, ptr %arrayidx850, align 4
  %arrayidx858 = getelementptr i8, ptr %netdev, i32 7992
  %359 = ptrtoint ptr %arrayidx858 to i32
  call void @__asan_load8_noabort(i32 %359)
  %360 = load i64, ptr %arrayidx858, align 8
  %conv859 = trunc i64 %360 to i32
  %arrayidx862 = getelementptr i32, ptr %p, i32 900
  %361 = ptrtoint ptr %arrayidx862 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %conv859, ptr %arrayidx862, align 4
  %arrayidx858.1 = getelementptr i8, ptr %netdev, i32 8000
  %362 = ptrtoint ptr %arrayidx858.1 to i32
  call void @__asan_load8_noabort(i32 %362)
  %363 = load i64, ptr %arrayidx858.1, align 8
  %conv859.1 = trunc i64 %363 to i32
  %arrayidx862.1 = getelementptr i32, ptr %p, i32 901
  %364 = ptrtoint ptr %arrayidx862.1 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %conv859.1, ptr %arrayidx862.1, align 4
  %arrayidx858.2 = getelementptr i8, ptr %netdev, i32 8008
  %365 = ptrtoint ptr %arrayidx858.2 to i32
  call void @__asan_load8_noabort(i32 %365)
  %366 = load i64, ptr %arrayidx858.2, align 8
  %conv859.2 = trunc i64 %366 to i32
  %arrayidx862.2 = getelementptr i32, ptr %p, i32 902
  %367 = ptrtoint ptr %arrayidx862.2 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %conv859.2, ptr %arrayidx862.2, align 4
  %arrayidx858.3 = getelementptr i8, ptr %netdev, i32 8016
  %368 = ptrtoint ptr %arrayidx858.3 to i32
  call void @__asan_load8_noabort(i32 %368)
  %369 = load i64, ptr %arrayidx858.3, align 8
  %conv859.3 = trunc i64 %369 to i32
  %arrayidx862.3 = getelementptr i32, ptr %p, i32 903
  %370 = ptrtoint ptr %arrayidx862.3 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %conv859.3, ptr %arrayidx862.3, align 4
  %arrayidx858.4 = getelementptr i8, ptr %netdev, i32 8024
  %371 = ptrtoint ptr %arrayidx858.4 to i32
  call void @__asan_load8_noabort(i32 %371)
  %372 = load i64, ptr %arrayidx858.4, align 8
  %conv859.4 = trunc i64 %372 to i32
  %arrayidx862.4 = getelementptr i32, ptr %p, i32 904
  %373 = ptrtoint ptr %arrayidx862.4 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %conv859.4, ptr %arrayidx862.4, align 4
  %arrayidx858.5 = getelementptr i8, ptr %netdev, i32 8032
  %374 = ptrtoint ptr %arrayidx858.5 to i32
  call void @__asan_load8_noabort(i32 %374)
  %375 = load i64, ptr %arrayidx858.5, align 8
  %conv859.5 = trunc i64 %375 to i32
  %arrayidx862.5 = getelementptr i32, ptr %p, i32 905
  %376 = ptrtoint ptr %arrayidx862.5 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %conv859.5, ptr %arrayidx862.5, align 4
  %arrayidx858.6 = getelementptr i8, ptr %netdev, i32 8040
  %377 = ptrtoint ptr %arrayidx858.6 to i32
  call void @__asan_load8_noabort(i32 %377)
  %378 = load i64, ptr %arrayidx858.6, align 8
  %conv859.6 = trunc i64 %378 to i32
  %arrayidx862.6 = getelementptr i32, ptr %p, i32 906
  %379 = ptrtoint ptr %arrayidx862.6 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %conv859.6, ptr %arrayidx862.6, align 4
  %arrayidx858.7 = getelementptr i8, ptr %netdev, i32 8048
  %380 = ptrtoint ptr %arrayidx858.7 to i32
  call void @__asan_load8_noabort(i32 %380)
  %381 = load i64, ptr %arrayidx858.7, align 8
  %conv859.7 = trunc i64 %381 to i32
  %arrayidx862.7 = getelementptr i32, ptr %p, i32 907
  %382 = ptrtoint ptr %arrayidx862.7 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %conv859.7, ptr %arrayidx862.7, align 4
  %arrayidx873 = getelementptr i8, ptr %netdev, i32 8056
  %383 = ptrtoint ptr %arrayidx873 to i32
  call void @__asan_load8_noabort(i32 %383)
  %384 = load i64, ptr %arrayidx873, align 8
  %conv874 = trunc i64 %384 to i32
  %arrayidx877 = getelementptr i32, ptr %p, i32 908
  %385 = ptrtoint ptr %arrayidx877 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %conv874, ptr %arrayidx877, align 4
  %arrayidx873.1 = getelementptr i8, ptr %netdev, i32 8064
  %386 = ptrtoint ptr %arrayidx873.1 to i32
  call void @__asan_load8_noabort(i32 %386)
  %387 = load i64, ptr %arrayidx873.1, align 8
  %conv874.1 = trunc i64 %387 to i32
  %arrayidx877.1 = getelementptr i32, ptr %p, i32 909
  %388 = ptrtoint ptr %arrayidx877.1 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %conv874.1, ptr %arrayidx877.1, align 4
  %arrayidx873.2 = getelementptr i8, ptr %netdev, i32 8072
  %389 = ptrtoint ptr %arrayidx873.2 to i32
  call void @__asan_load8_noabort(i32 %389)
  %390 = load i64, ptr %arrayidx873.2, align 8
  %conv874.2 = trunc i64 %390 to i32
  %arrayidx877.2 = getelementptr i32, ptr %p, i32 910
  %391 = ptrtoint ptr %arrayidx877.2 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %conv874.2, ptr %arrayidx877.2, align 4
  %arrayidx873.3 = getelementptr i8, ptr %netdev, i32 8080
  %392 = ptrtoint ptr %arrayidx873.3 to i32
  call void @__asan_load8_noabort(i32 %392)
  %393 = load i64, ptr %arrayidx873.3, align 8
  %conv874.3 = trunc i64 %393 to i32
  %arrayidx877.3 = getelementptr i32, ptr %p, i32 911
  %394 = ptrtoint ptr %arrayidx877.3 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %conv874.3, ptr %arrayidx877.3, align 4
  %arrayidx873.4 = getelementptr i8, ptr %netdev, i32 8088
  %395 = ptrtoint ptr %arrayidx873.4 to i32
  call void @__asan_load8_noabort(i32 %395)
  %396 = load i64, ptr %arrayidx873.4, align 8
  %conv874.4 = trunc i64 %396 to i32
  %arrayidx877.4 = getelementptr i32, ptr %p, i32 912
  %397 = ptrtoint ptr %arrayidx877.4 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %conv874.4, ptr %arrayidx877.4, align 4
  %arrayidx873.5 = getelementptr i8, ptr %netdev, i32 8096
  %398 = ptrtoint ptr %arrayidx873.5 to i32
  call void @__asan_load8_noabort(i32 %398)
  %399 = load i64, ptr %arrayidx873.5, align 8
  %conv874.5 = trunc i64 %399 to i32
  %arrayidx877.5 = getelementptr i32, ptr %p, i32 913
  %400 = ptrtoint ptr %arrayidx877.5 to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %conv874.5, ptr %arrayidx877.5, align 4
  %arrayidx873.6 = getelementptr i8, ptr %netdev, i32 8104
  %401 = ptrtoint ptr %arrayidx873.6 to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %arrayidx873.6, align 8
  %conv874.6 = trunc i64 %402 to i32
  %arrayidx877.6 = getelementptr i32, ptr %p, i32 914
  %403 = ptrtoint ptr %arrayidx877.6 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %conv874.6, ptr %arrayidx877.6, align 4
  %arrayidx873.7 = getelementptr i8, ptr %netdev, i32 8112
  %404 = ptrtoint ptr %arrayidx873.7 to i32
  call void @__asan_load8_noabort(i32 %404)
  %405 = load i64, ptr %arrayidx873.7, align 8
  %conv874.7 = trunc i64 %405 to i32
  %arrayidx877.7 = getelementptr i32, ptr %p, i32 915
  %406 = ptrtoint ptr %arrayidx877.7 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %conv874.7, ptr %arrayidx877.7, align 4
  %arrayidx888 = getelementptr i8, ptr %netdev, i32 8120
  %407 = ptrtoint ptr %arrayidx888 to i32
  call void @__asan_load8_noabort(i32 %407)
  %408 = load i64, ptr %arrayidx888, align 8
  %conv889 = trunc i64 %408 to i32
  %arrayidx892 = getelementptr i32, ptr %p, i32 916
  %409 = ptrtoint ptr %arrayidx892 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %conv889, ptr %arrayidx892, align 4
  %arrayidx888.1 = getelementptr i8, ptr %netdev, i32 8128
  %410 = ptrtoint ptr %arrayidx888.1 to i32
  call void @__asan_load8_noabort(i32 %410)
  %411 = load i64, ptr %arrayidx888.1, align 8
  %conv889.1 = trunc i64 %411 to i32
  %arrayidx892.1 = getelementptr i32, ptr %p, i32 917
  %412 = ptrtoint ptr %arrayidx892.1 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %conv889.1, ptr %arrayidx892.1, align 4
  %arrayidx888.2 = getelementptr i8, ptr %netdev, i32 8136
  %413 = ptrtoint ptr %arrayidx888.2 to i32
  call void @__asan_load8_noabort(i32 %413)
  %414 = load i64, ptr %arrayidx888.2, align 8
  %conv889.2 = trunc i64 %414 to i32
  %arrayidx892.2 = getelementptr i32, ptr %p, i32 918
  %415 = ptrtoint ptr %arrayidx892.2 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %conv889.2, ptr %arrayidx892.2, align 4
  %arrayidx888.3 = getelementptr i8, ptr %netdev, i32 8144
  %416 = ptrtoint ptr %arrayidx888.3 to i32
  call void @__asan_load8_noabort(i32 %416)
  %417 = load i64, ptr %arrayidx888.3, align 8
  %conv889.3 = trunc i64 %417 to i32
  %arrayidx892.3 = getelementptr i32, ptr %p, i32 919
  %418 = ptrtoint ptr %arrayidx892.3 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 %conv889.3, ptr %arrayidx892.3, align 4
  %arrayidx888.4 = getelementptr i8, ptr %netdev, i32 8152
  %419 = ptrtoint ptr %arrayidx888.4 to i32
  call void @__asan_load8_noabort(i32 %419)
  %420 = load i64, ptr %arrayidx888.4, align 8
  %conv889.4 = trunc i64 %420 to i32
  %arrayidx892.4 = getelementptr i32, ptr %p, i32 920
  %421 = ptrtoint ptr %arrayidx892.4 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %conv889.4, ptr %arrayidx892.4, align 4
  %arrayidx888.5 = getelementptr i8, ptr %netdev, i32 8160
  %422 = ptrtoint ptr %arrayidx888.5 to i32
  call void @__asan_load8_noabort(i32 %422)
  %423 = load i64, ptr %arrayidx888.5, align 8
  %conv889.5 = trunc i64 %423 to i32
  %arrayidx892.5 = getelementptr i32, ptr %p, i32 921
  %424 = ptrtoint ptr %arrayidx892.5 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %conv889.5, ptr %arrayidx892.5, align 4
  %arrayidx888.6 = getelementptr i8, ptr %netdev, i32 8168
  %425 = ptrtoint ptr %arrayidx888.6 to i32
  call void @__asan_load8_noabort(i32 %425)
  %426 = load i64, ptr %arrayidx888.6, align 8
  %conv889.6 = trunc i64 %426 to i32
  %arrayidx892.6 = getelementptr i32, ptr %p, i32 922
  %427 = ptrtoint ptr %arrayidx892.6 to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %conv889.6, ptr %arrayidx892.6, align 4
  %arrayidx888.7 = getelementptr i8, ptr %netdev, i32 8176
  %428 = ptrtoint ptr %arrayidx888.7 to i32
  call void @__asan_load8_noabort(i32 %428)
  %429 = load i64, ptr %arrayidx888.7, align 8
  %conv889.7 = trunc i64 %429 to i32
  %arrayidx892.7 = getelementptr i32, ptr %p, i32 923
  %430 = ptrtoint ptr %arrayidx892.7 to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %conv889.7, ptr %arrayidx892.7, align 4
  %arrayidx903 = getelementptr i8, ptr %netdev, i32 8184
  %431 = ptrtoint ptr %arrayidx903 to i32
  call void @__asan_load8_noabort(i32 %431)
  %432 = load i64, ptr %arrayidx903, align 8
  %conv904 = trunc i64 %432 to i32
  %arrayidx907 = getelementptr i32, ptr %p, i32 924
  %433 = ptrtoint ptr %arrayidx907 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %conv904, ptr %arrayidx907, align 4
  %arrayidx903.1 = getelementptr i8, ptr %netdev, i32 8192
  %434 = ptrtoint ptr %arrayidx903.1 to i32
  call void @__asan_load8_noabort(i32 %434)
  %435 = load i64, ptr %arrayidx903.1, align 8
  %conv904.1 = trunc i64 %435 to i32
  %arrayidx907.1 = getelementptr i32, ptr %p, i32 925
  %436 = ptrtoint ptr %arrayidx907.1 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %conv904.1, ptr %arrayidx907.1, align 4
  %arrayidx903.2 = getelementptr i8, ptr %netdev, i32 8200
  %437 = ptrtoint ptr %arrayidx903.2 to i32
  call void @__asan_load8_noabort(i32 %437)
  %438 = load i64, ptr %arrayidx903.2, align 8
  %conv904.2 = trunc i64 %438 to i32
  %arrayidx907.2 = getelementptr i32, ptr %p, i32 926
  %439 = ptrtoint ptr %arrayidx907.2 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %conv904.2, ptr %arrayidx907.2, align 4
  %arrayidx903.3 = getelementptr i8, ptr %netdev, i32 8208
  %440 = ptrtoint ptr %arrayidx903.3 to i32
  call void @__asan_load8_noabort(i32 %440)
  %441 = load i64, ptr %arrayidx903.3, align 8
  %conv904.3 = trunc i64 %441 to i32
  %arrayidx907.3 = getelementptr i32, ptr %p, i32 927
  %442 = ptrtoint ptr %arrayidx907.3 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %conv904.3, ptr %arrayidx907.3, align 4
  %arrayidx903.4 = getelementptr i8, ptr %netdev, i32 8216
  %443 = ptrtoint ptr %arrayidx903.4 to i32
  call void @__asan_load8_noabort(i32 %443)
  %444 = load i64, ptr %arrayidx903.4, align 8
  %conv904.4 = trunc i64 %444 to i32
  %arrayidx907.4 = getelementptr i32, ptr %p, i32 928
  %445 = ptrtoint ptr %arrayidx907.4 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %conv904.4, ptr %arrayidx907.4, align 4
  %arrayidx903.5 = getelementptr i8, ptr %netdev, i32 8224
  %446 = ptrtoint ptr %arrayidx903.5 to i32
  call void @__asan_load8_noabort(i32 %446)
  %447 = load i64, ptr %arrayidx903.5, align 8
  %conv904.5 = trunc i64 %447 to i32
  %arrayidx907.5 = getelementptr i32, ptr %p, i32 929
  %448 = ptrtoint ptr %arrayidx907.5 to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 %conv904.5, ptr %arrayidx907.5, align 4
  %arrayidx903.6 = getelementptr i8, ptr %netdev, i32 8232
  %449 = ptrtoint ptr %arrayidx903.6 to i32
  call void @__asan_load8_noabort(i32 %449)
  %450 = load i64, ptr %arrayidx903.6, align 8
  %conv904.6 = trunc i64 %450 to i32
  %arrayidx907.6 = getelementptr i32, ptr %p, i32 930
  %451 = ptrtoint ptr %arrayidx907.6 to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %conv904.6, ptr %arrayidx907.6, align 4
  %arrayidx903.7 = getelementptr i8, ptr %netdev, i32 8240
  %452 = ptrtoint ptr %arrayidx903.7 to i32
  call void @__asan_load8_noabort(i32 %452)
  %453 = load i64, ptr %arrayidx903.7, align 8
  %conv904.7 = trunc i64 %453 to i32
  %arrayidx907.7 = getelementptr i32, ptr %p, i32 931
  %454 = ptrtoint ptr %arrayidx907.7 to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 %conv904.7, ptr %arrayidx907.7, align 4
  %prc64 = getelementptr i8, ptr %netdev, i32 8248
  %455 = ptrtoint ptr %prc64 to i32
  call void @__asan_load8_noabort(i32 %455)
  %456 = load i64, ptr %prc64, align 8
  %conv912 = trunc i64 %456 to i32
  %arrayidx913 = getelementptr i32, ptr %p, i32 932
  %457 = ptrtoint ptr %arrayidx913 to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %conv912, ptr %arrayidx913, align 4
  %prc127 = getelementptr i8, ptr %netdev, i32 8256
  %458 = ptrtoint ptr %prc127 to i32
  call void @__asan_load8_noabort(i32 %458)
  %459 = load i64, ptr %prc127, align 8
  %conv915 = trunc i64 %459 to i32
  %arrayidx916 = getelementptr i32, ptr %p, i32 933
  %460 = ptrtoint ptr %arrayidx916 to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %conv915, ptr %arrayidx916, align 4
  %prc255 = getelementptr i8, ptr %netdev, i32 8264
  %461 = ptrtoint ptr %prc255 to i32
  call void @__asan_load8_noabort(i32 %461)
  %462 = load i64, ptr %prc255, align 8
  %conv918 = trunc i64 %462 to i32
  %arrayidx919 = getelementptr i32, ptr %p, i32 934
  %463 = ptrtoint ptr %arrayidx919 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %conv918, ptr %arrayidx919, align 4
  %prc511 = getelementptr i8, ptr %netdev, i32 8272
  %464 = ptrtoint ptr %prc511 to i32
  call void @__asan_load8_noabort(i32 %464)
  %465 = load i64, ptr %prc511, align 8
  %conv921 = trunc i64 %465 to i32
  %arrayidx922 = getelementptr i32, ptr %p, i32 935
  %466 = ptrtoint ptr %arrayidx922 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %conv921, ptr %arrayidx922, align 4
  %prc1023 = getelementptr i8, ptr %netdev, i32 8280
  %467 = ptrtoint ptr %prc1023 to i32
  call void @__asan_load8_noabort(i32 %467)
  %468 = load i64, ptr %prc1023, align 8
  %conv924 = trunc i64 %468 to i32
  %arrayidx925 = getelementptr i32, ptr %p, i32 936
  %469 = ptrtoint ptr %arrayidx925 to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 %conv924, ptr %arrayidx925, align 4
  %prc1522 = getelementptr i8, ptr %netdev, i32 8288
  %470 = ptrtoint ptr %prc1522 to i32
  call void @__asan_load8_noabort(i32 %470)
  %471 = load i64, ptr %prc1522, align 8
  %conv927 = trunc i64 %471 to i32
  %arrayidx928 = getelementptr i32, ptr %p, i32 937
  %472 = ptrtoint ptr %arrayidx928 to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 %conv927, ptr %arrayidx928, align 4
  %gprc = getelementptr i8, ptr %netdev, i32 8296
  %473 = ptrtoint ptr %gprc to i32
  call void @__asan_load8_noabort(i32 %473)
  %474 = load i64, ptr %gprc, align 8
  %conv930 = trunc i64 %474 to i32
  %arrayidx931 = getelementptr i32, ptr %p, i32 938
  %475 = ptrtoint ptr %arrayidx931 to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %conv930, ptr %arrayidx931, align 4
  %bprc = getelementptr i8, ptr %netdev, i32 8304
  %476 = ptrtoint ptr %bprc to i32
  call void @__asan_load8_noabort(i32 %476)
  %477 = load i64, ptr %bprc, align 8
  %conv933 = trunc i64 %477 to i32
  %arrayidx934 = getelementptr i32, ptr %p, i32 939
  %478 = ptrtoint ptr %arrayidx934 to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %conv933, ptr %arrayidx934, align 4
  %mprc = getelementptr i8, ptr %netdev, i32 8312
  %479 = ptrtoint ptr %mprc to i32
  call void @__asan_load8_noabort(i32 %479)
  %480 = load i64, ptr %mprc, align 8
  %conv936 = trunc i64 %480 to i32
  %arrayidx937 = getelementptr i32, ptr %p, i32 940
  %481 = ptrtoint ptr %arrayidx937 to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 %conv936, ptr %arrayidx937, align 4
  %gptc = getelementptr i8, ptr %netdev, i32 8320
  %482 = ptrtoint ptr %gptc to i32
  call void @__asan_load8_noabort(i32 %482)
  %483 = load i64, ptr %gptc, align 8
  %conv939 = trunc i64 %483 to i32
  %arrayidx940 = getelementptr i32, ptr %p, i32 941
  %484 = ptrtoint ptr %arrayidx940 to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 %conv939, ptr %arrayidx940, align 4
  %gorc = getelementptr i8, ptr %netdev, i32 8328
  %485 = ptrtoint ptr %gorc to i32
  call void @__asan_load8_noabort(i32 %485)
  %486 = load i64, ptr %gorc, align 8
  %conv942 = trunc i64 %486 to i32
  %arrayidx943 = getelementptr i32, ptr %p, i32 942
  %487 = ptrtoint ptr %arrayidx943 to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 %conv942, ptr %arrayidx943, align 4
  %488 = load i64, ptr %gorc, align 8
  %shr = lshr i64 %488, 32
  %conv946 = trunc i64 %shr to i32
  %arrayidx947 = getelementptr i32, ptr %p, i32 943
  %489 = ptrtoint ptr %arrayidx947 to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 %conv946, ptr %arrayidx947, align 4
  %gotc = getelementptr i8, ptr %netdev, i32 8336
  %490 = ptrtoint ptr %gotc to i32
  call void @__asan_load8_noabort(i32 %490)
  %491 = load i64, ptr %gotc, align 8
  %conv949 = trunc i64 %491 to i32
  %arrayidx950 = getelementptr i32, ptr %p, i32 944
  %492 = ptrtoint ptr %arrayidx950 to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 %conv949, ptr %arrayidx950, align 4
  %493 = load i64, ptr %gotc, align 8
  %shr953 = lshr i64 %493, 32
  %conv954 = trunc i64 %shr953 to i32
  %arrayidx955 = getelementptr i32, ptr %p, i32 945
  %494 = ptrtoint ptr %arrayidx955 to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 %conv954, ptr %arrayidx955, align 4
  %arrayidx963 = getelementptr i8, ptr %netdev, i32 8344
  %495 = ptrtoint ptr %arrayidx963 to i32
  call void @__asan_load8_noabort(i32 %495)
  %496 = load i64, ptr %arrayidx963, align 8
  %conv964 = trunc i64 %496 to i32
  %arrayidx967 = getelementptr i32, ptr %p, i32 946
  %497 = ptrtoint ptr %arrayidx967 to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 %conv964, ptr %arrayidx967, align 4
  %arrayidx963.1 = getelementptr i8, ptr %netdev, i32 8352
  %498 = ptrtoint ptr %arrayidx963.1 to i32
  call void @__asan_load8_noabort(i32 %498)
  %499 = load i64, ptr %arrayidx963.1, align 8
  %conv964.1 = trunc i64 %499 to i32
  %arrayidx967.1 = getelementptr i32, ptr %p, i32 947
  %500 = ptrtoint ptr %arrayidx967.1 to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 %conv964.1, ptr %arrayidx967.1, align 4
  %arrayidx963.2 = getelementptr i8, ptr %netdev, i32 8360
  %501 = ptrtoint ptr %arrayidx963.2 to i32
  call void @__asan_load8_noabort(i32 %501)
  %502 = load i64, ptr %arrayidx963.2, align 8
  %conv964.2 = trunc i64 %502 to i32
  %arrayidx967.2 = getelementptr i32, ptr %p, i32 948
  %503 = ptrtoint ptr %arrayidx967.2 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 %conv964.2, ptr %arrayidx967.2, align 4
  %arrayidx963.3 = getelementptr i8, ptr %netdev, i32 8368
  %504 = ptrtoint ptr %arrayidx963.3 to i32
  call void @__asan_load8_noabort(i32 %504)
  %505 = load i64, ptr %arrayidx963.3, align 8
  %conv964.3 = trunc i64 %505 to i32
  %arrayidx967.3 = getelementptr i32, ptr %p, i32 949
  %506 = ptrtoint ptr %arrayidx967.3 to i32
  call void @__asan_store4_noabort(i32 %506)
  store i32 %conv964.3, ptr %arrayidx967.3, align 4
  %arrayidx963.4 = getelementptr i8, ptr %netdev, i32 8376
  %507 = ptrtoint ptr %arrayidx963.4 to i32
  call void @__asan_load8_noabort(i32 %507)
  %508 = load i64, ptr %arrayidx963.4, align 8
  %conv964.4 = trunc i64 %508 to i32
  %arrayidx967.4 = getelementptr i32, ptr %p, i32 950
  %509 = ptrtoint ptr %arrayidx967.4 to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 %conv964.4, ptr %arrayidx967.4, align 4
  %arrayidx963.5 = getelementptr i8, ptr %netdev, i32 8384
  %510 = ptrtoint ptr %arrayidx963.5 to i32
  call void @__asan_load8_noabort(i32 %510)
  %511 = load i64, ptr %arrayidx963.5, align 8
  %conv964.5 = trunc i64 %511 to i32
  %arrayidx967.5 = getelementptr i32, ptr %p, i32 951
  %512 = ptrtoint ptr %arrayidx967.5 to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 %conv964.5, ptr %arrayidx967.5, align 4
  %arrayidx963.6 = getelementptr i8, ptr %netdev, i32 8392
  %513 = ptrtoint ptr %arrayidx963.6 to i32
  call void @__asan_load8_noabort(i32 %513)
  %514 = load i64, ptr %arrayidx963.6, align 8
  %conv964.6 = trunc i64 %514 to i32
  %arrayidx967.6 = getelementptr i32, ptr %p, i32 952
  %515 = ptrtoint ptr %arrayidx967.6 to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 %conv964.6, ptr %arrayidx967.6, align 4
  %arrayidx963.7 = getelementptr i8, ptr %netdev, i32 8400
  %516 = ptrtoint ptr %arrayidx963.7 to i32
  call void @__asan_load8_noabort(i32 %516)
  %517 = load i64, ptr %arrayidx963.7, align 8
  %conv964.7 = trunc i64 %517 to i32
  %arrayidx967.7 = getelementptr i32, ptr %p, i32 953
  %518 = ptrtoint ptr %arrayidx967.7 to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 %conv964.7, ptr %arrayidx967.7, align 4
  %ruc = getelementptr i8, ptr %netdev, i32 8408
  %519 = ptrtoint ptr %ruc to i32
  call void @__asan_load8_noabort(i32 %519)
  %520 = load i64, ptr %ruc, align 8
  %conv972 = trunc i64 %520 to i32
  %arrayidx973 = getelementptr i32, ptr %p, i32 954
  %521 = ptrtoint ptr %arrayidx973 to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 %conv972, ptr %arrayidx973, align 4
  %rfc = getelementptr i8, ptr %netdev, i32 8416
  %522 = ptrtoint ptr %rfc to i32
  call void @__asan_load8_noabort(i32 %522)
  %523 = load i64, ptr %rfc, align 8
  %conv975 = trunc i64 %523 to i32
  %arrayidx976 = getelementptr i32, ptr %p, i32 955
  %524 = ptrtoint ptr %arrayidx976 to i32
  call void @__asan_store4_noabort(i32 %524)
  store i32 %conv975, ptr %arrayidx976, align 4
  %roc = getelementptr i8, ptr %netdev, i32 8424
  %525 = ptrtoint ptr %roc to i32
  call void @__asan_load8_noabort(i32 %525)
  %526 = load i64, ptr %roc, align 8
  %conv978 = trunc i64 %526 to i32
  %arrayidx979 = getelementptr i32, ptr %p, i32 956
  %527 = ptrtoint ptr %arrayidx979 to i32
  call void @__asan_store4_noabort(i32 %527)
  store i32 %conv978, ptr %arrayidx979, align 4
  %rjc = getelementptr i8, ptr %netdev, i32 8432
  %528 = ptrtoint ptr %rjc to i32
  call void @__asan_load8_noabort(i32 %528)
  %529 = load i64, ptr %rjc, align 8
  %conv981 = trunc i64 %529 to i32
  %arrayidx982 = getelementptr i32, ptr %p, i32 957
  %530 = ptrtoint ptr %arrayidx982 to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 %conv981, ptr %arrayidx982, align 4
  %mngprc = getelementptr i8, ptr %netdev, i32 8440
  %531 = ptrtoint ptr %mngprc to i32
  call void @__asan_load8_noabort(i32 %531)
  %532 = load i64, ptr %mngprc, align 8
  %conv984 = trunc i64 %532 to i32
  %arrayidx985 = getelementptr i32, ptr %p, i32 958
  %533 = ptrtoint ptr %arrayidx985 to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 %conv984, ptr %arrayidx985, align 4
  %mngpdc = getelementptr i8, ptr %netdev, i32 8448
  %534 = ptrtoint ptr %mngpdc to i32
  call void @__asan_load8_noabort(i32 %534)
  %535 = load i64, ptr %mngpdc, align 8
  %conv987 = trunc i64 %535 to i32
  %arrayidx988 = getelementptr i32, ptr %p, i32 959
  %536 = ptrtoint ptr %arrayidx988 to i32
  call void @__asan_store4_noabort(i32 %536)
  store i32 %conv987, ptr %arrayidx988, align 4
  %mngptc = getelementptr i8, ptr %netdev, i32 8456
  %537 = ptrtoint ptr %mngptc to i32
  call void @__asan_load8_noabort(i32 %537)
  %538 = load i64, ptr %mngptc, align 8
  %conv990 = trunc i64 %538 to i32
  %arrayidx991 = getelementptr i32, ptr %p, i32 960
  %539 = ptrtoint ptr %arrayidx991 to i32
  call void @__asan_store4_noabort(i32 %539)
  store i32 %conv990, ptr %arrayidx991, align 4
  %tor = getelementptr i8, ptr %netdev, i32 8464
  %540 = ptrtoint ptr %tor to i32
  call void @__asan_load8_noabort(i32 %540)
  %541 = load i64, ptr %tor, align 8
  %conv993 = trunc i64 %541 to i32
  %arrayidx994 = getelementptr i32, ptr %p, i32 961
  %542 = ptrtoint ptr %arrayidx994 to i32
  call void @__asan_store4_noabort(i32 %542)
  store i32 %conv993, ptr %arrayidx994, align 4
  %543 = load i64, ptr %tor, align 8
  %shr997 = lshr i64 %543, 32
  %conv998 = trunc i64 %shr997 to i32
  %arrayidx999 = getelementptr i32, ptr %p, i32 962
  %544 = ptrtoint ptr %arrayidx999 to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 %conv998, ptr %arrayidx999, align 4
  %tpr = getelementptr i8, ptr %netdev, i32 8472
  %545 = ptrtoint ptr %tpr to i32
  call void @__asan_load8_noabort(i32 %545)
  %546 = load i64, ptr %tpr, align 8
  %conv1001 = trunc i64 %546 to i32
  %arrayidx1002 = getelementptr i32, ptr %p, i32 963
  %547 = ptrtoint ptr %arrayidx1002 to i32
  call void @__asan_store4_noabort(i32 %547)
  store i32 %conv1001, ptr %arrayidx1002, align 4
  %tpt = getelementptr i8, ptr %netdev, i32 8480
  %548 = ptrtoint ptr %tpt to i32
  call void @__asan_load8_noabort(i32 %548)
  %549 = load i64, ptr %tpt, align 8
  %conv1004 = trunc i64 %549 to i32
  %arrayidx1005 = getelementptr i32, ptr %p, i32 964
  %550 = ptrtoint ptr %arrayidx1005 to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 %conv1004, ptr %arrayidx1005, align 4
  %ptc64 = getelementptr i8, ptr %netdev, i32 8488
  %551 = ptrtoint ptr %ptc64 to i32
  call void @__asan_load8_noabort(i32 %551)
  %552 = load i64, ptr %ptc64, align 8
  %conv1007 = trunc i64 %552 to i32
  %arrayidx1008 = getelementptr i32, ptr %p, i32 965
  %553 = ptrtoint ptr %arrayidx1008 to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 %conv1007, ptr %arrayidx1008, align 4
  %ptc127 = getelementptr i8, ptr %netdev, i32 8496
  %554 = ptrtoint ptr %ptc127 to i32
  call void @__asan_load8_noabort(i32 %554)
  %555 = load i64, ptr %ptc127, align 8
  %conv1010 = trunc i64 %555 to i32
  %arrayidx1011 = getelementptr i32, ptr %p, i32 966
  %556 = ptrtoint ptr %arrayidx1011 to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 %conv1010, ptr %arrayidx1011, align 4
  %ptc255 = getelementptr i8, ptr %netdev, i32 8504
  %557 = ptrtoint ptr %ptc255 to i32
  call void @__asan_load8_noabort(i32 %557)
  %558 = load i64, ptr %ptc255, align 8
  %conv1013 = trunc i64 %558 to i32
  %arrayidx1014 = getelementptr i32, ptr %p, i32 967
  %559 = ptrtoint ptr %arrayidx1014 to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 %conv1013, ptr %arrayidx1014, align 4
  %ptc511 = getelementptr i8, ptr %netdev, i32 8512
  %560 = ptrtoint ptr %ptc511 to i32
  call void @__asan_load8_noabort(i32 %560)
  %561 = load i64, ptr %ptc511, align 8
  %conv1016 = trunc i64 %561 to i32
  %arrayidx1017 = getelementptr i32, ptr %p, i32 968
  %562 = ptrtoint ptr %arrayidx1017 to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 %conv1016, ptr %arrayidx1017, align 4
  %ptc1023 = getelementptr i8, ptr %netdev, i32 8520
  %563 = ptrtoint ptr %ptc1023 to i32
  call void @__asan_load8_noabort(i32 %563)
  %564 = load i64, ptr %ptc1023, align 8
  %conv1019 = trunc i64 %564 to i32
  %arrayidx1020 = getelementptr i32, ptr %p, i32 969
  %565 = ptrtoint ptr %arrayidx1020 to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 %conv1019, ptr %arrayidx1020, align 4
  %ptc1522 = getelementptr i8, ptr %netdev, i32 8528
  %566 = ptrtoint ptr %ptc1522 to i32
  call void @__asan_load8_noabort(i32 %566)
  %567 = load i64, ptr %ptc1522, align 8
  %conv1022 = trunc i64 %567 to i32
  %arrayidx1023 = getelementptr i32, ptr %p, i32 970
  %568 = ptrtoint ptr %arrayidx1023 to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 %conv1022, ptr %arrayidx1023, align 4
  %mptc = getelementptr i8, ptr %netdev, i32 8536
  %569 = ptrtoint ptr %mptc to i32
  call void @__asan_load8_noabort(i32 %569)
  %570 = load i64, ptr %mptc, align 8
  %conv1025 = trunc i64 %570 to i32
  %arrayidx1026 = getelementptr i32, ptr %p, i32 971
  %571 = ptrtoint ptr %arrayidx1026 to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 %conv1025, ptr %arrayidx1026, align 4
  %bptc = getelementptr i8, ptr %netdev, i32 8544
  %572 = ptrtoint ptr %bptc to i32
  call void @__asan_load8_noabort(i32 %572)
  %573 = load i64, ptr %bptc, align 8
  %conv1028 = trunc i64 %573 to i32
  %arrayidx1029 = getelementptr i32, ptr %p, i32 972
  %574 = ptrtoint ptr %arrayidx1029 to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 %conv1028, ptr %arrayidx1029, align 4
  %xec = getelementptr i8, ptr %netdev, i32 8552
  %575 = ptrtoint ptr %xec to i32
  call void @__asan_load8_noabort(i32 %575)
  %576 = load i64, ptr %xec, align 8
  %conv1031 = trunc i64 %576 to i32
  %arrayidx1032 = getelementptr i32, ptr %p, i32 973
  %577 = ptrtoint ptr %arrayidx1032 to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %conv1031, ptr %arrayidx1032, align 4
  %arrayidx1040 = getelementptr i8, ptr %netdev, i32 8752
  %578 = ptrtoint ptr %arrayidx1040 to i32
  call void @__asan_load8_noabort(i32 %578)
  %579 = load i64, ptr %arrayidx1040, align 8
  %conv1041 = trunc i64 %579 to i32
  %arrayidx1044 = getelementptr i32, ptr %p, i32 974
  %580 = ptrtoint ptr %arrayidx1044 to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 %conv1041, ptr %arrayidx1044, align 4
  %arrayidx1040.1 = getelementptr i8, ptr %netdev, i32 8760
  %581 = ptrtoint ptr %arrayidx1040.1 to i32
  call void @__asan_load8_noabort(i32 %581)
  %582 = load i64, ptr %arrayidx1040.1, align 8
  %conv1041.1 = trunc i64 %582 to i32
  %arrayidx1044.1 = getelementptr i32, ptr %p, i32 975
  %583 = ptrtoint ptr %arrayidx1044.1 to i32
  call void @__asan_store4_noabort(i32 %583)
  store i32 %conv1041.1, ptr %arrayidx1044.1, align 4
  %arrayidx1040.2 = getelementptr i8, ptr %netdev, i32 8768
  %584 = ptrtoint ptr %arrayidx1040.2 to i32
  call void @__asan_load8_noabort(i32 %584)
  %585 = load i64, ptr %arrayidx1040.2, align 8
  %conv1041.2 = trunc i64 %585 to i32
  %arrayidx1044.2 = getelementptr i32, ptr %p, i32 976
  %586 = ptrtoint ptr %arrayidx1044.2 to i32
  call void @__asan_store4_noabort(i32 %586)
  store i32 %conv1041.2, ptr %arrayidx1044.2, align 4
  %arrayidx1040.3 = getelementptr i8, ptr %netdev, i32 8776
  %587 = ptrtoint ptr %arrayidx1040.3 to i32
  call void @__asan_load8_noabort(i32 %587)
  %588 = load i64, ptr %arrayidx1040.3, align 8
  %conv1041.3 = trunc i64 %588 to i32
  %arrayidx1044.3 = getelementptr i32, ptr %p, i32 977
  %589 = ptrtoint ptr %arrayidx1044.3 to i32
  call void @__asan_store4_noabort(i32 %589)
  store i32 %conv1041.3, ptr %arrayidx1044.3, align 4
  %arrayidx1040.4 = getelementptr i8, ptr %netdev, i32 8784
  %590 = ptrtoint ptr %arrayidx1040.4 to i32
  call void @__asan_load8_noabort(i32 %590)
  %591 = load i64, ptr %arrayidx1040.4, align 8
  %conv1041.4 = trunc i64 %591 to i32
  %arrayidx1044.4 = getelementptr i32, ptr %p, i32 978
  %592 = ptrtoint ptr %arrayidx1044.4 to i32
  call void @__asan_store4_noabort(i32 %592)
  store i32 %conv1041.4, ptr %arrayidx1044.4, align 4
  %arrayidx1040.5 = getelementptr i8, ptr %netdev, i32 8792
  %593 = ptrtoint ptr %arrayidx1040.5 to i32
  call void @__asan_load8_noabort(i32 %593)
  %594 = load i64, ptr %arrayidx1040.5, align 8
  %conv1041.5 = trunc i64 %594 to i32
  %arrayidx1044.5 = getelementptr i32, ptr %p, i32 979
  %595 = ptrtoint ptr %arrayidx1044.5 to i32
  call void @__asan_store4_noabort(i32 %595)
  store i32 %conv1041.5, ptr %arrayidx1044.5, align 4
  %arrayidx1040.6 = getelementptr i8, ptr %netdev, i32 8800
  %596 = ptrtoint ptr %arrayidx1040.6 to i32
  call void @__asan_load8_noabort(i32 %596)
  %597 = load i64, ptr %arrayidx1040.6, align 8
  %conv1041.6 = trunc i64 %597 to i32
  %arrayidx1044.6 = getelementptr i32, ptr %p, i32 980
  %598 = ptrtoint ptr %arrayidx1044.6 to i32
  call void @__asan_store4_noabort(i32 %598)
  store i32 %conv1041.6, ptr %arrayidx1044.6, align 4
  %arrayidx1040.7 = getelementptr i8, ptr %netdev, i32 8808
  %599 = ptrtoint ptr %arrayidx1040.7 to i32
  call void @__asan_load8_noabort(i32 %599)
  %600 = load i64, ptr %arrayidx1040.7, align 8
  %conv1041.7 = trunc i64 %600 to i32
  %arrayidx1044.7 = getelementptr i32, ptr %p, i32 981
  %601 = ptrtoint ptr %arrayidx1044.7 to i32
  call void @__asan_store4_noabort(i32 %601)
  store i32 %conv1041.7, ptr %arrayidx1044.7, align 4
  %arrayidx1040.8 = getelementptr i8, ptr %netdev, i32 8816
  %602 = ptrtoint ptr %arrayidx1040.8 to i32
  call void @__asan_load8_noabort(i32 %602)
  %603 = load i64, ptr %arrayidx1040.8, align 8
  %conv1041.8 = trunc i64 %603 to i32
  %arrayidx1044.8 = getelementptr i32, ptr %p, i32 982
  %604 = ptrtoint ptr %arrayidx1044.8 to i32
  call void @__asan_store4_noabort(i32 %604)
  store i32 %conv1041.8, ptr %arrayidx1044.8, align 4
  %arrayidx1040.9 = getelementptr i8, ptr %netdev, i32 8824
  %605 = ptrtoint ptr %arrayidx1040.9 to i32
  call void @__asan_load8_noabort(i32 %605)
  %606 = load i64, ptr %arrayidx1040.9, align 8
  %conv1041.9 = trunc i64 %606 to i32
  %arrayidx1044.9 = getelementptr i32, ptr %p, i32 983
  %607 = ptrtoint ptr %arrayidx1044.9 to i32
  call void @__asan_store4_noabort(i32 %607)
  store i32 %conv1041.9, ptr %arrayidx1044.9, align 4
  %arrayidx1040.10 = getelementptr i8, ptr %netdev, i32 8832
  %608 = ptrtoint ptr %arrayidx1040.10 to i32
  call void @__asan_load8_noabort(i32 %608)
  %609 = load i64, ptr %arrayidx1040.10, align 8
  %conv1041.10 = trunc i64 %609 to i32
  %arrayidx1044.10 = getelementptr i32, ptr %p, i32 984
  %610 = ptrtoint ptr %arrayidx1044.10 to i32
  call void @__asan_store4_noabort(i32 %610)
  store i32 %conv1041.10, ptr %arrayidx1044.10, align 4
  %arrayidx1040.11 = getelementptr i8, ptr %netdev, i32 8840
  %611 = ptrtoint ptr %arrayidx1040.11 to i32
  call void @__asan_load8_noabort(i32 %611)
  %612 = load i64, ptr %arrayidx1040.11, align 8
  %conv1041.11 = trunc i64 %612 to i32
  %arrayidx1044.11 = getelementptr i32, ptr %p, i32 985
  %613 = ptrtoint ptr %arrayidx1044.11 to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 %conv1041.11, ptr %arrayidx1044.11, align 4
  %arrayidx1040.12 = getelementptr i8, ptr %netdev, i32 8848
  %614 = ptrtoint ptr %arrayidx1040.12 to i32
  call void @__asan_load8_noabort(i32 %614)
  %615 = load i64, ptr %arrayidx1040.12, align 8
  %conv1041.12 = trunc i64 %615 to i32
  %arrayidx1044.12 = getelementptr i32, ptr %p, i32 986
  %616 = ptrtoint ptr %arrayidx1044.12 to i32
  call void @__asan_store4_noabort(i32 %616)
  store i32 %conv1041.12, ptr %arrayidx1044.12, align 4
  %arrayidx1040.13 = getelementptr i8, ptr %netdev, i32 8856
  %617 = ptrtoint ptr %arrayidx1040.13 to i32
  call void @__asan_load8_noabort(i32 %617)
  %618 = load i64, ptr %arrayidx1040.13, align 8
  %conv1041.13 = trunc i64 %618 to i32
  %arrayidx1044.13 = getelementptr i32, ptr %p, i32 987
  %619 = ptrtoint ptr %arrayidx1044.13 to i32
  call void @__asan_store4_noabort(i32 %619)
  store i32 %conv1041.13, ptr %arrayidx1044.13, align 4
  %arrayidx1040.14 = getelementptr i8, ptr %netdev, i32 8864
  %620 = ptrtoint ptr %arrayidx1040.14 to i32
  call void @__asan_load8_noabort(i32 %620)
  %621 = load i64, ptr %arrayidx1040.14, align 8
  %conv1041.14 = trunc i64 %621 to i32
  %arrayidx1044.14 = getelementptr i32, ptr %p, i32 988
  %622 = ptrtoint ptr %arrayidx1044.14 to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 %conv1041.14, ptr %arrayidx1044.14, align 4
  %arrayidx1040.15 = getelementptr i8, ptr %netdev, i32 8872
  %623 = ptrtoint ptr %arrayidx1040.15 to i32
  call void @__asan_load8_noabort(i32 %623)
  %624 = load i64, ptr %arrayidx1040.15, align 8
  %conv1041.15 = trunc i64 %624 to i32
  %arrayidx1044.15 = getelementptr i32, ptr %p, i32 989
  %625 = ptrtoint ptr %arrayidx1044.15 to i32
  call void @__asan_store4_noabort(i32 %625)
  store i32 %conv1041.15, ptr %arrayidx1044.15, align 4
  %arrayidx1055 = getelementptr i8, ptr %netdev, i32 8880
  %626 = ptrtoint ptr %arrayidx1055 to i32
  call void @__asan_load8_noabort(i32 %626)
  %627 = load i64, ptr %arrayidx1055, align 8
  %conv1056 = trunc i64 %627 to i32
  %arrayidx1059 = getelementptr i32, ptr %p, i32 990
  %628 = ptrtoint ptr %arrayidx1059 to i32
  call void @__asan_store4_noabort(i32 %628)
  store i32 %conv1056, ptr %arrayidx1059, align 4
  %arrayidx1055.1 = getelementptr i8, ptr %netdev, i32 8888
  %629 = ptrtoint ptr %arrayidx1055.1 to i32
  call void @__asan_load8_noabort(i32 %629)
  %630 = load i64, ptr %arrayidx1055.1, align 8
  %conv1056.1 = trunc i64 %630 to i32
  %arrayidx1059.1 = getelementptr i32, ptr %p, i32 991
  %631 = ptrtoint ptr %arrayidx1059.1 to i32
  call void @__asan_store4_noabort(i32 %631)
  store i32 %conv1056.1, ptr %arrayidx1059.1, align 4
  %arrayidx1055.2 = getelementptr i8, ptr %netdev, i32 8896
  %632 = ptrtoint ptr %arrayidx1055.2 to i32
  call void @__asan_load8_noabort(i32 %632)
  %633 = load i64, ptr %arrayidx1055.2, align 8
  %conv1056.2 = trunc i64 %633 to i32
  %arrayidx1059.2 = getelementptr i32, ptr %p, i32 992
  %634 = ptrtoint ptr %arrayidx1059.2 to i32
  call void @__asan_store4_noabort(i32 %634)
  store i32 %conv1056.2, ptr %arrayidx1059.2, align 4
  %arrayidx1055.3 = getelementptr i8, ptr %netdev, i32 8904
  %635 = ptrtoint ptr %arrayidx1055.3 to i32
  call void @__asan_load8_noabort(i32 %635)
  %636 = load i64, ptr %arrayidx1055.3, align 8
  %conv1056.3 = trunc i64 %636 to i32
  %arrayidx1059.3 = getelementptr i32, ptr %p, i32 993
  %637 = ptrtoint ptr %arrayidx1059.3 to i32
  call void @__asan_store4_noabort(i32 %637)
  store i32 %conv1056.3, ptr %arrayidx1059.3, align 4
  %arrayidx1055.4 = getelementptr i8, ptr %netdev, i32 8912
  %638 = ptrtoint ptr %arrayidx1055.4 to i32
  call void @__asan_load8_noabort(i32 %638)
  %639 = load i64, ptr %arrayidx1055.4, align 8
  %conv1056.4 = trunc i64 %639 to i32
  %arrayidx1059.4 = getelementptr i32, ptr %p, i32 994
  %640 = ptrtoint ptr %arrayidx1059.4 to i32
  call void @__asan_store4_noabort(i32 %640)
  store i32 %conv1056.4, ptr %arrayidx1059.4, align 4
  %arrayidx1055.5 = getelementptr i8, ptr %netdev, i32 8920
  %641 = ptrtoint ptr %arrayidx1055.5 to i32
  call void @__asan_load8_noabort(i32 %641)
  %642 = load i64, ptr %arrayidx1055.5, align 8
  %conv1056.5 = trunc i64 %642 to i32
  %arrayidx1059.5 = getelementptr i32, ptr %p, i32 995
  %643 = ptrtoint ptr %arrayidx1059.5 to i32
  call void @__asan_store4_noabort(i32 %643)
  store i32 %conv1056.5, ptr %arrayidx1059.5, align 4
  %arrayidx1055.6 = getelementptr i8, ptr %netdev, i32 8928
  %644 = ptrtoint ptr %arrayidx1055.6 to i32
  call void @__asan_load8_noabort(i32 %644)
  %645 = load i64, ptr %arrayidx1055.6, align 8
  %conv1056.6 = trunc i64 %645 to i32
  %arrayidx1059.6 = getelementptr i32, ptr %p, i32 996
  %646 = ptrtoint ptr %arrayidx1059.6 to i32
  call void @__asan_store4_noabort(i32 %646)
  store i32 %conv1056.6, ptr %arrayidx1059.6, align 4
  %arrayidx1055.7 = getelementptr i8, ptr %netdev, i32 8936
  %647 = ptrtoint ptr %arrayidx1055.7 to i32
  call void @__asan_load8_noabort(i32 %647)
  %648 = load i64, ptr %arrayidx1055.7, align 8
  %conv1056.7 = trunc i64 %648 to i32
  %arrayidx1059.7 = getelementptr i32, ptr %p, i32 997
  %649 = ptrtoint ptr %arrayidx1059.7 to i32
  call void @__asan_store4_noabort(i32 %649)
  store i32 %conv1056.7, ptr %arrayidx1059.7, align 4
  %arrayidx1055.8 = getelementptr i8, ptr %netdev, i32 8944
  %650 = ptrtoint ptr %arrayidx1055.8 to i32
  call void @__asan_load8_noabort(i32 %650)
  %651 = load i64, ptr %arrayidx1055.8, align 8
  %conv1056.8 = trunc i64 %651 to i32
  %arrayidx1059.8 = getelementptr i32, ptr %p, i32 998
  %652 = ptrtoint ptr %arrayidx1059.8 to i32
  call void @__asan_store4_noabort(i32 %652)
  store i32 %conv1056.8, ptr %arrayidx1059.8, align 4
  %arrayidx1055.9 = getelementptr i8, ptr %netdev, i32 8952
  %653 = ptrtoint ptr %arrayidx1055.9 to i32
  call void @__asan_load8_noabort(i32 %653)
  %654 = load i64, ptr %arrayidx1055.9, align 8
  %conv1056.9 = trunc i64 %654 to i32
  %arrayidx1059.9 = getelementptr i32, ptr %p, i32 999
  %655 = ptrtoint ptr %arrayidx1059.9 to i32
  call void @__asan_store4_noabort(i32 %655)
  store i32 %conv1056.9, ptr %arrayidx1059.9, align 4
  %arrayidx1055.10 = getelementptr i8, ptr %netdev, i32 8960
  %656 = ptrtoint ptr %arrayidx1055.10 to i32
  call void @__asan_load8_noabort(i32 %656)
  %657 = load i64, ptr %arrayidx1055.10, align 8
  %conv1056.10 = trunc i64 %657 to i32
  %arrayidx1059.10 = getelementptr i32, ptr %p, i32 1000
  %658 = ptrtoint ptr %arrayidx1059.10 to i32
  call void @__asan_store4_noabort(i32 %658)
  store i32 %conv1056.10, ptr %arrayidx1059.10, align 4
  %arrayidx1055.11 = getelementptr i8, ptr %netdev, i32 8968
  %659 = ptrtoint ptr %arrayidx1055.11 to i32
  call void @__asan_load8_noabort(i32 %659)
  %660 = load i64, ptr %arrayidx1055.11, align 8
  %conv1056.11 = trunc i64 %660 to i32
  %arrayidx1059.11 = getelementptr i32, ptr %p, i32 1001
  %661 = ptrtoint ptr %arrayidx1059.11 to i32
  call void @__asan_store4_noabort(i32 %661)
  store i32 %conv1056.11, ptr %arrayidx1059.11, align 4
  %arrayidx1055.12 = getelementptr i8, ptr %netdev, i32 8976
  %662 = ptrtoint ptr %arrayidx1055.12 to i32
  call void @__asan_load8_noabort(i32 %662)
  %663 = load i64, ptr %arrayidx1055.12, align 8
  %conv1056.12 = trunc i64 %663 to i32
  %arrayidx1059.12 = getelementptr i32, ptr %p, i32 1002
  %664 = ptrtoint ptr %arrayidx1059.12 to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 %conv1056.12, ptr %arrayidx1059.12, align 4
  %arrayidx1055.13 = getelementptr i8, ptr %netdev, i32 8984
  %665 = ptrtoint ptr %arrayidx1055.13 to i32
  call void @__asan_load8_noabort(i32 %665)
  %666 = load i64, ptr %arrayidx1055.13, align 8
  %conv1056.13 = trunc i64 %666 to i32
  %arrayidx1059.13 = getelementptr i32, ptr %p, i32 1003
  %667 = ptrtoint ptr %arrayidx1059.13 to i32
  call void @__asan_store4_noabort(i32 %667)
  store i32 %conv1056.13, ptr %arrayidx1059.13, align 4
  %arrayidx1055.14 = getelementptr i8, ptr %netdev, i32 8992
  %668 = ptrtoint ptr %arrayidx1055.14 to i32
  call void @__asan_load8_noabort(i32 %668)
  %669 = load i64, ptr %arrayidx1055.14, align 8
  %conv1056.14 = trunc i64 %669 to i32
  %arrayidx1059.14 = getelementptr i32, ptr %p, i32 1004
  %670 = ptrtoint ptr %arrayidx1059.14 to i32
  call void @__asan_store4_noabort(i32 %670)
  store i32 %conv1056.14, ptr %arrayidx1059.14, align 4
  %arrayidx1055.15 = getelementptr i8, ptr %netdev, i32 9000
  %671 = ptrtoint ptr %arrayidx1055.15 to i32
  call void @__asan_load8_noabort(i32 %671)
  %672 = load i64, ptr %arrayidx1055.15, align 8
  %conv1056.15 = trunc i64 %672 to i32
  %arrayidx1059.15 = getelementptr i32, ptr %p, i32 1005
  %673 = ptrtoint ptr %arrayidx1059.15 to i32
  call void @__asan_store4_noabort(i32 %673)
  store i32 %conv1056.15, ptr %arrayidx1059.15, align 4
  %arrayidx1070 = getelementptr i8, ptr %netdev, i32 9008
  %674 = ptrtoint ptr %arrayidx1070 to i32
  call void @__asan_load8_noabort(i32 %674)
  %675 = load i64, ptr %arrayidx1070, align 8
  %conv1071 = trunc i64 %675 to i32
  %arrayidx1074 = getelementptr i32, ptr %p, i32 1006
  %676 = ptrtoint ptr %arrayidx1074 to i32
  call void @__asan_store4_noabort(i32 %676)
  store i32 %conv1071, ptr %arrayidx1074, align 4
  %arrayidx1070.1 = getelementptr i8, ptr %netdev, i32 9016
  %677 = ptrtoint ptr %arrayidx1070.1 to i32
  call void @__asan_load8_noabort(i32 %677)
  %678 = load i64, ptr %arrayidx1070.1, align 8
  %conv1071.1 = trunc i64 %678 to i32
  %arrayidx1074.1 = getelementptr i32, ptr %p, i32 1007
  %679 = ptrtoint ptr %arrayidx1074.1 to i32
  call void @__asan_store4_noabort(i32 %679)
  store i32 %conv1071.1, ptr %arrayidx1074.1, align 4
  %arrayidx1070.2 = getelementptr i8, ptr %netdev, i32 9024
  %680 = ptrtoint ptr %arrayidx1070.2 to i32
  call void @__asan_load8_noabort(i32 %680)
  %681 = load i64, ptr %arrayidx1070.2, align 8
  %conv1071.2 = trunc i64 %681 to i32
  %arrayidx1074.2 = getelementptr i32, ptr %p, i32 1008
  %682 = ptrtoint ptr %arrayidx1074.2 to i32
  call void @__asan_store4_noabort(i32 %682)
  store i32 %conv1071.2, ptr %arrayidx1074.2, align 4
  %arrayidx1070.3 = getelementptr i8, ptr %netdev, i32 9032
  %683 = ptrtoint ptr %arrayidx1070.3 to i32
  call void @__asan_load8_noabort(i32 %683)
  %684 = load i64, ptr %arrayidx1070.3, align 8
  %conv1071.3 = trunc i64 %684 to i32
  %arrayidx1074.3 = getelementptr i32, ptr %p, i32 1009
  %685 = ptrtoint ptr %arrayidx1074.3 to i32
  call void @__asan_store4_noabort(i32 %685)
  store i32 %conv1071.3, ptr %arrayidx1074.3, align 4
  %arrayidx1070.4 = getelementptr i8, ptr %netdev, i32 9040
  %686 = ptrtoint ptr %arrayidx1070.4 to i32
  call void @__asan_load8_noabort(i32 %686)
  %687 = load i64, ptr %arrayidx1070.4, align 8
  %conv1071.4 = trunc i64 %687 to i32
  %arrayidx1074.4 = getelementptr i32, ptr %p, i32 1010
  %688 = ptrtoint ptr %arrayidx1074.4 to i32
  call void @__asan_store4_noabort(i32 %688)
  store i32 %conv1071.4, ptr %arrayidx1074.4, align 4
  %arrayidx1070.5 = getelementptr i8, ptr %netdev, i32 9048
  %689 = ptrtoint ptr %arrayidx1070.5 to i32
  call void @__asan_load8_noabort(i32 %689)
  %690 = load i64, ptr %arrayidx1070.5, align 8
  %conv1071.5 = trunc i64 %690 to i32
  %arrayidx1074.5 = getelementptr i32, ptr %p, i32 1011
  %691 = ptrtoint ptr %arrayidx1074.5 to i32
  call void @__asan_store4_noabort(i32 %691)
  store i32 %conv1071.5, ptr %arrayidx1074.5, align 4
  %arrayidx1070.6 = getelementptr i8, ptr %netdev, i32 9056
  %692 = ptrtoint ptr %arrayidx1070.6 to i32
  call void @__asan_load8_noabort(i32 %692)
  %693 = load i64, ptr %arrayidx1070.6, align 8
  %conv1071.6 = trunc i64 %693 to i32
  %arrayidx1074.6 = getelementptr i32, ptr %p, i32 1012
  %694 = ptrtoint ptr %arrayidx1074.6 to i32
  call void @__asan_store4_noabort(i32 %694)
  store i32 %conv1071.6, ptr %arrayidx1074.6, align 4
  %arrayidx1070.7 = getelementptr i8, ptr %netdev, i32 9064
  %695 = ptrtoint ptr %arrayidx1070.7 to i32
  call void @__asan_load8_noabort(i32 %695)
  %696 = load i64, ptr %arrayidx1070.7, align 8
  %conv1071.7 = trunc i64 %696 to i32
  %arrayidx1074.7 = getelementptr i32, ptr %p, i32 1013
  %697 = ptrtoint ptr %arrayidx1074.7 to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 %conv1071.7, ptr %arrayidx1074.7, align 4
  %arrayidx1070.8 = getelementptr i8, ptr %netdev, i32 9072
  %698 = ptrtoint ptr %arrayidx1070.8 to i32
  call void @__asan_load8_noabort(i32 %698)
  %699 = load i64, ptr %arrayidx1070.8, align 8
  %conv1071.8 = trunc i64 %699 to i32
  %arrayidx1074.8 = getelementptr i32, ptr %p, i32 1014
  %700 = ptrtoint ptr %arrayidx1074.8 to i32
  call void @__asan_store4_noabort(i32 %700)
  store i32 %conv1071.8, ptr %arrayidx1074.8, align 4
  %arrayidx1070.9 = getelementptr i8, ptr %netdev, i32 9080
  %701 = ptrtoint ptr %arrayidx1070.9 to i32
  call void @__asan_load8_noabort(i32 %701)
  %702 = load i64, ptr %arrayidx1070.9, align 8
  %conv1071.9 = trunc i64 %702 to i32
  %arrayidx1074.9 = getelementptr i32, ptr %p, i32 1015
  %703 = ptrtoint ptr %arrayidx1074.9 to i32
  call void @__asan_store4_noabort(i32 %703)
  store i32 %conv1071.9, ptr %arrayidx1074.9, align 4
  %arrayidx1070.10 = getelementptr i8, ptr %netdev, i32 9088
  %704 = ptrtoint ptr %arrayidx1070.10 to i32
  call void @__asan_load8_noabort(i32 %704)
  %705 = load i64, ptr %arrayidx1070.10, align 8
  %conv1071.10 = trunc i64 %705 to i32
  %arrayidx1074.10 = getelementptr i32, ptr %p, i32 1016
  %706 = ptrtoint ptr %arrayidx1074.10 to i32
  call void @__asan_store4_noabort(i32 %706)
  store i32 %conv1071.10, ptr %arrayidx1074.10, align 4
  %arrayidx1070.11 = getelementptr i8, ptr %netdev, i32 9096
  %707 = ptrtoint ptr %arrayidx1070.11 to i32
  call void @__asan_load8_noabort(i32 %707)
  %708 = load i64, ptr %arrayidx1070.11, align 8
  %conv1071.11 = trunc i64 %708 to i32
  %arrayidx1074.11 = getelementptr i32, ptr %p, i32 1017
  %709 = ptrtoint ptr %arrayidx1074.11 to i32
  call void @__asan_store4_noabort(i32 %709)
  store i32 %conv1071.11, ptr %arrayidx1074.11, align 4
  %arrayidx1070.12 = getelementptr i8, ptr %netdev, i32 9104
  %710 = ptrtoint ptr %arrayidx1070.12 to i32
  call void @__asan_load8_noabort(i32 %710)
  %711 = load i64, ptr %arrayidx1070.12, align 8
  %conv1071.12 = trunc i64 %711 to i32
  %arrayidx1074.12 = getelementptr i32, ptr %p, i32 1018
  %712 = ptrtoint ptr %arrayidx1074.12 to i32
  call void @__asan_store4_noabort(i32 %712)
  store i32 %conv1071.12, ptr %arrayidx1074.12, align 4
  %arrayidx1070.13 = getelementptr i8, ptr %netdev, i32 9112
  %713 = ptrtoint ptr %arrayidx1070.13 to i32
  call void @__asan_load8_noabort(i32 %713)
  %714 = load i64, ptr %arrayidx1070.13, align 8
  %conv1071.13 = trunc i64 %714 to i32
  %arrayidx1074.13 = getelementptr i32, ptr %p, i32 1019
  %715 = ptrtoint ptr %arrayidx1074.13 to i32
  call void @__asan_store4_noabort(i32 %715)
  store i32 %conv1071.13, ptr %arrayidx1074.13, align 4
  %arrayidx1070.14 = getelementptr i8, ptr %netdev, i32 9120
  %716 = ptrtoint ptr %arrayidx1070.14 to i32
  call void @__asan_load8_noabort(i32 %716)
  %717 = load i64, ptr %arrayidx1070.14, align 8
  %conv1071.14 = trunc i64 %717 to i32
  %arrayidx1074.14 = getelementptr i32, ptr %p, i32 1020
  %718 = ptrtoint ptr %arrayidx1074.14 to i32
  call void @__asan_store4_noabort(i32 %718)
  store i32 %conv1071.14, ptr %arrayidx1074.14, align 4
  %arrayidx1070.15 = getelementptr i8, ptr %netdev, i32 9128
  %719 = ptrtoint ptr %arrayidx1070.15 to i32
  call void @__asan_load8_noabort(i32 %719)
  %720 = load i64, ptr %arrayidx1070.15, align 8
  %conv1071.15 = trunc i64 %720 to i32
  %arrayidx1074.15 = getelementptr i32, ptr %p, i32 1021
  %721 = ptrtoint ptr %arrayidx1074.15 to i32
  call void @__asan_store4_noabort(i32 %721)
  store i32 %conv1071.15, ptr %arrayidx1074.15, align 4
  %arrayidx1085 = getelementptr i8, ptr %netdev, i32 9136
  %722 = ptrtoint ptr %arrayidx1085 to i32
  call void @__asan_load8_noabort(i32 %722)
  %723 = load i64, ptr %arrayidx1085, align 8
  %conv1086 = trunc i64 %723 to i32
  %arrayidx1089 = getelementptr i32, ptr %p, i32 1022
  %724 = ptrtoint ptr %arrayidx1089 to i32
  call void @__asan_store4_noabort(i32 %724)
  store i32 %conv1086, ptr %arrayidx1089, align 4
  %arrayidx1085.1 = getelementptr i8, ptr %netdev, i32 9144
  %725 = ptrtoint ptr %arrayidx1085.1 to i32
  call void @__asan_load8_noabort(i32 %725)
  %726 = load i64, ptr %arrayidx1085.1, align 8
  %conv1086.1 = trunc i64 %726 to i32
  %arrayidx1089.1 = getelementptr i32, ptr %p, i32 1023
  %727 = ptrtoint ptr %arrayidx1089.1 to i32
  call void @__asan_store4_noabort(i32 %727)
  store i32 %conv1086.1, ptr %arrayidx1089.1, align 4
  %arrayidx1085.2 = getelementptr i8, ptr %netdev, i32 9152
  %728 = ptrtoint ptr %arrayidx1085.2 to i32
  call void @__asan_load8_noabort(i32 %728)
  %729 = load i64, ptr %arrayidx1085.2, align 8
  %conv1086.2 = trunc i64 %729 to i32
  %arrayidx1089.2 = getelementptr i32, ptr %p, i32 1024
  %730 = ptrtoint ptr %arrayidx1089.2 to i32
  call void @__asan_store4_noabort(i32 %730)
  store i32 %conv1086.2, ptr %arrayidx1089.2, align 4
  %arrayidx1085.3 = getelementptr i8, ptr %netdev, i32 9160
  %731 = ptrtoint ptr %arrayidx1085.3 to i32
  call void @__asan_load8_noabort(i32 %731)
  %732 = load i64, ptr %arrayidx1085.3, align 8
  %conv1086.3 = trunc i64 %732 to i32
  %arrayidx1089.3 = getelementptr i32, ptr %p, i32 1025
  %733 = ptrtoint ptr %arrayidx1089.3 to i32
  call void @__asan_store4_noabort(i32 %733)
  store i32 %conv1086.3, ptr %arrayidx1089.3, align 4
  %arrayidx1085.4 = getelementptr i8, ptr %netdev, i32 9168
  %734 = ptrtoint ptr %arrayidx1085.4 to i32
  call void @__asan_load8_noabort(i32 %734)
  %735 = load i64, ptr %arrayidx1085.4, align 8
  %conv1086.4 = trunc i64 %735 to i32
  %arrayidx1089.4 = getelementptr i32, ptr %p, i32 1026
  %736 = ptrtoint ptr %arrayidx1089.4 to i32
  call void @__asan_store4_noabort(i32 %736)
  store i32 %conv1086.4, ptr %arrayidx1089.4, align 4
  %arrayidx1085.5 = getelementptr i8, ptr %netdev, i32 9176
  %737 = ptrtoint ptr %arrayidx1085.5 to i32
  call void @__asan_load8_noabort(i32 %737)
  %738 = load i64, ptr %arrayidx1085.5, align 8
  %conv1086.5 = trunc i64 %738 to i32
  %arrayidx1089.5 = getelementptr i32, ptr %p, i32 1027
  %739 = ptrtoint ptr %arrayidx1089.5 to i32
  call void @__asan_store4_noabort(i32 %739)
  store i32 %conv1086.5, ptr %arrayidx1089.5, align 4
  %arrayidx1085.6 = getelementptr i8, ptr %netdev, i32 9184
  %740 = ptrtoint ptr %arrayidx1085.6 to i32
  call void @__asan_load8_noabort(i32 %740)
  %741 = load i64, ptr %arrayidx1085.6, align 8
  %conv1086.6 = trunc i64 %741 to i32
  %arrayidx1089.6 = getelementptr i32, ptr %p, i32 1028
  %742 = ptrtoint ptr %arrayidx1089.6 to i32
  call void @__asan_store4_noabort(i32 %742)
  store i32 %conv1086.6, ptr %arrayidx1089.6, align 4
  %arrayidx1085.7 = getelementptr i8, ptr %netdev, i32 9192
  %743 = ptrtoint ptr %arrayidx1085.7 to i32
  call void @__asan_load8_noabort(i32 %743)
  %744 = load i64, ptr %arrayidx1085.7, align 8
  %conv1086.7 = trunc i64 %744 to i32
  %arrayidx1089.7 = getelementptr i32, ptr %p, i32 1029
  %745 = ptrtoint ptr %arrayidx1089.7 to i32
  call void @__asan_store4_noabort(i32 %745)
  store i32 %conv1086.7, ptr %arrayidx1089.7, align 4
  %arrayidx1085.8 = getelementptr i8, ptr %netdev, i32 9200
  %746 = ptrtoint ptr %arrayidx1085.8 to i32
  call void @__asan_load8_noabort(i32 %746)
  %747 = load i64, ptr %arrayidx1085.8, align 8
  %conv1086.8 = trunc i64 %747 to i32
  %arrayidx1089.8 = getelementptr i32, ptr %p, i32 1030
  %748 = ptrtoint ptr %arrayidx1089.8 to i32
  call void @__asan_store4_noabort(i32 %748)
  store i32 %conv1086.8, ptr %arrayidx1089.8, align 4
  %arrayidx1085.9 = getelementptr i8, ptr %netdev, i32 9208
  %749 = ptrtoint ptr %arrayidx1085.9 to i32
  call void @__asan_load8_noabort(i32 %749)
  %750 = load i64, ptr %arrayidx1085.9, align 8
  %conv1086.9 = trunc i64 %750 to i32
  %arrayidx1089.9 = getelementptr i32, ptr %p, i32 1031
  %751 = ptrtoint ptr %arrayidx1089.9 to i32
  call void @__asan_store4_noabort(i32 %751)
  store i32 %conv1086.9, ptr %arrayidx1089.9, align 4
  %arrayidx1085.10 = getelementptr i8, ptr %netdev, i32 9216
  %752 = ptrtoint ptr %arrayidx1085.10 to i32
  call void @__asan_load8_noabort(i32 %752)
  %753 = load i64, ptr %arrayidx1085.10, align 8
  %conv1086.10 = trunc i64 %753 to i32
  %arrayidx1089.10 = getelementptr i32, ptr %p, i32 1032
  %754 = ptrtoint ptr %arrayidx1089.10 to i32
  call void @__asan_store4_noabort(i32 %754)
  store i32 %conv1086.10, ptr %arrayidx1089.10, align 4
  %arrayidx1085.11 = getelementptr i8, ptr %netdev, i32 9224
  %755 = ptrtoint ptr %arrayidx1085.11 to i32
  call void @__asan_load8_noabort(i32 %755)
  %756 = load i64, ptr %arrayidx1085.11, align 8
  %conv1086.11 = trunc i64 %756 to i32
  %arrayidx1089.11 = getelementptr i32, ptr %p, i32 1033
  %757 = ptrtoint ptr %arrayidx1089.11 to i32
  call void @__asan_store4_noabort(i32 %757)
  store i32 %conv1086.11, ptr %arrayidx1089.11, align 4
  %arrayidx1085.12 = getelementptr i8, ptr %netdev, i32 9232
  %758 = ptrtoint ptr %arrayidx1085.12 to i32
  call void @__asan_load8_noabort(i32 %758)
  %759 = load i64, ptr %arrayidx1085.12, align 8
  %conv1086.12 = trunc i64 %759 to i32
  %arrayidx1089.12 = getelementptr i32, ptr %p, i32 1034
  %760 = ptrtoint ptr %arrayidx1089.12 to i32
  call void @__asan_store4_noabort(i32 %760)
  store i32 %conv1086.12, ptr %arrayidx1089.12, align 4
  %arrayidx1085.13 = getelementptr i8, ptr %netdev, i32 9240
  %761 = ptrtoint ptr %arrayidx1085.13 to i32
  call void @__asan_load8_noabort(i32 %761)
  %762 = load i64, ptr %arrayidx1085.13, align 8
  %conv1086.13 = trunc i64 %762 to i32
  %arrayidx1089.13 = getelementptr i32, ptr %p, i32 1035
  %763 = ptrtoint ptr %arrayidx1089.13 to i32
  call void @__asan_store4_noabort(i32 %763)
  store i32 %conv1086.13, ptr %arrayidx1089.13, align 4
  %arrayidx1085.14 = getelementptr i8, ptr %netdev, i32 9248
  %764 = ptrtoint ptr %arrayidx1085.14 to i32
  call void @__asan_load8_noabort(i32 %764)
  %765 = load i64, ptr %arrayidx1085.14, align 8
  %conv1086.14 = trunc i64 %765 to i32
  %arrayidx1089.14 = getelementptr i32, ptr %p, i32 1036
  %766 = ptrtoint ptr %arrayidx1089.14 to i32
  call void @__asan_store4_noabort(i32 %766)
  store i32 %conv1086.14, ptr %arrayidx1089.14, align 4
  %arrayidx1085.15 = getelementptr i8, ptr %netdev, i32 9256
  %767 = ptrtoint ptr %arrayidx1085.15 to i32
  call void @__asan_load8_noabort(i32 %767)
  %768 = load i64, ptr %arrayidx1085.15, align 8
  %conv1086.15 = trunc i64 %768 to i32
  %arrayidx1089.15 = getelementptr i32, ptr %p, i32 1037
  %769 = ptrtoint ptr %arrayidx1089.15 to i32
  call void @__asan_store4_noabort(i32 %769)
  store i32 %conv1086.15, ptr %arrayidx1089.15, align 4
  %call1093 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16896) #19
  %arrayidx1094 = getelementptr i32, ptr %p, i32 1038
  %770 = ptrtoint ptr %arrayidx1094 to i32
  call void @__asan_store4_noabort(i32 %770)
  store i32 %call1093, ptr %arrayidx1094, align 4
  %call1095 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16904) #19
  %arrayidx1096 = getelementptr i32, ptr %p, i32 1039
  %771 = ptrtoint ptr %arrayidx1096 to i32
  call void @__asan_store4_noabort(i32 %771)
  store i32 %call1095, ptr %arrayidx1096, align 4
  %call1097 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16908) #19
  %arrayidx1098 = getelementptr i32, ptr %p, i32 1040
  %772 = ptrtoint ptr %arrayidx1098 to i32
  call void @__asan_store4_noabort(i32 %772)
  store i32 %call1097, ptr %arrayidx1098, align 4
  %call1099 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16912) #19
  %arrayidx1100 = getelementptr i32, ptr %p, i32 1041
  %773 = ptrtoint ptr %arrayidx1100 to i32
  call void @__asan_store4_noabort(i32 %773)
  store i32 %call1099, ptr %arrayidx1100, align 4
  %call1101 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16916) #19
  %arrayidx1102 = getelementptr i32, ptr %p, i32 1042
  %774 = ptrtoint ptr %arrayidx1102 to i32
  call void @__asan_store4_noabort(i32 %774)
  store i32 %call1101, ptr %arrayidx1102, align 4
  %call1103 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16920) #19
  %arrayidx1104 = getelementptr i32, ptr %p, i32 1043
  %775 = ptrtoint ptr %arrayidx1104 to i32
  call void @__asan_store4_noabort(i32 %775)
  store i32 %call1103, ptr %arrayidx1104, align 4
  %call1105 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16924) #19
  %arrayidx1106 = getelementptr i32, ptr %p, i32 1044
  %776 = ptrtoint ptr %arrayidx1106 to i32
  call void @__asan_store4_noabort(i32 %776)
  store i32 %call1105, ptr %arrayidx1106, align 4
  %call1107 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16928) #19
  %arrayidx1108 = getelementptr i32, ptr %p, i32 1045
  %777 = ptrtoint ptr %arrayidx1108 to i32
  call void @__asan_store4_noabort(i32 %777)
  store i32 %call1107, ptr %arrayidx1108, align 4
  %call1109 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16932) #19
  %arrayidx1110 = getelementptr i32, ptr %p, i32 1046
  %778 = ptrtoint ptr %arrayidx1110 to i32
  call void @__asan_store4_noabort(i32 %778)
  store i32 %call1109, ptr %arrayidx1110, align 4
  %call1111 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16960) #19
  %arrayidx1112 = getelementptr i32, ptr %p, i32 1047
  %779 = ptrtoint ptr %arrayidx1112 to i32
  call void @__asan_store4_noabort(i32 %779)
  store i32 %call1111, ptr %arrayidx1112, align 4
  %call1113 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16964) #19
  %arrayidx1114 = getelementptr i32, ptr %p, i32 1048
  %780 = ptrtoint ptr %arrayidx1114 to i32
  call void @__asan_store4_noabort(i32 %780)
  store i32 %call1113, ptr %arrayidx1114, align 4
  %call1115 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16968) #19
  %arrayidx1116 = getelementptr i32, ptr %p, i32 1049
  %781 = ptrtoint ptr %arrayidx1116 to i32
  call void @__asan_store4_noabort(i32 %781)
  store i32 %call1115, ptr %arrayidx1116, align 4
  %call1117 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16972) #19
  %arrayidx1118 = getelementptr i32, ptr %p, i32 1050
  %782 = ptrtoint ptr %arrayidx1118 to i32
  call void @__asan_store4_noabort(i32 %782)
  store i32 %call1117, ptr %arrayidx1118, align 4
  %call1119 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16976) #19
  %arrayidx1120 = getelementptr i32, ptr %p, i32 1051
  %783 = ptrtoint ptr %arrayidx1120 to i32
  call void @__asan_store4_noabort(i32 %783)
  store i32 %call1119, ptr %arrayidx1120, align 4
  %call1121 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16980) #19
  %arrayidx1122 = getelementptr i32, ptr %p, i32 1052
  %784 = ptrtoint ptr %arrayidx1122 to i32
  call void @__asan_store4_noabort(i32 %784)
  store i32 %call1121, ptr %arrayidx1122, align 4
  %call1123 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16984) #19
  %arrayidx1124 = getelementptr i32, ptr %p, i32 1053
  %785 = ptrtoint ptr %arrayidx1124 to i32
  call void @__asan_store4_noabort(i32 %785)
  store i32 %call1123, ptr %arrayidx1124, align 4
  %call1125 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16988) #19
  %arrayidx1126 = getelementptr i32, ptr %p, i32 1054
  %786 = ptrtoint ptr %arrayidx1126 to i32
  call void @__asan_store4_noabort(i32 %786)
  store i32 %call1125, ptr %arrayidx1126, align 4
  %call1127 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16992) #19
  %arrayidx1128 = getelementptr i32, ptr %p, i32 1055
  %787 = ptrtoint ptr %arrayidx1128 to i32
  call void @__asan_store4_noabort(i32 %787)
  store i32 %call1127, ptr %arrayidx1128, align 4
  %call1129 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16996) #19
  %arrayidx1130 = getelementptr i32, ptr %p, i32 1056
  %788 = ptrtoint ptr %arrayidx1130 to i32
  call void @__asan_store4_noabort(i32 %788)
  store i32 %call1129, ptr %arrayidx1130, align 4
  %call1131 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17000) #19
  %arrayidx1132 = getelementptr i32, ptr %p, i32 1057
  %789 = ptrtoint ptr %arrayidx1132 to i32
  call void @__asan_store4_noabort(i32 %789)
  store i32 %call1131, ptr %arrayidx1132, align 4
  %call1133 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17004) #19
  %arrayidx1134 = getelementptr i32, ptr %p, i32 1058
  %790 = ptrtoint ptr %arrayidx1134 to i32
  call void @__asan_store4_noabort(i32 %790)
  store i32 %call1133, ptr %arrayidx1134, align 4
  %call1135 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17032) #19
  %arrayidx1136 = getelementptr i32, ptr %p, i32 1059
  %791 = ptrtoint ptr %arrayidx1136 to i32
  call void @__asan_store4_noabort(i32 %791)
  store i32 %call1135, ptr %arrayidx1136, align 4
  %call1137 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17036) #19
  %arrayidx1138 = getelementptr i32, ptr %p, i32 1060
  %792 = ptrtoint ptr %arrayidx1138 to i32
  call void @__asan_store4_noabort(i32 %792)
  store i32 %call1137, ptr %arrayidx1138, align 4
  %call1139 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17040) #19
  %arrayidx1140 = getelementptr i32, ptr %p, i32 1061
  %793 = ptrtoint ptr %arrayidx1140 to i32
  call void @__asan_store4_noabort(i32 %793)
  store i32 %call1139, ptr %arrayidx1140, align 4
  %call1141 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17048) #19
  %arrayidx1142 = getelementptr i32, ptr %p, i32 1062
  %794 = ptrtoint ptr %arrayidx1142 to i32
  call void @__asan_store4_noabort(i32 %794)
  store i32 %call1141, ptr %arrayidx1142, align 4
  %call1143 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17052) #19
  %arrayidx1144 = getelementptr i32, ptr %p, i32 1063
  %795 = ptrtoint ptr %arrayidx1144 to i32
  call void @__asan_store4_noabort(i32 %795)
  store i32 %call1143, ptr %arrayidx1144, align 4
  %call1145 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17056) #19
  %arrayidx1146 = getelementptr i32, ptr %p, i32 1064
  %796 = ptrtoint ptr %arrayidx1146 to i32
  call void @__asan_store4_noabort(i32 %796)
  store i32 %call1145, ptr %arrayidx1146, align 4
  %call1147 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17060) #19
  %arrayidx1148 = getelementptr i32, ptr %p, i32 1065
  %797 = ptrtoint ptr %arrayidx1148 to i32
  call void @__asan_store4_noabort(i32 %797)
  store i32 %call1147, ptr %arrayidx1148, align 4
  %call1149 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17064) #19
  %arrayidx1150 = getelementptr i32, ptr %p, i32 1066
  %798 = ptrtoint ptr %arrayidx1150 to i32
  call void @__asan_store4_noabort(i32 %798)
  store i32 %call1149, ptr %arrayidx1150, align 4
  %call1151 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17068) #19
  %arrayidx1152 = getelementptr i32, ptr %p, i32 1067
  %799 = ptrtoint ptr %arrayidx1152 to i32
  call void @__asan_store4_noabort(i32 %799)
  store i32 %call1151, ptr %arrayidx1152, align 4
  %call1153 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17072) #19
  %arrayidx1154 = getelementptr i32, ptr %p, i32 1068
  %800 = ptrtoint ptr %arrayidx1154 to i32
  call void @__asan_store4_noabort(i32 %800)
  store i32 %call1153, ptr %arrayidx1154, align 4
  %call1155 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17076) #19
  %arrayidx1156 = getelementptr i32, ptr %p, i32 1069
  %801 = ptrtoint ptr %arrayidx1156 to i32
  call void @__asan_store4_noabort(i32 %801)
  store i32 %call1155, ptr %arrayidx1156, align 4
  %call1157 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 18432) #19
  %arrayidx1158 = getelementptr i32, ptr %p, i32 1070
  %802 = ptrtoint ptr %arrayidx1158 to i32
  call void @__asan_store4_noabort(i32 %802)
  store i32 %call1157, ptr %arrayidx1158, align 4
  %call1159 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 11296) #19
  %arrayidx1160 = getelementptr i32, ptr %p, i32 1071
  %803 = ptrtoint ptr %arrayidx1160 to i32
  call void @__asan_store4_noabort(i32 %803)
  store i32 %call1159, ptr %arrayidx1160, align 4
  %call1169 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 11264) #19
  %arrayidx1172 = getelementptr i32, ptr %p, i32 1072
  %804 = ptrtoint ptr %arrayidx1172 to i32
  call void @__asan_store4_noabort(i32 %804)
  store i32 %call1169, ptr %arrayidx1172, align 4
  %call1169.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 11268) #19
  %arrayidx1172.1 = getelementptr i32, ptr %p, i32 1073
  %805 = ptrtoint ptr %arrayidx1172.1 to i32
  call void @__asan_store4_noabort(i32 %805)
  store i32 %call1169.1, ptr %arrayidx1172.1, align 4
  %call1169.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 11272) #19
  %arrayidx1172.2 = getelementptr i32, ptr %p, i32 1074
  %806 = ptrtoint ptr %arrayidx1172.2 to i32
  call void @__asan_store4_noabort(i32 %806)
  store i32 %call1169.2, ptr %arrayidx1172.2, align 4
  %call1169.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 11276) #19
  %arrayidx1172.3 = getelementptr i32, ptr %p, i32 1075
  %807 = ptrtoint ptr %arrayidx1172.3 to i32
  call void @__asan_store4_noabort(i32 %807)
  store i32 %call1169.3, ptr %arrayidx1172.3, align 4
  %call1169.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 11280) #19
  %arrayidx1172.4 = getelementptr i32, ptr %p, i32 1076
  %808 = ptrtoint ptr %arrayidx1172.4 to i32
  call void @__asan_store4_noabort(i32 %808)
  store i32 %call1169.4, ptr %arrayidx1172.4, align 4
  %call1169.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 11284) #19
  %arrayidx1172.5 = getelementptr i32, ptr %p, i32 1077
  %809 = ptrtoint ptr %arrayidx1172.5 to i32
  call void @__asan_store4_noabort(i32 %809)
  store i32 %call1169.5, ptr %arrayidx1172.5, align 4
  %call1169.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 11288) #19
  %arrayidx1172.6 = getelementptr i32, ptr %p, i32 1078
  %810 = ptrtoint ptr %arrayidx1172.6 to i32
  call void @__asan_store4_noabort(i32 %810)
  store i32 %call1169.6, ptr %arrayidx1172.6, align 4
  %call1169.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 11292) #19
  %arrayidx1172.7 = getelementptr i32, ptr %p, i32 1079
  %811 = ptrtoint ptr %arrayidx1172.7 to i32
  call void @__asan_store4_noabort(i32 %811)
  store i32 %call1169.7, ptr %arrayidx1172.7, align 4
  %call1176 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12040) #19
  %arrayidx1177 = getelementptr i32, ptr %p, i32 1080
  %812 = ptrtoint ptr %arrayidx1177 to i32
  call void @__asan_store4_noabort(i32 %812)
  store i32 %call1176, ptr %arrayidx1177, align 4
  %call1186 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12048) #19
  %arrayidx1189 = getelementptr i32, ptr %p, i32 1081
  %813 = ptrtoint ptr %arrayidx1189 to i32
  call void @__asan_store4_noabort(i32 %813)
  store i32 %call1186, ptr %arrayidx1189, align 4
  %call1186.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12052) #19
  %arrayidx1189.1 = getelementptr i32, ptr %p, i32 1082
  %814 = ptrtoint ptr %arrayidx1189.1 to i32
  call void @__asan_store4_noabort(i32 %814)
  store i32 %call1186.1, ptr %arrayidx1189.1, align 4
  %call1186.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12056) #19
  %arrayidx1189.2 = getelementptr i32, ptr %p, i32 1083
  %815 = ptrtoint ptr %arrayidx1189.2 to i32
  call void @__asan_store4_noabort(i32 %815)
  store i32 %call1186.2, ptr %arrayidx1189.2, align 4
  %call1186.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12060) #19
  %arrayidx1189.3 = getelementptr i32, ptr %p, i32 1084
  %816 = ptrtoint ptr %arrayidx1189.3 to i32
  call void @__asan_store4_noabort(i32 %816)
  store i32 %call1186.3, ptr %arrayidx1189.3, align 4
  %call1193 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12064) #19
  %arrayidx1194 = getelementptr i32, ptr %p, i32 1085
  %817 = ptrtoint ptr %arrayidx1194 to i32
  call void @__asan_store4_noabort(i32 %817)
  store i32 %call1193, ptr %arrayidx1194, align 4
  %call1195 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 31776) #19
  %arrayidx1196 = getelementptr i32, ptr %p, i32 1086
  %818 = ptrtoint ptr %arrayidx1196 to i32
  call void @__asan_store4_noabort(i32 %818)
  store i32 %call1195, ptr %arrayidx1196, align 4
  %call1205 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 31744) #19
  %arrayidx1208 = getelementptr i32, ptr %p, i32 1087
  %819 = ptrtoint ptr %arrayidx1208 to i32
  call void @__asan_store4_noabort(i32 %819)
  store i32 %call1205, ptr %arrayidx1208, align 4
  %call1205.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 31748) #19
  %arrayidx1208.1 = getelementptr i32, ptr %p, i32 1088
  %820 = ptrtoint ptr %arrayidx1208.1 to i32
  call void @__asan_store4_noabort(i32 %820)
  store i32 %call1205.1, ptr %arrayidx1208.1, align 4
  %call1205.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 31752) #19
  %arrayidx1208.2 = getelementptr i32, ptr %p, i32 1089
  %821 = ptrtoint ptr %arrayidx1208.2 to i32
  call void @__asan_store4_noabort(i32 %821)
  store i32 %call1205.2, ptr %arrayidx1208.2, align 4
  %call1205.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 31756) #19
  %arrayidx1208.3 = getelementptr i32, ptr %p, i32 1090
  %822 = ptrtoint ptr %arrayidx1208.3 to i32
  call void @__asan_store4_noabort(i32 %822)
  store i32 %call1205.3, ptr %arrayidx1208.3, align 4
  %call1205.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 31760) #19
  %arrayidx1208.4 = getelementptr i32, ptr %p, i32 1091
  %823 = ptrtoint ptr %arrayidx1208.4 to i32
  call void @__asan_store4_noabort(i32 %823)
  store i32 %call1205.4, ptr %arrayidx1208.4, align 4
  %call1205.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 31764) #19
  %arrayidx1208.5 = getelementptr i32, ptr %p, i32 1092
  %824 = ptrtoint ptr %arrayidx1208.5 to i32
  call void @__asan_store4_noabort(i32 %824)
  store i32 %call1205.5, ptr %arrayidx1208.5, align 4
  %call1205.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 31768) #19
  %arrayidx1208.6 = getelementptr i32, ptr %p, i32 1093
  %825 = ptrtoint ptr %arrayidx1208.6 to i32
  call void @__asan_store4_noabort(i32 %825)
  store i32 %call1205.6, ptr %arrayidx1208.6, align 4
  %call1205.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 31772) #19
  %arrayidx1208.7 = getelementptr i32, ptr %p, i32 1094
  %826 = ptrtoint ptr %arrayidx1208.7 to i32
  call void @__asan_store4_noabort(i32 %826)
  store i32 %call1205.7, ptr %arrayidx1208.7, align 4
  %call1212 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 32520) #19
  %arrayidx1213 = getelementptr i32, ptr %p, i32 1095
  %827 = ptrtoint ptr %arrayidx1213 to i32
  call void @__asan_store4_noabort(i32 %827)
  store i32 %call1212, ptr %arrayidx1213, align 4
  %call1222 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 32528) #19
  %arrayidx1225 = getelementptr i32, ptr %p, i32 1096
  %828 = ptrtoint ptr %arrayidx1225 to i32
  call void @__asan_store4_noabort(i32 %828)
  store i32 %call1222, ptr %arrayidx1225, align 4
  %call1222.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 32532) #19
  %arrayidx1225.1 = getelementptr i32, ptr %p, i32 1097
  %829 = ptrtoint ptr %arrayidx1225.1 to i32
  call void @__asan_store4_noabort(i32 %829)
  store i32 %call1222.1, ptr %arrayidx1225.1, align 4
  %call1222.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 32536) #19
  %arrayidx1225.2 = getelementptr i32, ptr %p, i32 1098
  %830 = ptrtoint ptr %arrayidx1225.2 to i32
  call void @__asan_store4_noabort(i32 %830)
  store i32 %call1222.2, ptr %arrayidx1225.2, align 4
  %call1222.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 32540) #19
  %arrayidx1225.3 = getelementptr i32, ptr %p, i32 1099
  %831 = ptrtoint ptr %arrayidx1225.3 to i32
  call void @__asan_store4_noabort(i32 %831)
  store i32 %call1222.3, ptr %arrayidx1225.3, align 4
  %call1229 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 32544) #19
  %arrayidx1230 = getelementptr i32, ptr %p, i32 1100
  %832 = ptrtoint ptr %arrayidx1230 to i32
  call void @__asan_store4_noabort(i32 %832)
  store i32 %call1229, ptr %arrayidx1230, align 4
  %call1231 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 50688) #19
  %arrayidx1232 = getelementptr i32, ptr %p, i32 1101
  %833 = ptrtoint ptr %arrayidx1232 to i32
  call void @__asan_store4_noabort(i32 %833)
  store i32 %call1231, ptr %arrayidx1232, align 4
  %call1241 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 50704) #19
  %arrayidx1244 = getelementptr i32, ptr %p, i32 1102
  %834 = ptrtoint ptr %arrayidx1244 to i32
  call void @__asan_store4_noabort(i32 %834)
  store i32 %call1241, ptr %arrayidx1244, align 4
  %call1241.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 50708) #19
  %arrayidx1244.1 = getelementptr i32, ptr %p, i32 1103
  %835 = ptrtoint ptr %arrayidx1244.1 to i32
  call void @__asan_store4_noabort(i32 %835)
  store i32 %call1241.1, ptr %arrayidx1244.1, align 4
  %call1241.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 50712) #19
  %arrayidx1244.2 = getelementptr i32, ptr %p, i32 1104
  %836 = ptrtoint ptr %arrayidx1244.2 to i32
  call void @__asan_store4_noabort(i32 %836)
  store i32 %call1241.2, ptr %arrayidx1244.2, align 4
  %call1241.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 50716) #19
  %arrayidx1244.3 = getelementptr i32, ptr %p, i32 1105
  %837 = ptrtoint ptr %arrayidx1244.3 to i32
  call void @__asan_store4_noabort(i32 %837)
  store i32 %call1241.3, ptr %arrayidx1244.3, align 4
  %call1248 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 13824) #19
  %arrayidx1249 = getelementptr i32, ptr %p, i32 1106
  %838 = ptrtoint ptr %arrayidx1249 to i32
  call void @__asan_store4_noabort(i32 %838)
  store i32 %call1248, ptr %arrayidx1249, align 4
  %call1258 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 13840) #19
  %arrayidx1261 = getelementptr i32, ptr %p, i32 1107
  %839 = ptrtoint ptr %arrayidx1261 to i32
  call void @__asan_store4_noabort(i32 %839)
  store i32 %call1258, ptr %arrayidx1261, align 4
  %call1258.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 13844) #19
  %arrayidx1261.1 = getelementptr i32, ptr %p, i32 1108
  %840 = ptrtoint ptr %arrayidx1261.1 to i32
  call void @__asan_store4_noabort(i32 %840)
  store i32 %call1258.1, ptr %arrayidx1261.1, align 4
  %call1258.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 13848) #19
  %arrayidx1261.2 = getelementptr i32, ptr %p, i32 1109
  %841 = ptrtoint ptr %arrayidx1261.2 to i32
  call void @__asan_store4_noabort(i32 %841)
  store i32 %call1258.2, ptr %arrayidx1261.2, align 4
  %call1258.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 13852) #19
  %arrayidx1261.3 = getelementptr i32, ptr %p, i32 1110
  %842 = ptrtoint ptr %arrayidx1261.3 to i32
  call void @__asan_store4_noabort(i32 %842)
  store i32 %call1258.3, ptr %arrayidx1261.3, align 4
  %call1273 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 69776) #19
  %arrayidx1276 = getelementptr i32, ptr %p, i32 1111
  %843 = ptrtoint ptr %arrayidx1276 to i32
  call void @__asan_store4_noabort(i32 %843)
  store i32 %call1273, ptr %arrayidx1276, align 4
  %call1273.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 69780) #19
  %arrayidx1276.1 = getelementptr i32, ptr %p, i32 1112
  %844 = ptrtoint ptr %arrayidx1276.1 to i32
  call void @__asan_store4_noabort(i32 %844)
  store i32 %call1273.1, ptr %arrayidx1276.1, align 4
  %call1273.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 69784) #19
  %arrayidx1276.2 = getelementptr i32, ptr %p, i32 1113
  %845 = ptrtoint ptr %arrayidx1276.2 to i32
  call void @__asan_store4_noabort(i32 %845)
  store i32 %call1273.2, ptr %arrayidx1276.2, align 4
  %call1273.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 69788) #19
  %arrayidx1276.3 = getelementptr i32, ptr %p, i32 1114
  %846 = ptrtoint ptr %arrayidx1276.3 to i32
  call void @__asan_store4_noabort(i32 %846)
  store i32 %call1273.3, ptr %arrayidx1276.3, align 4
  %call1273.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 69792) #19
  %arrayidx1276.4 = getelementptr i32, ptr %p, i32 1115
  %847 = ptrtoint ptr %arrayidx1276.4 to i32
  call void @__asan_store4_noabort(i32 %847)
  store i32 %call1273.4, ptr %arrayidx1276.4, align 4
  %call1273.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 69796) #19
  %arrayidx1276.5 = getelementptr i32, ptr %p, i32 1116
  %848 = ptrtoint ptr %arrayidx1276.5 to i32
  call void @__asan_store4_noabort(i32 %848)
  store i32 %call1273.5, ptr %arrayidx1276.5, align 4
  %call1273.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 69800) #19
  %arrayidx1276.6 = getelementptr i32, ptr %p, i32 1117
  %849 = ptrtoint ptr %arrayidx1276.6 to i32
  call void @__asan_store4_noabort(i32 %849)
  store i32 %call1273.6, ptr %arrayidx1276.6, align 4
  %call1273.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 69804) #19
  %arrayidx1276.7 = getelementptr i32, ptr %p, i32 1118
  %850 = ptrtoint ptr %arrayidx1276.7 to i32
  call void @__asan_store4_noabort(i32 %850)
  store i32 %call1273.7, ptr %arrayidx1276.7, align 4
  %call1280 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 20644) #19
  %arrayidx1281 = getelementptr i32, ptr %p, i32 1119
  %851 = ptrtoint ptr %arrayidx1281 to i32
  call void @__asan_store4_noabort(i32 %851)
  store i32 %call1280, ptr %arrayidx1281, align 4
  %call1282 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17080) #19
  %arrayidx1283 = getelementptr i32, ptr %p, i32 1120
  %852 = ptrtoint ptr %arrayidx1283 to i32
  call void @__asan_store4_noabort(i32 %852)
  store i32 %call1282, ptr %arrayidx1283, align 4
  %call1284 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17088) #19
  %arrayidx1285 = getelementptr i32, ptr %p, i32 1121
  %853 = ptrtoint ptr %arrayidx1285 to i32
  call void @__asan_store4_noabort(i32 %853)
  store i32 %call1284, ptr %arrayidx1285, align 4
  %call1286 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17092) #19
  %arrayidx1287 = getelementptr i32, ptr %p, i32 1122
  %854 = ptrtoint ptr %arrayidx1287 to i32
  call void @__asan_store4_noabort(i32 %854)
  store i32 %call1286, ptr %arrayidx1287, align 4
  %call1288 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17096) #19
  %arrayidx1289 = getelementptr i32, ptr %p, i32 1123
  %855 = ptrtoint ptr %arrayidx1289 to i32
  call void @__asan_store4_noabort(i32 %855)
  store i32 %call1288, ptr %arrayidx1289, align 4
  %call1290 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17100) #19
  %arrayidx1291 = getelementptr i32, ptr %p, i32 1124
  %856 = ptrtoint ptr %arrayidx1291 to i32
  call void @__asan_store4_noabort(i32 %856)
  store i32 %call1290, ptr %arrayidx1291, align 4
  %call1292 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 69740) #19
  %arrayidx1293 = getelementptr i32, ptr %p, i32 1125
  %857 = ptrtoint ptr %arrayidx1293 to i32
  call void @__asan_store4_noabort(i32 %857)
  store i32 %call1292, ptr %arrayidx1293, align 4
  %call1294 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 49920) #19
  %arrayidx1295 = getelementptr i32, ptr %p, i32 1126
  %858 = ptrtoint ptr %arrayidx1295 to i32
  call void @__asan_store4_noabort(i32 %858)
  store i32 %call1294, ptr %arrayidx1295, align 4
  %call1296 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 13056) #19
  %arrayidx1297 = getelementptr i32, ptr %p, i32 1127
  %859 = ptrtoint ptr %arrayidx1297 to i32
  call void @__asan_store4_noabort(i32 %859)
  store i32 %call1296, ptr %arrayidx1297, align 4
  %call1298 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17044) #19
  %arrayidx1299 = getelementptr i32, ptr %p, i32 1128
  %860 = ptrtoint ptr %arrayidx1299 to i32
  call void @__asan_store4_noabort(i32 %860)
  store i32 %call1298, ptr %arrayidx1299, align 4
  %call1300 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 12320) #19
  %arrayidx1301 = getelementptr i32, ptr %p, i32 1129
  %861 = ptrtoint ptr %arrayidx1301 to i32
  call void @__asan_store4_noabort(i32 %861)
  store i32 %call1300, ptr %arrayidx1301, align 4
  %call1302 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 51200) #19
  %arrayidx1303 = getelementptr i32, ptr %p, i32 1130
  %862 = ptrtoint ptr %arrayidx1303 to i32
  call void @__asan_store4_noabort(i32 %862)
  store i32 %call1302, ptr %arrayidx1303, align 4
  %call1312 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 33504) #19
  %arrayidx1315 = getelementptr i32, ptr %p, i32 1131
  %863 = ptrtoint ptr %arrayidx1315 to i32
  call void @__asan_store4_noabort(i32 %863)
  store i32 %call1312, ptr %arrayidx1315, align 4
  %call1312.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 33508) #19
  %arrayidx1315.1 = getelementptr i32, ptr %p, i32 1132
  %864 = ptrtoint ptr %arrayidx1315.1 to i32
  call void @__asan_store4_noabort(i32 %864)
  store i32 %call1312.1, ptr %arrayidx1315.1, align 4
  %call1312.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 33512) #19
  %arrayidx1315.2 = getelementptr i32, ptr %p, i32 1133
  %865 = ptrtoint ptr %arrayidx1315.2 to i32
  call void @__asan_store4_noabort(i32 %865)
  store i32 %call1312.2, ptr %arrayidx1315.2, align 4
  %call1312.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 33516) #19
  %arrayidx1315.3 = getelementptr i32, ptr %p, i32 1134
  %866 = ptrtoint ptr %arrayidx1315.3 to i32
  call void @__asan_store4_noabort(i32 %866)
  store i32 %call1312.3, ptr %arrayidx1315.3, align 4
  %call1319 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 18816) #19
  %arrayidx1320 = getelementptr i32, ptr %p, i32 1135
  %867 = ptrtoint ptr %arrayidx1320 to i32
  call void @__asan_store4_noabort(i32 %867)
  store i32 %call1319, ptr %arrayidx1320, align 4
  %call1321 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 18828) #19
  %arrayidx1322 = getelementptr i32, ptr %p, i32 1136
  %868 = ptrtoint ptr %arrayidx1322 to i32
  call void @__asan_store4_noabort(i32 %868)
  store i32 %call1321, ptr %arrayidx1322, align 4
  %call1323 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35584) #19
  %arrayidx1324 = getelementptr i32, ptr %p, i32 1137
  %869 = ptrtoint ptr %arrayidx1324 to i32
  call void @__asan_store4_noabort(i32 %869)
  store i32 %call1323, ptr %arrayidx1324, align 4
  %call1325 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 19088) #19
  %arrayidx1326 = getelementptr i32, ptr %p, i32 1138
  %870 = ptrtoint ptr %arrayidx1326 to i32
  call void @__asan_store4_noabort(i32 %870)
  store i32 %call1325, ptr %arrayidx1326, align 4
  %call1327 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 34816) #19
  %arrayidx1328 = getelementptr i32, ptr %p, i32 1139
  %871 = ptrtoint ptr %arrayidx1328 to i32
  call void @__asan_store4_noabort(i32 %871)
  store i32 %call1327, ptr %arrayidx1328, align 4
  %call1329 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 34820) #19
  %arrayidx1330 = getelementptr i32, ptr %p, i32 1140
  %872 = ptrtoint ptr %arrayidx1330 to i32
  call void @__asan_store4_noabort(i32 %872)
  store i32 %call1329, ptr %arrayidx1330, align 4
  %call1331 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 34824) #19
  %arrayidx1332 = getelementptr i32, ptr %p, i32 1141
  %873 = ptrtoint ptr %arrayidx1332 to i32
  call void @__asan_store4_noabort(i32 %873)
  store i32 %call1331, ptr %arrayidx1332, align 4
  %call1333 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 34832) #19
  %arrayidx1334 = getelementptr i32, ptr %p, i32 1142
  %874 = ptrtoint ptr %arrayidx1334 to i32
  call void @__asan_store4_noabort(i32 %874)
  store i32 %call1333, ptr %arrayidx1334, align 4
  %call1335 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 36096) #19
  %arrayidx1336 = getelementptr i32, ptr %p, i32 1143
  %875 = ptrtoint ptr %arrayidx1336 to i32
  call void @__asan_store4_noabort(i32 %875)
  store i32 %call1335, ptr %arrayidx1336, align 4
  %call1337 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 36100) #19
  %arrayidx1338 = getelementptr i32, ptr %p, i32 1144
  %876 = ptrtoint ptr %arrayidx1338 to i32
  call void @__asan_store4_noabort(i32 %876)
  store i32 %call1337, ptr %arrayidx1338, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_get_wol(ptr noundef %netdev, ptr nocapture noundef %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 46, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %device_id.i = getelementptr i8, ptr %netdev, i32 7812
  %2 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device_id.i, align 4
  %subsystem_device_id.i = getelementptr i8, ptr %netdev, i32 7816
  %4 = ptrtoint ptr %subsystem_device_id.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_device_id.i, align 4
  %call.i = tail call zeroext i1 @ixgbe_wol_supported(ptr noundef %add.ptr.i, i16 noundef zeroext %3, i16 noundef zeroext %5) #19
  br i1 %call.i, label %lor.lhs.false, label %ixgbe_wol_exclusion.exit

ixgbe_wol_exclusion.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %supported, align 4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pdev = getelementptr i8, ptr %netdev, i32 2824
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 12, i32 1
  %9 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %wol3 = getelementptr i8, ptr %netdev, i32 67252
  %10 = ptrtoint ptr %wol3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wol3, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %12 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wolopts, align 4
  %or = or i32 %13, 2
  store i32 %or, ptr %wolopts, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %wol3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wol3, align 4
  %and9 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end14_crit_edge, label %if.then11

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  %16 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wolopts, align 4
  %or13 = or i32 %17, 4
  store i32 %or13, ptr %wolopts, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7.if.end14_crit_edge
  %18 = ptrtoint ptr %wol3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wol3, align 4
  %and16 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end21_crit_edge, label %if.then18

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  %20 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wolopts, align 4
  %or20 = or i32 %21, 8
  store i32 %or20, ptr %wolopts, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end14.if.end21_crit_edge
  %22 = ptrtoint ptr %wol3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wol3, align 4
  %and23 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %if.then25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  %24 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wolopts, align 4
  %or27 = or i32 %25, 32
  store i32 %or27, ptr %wolopts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end21.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %ixgbe_wol_exclusion.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_wol(ptr noundef %netdev, ptr nocapture noundef %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %device_id.i = getelementptr i8, ptr %netdev, i32 7812
  %2 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device_id.i, align 4
  %subsystem_device_id.i = getelementptr i8, ptr %netdev, i32 7816
  %4 = ptrtoint ptr %subsystem_device_id.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_device_id.i, align 4
  %call.i = tail call zeroext i1 @ixgbe_wol_supported(ptr noundef %add.ptr.i, i16 noundef zeroext %3, i16 noundef zeroext %5) #19
  br i1 %call.i, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %supported.i = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %6 = ptrtoint ptr %supported.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %supported.i, align 4
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  %cond = select i1 %tobool5.not, i32 0, i32 -95
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %wol7 = getelementptr i8, ptr %netdev, i32 67252
  %9 = ptrtoint ptr %wol7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wol7, align 4
  %10 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wolopts, align 4
  %and9 = shl i32 %11, 1
  %12 = and i32 %and9, 4
  store i32 %12, ptr %wol7, align 4
  %13 = load i32, ptr %wolopts, align 4
  %and15 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end6.if.end20_crit_edge, label %if.then17

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end20

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  %or19 = or i32 %12, 8
  %14 = ptrtoint ptr %wol7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or19, ptr %wol7, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end6.if.end20_crit_edge
  %15 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wolopts, align 4
  %and22 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  %17 = ptrtoint ptr %wol7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wol7, align 4
  %or26 = or i32 %18, 16
  store i32 %or26, ptr %wol7, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %19 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wolopts, align 4
  %and29 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end34_crit_edge, label %if.then31

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  %21 = ptrtoint ptr %wol7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wol7, align 4
  %or33 = or i32 %22, 2
  store i32 %or33, ptr %wol7, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27.if.end34_crit_edge
  %pdev = getelementptr i8, ptr %netdev, i32 2824
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %wol7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wol7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool36 = icmp ne i32 %26, 0
  %call37 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool36) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then3 ], [ 0, %if.end34 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_get_msglevel(ptr nocapture noundef readonly %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 7828
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg_enable, align 4
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ixgbe_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %data to i16
  %msg_enable = getelementptr i8, ptr %netdev, i32 7828
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_nway_reset(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @ixgbe_reinit_locked(ptr noundef %add.ptr.i) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_get_eeprom_len(ptr nocapture noundef readonly %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %word_size = getelementptr i8, ptr %netdev, i32 7744
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 8
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 1
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_eeprom(ptr noundef %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 6528
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor_id = getelementptr i8, ptr %netdev, i32 7814
  %2 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor_id, align 2
  %conv = zext i16 %3 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 7812
  %4 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_id, align 4
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
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add7, i32 2) #19
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !99

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #22
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %if.end10

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end10:                                         ; preds = %if.end7.i
  %read_buffer = getelementptr i8, ptr %netdev, i32 7712
  %12 = ptrtoint ptr %read_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_buffer, align 4
  %conv12 = trunc i32 %shr to i16
  %conv13 = trunc i32 %add7 to i16
  %call14 = tail call i32 %13(ptr noundef %hw1, i16 noundef zeroext %conv12, i16 noundef zeroext %conv13, ptr noundef nonnull %call8.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub6)
  %cmp1651 = icmp ult i32 %sub6, 2147483647
  br i1 %cmp1651, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %conv1553 = phi i32 [ %conv15, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %i.052 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %call8.i, i32 %conv1553
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #19
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx, align 2
  %inc = add i16 %i.052, 1
  %conv15 = zext i16 %inc to i32
  %cmp16 = icmp sgt i32 %add7, %conv15
  br i1 %cmp16, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %and = and i32 %19, 1
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %22 = call ptr @memcpy(ptr %bytes, ptr %add.ptr, i32 %21)
  tail call void @kfree(ptr noundef nonnull %call8.i) #19
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 6528
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic, align 4
  %vendor_id = getelementptr i8, ptr %netdev, i32 7814
  %4 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor_id, align 2
  %conv = zext i16 %5 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 7812
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %shr = lshr i32 %9, 1
  %add = add i32 %1, -1
  %sub = add i32 %add, %9
  %shr11 = lshr i32 %sub, 1
  %word_size = getelementptr i8, ptr %netdev, i32 7744
  %10 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %word_size, align 4
  %conv8 = zext i16 %11 to i32
  %mul = shl nuw nsw i32 %conv8, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #22
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end14.if.end24_crit_edge, label %if.then17

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then17:                                        ; preds = %if.end14
  %read = getelementptr i8, ptr %netdev, i32 7708
  %14 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read, align 4
  %conv19 = trunc i32 %shr to i16
  %call20 = tail call i32 %15(ptr noundef %hw1, i16 noundef zeroext %conv19, ptr noundef nonnull %call9.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then17.err_crit_edge

if.then17.err_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %err

if.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr = getelementptr i8, ptr %call9.i, i32 1
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end14.if.end24_crit_edge
  %ptr.0 = phi ptr [ %incdec.ptr, %if.end23 ], [ %call9.i, %if.end14.if.end24_crit_edge ]
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %add27 = add i32 %19, %17
  %and28 = and i32 %add27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end24.if.end41_crit_edge, label %if.then30

if.end24.if.end41_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  %.pre = sub nsw i32 %shr11, %shr
  br label %if.end41

if.then30:                                        ; preds = %if.end24
  %read33 = getelementptr i8, ptr %netdev, i32 7708
  %20 = ptrtoint ptr %read33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read33, align 4
  %conv34 = trunc i32 %shr11 to i16
  %sub35 = sub nsw i32 %shr11, %shr
  %arrayidx36 = getelementptr i16, ptr %call9.i, i32 %sub35
  %call37 = tail call i32 %21(ptr noundef %hw1, i16 noundef zeroext %conv34, ptr noundef %arrayidx36) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then30.if.end41_crit_edge, label %if.then30.err_crit_edge

if.then30.err_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #21
  br label %err

if.then30.if.end41_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41

if.end41:                                         ; preds = %if.then30.if.end41_crit_edge, %if.end24.if.end41_crit_edge
  %sub43.pre-phi = phi i32 [ %.pre, %if.end24.if.end41_crit_edge ], [ %sub35, %if.then30.if.end41_crit_edge ]
  %add44 = add i32 %sub43.pre-phi, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub43.pre-phi)
  %cmp45131 = icmp ult i32 %sub43.pre-phi, 2147483647
  br i1 %cmp45131, label %if.end41.for.body_crit_edge, label %for.end.thread

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

for.end.thread:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #21
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %24 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %23)
  br label %for.end60

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end41.for.body_crit_edge
  %conv42133 = phi i32 [ %conv42, %for.body.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %i.0132 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %arrayidx47 = getelementptr i16, ptr %call9.i, i32 %conv42133
  %25 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx47, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #19
  %28 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %arrayidx47, align 2
  %inc = add i16 %i.0132, 1
  %conv42 = zext i16 %inc to i32
  %cmp45 = icmp sgt i32 %add44, %conv42
  br i1 %cmp45, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %31 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %30)
  br i1 %cmp45131, label %for.end.for.body55_crit_edge, label %for.end.for.end60_crit_edge

for.end.for.end60_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end60

for.end.for.body55_crit_edge:                     ; preds = %for.end
  br label %for.body55

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.end.for.body55_crit_edge
  %conv50136 = phi i32 [ %conv50, %for.body55.for.body55_crit_edge ], [ 0, %for.end.for.body55_crit_edge ]
  %i.1135 = phi i16 [ %inc59, %for.body55.for.body55_crit_edge ], [ 0, %for.end.for.body55_crit_edge ]
  %arrayidx57 = getelementptr i16, ptr %call9.i, i32 %conv50136
  %32 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx57, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #19
  %35 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx57, align 2
  %inc59 = add i16 %i.1135, 1
  %conv50 = zext i16 %inc59 to i32
  %cmp53 = icmp sgt i32 %add44, %conv50
  br i1 %cmp53, label %for.body55.for.body55_crit_edge, label %for.body55.for.end60_crit_edge

for.body55.for.end60_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end60

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body55

for.end60:                                        ; preds = %for.body55.for.end60_crit_edge, %for.end.for.end60_crit_edge, %for.end.thread
  %write_buffer = getelementptr i8, ptr %netdev, i32 7720
  %36 = ptrtoint ptr %write_buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_buffer, align 4
  %conv63 = trunc i32 %shr to i16
  %conv66 = trunc i32 %add44 to i16
  %call67 = tail call i32 %37(ptr noundef %hw1, i16 noundef zeroext %conv63, i16 noundef zeroext %conv66, ptr noundef nonnull %call9.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %for.end60.err_crit_edge

for.end60.err_crit_edge:                          ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #21
  br label %err

if.then70:                                        ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #21
  %update_checksum = getelementptr i8, ptr %netdev, i32 7728
  %38 = ptrtoint ptr %update_checksum to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %update_checksum, align 4
  %call73 = tail call i32 %39(ptr noundef %hw1) #19
  br label %err

err:                                              ; preds = %if.then70, %for.end60.err_crit_edge, %if.then30.err_crit_edge, %if.then17.err_crit_edge
  %ret_val.0 = phi i32 [ %call20, %if.then17.err_crit_edge ], [ %call37, %if.then30.err_crit_edge ], [ 0, %if.then70 ], [ %call67, %for.end60.err_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #19
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %err ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_itr_setting = getelementptr i8, ptr %netdev, i32 2868
  %0 = ptrtoint ptr %rx_itr_setting to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rx_itr_setting, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp ult i16 %1, 2
  %2 = lshr i32 %conv, 2
  %spec.select = select i1 %cmp, i32 %conv, i32 %2
  %3 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %3, align 4
  %q_vector = getelementptr i8, ptr %netdev, i32 3796
  %5 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q_vector, align 4
  %count = getelementptr inbounds %struct.ixgbe_q_vector, ptr %6, i32 0, i32 4, i32 5
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %land.lhs.true

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %count10 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %6, i32 0, i32 3, i32 5
  %9 = ptrtoint ptr %count10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %count10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %tx_itr_setting = getelementptr i8, ptr %netdev, i32 2848
  %11 = ptrtoint ptr %tx_itr_setting to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tx_itr_setting, align 32
  %conv15 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cmp16 = icmp ult i16 %12, 2
  %13 = lshr i32 %conv15, 2
  %conv15.sink = select i1 %cmp16, i32 %conv15, i32 %13
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %14 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv15.sink, ptr %tx_coalesce_usecs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %q_vector1 = getelementptr i8, ptr %netdev, i32 3796
  %0 = ptrtoint ptr %q_vector1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_vector1, align 4
  %count = getelementptr inbounds %struct.ixgbe_q_vector, ptr %1, i32 0, i32 4, i32 5
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %count4 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %1, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %count4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %count4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %6 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.then.if.end9_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %.sink = phi i32 [ 2868, %if.then.if.end9_crit_edge ], [ 2848, %land.lhs.true.if.end9_crit_edge ], [ 2848, %entry.if.end9_crit_edge ]
  %tx_itr_setting = getelementptr i8, ptr %netdev, i32 %.sink
  %8 = ptrtoint ptr %tx_itr_setting to i32
  call void @__asan_load2_noabort(i32 %8)
  %tx_itr_prev.0 = load i16, ptr %tx_itr_setting, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %9 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %10)
  %cmp = icmp ugt i32 %10, 1022
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %lor.lhs.false

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end9
  %tx_coalesce_usecs11 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %11 = ptrtoint ptr %tx_coalesce_usecs11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_coalesce_usecs11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %12)
  %cmp12 = icmp ugt i32 %12, 1022
  br i1 %cmp12, label %lor.lhs.false.cleanup_crit_edge, label %if.end15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp17 = icmp ugt i32 %10, 1
  %.tr174 = trunc i32 %10 to i16
  %conv21 = shl nuw nsw i16 %.tr174, 2
  %conv25.sink = select i1 %cmp17, i16 %conv21, i16 %.tr174
  %13 = getelementptr i8, ptr %netdev, i32 2868
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv25.sink, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv25.sink)
  %cmp30 = icmp eq i16 %conv25.sink, 1
  %. = select i1 %cmp30, i16 200, i16 %conv25.sink
  %15 = ptrtoint ptr %tx_coalesce_usecs11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_coalesce_usecs11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp37 = icmp ugt i32 %16, 1
  %.tr = trunc i32 %16 to i16
  %conv42 = shl i16 %.tr, 2
  %conv46 = trunc i32 %16 to i16
  %conv46.sink = select i1 %cmp37, i16 %conv42, i16 %conv46
  %17 = getelementptr i8, ptr %netdev, i32 2848
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv46.sink, ptr %17, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv46.sink)
  %cmp51 = icmp eq i16 %conv46.sink, 1
  %.175 = select i1 %cmp51, i16 336, i16 %conv46.sink
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool62.not = icmp eq i8 %20, 0
  br i1 %tobool62.not, label %if.end15.if.end73_crit_edge, label %land.lhs.true63

if.end15.if.end73_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end73

land.lhs.true63:                                  ; preds = %if.end15
  %count67 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %1, i32 0, i32 3, i32 5
  %21 = ptrtoint ptr %count67 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %count67, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool69.not = icmp eq i8 %22, 0
  br i1 %tobool69.not, label %land.lhs.true63.if.end73_crit_edge, label %if.then70

land.lhs.true63.if.end73_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end73

if.then70:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %13, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %17, align 32
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %land.lhs.true63.if.end73_crit_edge, %if.end15.if.end73_crit_edge
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %17, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %27)
  %cmp76.not = icmp ne i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %27)
  %cmp81 = icmp ult i16 %27, 40
  %or.cond = and i1 %cmp76.not, %cmp81
  br i1 %or.cond, label %if.then83, label %if.else93

if.then83:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %tx_itr_prev.0)
  %cmp85 = icmp eq i16 %tx_itr_prev.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 39, i16 %tx_itr_prev.0)
  %cmp89 = icmp ugt i16 %tx_itr_prev.0, 39
  %or.cond176 = or i1 %cmp85, %cmp89
  br label %if.end103

if.else93:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %tx_itr_prev.0)
  %cmp95.not = icmp ne i16 %tx_itr_prev.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %tx_itr_prev.0)
  %cmp99 = icmp ult i16 %tx_itr_prev.0, 40
  %or.cond177 = and i1 %cmp95.not, %cmp99
  br label %if.end103

if.end103:                                        ; preds = %if.else93, %if.then83
  %need_reset.0.off0.in = phi i1 [ %or.cond176, %if.then83 ], [ %or.cond177, %if.else93 ]
  %need_reset.0.off0 = zext i1 %need_reset.0.off0.in to i32
  %flags2.i = getelementptr i8, ptr %netdev, i32 2840
  %28 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags2.i, align 8
  %and.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end103.ixgbe_update_rsc.exit_crit_edge, label %lor.lhs.false.i

if.end103.ixgbe_update_rsc.exit_crit_edge:        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_update_rsc.exit

lor.lhs.false.i:                                  ; preds = %if.end103
  %netdev1.i = getelementptr i8, ptr %netdev, i32 2816
  %30 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev1.i, align 128
  %features.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 23
  %32 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %features.i, align 16
  %and2.i = and i64 %33, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.ixgbe_update_rsc.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ixgbe_update_rsc.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_update_rsc.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %35)
  %cmp.i = icmp eq i16 %35, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %35)
  %cmp8.i = icmp ugt i16 %35, 24
  %or.cond.i = or i1 %cmp.i, %cmp8.i
  %and12.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %or.cond.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end.i
  br i1 %tobool13.not.i, label %if.then14.i, label %if.then10.i.ixgbe_update_rsc.exit_crit_edge

if.then10.i.ixgbe_update_rsc.exit_crit_edge:      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_update_rsc.exit

if.then14.i:                                      ; preds = %if.then10.i
  %or.i = or i32 %29, 2
  %36 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i, ptr %flags2.i, align 8
  %msg_enable.i = getelementptr i8, ptr %netdev, i32 7828
  %37 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %msg_enable.i, align 4
  %39 = and i16 %38, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool18.not.i = icmp eq i16 %39, 0
  br i1 %tobool18.not.i, label %if.then14.i.ixgbe_update_rsc.exit_crit_edge, label %if.then14.i.cleanup.sink.split.i_crit_edge

if.then14.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i

if.then14.i.ixgbe_update_rsc.exit_crit_edge:      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_update_rsc.exit

if.else.i:                                        ; preds = %if.end.i
  br i1 %tobool13.not.i, label %if.else.i.ixgbe_update_rsc.exit_crit_edge, label %if.then26.i

if.else.i.ixgbe_update_rsc.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_update_rsc.exit

if.then26.i:                                      ; preds = %if.else.i
  %and28.i = and i32 %29, -3
  %40 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and28.i, ptr %flags2.i, align 8
  %msg_enable30.i = getelementptr i8, ptr %netdev, i32 7828
  %41 = ptrtoint ptr %msg_enable30.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %msg_enable30.i, align 4
  %43 = and i16 %42, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool33.not.i = icmp eq i16 %43, 0
  br i1 %tobool33.not.i, label %if.then26.i.ixgbe_update_rsc.exit_crit_edge, label %if.then26.i.cleanup.sink.split.i_crit_edge

if.then26.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i

if.then26.i.ixgbe_update_rsc.exit_crit_edge:      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_update_rsc.exit

cleanup.sink.split.i:                             ; preds = %if.then26.i.cleanup.sink.split.i_crit_edge, %if.then14.i.cleanup.sink.split.i_crit_edge
  %.str.1.sink.i = phi ptr [ @.str, %if.then14.i.cleanup.sink.split.i_crit_edge ], [ @.str.1, %if.then26.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %31, ptr noundef nonnull %.str.1.sink.i) #23
  br label %ixgbe_update_rsc.exit

ixgbe_update_rsc.exit:                            ; preds = %cleanup.sink.split.i, %if.then26.i.ixgbe_update_rsc.exit_crit_edge, %if.else.i.ixgbe_update_rsc.exit_crit_edge, %if.then14.i.ixgbe_update_rsc.exit_crit_edge, %if.then10.i.ixgbe_update_rsc.exit_crit_edge, %lor.lhs.false.i.ixgbe_update_rsc.exit_crit_edge, %if.end103.ixgbe_update_rsc.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i.ixgbe_update_rsc.exit_crit_edge ], [ 0, %if.end103.ixgbe_update_rsc.exit_crit_edge ], [ 1, %if.then14.i.ixgbe_update_rsc.exit_crit_edge ], [ 1, %if.then26.i.ixgbe_update_rsc.exit_crit_edge ], [ 0, %if.else.i.ixgbe_update_rsc.exit_crit_edge ], [ 0, %if.then10.i.ixgbe_update_rsc.exit_crit_edge ], [ 1, %cleanup.sink.split.i ]
  %or = or i32 %retval.0.i, %need_reset.0.off0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool108.not = icmp eq i32 %or, 0
  %num_q_vectors = getelementptr i8, ptr %netdev, i32 4660
  %44 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_q_vectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp109179 = icmp sgt i32 %45, 0
  br i1 %cmp109179, label %ixgbe_update_rsc.exit.for.body_crit_edge, label %ixgbe_update_rsc.exit.for.end_crit_edge

ixgbe_update_rsc.exit.for.end_crit_edge:          ; preds = %ixgbe_update_rsc.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

ixgbe_update_rsc.exit.for.body_crit_edge:         ; preds = %ixgbe_update_rsc.exit
  br label %for.body

for.body:                                         ; preds = %if.end124.for.body_crit_edge, %ixgbe_update_rsc.exit.for.body_crit_edge
  %i.0180 = phi i32 [ %inc, %if.end124.for.body_crit_edge ], [ 0, %ixgbe_update_rsc.exit.for.body_crit_edge ]
  %arrayidx112 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 36, i32 %i.0180
  %46 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx112, align 4
  %count114 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %47, i32 0, i32 4, i32 5
  %48 = ptrtoint ptr %count114 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %count114, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool116.not = icmp eq i8 %49, 0
  br i1 %tobool116.not, label %for.body.if.else122_crit_edge, label %land.lhs.true117

for.body.if.else122_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else122

land.lhs.true117:                                 ; preds = %for.body
  %count119 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %47, i32 0, i32 3, i32 5
  %50 = ptrtoint ptr %count119 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %count119, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool120.not = icmp eq i8 %51, 0
  br i1 %tobool120.not, label %land.lhs.true117.if.end124_crit_edge, label %land.lhs.true117.if.else122_crit_edge

land.lhs.true117.if.else122_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else122

land.lhs.true117.if.end124_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end124

if.else122:                                       ; preds = %land.lhs.true117.if.else122_crit_edge, %for.body.if.else122_crit_edge
  br label %if.end124

if.end124:                                        ; preds = %if.else122, %land.lhs.true117.if.end124_crit_edge
  %..sink = phi i16 [ %., %if.else122 ], [ %.175, %land.lhs.true117.if.end124_crit_edge ]
  %itr123 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %47, i32 0, i32 2
  %52 = ptrtoint ptr %itr123 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %..sink, ptr %itr123, align 2
  tail call void @ixgbe_write_eitr(ptr noundef %47) #19
  %inc = add nuw nsw i32 %i.0180, 1
  %53 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_q_vectors, align 4
  %cmp109 = icmp slt i32 %inc, %54
  br i1 %cmp109, label %if.end124.for.body_crit_edge, label %if.end124.for.end_crit_edge

if.end124.for.end_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end124.for.body_crit_edge:                     ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %if.end124.for.end_crit_edge, %ixgbe_update_rsc.exit.for.end_crit_edge
  br i1 %tobool108.not, label %for.end.cleanup_crit_edge, label %if.then126

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then126:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ixgbe_do_reset(ptr noundef %netdev) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then126, %for.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ 0, %if.then126 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgbe_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring1 = getelementptr i8, ptr %netdev, i32 3200
  %0 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring1, align 128
  %rx_ring2 = getelementptr i8, ptr %netdev, i32 3476
  %2 = ptrtoint ptr %rx_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring2, align 4
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %5 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %tx_max_pending, align 4
  %count = getelementptr inbounds %struct.ixgbe_ring, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count, align 4
  %conv = zext i16 %7 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %rx_pending, align 4
  %count4 = getelementptr inbounds %struct.ixgbe_ring, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %count4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %count4, align 4
  %conv5 = zext i16 %10 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %11 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv5, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
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
  call void @__sanitizer_cov_trace_pc() #21
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %4 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pending, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 64)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 4096)
  %add = add nuw nsw i32 %7, 7
  %and = and i32 %add, 16376
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pending, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 64)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 4096)
  %add20 = add nuw nsw i32 %11, 7
  %and21 = and i32 %add20, 16376
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 9608
  %12 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_ring_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %13)
  %cmp22 = icmp eq i32 %and, %13
  br i1 %cmp22, label %land.lhs.true, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 9616
  %14 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_ring_count, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %15)
  %cmp23 = icmp eq i32 %and21, %15
  br i1 %cmp23, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 2832
  %call26352 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26352)
  %tobool27.not353 = icmp eq i32 %call26352, 0
  br i1 %tobool27.not353, label %if.end25.while.end_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  br label %while.body

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end25.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %call26 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #19
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end25.while.end_crit_edge
  %netdev28 = getelementptr i8, ptr %netdev, i32 2816
  %16 = ptrtoint ptr %netdev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev28, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2844
  %20 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues, align 4
  br i1 %tobool.i.not, label %for.cond.preheader, label %if.end54

for.cond.preheader:                               ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp31376 = icmp sgt i32 %21, 0
  br i1 %cmp31376, label %for.body.lr.ph, label %for.cond.preheader.for.cond32.preheader_crit_edge

for.cond.preheader.for.cond32.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond32.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv = trunc i32 %and to i16
  br label %for.body

for.cond32.preheader:                             ; preds = %for.body.for.cond32.preheader_crit_edge, %for.cond.preheader.for.cond32.preheader_crit_edge
  %num_xdp_queues = getelementptr i8, ptr %netdev, i32 2884
  %22 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_xdp_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp33378 = icmp sgt i32 %23, 0
  br i1 %cmp33378, label %for.body35.lr.ph, label %for.cond32.preheader.for.cond42.preheader_crit_edge

for.cond32.preheader.for.cond42.preheader_crit_edge: ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond42.preheader

for.body35.lr.ph:                                 ; preds = %for.cond32.preheader
  %conv36 = trunc i32 %and to i16
  br label %for.body35

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0377 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %i.0377
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %count = getelementptr inbounds %struct.ixgbe_ring, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %count, align 4
  %inc = add nuw nsw i32 %i.0377, 1
  %27 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_tx_queues, align 4
  %cmp31 = icmp slt i32 %inc, %28
  br i1 %cmp31, label %for.body.for.body_crit_edge, label %for.body.for.cond32.preheader_crit_edge

for.body.for.cond32.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond32.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.cond42.preheader:                             ; preds = %for.body35.for.cond42.preheader_crit_edge, %for.cond32.preheader.for.cond42.preheader_crit_edge
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2864
  %29 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_rx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp43380 = icmp sgt i32 %30, 0
  br i1 %cmp43380, label %for.body45.lr.ph, label %for.cond42.preheader.for.end51_crit_edge

for.cond42.preheader.for.end51_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end51

for.body45.lr.ph:                                 ; preds = %for.cond42.preheader
  %conv46 = trunc i32 %and21 to i16
  br label %for.body45

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body35.lr.ph
  %i.1379 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc40, %for.body35.for.body35_crit_edge ]
  %arrayidx37 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 18, i32 %i.1379
  %31 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx37, align 4
  %count38 = getelementptr inbounds %struct.ixgbe_ring, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %count38 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv36, ptr %count38, align 4
  %inc40 = add nuw nsw i32 %i.1379, 1
  %34 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_xdp_queues, align 4
  %cmp33 = icmp slt i32 %inc40, %35
  br i1 %cmp33, label %for.body35.for.body35_crit_edge, label %for.body35.for.cond42.preheader_crit_edge

for.body35.for.cond42.preheader_crit_edge:        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond42.preheader

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body35

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %for.body45.lr.ph
  %i.2381 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc50, %for.body45.for.body45_crit_edge ]
  %arrayidx47 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.2381
  %36 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx47, align 4
  %count48 = getelementptr inbounds %struct.ixgbe_ring, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %count48 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv46, ptr %count48, align 4
  %inc50 = add nuw nsw i32 %i.2381, 1
  %39 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_rx_queues, align 16
  %cmp43 = icmp slt i32 %inc50, %40
  br i1 %cmp43, label %for.body45.for.body45_crit_edge, label %for.body45.for.end51_crit_edge

for.body45.for.end51_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end51

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body45

for.end51:                                        ; preds = %for.body45.for.end51_crit_edge, %for.cond42.preheader.for.end51_crit_edge
  %41 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and, ptr %tx_ring_count, align 8
  %xdp_ring_count = getelementptr i8, ptr %netdev, i32 9612
  %42 = ptrtoint ptr %xdp_ring_count to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and, ptr %xdp_ring_count, align 4
  %rx_ring_count53 = getelementptr i8, ptr %netdev, i32 9616
  %43 = ptrtoint ptr %rx_ring_count53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and21, ptr %rx_ring_count53, align 16
  br label %clear_reset

if.end54:                                         ; preds = %while.end
  %num_xdp_queues56 = getelementptr i8, ptr %netdev, i32 2884
  %44 = ptrtoint ptr %num_xdp_queues56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_xdp_queues56, align 4
  %add57 = add i32 %45, %21
  %num_rx_queues58 = getelementptr i8, ptr %netdev, i32 2864
  %46 = ptrtoint ptr %num_rx_queues58 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_rx_queues58, align 16
  %48 = tail call i32 @llvm.smax.i32(i32 %add57, i32 %47)
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %48, i32 512) #19
  %50 = extractvalue { i32, i1 } %49, 1
  %51 = extractvalue { i32, i1 } %49, 0
  %retval.0.i = select i1 %50, i32 -1, i32 %51
  %call67 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #22
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.end54.clear_reset_crit_edge, label %if.end70

if.end54.clear_reset_crit_edge:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #21
  br label %clear_reset

if.end70:                                         ; preds = %if.end54
  tail call void @ixgbe_down(ptr noundef %add.ptr.i) #19
  %52 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_ring_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %53)
  %cmp72.not = icmp eq i32 %and, %53
  br i1 %cmp72.not, label %if.end70.if.end153_crit_edge, label %for.cond75.preheader

if.end70.if.end153_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end153

for.cond75.preheader:                             ; preds = %if.end70
  %54 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp77354 = icmp sgt i32 %55, 0
  br i1 %cmp77354, label %for.body79.lr.ph, label %for.cond75.preheader.for.cond99.preheader_crit_edge

for.cond75.preheader.for.cond99.preheader_crit_edge: ; preds = %for.cond75.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond99.preheader

for.body79.lr.ph:                                 ; preds = %for.cond75.preheader
  %conv83 = trunc i32 %and to i16
  br label %for.body79

for.cond99.preheader:                             ; preds = %for.inc96.for.cond99.preheader_crit_edge, %for.cond75.preheader.for.cond99.preheader_crit_edge
  %i.3.lcssa = phi i32 [ 0, %for.cond75.preheader.for.cond99.preheader_crit_edge ], [ %inc97, %for.inc96.for.cond99.preheader_crit_edge ]
  %56 = ptrtoint ptr %num_xdp_queues56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_xdp_queues56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp101357 = icmp sgt i32 %57, 0
  br i1 %cmp101357, label %for.body103.lr.ph, label %for.cond99.preheader.for.cond125.preheader_crit_edge

for.cond99.preheader.for.cond125.preheader_crit_edge: ; preds = %for.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond125.preheader

for.body103.lr.ph:                                ; preds = %for.cond99.preheader
  %conv107 = trunc i32 %and to i16
  br label %for.body103

for.body79:                                       ; preds = %for.inc96.for.body79_crit_edge, %for.body79.lr.ph
  %i.3355 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc97, %for.inc96.for.body79_crit_edge ]
  %arrayidx80 = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %i.3355
  %arrayidx82 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %i.3355
  %58 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx82, align 4
  %60 = call ptr @memcpy(ptr %arrayidx80, ptr %59, i32 512)
  %count85 = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %i.3355, i32 11
  %61 = ptrtoint ptr %count85 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv83, ptr %count85, align 4
  %call87 = tail call i32 @ixgbe_setup_tx_resources(ptr noundef %arrayidx80) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %for.inc96, label %while.cond90.preheader

while.cond90.preheader:                           ; preds = %for.body79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3355)
  %tobool91.not368 = icmp eq i32 %i.3355, 0
  br i1 %tobool91.not368, label %while.cond90.preheader.err_setup_crit_edge, label %while.cond90.preheader.while.body92_crit_edge

while.cond90.preheader.while.body92_crit_edge:    ; preds = %while.cond90.preheader
  br label %while.body92

while.cond90.preheader.err_setup_crit_edge:       ; preds = %while.cond90.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_setup

while.body92:                                     ; preds = %while.body92.while.body92_crit_edge, %while.cond90.preheader.while.body92_crit_edge
  %i.4369 = phi i32 [ %dec, %while.body92.while.body92_crit_edge ], [ %i.3355, %while.cond90.preheader.while.body92_crit_edge ]
  %dec = add nsw i32 %i.4369, -1
  %arrayidx93 = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %dec
  tail call void @ixgbe_free_tx_resources(ptr noundef %arrayidx93) #19
  %tobool91.not = icmp eq i32 %dec, 0
  br i1 %tobool91.not, label %while.body92.err_setup_crit_edge, label %while.body92.while.body92_crit_edge

while.body92.while.body92_crit_edge:              ; preds = %while.body92
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body92

while.body92.err_setup_crit_edge:                 ; preds = %while.body92
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_setup

for.inc96:                                        ; preds = %for.body79
  %inc97 = add nuw nsw i32 %i.3355, 1
  %62 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_tx_queues, align 4
  %cmp77 = icmp slt i32 %inc97, %63
  br i1 %cmp77, label %for.inc96.for.body79_crit_edge, label %for.inc96.for.cond99.preheader_crit_edge

for.inc96.for.cond99.preheader_crit_edge:         ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond99.preheader

for.inc96.for.body79_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body79

for.cond125.preheader:                            ; preds = %for.inc121.for.cond125.preheader_crit_edge, %for.cond99.preheader.for.cond125.preheader_crit_edge
  %64 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp127360 = icmp sgt i32 %65, 0
  br i1 %cmp127360, label %for.cond125.preheader.for.body129_crit_edge, label %for.cond125.preheader.for.cond138.preheader_crit_edge

for.cond125.preheader.for.cond138.preheader_crit_edge: ; preds = %for.cond125.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond138.preheader

for.cond125.preheader.for.body129_crit_edge:      ; preds = %for.cond125.preheader
  br label %for.body129

for.body103:                                      ; preds = %for.inc121.for.body103_crit_edge, %for.body103.lr.ph
  %i.5359 = phi i32 [ %i.3.lcssa, %for.body103.lr.ph ], [ %inc123, %for.inc121.for.body103_crit_edge ]
  %j.0358 = phi i32 [ 0, %for.body103.lr.ph ], [ %inc122, %for.inc121.for.body103_crit_edge ]
  %arrayidx104 = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %i.5359
  %arrayidx106 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 18, i32 %j.0358
  %66 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx106, align 4
  %68 = call ptr @memcpy(ptr %arrayidx104, ptr %67, i32 512)
  %count109 = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %i.5359, i32 11
  %69 = ptrtoint ptr %count109 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv107, ptr %count109, align 4
  %call111 = tail call i32 @ixgbe_setup_tx_resources(ptr noundef %arrayidx104) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %for.inc121, label %while.cond114.preheader

while.cond114.preheader:                          ; preds = %for.body103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5359)
  %tobool115.not366 = icmp eq i32 %i.5359, 0
  br i1 %tobool115.not366, label %while.cond114.preheader.err_setup_crit_edge, label %while.cond114.preheader.while.body116_crit_edge

while.cond114.preheader.while.body116_crit_edge:  ; preds = %while.cond114.preheader
  br label %while.body116

while.cond114.preheader.err_setup_crit_edge:      ; preds = %while.cond114.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_setup

while.body116:                                    ; preds = %while.body116.while.body116_crit_edge, %while.cond114.preheader.while.body116_crit_edge
  %i.6367 = phi i32 [ %dec117, %while.body116.while.body116_crit_edge ], [ %i.5359, %while.cond114.preheader.while.body116_crit_edge ]
  %dec117 = add i32 %i.6367, -1
  %arrayidx118 = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %dec117
  tail call void @ixgbe_free_tx_resources(ptr noundef %arrayidx118) #19
  %tobool115.not = icmp eq i32 %dec117, 0
  br i1 %tobool115.not, label %while.body116.err_setup_crit_edge, label %while.body116.while.body116_crit_edge

while.body116.while.body116_crit_edge:            ; preds = %while.body116
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body116

while.body116.err_setup_crit_edge:                ; preds = %while.body116
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_setup

for.inc121:                                       ; preds = %for.body103
  %inc122 = add nuw nsw i32 %j.0358, 1
  %inc123 = add nuw i32 %i.5359, 1
  %70 = ptrtoint ptr %num_xdp_queues56 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_xdp_queues56, align 4
  %cmp101 = icmp slt i32 %inc122, %71
  br i1 %cmp101, label %for.inc121.for.body103_crit_edge, label %for.inc121.for.cond125.preheader_crit_edge

for.inc121.for.cond125.preheader_crit_edge:       ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond125.preheader

for.inc121.for.body103_crit_edge:                 ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body103

for.cond138.preheader:                            ; preds = %for.body129.for.cond138.preheader_crit_edge, %for.cond125.preheader.for.cond138.preheader_crit_edge
  %i.7.lcssa = phi i32 [ 0, %for.cond125.preheader.for.cond138.preheader_crit_edge ], [ %inc136, %for.body129.for.cond138.preheader_crit_edge ]
  %72 = ptrtoint ptr %num_xdp_queues56 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_xdp_queues56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp140363 = icmp sgt i32 %73, 0
  br i1 %cmp140363, label %for.cond138.preheader.for.body142_crit_edge, label %for.cond138.preheader.for.end151_crit_edge

for.cond138.preheader.for.end151_crit_edge:       ; preds = %for.cond138.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end151

for.cond138.preheader.for.body142_crit_edge:      ; preds = %for.cond138.preheader
  br label %for.body142

for.body129:                                      ; preds = %for.body129.for.body129_crit_edge, %for.cond125.preheader.for.body129_crit_edge
  %i.7361 = phi i32 [ %inc136, %for.body129.for.body129_crit_edge ], [ 0, %for.cond125.preheader.for.body129_crit_edge ]
  %arrayidx131 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %i.7361
  %74 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx131, align 4
  tail call void @ixgbe_free_tx_resources(ptr noundef %75) #19
  %76 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx131, align 4
  %arrayidx134 = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %i.7361
  %78 = call ptr @memcpy(ptr %77, ptr %arrayidx134, i32 512)
  %inc136 = add nuw nsw i32 %i.7361, 1
  %79 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_tx_queues, align 4
  %cmp127 = icmp slt i32 %inc136, %80
  br i1 %cmp127, label %for.body129.for.body129_crit_edge, label %for.body129.for.cond138.preheader_crit_edge

for.body129.for.cond138.preheader_crit_edge:      ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond138.preheader

for.body129.for.body129_crit_edge:                ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body129

for.body142:                                      ; preds = %for.body142.for.body142_crit_edge, %for.cond138.preheader.for.body142_crit_edge
  %i.8365 = phi i32 [ %inc150, %for.body142.for.body142_crit_edge ], [ %i.7.lcssa, %for.cond138.preheader.for.body142_crit_edge ]
  %j.1364 = phi i32 [ %inc149, %for.body142.for.body142_crit_edge ], [ 0, %for.cond138.preheader.for.body142_crit_edge ]
  %arrayidx144 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 18, i32 %j.1364
  %81 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx144, align 4
  tail call void @ixgbe_free_tx_resources(ptr noundef %82) #19
  %83 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx144, align 4
  %arrayidx147 = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %i.8365
  %85 = call ptr @memcpy(ptr %84, ptr %arrayidx147, i32 512)
  %inc149 = add nuw nsw i32 %j.1364, 1
  %inc150 = add nuw i32 %i.8365, 1
  %86 = ptrtoint ptr %num_xdp_queues56 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_xdp_queues56, align 4
  %cmp140 = icmp slt i32 %inc149, %87
  br i1 %cmp140, label %for.body142.for.body142_crit_edge, label %for.body142.for.end151_crit_edge

for.body142.for.end151_crit_edge:                 ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end151

for.body142.for.body142_crit_edge:                ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body142

for.end151:                                       ; preds = %for.body142.for.end151_crit_edge, %for.cond138.preheader.for.end151_crit_edge
  %88 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and, ptr %tx_ring_count, align 8
  br label %if.end153

if.end153:                                        ; preds = %for.end151, %if.end70.if.end153_crit_edge
  %rx_ring_count154 = getelementptr i8, ptr %netdev, i32 9616
  %89 = ptrtoint ptr %rx_ring_count154 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_ring_count154, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %90)
  %cmp155.not = icmp eq i32 %and21, %90
  br i1 %cmp155.not, label %if.end153.err_setup_crit_edge, label %for.cond158.preheader

if.end153.err_setup_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_setup

for.cond158.preheader:                            ; preds = %if.end153
  %91 = ptrtoint ptr %num_rx_queues58 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_rx_queues58, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp160370 = icmp sgt i32 %92, 0
  br i1 %cmp160370, label %for.body162.lr.ph, label %for.cond158.preheader.for.end196_crit_edge

for.cond158.preheader.for.end196_crit_edge:       ; preds = %for.cond158.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end196

for.body162.lr.ph:                                ; preds = %for.cond158.preheader
  %conv167 = trunc i32 %and21 to i16
  br label %for.body162

for.cond184.preheader:                            ; preds = %for.inc181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp186372 = icmp sgt i32 %99, 0
  br i1 %cmp186372, label %for.cond184.preheader.for.body188_crit_edge, label %for.cond184.preheader.for.end196_crit_edge

for.cond184.preheader.for.end196_crit_edge:       ; preds = %for.cond184.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end196

for.cond184.preheader.for.body188_crit_edge:      ; preds = %for.cond184.preheader
  br label %for.body188

for.body162:                                      ; preds = %for.inc181.for.body162_crit_edge, %for.body162.lr.ph
  %i.9371 = phi i32 [ 0, %for.body162.lr.ph ], [ %inc182, %for.inc181.for.body162_crit_edge ]
  %arrayidx163 = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %i.9371
  %arrayidx165 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.9371
  %93 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx165, align 4
  %95 = call ptr @memcpy(ptr %arrayidx163, ptr %94, i32 512)
  %xdp_rxq = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %i.9371, i32 24
  %96 = call ptr @memset(ptr %xdp_rxq, i32 0, i32 128)
  %count169 = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %i.9371, i32 11
  %97 = ptrtoint ptr %count169 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv167, ptr %count169, align 4
  %call171 = tail call i32 @ixgbe_setup_rx_resources(ptr noundef %add.ptr.i, ptr noundef %arrayidx163) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %for.inc181, label %while.cond174.preheader

while.cond174.preheader:                          ; preds = %for.body162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.9371)
  %tobool175.not374 = icmp eq i32 %i.9371, 0
  br i1 %tobool175.not374, label %while.cond174.preheader.err_setup_crit_edge, label %while.cond174.preheader.while.body176_crit_edge

while.cond174.preheader.while.body176_crit_edge:  ; preds = %while.cond174.preheader
  br label %while.body176

while.cond174.preheader.err_setup_crit_edge:      ; preds = %while.cond174.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_setup

while.body176:                                    ; preds = %while.body176.while.body176_crit_edge, %while.cond174.preheader.while.body176_crit_edge
  %i.10375 = phi i32 [ %dec177, %while.body176.while.body176_crit_edge ], [ %i.9371, %while.cond174.preheader.while.body176_crit_edge ]
  %dec177 = add nsw i32 %i.10375, -1
  %arrayidx178 = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %dec177
  tail call void @ixgbe_free_rx_resources(ptr noundef %arrayidx178) #19
  %tobool175.not = icmp eq i32 %dec177, 0
  br i1 %tobool175.not, label %while.body176.err_setup_crit_edge, label %while.body176.while.body176_crit_edge

while.body176.while.body176_crit_edge:            ; preds = %while.body176
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body176

while.body176.err_setup_crit_edge:                ; preds = %while.body176
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_setup

for.inc181:                                       ; preds = %for.body162
  %inc182 = add nuw nsw i32 %i.9371, 1
  %98 = ptrtoint ptr %num_rx_queues58 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_rx_queues58, align 16
  %cmp160 = icmp slt i32 %inc182, %99
  br i1 %cmp160, label %for.inc181.for.body162_crit_edge, label %for.cond184.preheader

for.inc181.for.body162_crit_edge:                 ; preds = %for.inc181
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body162

for.body188:                                      ; preds = %for.body188.for.body188_crit_edge, %for.cond184.preheader.for.body188_crit_edge
  %i.11373 = phi i32 [ %inc195, %for.body188.for.body188_crit_edge ], [ 0, %for.cond184.preheader.for.body188_crit_edge ]
  %arrayidx190 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.11373
  %100 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx190, align 4
  tail call void @ixgbe_free_rx_resources(ptr noundef %101) #19
  %102 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx190, align 4
  %arrayidx193 = getelementptr %struct.ixgbe_ring, ptr %call67, i32 %i.11373
  %104 = call ptr @memcpy(ptr %103, ptr %arrayidx193, i32 512)
  %inc195 = add nuw nsw i32 %i.11373, 1
  %105 = ptrtoint ptr %num_rx_queues58 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_rx_queues58, align 16
  %cmp186 = icmp slt i32 %inc195, %106
  br i1 %cmp186, label %for.body188.for.body188_crit_edge, label %for.body188.for.end196_crit_edge

for.body188.for.end196_crit_edge:                 ; preds = %for.body188
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end196

for.body188.for.body188_crit_edge:                ; preds = %for.body188
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body188

for.end196:                                       ; preds = %for.body188.for.end196_crit_edge, %for.cond184.preheader.for.end196_crit_edge, %for.cond158.preheader.for.end196_crit_edge
  %107 = ptrtoint ptr %rx_ring_count154 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %and21, ptr %rx_ring_count154, align 16
  br label %err_setup

err_setup:                                        ; preds = %for.end196, %while.body176.err_setup_crit_edge, %while.cond174.preheader.err_setup_crit_edge, %if.end153.err_setup_crit_edge, %while.body116.err_setup_crit_edge, %while.cond114.preheader.err_setup_crit_edge, %while.body92.err_setup_crit_edge, %while.cond90.preheader.err_setup_crit_edge
  %err.4 = phi i32 [ 0, %for.end196 ], [ 0, %if.end153.err_setup_crit_edge ], [ %call171, %while.cond174.preheader.err_setup_crit_edge ], [ %call87, %while.cond90.preheader.err_setup_crit_edge ], [ %call111, %while.cond114.preheader.err_setup_crit_edge ], [ %call171, %while.body176.err_setup_crit_edge ], [ %call111, %while.body116.err_setup_crit_edge ], [ %call87, %while.body92.err_setup_crit_edge ]
  tail call void @ixgbe_up(ptr noundef %add.ptr.i) #19
  tail call void @vfree(ptr noundef nonnull %call67) #19
  br label %clear_reset

clear_reset:                                      ; preds = %err_setup, %if.end54.clear_reset_crit_edge, %for.end51
  %err.5 = phi i32 [ %err.4, %err_setup ], [ 0, %for.end51 ], [ -12, %if.end54.clear_reset_crit_edge ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #19
  br label %cleanup

cleanup:                                          ; preds = %clear_reset, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5, %clear_reset ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgbe_get_pause_stats(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %stats) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lxontxc = getelementptr i8, ptr %netdev, i32 7960
  %0 = ptrtoint ptr %lxontxc to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lxontxc, align 8
  %lxofftxc = getelementptr i8, ptr %netdev, i32 7976
  %2 = ptrtoint ptr %lxofftxc to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lxofftxc, align 8
  %add = add i64 %3, %1
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %stats, align 8
  %lxonrxc = getelementptr i8, ptr %netdev, i32 7968
  %5 = ptrtoint ptr %lxonrxc to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %lxonrxc, align 8
  %lxoffrxc = getelementptr i8, ptr %netdev, i32 7984
  %7 = ptrtoint ptr %lxoffrxc to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %lxoffrxc, align 8
  %add2 = add i64 %8, %6
  %rx_pause_frames = getelementptr inbounds %struct.ethtool_pause_stats, ptr %stats, i32 0, i32 1
  %9 = ptrtoint ptr %rx_pause_frames to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add2, ptr %rx_pause_frames, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_get_pauseparam(ptr noundef %netdev, ptr nocapture noundef writeonly %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 6528
  %call2 = tail call zeroext i1 @ixgbe_device_supports_autoneg_fc(ptr noundef %hw1) #19
  br i1 %call2, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %disable_fc_autoneg = getelementptr i8, ptr %netdev, i32 7496
  %0 = ptrtoint ptr %disable_fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disable_fc_autoneg, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink = phi i32 [ 0, %if.else ], [ 1, %land.lhs.true.if.end_crit_edge ]
  %autoneg3 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %autoneg3, align 4
  %current_mode = getelementptr i8, ptr %netdev, i32 7500
  %3 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_mode, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end.if.end20_crit_edge [
    i32 1, label %if.then5
    i32 2, label %if.then10
    i32 3, label %if.then15
  ]

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end20

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  br label %if.end20.sink.split

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end20.sink.split

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %rx_pause16 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %6 = ptrtoint ptr %rx_pause16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %rx_pause16, align 4
  %tx_pause17 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then15, %if.then10, %if.then5
  %tx_pause.sink = phi ptr [ %tx_pause, %if.then10 ], [ %tx_pause17, %if.then15 ], [ %rx_pause, %if.then5 ]
  %7 = ptrtoint ptr %tx_pause.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %tx_pause.sink, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.end.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pause) #0 align 64 {
entry:
  %fc = alloca %struct.ixgbe_fc_info, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 6528
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %fc) #19
  %fc2 = getelementptr i8, ptr %netdev, i32 7428
  %0 = call ptr @memcpy(ptr %fc, ptr %fc2, i32 80)
  %type = getelementptr i8, ptr %netdev, i32 6808
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr i8, ptr %netdev, i32 2836
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %5 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %land.lhs.true4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

land.lhs.true4:                                   ; preds = %if.end
  %call5 = tail call zeroext i1 @ixgbe_device_supports_autoneg_fc(ptr noundef %hw1) #19
  br i1 %call5, label %if.end7thread-pre-split, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7thread-pre-split:                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %autoneg, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7thread-pre-split, %if.end.if.end7_crit_edge
  %8 = phi i32 [ %.pr, %if.end7thread-pre-split ], [ %6, %if.end.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp9 = icmp ne i32 %8, 1
  %disable_fc_autoneg = getelementptr inbounds %struct.ixgbe_fc_info, ptr %fc, i32 0, i32 5
  %frombool = zext i1 %cmp9 to i8
  %9 = ptrtoint ptr %disable_fc_autoneg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %disable_fc_autoneg, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %10 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end7
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %12 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool14.not64 = icmp eq i32 %8, 0
  %or.cond = select i1 %tobool12.not, i1 %tobool14.not64, i1 false
  br i1 %or.cond, label %land.lhs.true18, label %land.lhs.true11.if.end35_crit_edge

land.lhs.true11.if.end35_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35

lor.lhs.false:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool14.not = icmp eq i32 %8, 0
  br i1 %tobool14.not, label %land.lhs.true26, label %lor.lhs.false.if.end35_crit_edge

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35

land.lhs.true18:                                  ; preds = %land.lhs.true11
  %14 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp eq i32 %15, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.end35_crit_edge, label %land.lhs.true18.if.else31_crit_edge

land.lhs.true18.if.else31_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else31

land.lhs.true18.if.end35_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35

land.lhs.true26:                                  ; preds = %lor.lhs.false
  %tx_pause27 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %16 = ptrtoint ptr %tx_pause27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_pause27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool28.not = icmp eq i32 %17, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.else31_crit_edge, label %land.lhs.true26.if.end35_crit_edge

land.lhs.true26.if.end35_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35

land.lhs.true26.if.else31_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else31

if.else31:                                        ; preds = %land.lhs.true26.if.else31_crit_edge, %land.lhs.true18.if.else31_crit_edge
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %land.lhs.true26.if.end35_crit_edge, %land.lhs.true18.if.end35_crit_edge, %lor.lhs.false.if.end35_crit_edge, %land.lhs.true11.if.end35_crit_edge
  %.sink = phi i32 [ 0, %if.else31 ], [ 3, %lor.lhs.false.if.end35_crit_edge ], [ 3, %land.lhs.true11.if.end35_crit_edge ], [ 1, %land.lhs.true18.if.end35_crit_edge ], [ 2, %land.lhs.true26.if.end35_crit_edge ]
  %requested_mode22 = getelementptr inbounds %struct.ixgbe_fc_info, ptr %fc, i32 0, i32 8
  %18 = ptrtoint ptr %requested_mode22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %requested_mode22, align 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(80) %fc, ptr noundef dereferenceable(80) %fc2, i32 80) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool38.not = icmp eq i32 %bcmp, 0
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %if.then39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then39:                                        ; preds = %if.end35
  %19 = call ptr @memcpy(ptr %fc2, ptr %fc, i32 80)
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else43, label %if.then42

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ixgbe_reinit_locked(ptr noundef %add.ptr.i) #19
  br label %cleanup

if.else43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ixgbe_reset(ptr noundef %add.ptr.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.else43, %if.then42, %if.end35.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true4.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %if.else43 ], [ 0, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %fc) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_diag_test(ptr noundef %netdev, ptr nocapture noundef %eth_test, ptr noundef %data) #0 align 64 {
entry:
  %link_up.i292 = alloca i8, align 1
  %link_speed.i293 = alloca i32, align 4
  %atlas.i.i = alloca i8, align 1
  %link_up.i = alloca i8, align 1
  %link_speed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %hw = getelementptr i8, ptr %netdev, i32 6528
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 128
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %netdev, i32 7828
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msg_enable, align 4
  %6 = and i16 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then3

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %netdev4 = getelementptr i8, ptr %netdev, i32 2816
  %7 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev4, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.2) #23
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body.do.end_crit_edge
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1, ptr %data, align 8
  %arrayidx5 = getelementptr i64, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1, ptr %arrayidx5, align 8
  %arrayidx6 = getelementptr i64, ptr %data, i32 2
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1, ptr %arrayidx6, align 8
  %arrayidx7 = getelementptr i64, ptr %data, i32 3
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1, ptr %arrayidx7, align 8
  %arrayidx8 = getelementptr i64, ptr %data, i32 4
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1, ptr %arrayidx8, align 8
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 2
  store i32 %or, ptr %flags, align 4
  br label %cleanup178

if.end9:                                          ; preds = %entry
  %state = getelementptr i8, ptr %netdev, i32 2832
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #19
  %flags10 = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %16 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %if.then12, label %do.body155

if.then12:                                        ; preds = %if.end9
  %flags15 = getelementptr i8, ptr %netdev, i32 2836
  %18 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags15, align 4
  %and16 = and i32 %19, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then12.do.body34_crit_edge, label %for.cond.preheader

if.then12.do.body34_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body34

for.cond.preheader:                               ; preds = %if.then12
  %num_vfs = getelementptr i8, ptr %netdev, i32 67628
  %20 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp19319.not = icmp eq i32 %21, 0
  br i1 %cmp19319.not, label %for.cond.preheader.do.body34_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body34_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body34

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vfinfo = getelementptr i8, ptr %netdev, i32 67632
  %22 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vfinfo, align 16
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0320, 1
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %for.cond.do.body34_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.cond.do.body34_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body34

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0320 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %clear_to_send = getelementptr %struct.vf_data_storage, ptr %23, i32 %i.0320, i32 4
  %24 = ptrtoint ptr %clear_to_send to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %clear_to_send, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool22.not = icmp eq i8 %25, 0
  br i1 %tobool22.not, label %for.cond, label %if.then23

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.3) #23
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1, ptr %data, align 8
  %arrayidx25 = getelementptr i64, ptr %data, i32 1
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1, ptr %arrayidx25, align 8
  %arrayidx26 = getelementptr i64, ptr %data, i32 2
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 1, ptr %arrayidx26, align 8
  %arrayidx27 = getelementptr i64, ptr %data, i32 3
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1, ptr %arrayidx27, align 8
  %arrayidx28 = getelementptr i64, ptr %data, i32 4
  %30 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1, ptr %arrayidx28, align 8
  %31 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags10, align 4
  %or30 = or i32 %32, 2
  store i32 %or30, ptr %flags10, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #19
  br label %cleanup178

do.body34:                                        ; preds = %for.cond.do.body34_crit_edge, %for.cond.preheader.do.body34_crit_edge, %if.then12.do.body34_crit_edge
  %msg_enable35 = getelementptr i8, ptr %netdev, i32 7828
  %33 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %msg_enable35, align 4
  %35 = and i16 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool38.not = icmp eq i16 %35, 0
  br i1 %tobool38.not, label %do.body34.do.end43_crit_edge, label %if.then39

do.body34.do.end43_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end43

if.then39:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #21
  %netdev40 = getelementptr i8, ptr %netdev, i32 2816
  %36 = ptrtoint ptr %netdev40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev40, align 128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %37, ptr noundef nonnull @.str.4) #23
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body34.do.end43_crit_edge
  %arrayidx44 = getelementptr i64, ptr %data, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up.i) #19
  %38 = ptrtoint ptr %link_up.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %link_up.i, align 1, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_speed.i) #19
  %39 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %link_speed.i, align 4
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %do.end43.ixgbe_link_test.exit.thread_crit_edge, label %if.end.i

do.end43.ixgbe_link_test.exit.thread_crit_edge:   ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_link_test.exit.thread

if.end.i:                                         ; preds = %do.end43
  %42 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %arrayidx44, align 8
  %check_link.i = getelementptr i8, ptr %netdev, i32 6652
  %43 = ptrtoint ptr %check_link.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %check_link.i, align 4
  %call2.i = call i32 %44(ptr noundef %hw, ptr noundef nonnull %link_speed.i, ptr noundef nonnull %link_up.i, i1 noundef zeroext true) #19
  %45 = ptrtoint ptr %link_up.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %link_up.i, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i257 = icmp eq i8 %46, 0
  br i1 %tobool.not.i257, label %if.end.i.ixgbe_link_test.exit.thread_crit_edge, label %ixgbe_link_test.exit

if.end.i.ixgbe_link_test.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_link_test.exit.thread

ixgbe_link_test.exit.thread:                      ; preds = %if.end.i.ixgbe_link_test.exit.thread_crit_edge, %do.end43.ixgbe_link_test.exit.thread_crit_edge
  %47 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1, ptr %arrayidx44, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed.i) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i) #19
  br label %if.then47

ixgbe_link_test.exit:                             ; preds = %if.end.i
  %48 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx44, align 8
  %conv.i = trunc i64 %49 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed.i) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool46.not = icmp eq i32 %conv.i, 0
  br i1 %tobool46.not, label %ixgbe_link_test.exit.if.end50_crit_edge, label %ixgbe_link_test.exit.if.then47_crit_edge

ixgbe_link_test.exit.if.then47_crit_edge:         ; preds = %ixgbe_link_test.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then47

ixgbe_link_test.exit.if.end50_crit_edge:          ; preds = %ixgbe_link_test.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

if.then47:                                        ; preds = %ixgbe_link_test.exit.if.then47_crit_edge, %ixgbe_link_test.exit.thread
  %50 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags10, align 4
  %or49 = or i32 %51, 2
  store i32 %or49, ptr %flags10, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %ixgbe_link_test.exit.if.end50_crit_edge
  br i1 %tobool.i.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  %call53 = call i32 @ixgbe_close(ptr noundef %netdev) #19
  br label %do.body55

if.else:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  call void @ixgbe_reset(ptr noundef %add.ptr.i) #19
  br label %do.body55

do.body55:                                        ; preds = %if.else, %if.then52
  %52 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %msg_enable35, align 4
  %54 = and i16 %53, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool59.not = icmp eq i16 %54, 0
  br i1 %tobool59.not, label %do.body55.do.end64_crit_edge, label %if.then60

do.body55.do.end64_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end64

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #21
  %netdev61 = getelementptr i8, ptr %netdev, i32 2816
  %55 = ptrtoint ptr %netdev61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev61, align 128
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %56, ptr noundef nonnull @.str.5) #23
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %do.body55.do.end64_crit_edge
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 128
  %tobool.not.i.i258 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i258, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %do.end64
  %59 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %msg_enable35, align 4
  %61 = and i16 %60, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not.i259 = icmp eq i16 %61, 0
  br i1 %tobool.not.i259, label %do.body.i.do.end.i_crit_edge, label %if.then1.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %netdev.i = getelementptr i8, ptr %netdev, i32 2816
  %62 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %netdev.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %63, ptr noundef nonnull @.str.11) #23
  br label %do.end.i

do.end.i:                                         ; preds = %if.then1.i, %do.body.i.do.end.i_crit_edge
  %64 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 1, ptr %data, align 8
  br label %if.then68

if.end2.i:                                        ; preds = %do.end64
  %type.i = getelementptr i8, ptr %netdev, i32 6808
  %65 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %type.i, align 8
  %switch.tableidx = add i32 %66, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %67 = icmp ult i32 %switch.tableidx, 6
  br i1 %67, label %switch.lookup, label %sw.default.i

sw.default.i:                                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #21
  %68 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 1, ptr %data, align 8
  br label %if.then68

switch.lookup:                                    ; preds = %if.end2.i
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.ixgbe_diag_test, i32 0, i32 %switch.tableidx
  %69 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %69)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep327 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_diag_test.71, i32 0, i32 %switch.tableidx
  %70 = ptrtoint ptr %switch.gep327 to i32
  call void @__asan_load4_noabort(i32 %70)
  %switch.load328 = load i32, ptr %switch.gep327, align 4
  %call6.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #19
  %call8.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #19
  %and9.i = and i32 %call8.i, %switch.load328
  %71 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i.i, label %switch.lookup.ixgbe_write_reg.exit.i_crit_edge, label %do.body1.i.i

switch.lookup.ixgbe_write_reg.exit.i_crit_edge:   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit.i

do.body1.i.i:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %73 = call i32 @llvm.bswap.i32(i32 %switch.load328) #19
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %73) #19, !srcloc !103
  br label %ixgbe_write_reg.exit.i

ixgbe_write_reg.exit.i:                           ; preds = %do.body1.i.i, %switch.lookup.ixgbe_write_reg.exit.i_crit_edge
  %call12.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #19
  %and13.i = and i32 %call12.i, %switch.load328
  call void @__sanitizer_cov_trace_cmp4(i32 %and9.i, i32 %and13.i)
  %cmp.not.i = icmp eq i32 %and9.i, %and13.i
  br i1 %cmp.not.i, label %if.end26.i, label %do.body16.i

do.body16.i:                                      ; preds = %ixgbe_write_reg.exit.i
  %74 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %msg_enable35, align 4
  %76 = and i16 %75, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool20.not.i = icmp eq i16 %76, 0
  br i1 %tobool20.not.i, label %do.body16.i.do.end25.i_crit_edge, label %if.then21.i

do.body16.i.do.end25.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end25.i

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #21
  %netdev22.i = getelementptr i8, ptr %netdev, i32 2816
  %77 = ptrtoint ptr %netdev22.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %netdev22.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %78, ptr noundef nonnull @.str.12, i32 noundef %and13.i, i32 noundef %and9.i) #23
  br label %do.end25.i

do.end25.i:                                       ; preds = %if.then21.i, %do.body16.i.do.end25.i_crit_edge
  %79 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 1, ptr %data, align 8
  br label %if.then68

if.end26.i:                                       ; preds = %ixgbe_write_reg.exit.i
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i147.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i147.i, label %if.end26.i.ixgbe_write_reg.exit150.i_crit_edge, label %do.body1.i149.i

if.end26.i.ixgbe_write_reg.exit150.i_crit_edge:   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit150.i

do.body1.i149.i:                                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %82 = call i32 @llvm.bswap.i32(i32 %call6.i) #19
  %add.ptr.i148.i = getelementptr i8, ptr %81, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i, i32 %82) #19, !srcloc !103
  br label %ixgbe_write_reg.exit150.i

ixgbe_write_reg.exit150.i:                        ; preds = %do.body1.i149.i, %if.end26.i.ixgbe_write_reg.exit150.i_crit_edge
  %83 = ptrtoint ptr %switch.load to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %switch.load, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool28.not166.i = icmp eq i16 %84, 0
  br i1 %tobool28.not166.i, label %ixgbe_write_reg.exit150.i.ixgbe_reg_test.exit_crit_edge, label %ixgbe_write_reg.exit150.i.for.cond.preheader.i_crit_edge

ixgbe_write_reg.exit150.i.for.cond.preheader.i_crit_edge: ; preds = %ixgbe_write_reg.exit150.i
  br label %for.cond.preheader.i

ixgbe_write_reg.exit150.i.ixgbe_reg_test.exit_crit_edge: ; preds = %ixgbe_write_reg.exit150.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_reg_test.exit

for.cond.preheader.i:                             ; preds = %for.end.i.for.cond.preheader.i_crit_edge, %ixgbe_write_reg.exit150.i.for.cond.preheader.i_crit_edge
  %test.1167.i = phi ptr [ %incdec.ptr.i, %for.end.i.for.cond.preheader.i_crit_edge ], [ %switch.load, %ixgbe_write_reg.exit150.i.for.cond.preheader.i_crit_edge ]
  %array_len.i = getelementptr inbounds %struct.ixgbe_reg_test, ptr %test.1167.i, i32 0, i32 1
  %85 = ptrtoint ptr %array_len.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %array_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp30163.not.i = icmp eq i8 %86, 0
  br i1 %cmp30163.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %test_type.i = getelementptr inbounds %struct.ixgbe_reg_test, ptr %test.1167.i, i32 0, i32 2
  %mask77.i = getelementptr inbounds %struct.ixgbe_reg_test, ptr %test.1167.i, i32 0, i32 3
  %write78.i = getelementptr inbounds %struct.ixgbe_reg_test, ptr %test.1167.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0164.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %87 = ptrtoint ptr %test_type.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %test_type.i, align 1
  %89 = zext i8 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %88, label %for.body.i.for.inc.i_crit_edge [
    i8 1, label %sw.epilog81.i
    i8 2, label %sw.bb37.i
    i8 3, label %sw.bb46.i
    i8 4, label %sw.bb53.i
    i8 5, label %sw.bb62.i
    i8 6, label %sw.bb71.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

sw.bb37.i:                                        ; preds = %for.body.i
  %90 = ptrtoint ptr %test.1167.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %test.1167.i, align 4
  %conv39.i = zext i16 %91 to i32
  %mul40.i = shl i32 %i.0164.i, 6
  %add41.i = add i32 %mul40.i, %conv39.i
  %92 = ptrtoint ptr %mask77.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mask77.i, align 4
  %94 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw, align 128
  %tobool.not.i.i151.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i151.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #21
  %96 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 1, ptr %data, align 8
  br label %if.then68

if.end.i.i:                                       ; preds = %sw.bb37.i
  %97 = ptrtoint ptr %write78.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %write78.i, align 4
  %call2.i.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add41.i) #19
  %and.i.i = and i32 %98, %93
  %99 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.ixgbe_write_reg.exit.i.i_crit_edge, label %do.body1.i.i.i

if.end.i.i.ixgbe_write_reg.exit.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit.i.i

do.body1.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %101 = call i32 @llvm.bswap.i32(i32 %and.i.i) #19
  %add.ptr.i.i.i = getelementptr i8, ptr %100, i32 %add41.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %101) #19, !srcloc !103
  br label %ixgbe_write_reg.exit.i.i

ixgbe_write_reg.exit.i.i:                         ; preds = %do.body1.i.i.i, %if.end.i.i.ixgbe_write_reg.exit.i.i_crit_edge
  %call5.i.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add41.i) #19
  %and7.i.i = and i32 %call5.i.i, %93
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %and7.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, %and7.i.i
  br i1 %cmp.not.i.i, label %if.end16.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %ixgbe_write_reg.exit.i.i
  %102 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %msg_enable35, align 4
  %104 = and i16 %103, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool.not.i152.i = icmp eq i16 %104, 0
  br i1 %tobool.not.i152.i, label %do.body.i.i.do.end.i.i_crit_edge, label %if.then10.i.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i.i

if.then10.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %netdev.i.i = getelementptr i8, ptr %netdev, i32 2816
  %105 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %netdev.i.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %106, ptr noundef nonnull @.str.14, i32 noundef %add41.i, i32 noundef %and7.i.i, i32 noundef %and.i.i) #23
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then10.i.i, %do.body.i.i.do.end.i.i_crit_edge
  %107 = zext i32 %add41.i to i64
  %108 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %data, align 8
  %109 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i41.i.i = icmp eq ptr %110, null
  br i1 %tobool.not.i.i41.i.i, label %do.end.i.i.if.then68_crit_edge, label %do.body1.i43.i.i

do.end.i.i.if.then68_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

do.body1.i43.i.i:                                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %111 = call i32 @llvm.bswap.i32(i32 %call2.i.i) #19
  %add.ptr.i42.i.i = getelementptr i8, ptr %110, i32 %add41.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i.i, i32 %111) #19, !srcloc !103
  br label %if.then68

if.end16.i.i:                                     ; preds = %ixgbe_write_reg.exit.i.i
  %112 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i45.i.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i45.i.i, label %if.end16.i.i.for.inc.i_crit_edge, label %do.body1.i47.i.i

if.end16.i.i.for.inc.i_crit_edge:                 ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

do.body1.i47.i.i:                                 ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %114 = call i32 @llvm.bswap.i32(i32 %call2.i.i) #19
  %add.ptr.i46.i.i = getelementptr i8, ptr %113, i32 %add41.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i.i, i32 %114) #19, !srcloc !103
  br label %for.inc.i

sw.bb46.i:                                        ; preds = %for.body.i
  %115 = ptrtoint ptr %test.1167.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %test.1167.i, align 4
  %117 = ptrtoint ptr %write78.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %write78.i, align 4
  %119 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i153.i = icmp eq ptr %120, null
  br i1 %tobool.not.i.i153.i, label %sw.bb46.i.for.inc.i_crit_edge, label %do.body1.i155.i

sw.bb46.i.for.inc.i_crit_edge:                    ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

do.body1.i155.i:                                  ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #21
  %mul50.i = shl i32 %i.0164.i, 6
  %conv49.i = zext i16 %116 to i32
  %add51.i = add i32 %mul50.i, %conv49.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %121 = call i32 @llvm.bswap.i32(i32 %118) #19
  %add.ptr.i154.i = getelementptr i8, ptr %120, i32 %add51.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154.i, i32 %121) #19, !srcloc !103
  br label %for.inc.i

sw.bb53.i:                                        ; preds = %for.body.i
  %122 = ptrtoint ptr %test.1167.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %test.1167.i, align 4
  %conv55.i = zext i16 %123 to i32
  %mul56.i = shl i32 %i.0164.i, 2
  %add57.i = add i32 %mul56.i, %conv55.i
  %124 = ptrtoint ptr %mask77.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mask77.i, align 4
  %126 = ptrtoint ptr %write78.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %write78.i, align 4
  %call60.i = call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %add57.i, i32 noundef %125, i32 noundef %127) #19
  br i1 %call60.i, label %sw.bb53.i.if.then68_crit_edge, label %sw.bb53.i.for.inc.i_crit_edge

sw.bb53.i.for.inc.i_crit_edge:                    ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

sw.bb53.i.if.then68_crit_edge:                    ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

sw.bb62.i:                                        ; preds = %for.body.i
  %128 = ptrtoint ptr %test.1167.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %test.1167.i, align 4
  %conv64.i = zext i16 %129 to i32
  %mul65.i = shl i32 %i.0164.i, 3
  %add66.i = add i32 %mul65.i, %conv64.i
  %130 = ptrtoint ptr %mask77.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %mask77.i, align 4
  %132 = ptrtoint ptr %write78.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %write78.i, align 4
  %call69.i = call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %add66.i, i32 noundef %131, i32 noundef %133) #19
  br i1 %call69.i, label %sw.bb62.i.if.then68_crit_edge, label %sw.bb62.i.for.inc.i_crit_edge

sw.bb62.i.for.inc.i_crit_edge:                    ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

sw.bb62.i.if.then68_crit_edge:                    ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

sw.bb71.i:                                        ; preds = %for.body.i
  %134 = ptrtoint ptr %test.1167.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %test.1167.i, align 4
  %conv73.i = zext i16 %135 to i32
  %mul75.i = shl i32 %i.0164.i, 3
  %add74.i = or i32 %mul75.i, 4
  %add76.i = add i32 %add74.i, %conv73.i
  %136 = ptrtoint ptr %mask77.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mask77.i, align 4
  %138 = ptrtoint ptr %write78.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %write78.i, align 4
  %call79.i = call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %add76.i, i32 noundef %137, i32 noundef %139) #19
  br i1 %call79.i, label %sw.bb71.i.if.then68_crit_edge, label %sw.bb71.i.for.inc.i_crit_edge

sw.bb71.i.for.inc.i_crit_edge:                    ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

sw.bb71.i.if.then68_crit_edge:                    ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

sw.epilog81.i:                                    ; preds = %for.body.i
  %140 = ptrtoint ptr %test.1167.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %test.1167.i, align 4
  %conv35.i = zext i16 %141 to i32
  %mul.i = shl i32 %i.0164.i, 6
  %add.i = add i32 %mul.i, %conv35.i
  %142 = ptrtoint ptr %mask77.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mask77.i, align 4
  %144 = ptrtoint ptr %write78.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %write78.i, align 4
  %call36.i = call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %add.i, i32 noundef %143, i32 noundef %145) #19
  br i1 %call36.i, label %sw.epilog81.i.if.then68_crit_edge, label %sw.epilog81.i.for.inc.i_crit_edge

sw.epilog81.i.for.inc.i_crit_edge:                ; preds = %sw.epilog81.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

sw.epilog81.i.if.then68_crit_edge:                ; preds = %sw.epilog81.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.inc.i:                                        ; preds = %sw.epilog81.i.for.inc.i_crit_edge, %sw.bb71.i.for.inc.i_crit_edge, %sw.bb62.i.for.inc.i_crit_edge, %sw.bb53.i.for.inc.i_crit_edge, %do.body1.i155.i, %sw.bb46.i.for.inc.i_crit_edge, %do.body1.i47.i.i, %if.end16.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0164.i, 1
  %146 = ptrtoint ptr %array_len.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %array_len.i, align 2
  %conv29.i = zext i8 %147 to i32
  %cmp30.i = icmp ult i32 %inc.i, %conv29.i
  br i1 %cmp30.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.ixgbe_reg_test, ptr %test.1167.i, i32 1
  %148 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %incdec.ptr.i, align 4
  %tobool28.not.i = icmp eq i16 %149, 0
  br i1 %tobool28.not.i, label %for.end.i.ixgbe_reg_test.exit_crit_edge, label %for.end.i.for.cond.preheader.i_crit_edge

for.end.i.for.cond.preheader.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.preheader.i

for.end.i.ixgbe_reg_test.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_reg_test.exit

ixgbe_reg_test.exit:                              ; preds = %for.end.i.ixgbe_reg_test.exit_crit_edge, %ixgbe_write_reg.exit150.i.ixgbe_reg_test.exit_crit_edge
  %150 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 0, ptr %data, align 8
  br label %if.end71

if.then68:                                        ; preds = %sw.epilog81.i.if.then68_crit_edge, %sw.bb71.i.if.then68_crit_edge, %sw.bb62.i.if.then68_crit_edge, %sw.bb53.i.if.then68_crit_edge, %do.body1.i43.i.i, %do.end.i.i.if.then68_crit_edge, %if.then.i.i, %do.end25.i, %sw.default.i, %do.end.i
  %151 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %flags10, align 4
  %or70 = or i32 %152, 2
  store i32 %or70, ptr %flags10, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %ixgbe_reg_test.exit
  call void @ixgbe_reset(ptr noundef %add.ptr.i) #19
  %153 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %msg_enable35, align 4
  %155 = and i16 %154, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool76.not = icmp eq i16 %155, 0
  br i1 %tobool76.not, label %if.end71.do.end81_crit_edge, label %if.then77

if.end71.do.end81_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end81

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #21
  %netdev78 = getelementptr i8, ptr %netdev, i32 2816
  %156 = ptrtoint ptr %netdev78 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %netdev78, align 128
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %157, ptr noundef nonnull @.str.6) #23
  br label %do.end81

do.end81:                                         ; preds = %if.then77, %if.end71.do.end81_crit_edge
  %arrayidx82 = getelementptr i64, ptr %data, i32 1
  %validate_checksum.i = getelementptr i8, ptr %netdev, i32 7724
  %158 = ptrtoint ptr %validate_checksum.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %validate_checksum.i, align 4
  %call.i = call i32 %159(ptr noundef %hw, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i261 = icmp ne i32 %call.i, 0
  %..i = zext i1 %tobool.not.i261 to i64
  %160 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %..i, ptr %arrayidx82, align 8
  br i1 %tobool.not.i261, label %if.then85, label %do.end81.if.end88_crit_edge

do.end81.if.end88_crit_edge:                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end88

if.then85:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #21
  %161 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %flags10, align 4
  %or87 = or i32 %162, 2
  store i32 %or87, ptr %flags10, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %do.end81.if.end88_crit_edge
  call void @ixgbe_reset(ptr noundef %add.ptr.i) #19
  %163 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %msg_enable35, align 4
  %165 = and i16 %164, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %tobool93.not = icmp eq i16 %165, 0
  br i1 %tobool93.not, label %if.end88.do.end98_crit_edge, label %if.then94

if.end88.do.end98_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end98

if.then94:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #21
  %netdev95 = getelementptr i8, ptr %netdev, i32 2816
  %166 = ptrtoint ptr %netdev95 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %netdev95, align 128
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %167, ptr noundef nonnull @.str.7) #23
  br label %do.end98

do.end98:                                         ; preds = %if.then94, %if.end88.do.end98_crit_edge
  %arrayidx99 = getelementptr i64, ptr %data, i32 2
  %netdev1.i = getelementptr i8, ptr %netdev, i32 2816
  %168 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %netdev1.i, align 128
  %pdev.i = getelementptr i8, ptr %netdev, i32 2824
  %170 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pdev.i, align 8
  %irq2.i = getelementptr inbounds %struct.pci_dev, ptr %171, i32 0, i32 46
  %172 = ptrtoint ptr %irq2.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %irq2.i, align 4
  %174 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 0, ptr %arrayidx99, align 8
  %msix_entries.i = getelementptr i8, ptr %netdev, i32 5376
  %175 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %msix_entries.i, align 128
  %tobool.not.i263 = icmp eq ptr %176, null
  br i1 %tobool.not.i263, label %if.else.i264, label %do.end98.if.end105_crit_edge

do.end98.if.end105_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end105

if.else.i264:                                     ; preds = %do.end98
  %177 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %flags15, align 4
  %and.i = and i32 %178, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.else7.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i264
  %call.i.i = call i32 @request_threaded_irq(i32 noundef %173, ptr noundef nonnull @ixgbe_test_intr, ptr noundef null, i32 noundef 0, ptr noundef %169, ptr noundef %169) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %if.then4.i.do.body.i266_crit_edge, label %if.then4.i.if.then102.sink.split_crit_edge

if.then4.i.if.then102.sink.split_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then102.sink.split

if.then4.i.do.body.i266_crit_edge:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i266

if.else7.i:                                       ; preds = %if.else.i264
  %call.i132.i = call i32 @request_threaded_irq(i32 noundef %173, ptr noundef nonnull @ixgbe_test_intr, ptr noundef null, i32 noundef 256, ptr noundef %169, ptr noundef %169) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132.i)
  %tobool11.not.i = icmp eq i32 %call.i132.i, 0
  br i1 %tobool11.not.i, label %if.else7.i.do.body.i266_crit_edge, label %if.else13.i

if.else7.i.do.body.i266_crit_edge:                ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i266

if.else13.i:                                      ; preds = %if.else7.i
  %call.i133.i = call i32 @request_threaded_irq(i32 noundef %173, ptr noundef nonnull @ixgbe_test_intr, ptr noundef null, i32 noundef 128, ptr noundef %169, ptr noundef %169) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.i)
  %tobool17.not.i = icmp eq i32 %call.i133.i, 0
  br i1 %tobool17.not.i, label %if.else13.i.do.body.i266_crit_edge, label %if.else13.i.if.then102.sink.split_crit_edge

if.else13.i.if.then102.sink.split_crit_edge:      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then102.sink.split

if.else13.i.do.body.i266_crit_edge:               ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i266

do.body.i266:                                     ; preds = %if.else13.i.do.body.i266_crit_edge, %if.else7.i.do.body.i266_crit_edge, %if.then4.i.do.body.i266_crit_edge
  %tobool32.not.i = phi i1 [ false, %if.else13.i.do.body.i266_crit_edge ], [ true, %if.then4.i.do.body.i266_crit_edge ], [ true, %if.else7.i.do.body.i266_crit_edge ]
  %179 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %msg_enable35, align 4
  %181 = and i16 %180, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %tobool24.not.i = icmp eq i16 %181, 0
  br i1 %tobool24.not.i, label %do.body.i266.do.end.i269_crit_edge, label %if.then25.i

do.body.i266.do.end.i269_crit_edge:               ; preds = %do.body.i266
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i269

if.then25.i:                                      ; preds = %do.body.i266
  call void @__sanitizer_cov_trace_pc() #21
  %182 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %netdev1.i, align 128
  %cond.i = select i1 %tobool32.not.i, ptr @.str.17, ptr @.str.16
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %183, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond.i) #23
  br label %do.end.i269

do.end.i269:                                      ; preds = %if.then25.i, %do.body.i266.do.end.i269_crit_edge
  %184 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i268 = icmp eq ptr %185, null
  br i1 %tobool.not.i.i.i268, label %do.end.i269.ixgbe_write_reg.exit.i272_crit_edge, label %do.body1.i.i271

do.end.i269.ixgbe_write_reg.exit.i272_crit_edge:  ; preds = %do.end.i269
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit.i272

do.body1.i.i271:                                  ; preds = %do.end.i269
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %add.ptr.i.i270 = getelementptr i8, ptr %185, i32 2184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i270, i32 -1) #19, !srcloc !103
  br label %ixgbe_write_reg.exit.i272

ixgbe_write_reg.exit.i272:                        ; preds = %do.body1.i.i271, %do.end.i269.ixgbe_write_reg.exit.i272_crit_edge
  %call30.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #19
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %test_icr.i = getelementptr i8, ptr %netdev, i32 5380
  br label %for.body.i273

for.body.i273:                                    ; preds = %for.inc.i275.for.body.i273_crit_edge, %ixgbe_write_reg.exit.i272
  %i.0162.i = phi i32 [ 0, %ixgbe_write_reg.exit.i272 ], [ %inc.i274, %for.inc.i275.for.body.i273_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.0162.i
  br i1 %tobool32.not.i, label %if.then33.i, label %for.body.i273.if.end46.i_crit_edge

for.body.i273.if.end46.i_crit_edge:               ; preds = %for.body.i273
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end46.i

if.then33.i:                                      ; preds = %for.body.i273
  %186 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %test_icr.i, align 4
  %and35.i = xor i32 %shl.i, 32767
  %187 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i134.i = icmp eq ptr %188, null
  br i1 %tobool.not.i.i134.i, label %if.then33.i.ixgbe_write_reg.exit137.i_crit_edge, label %do.body1.i136.i

if.then33.i.ixgbe_write_reg.exit137.i_crit_edge:  ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit137.i

do.body1.i136.i:                                  ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %189 = call i32 @llvm.bswap.i32(i32 %and35.i) #19
  %add.ptr.i135.i = getelementptr i8, ptr %188, i32 2184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i, i32 %189) #19, !srcloc !103
  br label %ixgbe_write_reg.exit137.i

ixgbe_write_reg.exit137.i:                        ; preds = %do.body1.i136.i, %if.then33.i.ixgbe_write_reg.exit137.i_crit_edge
  %190 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i138.i = icmp eq ptr %191, null
  br i1 %tobool.not.i.i138.i, label %ixgbe_write_reg.exit137.i.ixgbe_write_reg.exit141.i_crit_edge, label %do.body1.i140.i

ixgbe_write_reg.exit137.i.ixgbe_write_reg.exit141.i_crit_edge: ; preds = %ixgbe_write_reg.exit137.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit141.i

do.body1.i140.i:                                  ; preds = %ixgbe_write_reg.exit137.i
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %192 = call i32 @llvm.bswap.i32(i32 %and35.i) #19
  %add.ptr.i139.i = getelementptr i8, ptr %191, i32 2056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 %192) #19, !srcloc !103
  br label %ixgbe_write_reg.exit141.i

ixgbe_write_reg.exit141.i:                        ; preds = %do.body1.i140.i, %ixgbe_write_reg.exit137.i.ixgbe_write_reg.exit141.i_crit_edge
  %call40.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #19
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %193 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %test_icr.i, align 4
  %and42.i = and i32 %194, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %ixgbe_write_reg.exit141.i.if.end46.i_crit_edge, label %ixgbe_write_reg.exit141.i.for.end.sink.split.i_crit_edge

ixgbe_write_reg.exit141.i.for.end.sink.split.i_crit_edge: ; preds = %ixgbe_write_reg.exit141.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.sink.split.i

ixgbe_write_reg.exit141.i.if.end46.i_crit_edge:   ; preds = %ixgbe_write_reg.exit141.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end46.i

if.end46.i:                                       ; preds = %ixgbe_write_reg.exit141.i.if.end46.i_crit_edge, %for.body.i273.if.end46.i_crit_edge
  %195 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %test_icr.i, align 4
  %196 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i142.i = icmp eq ptr %197, null
  br i1 %tobool.not.i.i142.i, label %if.end46.i.ixgbe_write_reg.exit145.i_crit_edge, label %do.body1.i144.i

if.end46.i.ixgbe_write_reg.exit145.i_crit_edge:   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit145.i

do.body1.i144.i:                                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %198 = call i32 @llvm.bswap.i32(i32 %shl.i) #19
  %add.ptr.i143.i = getelementptr i8, ptr %197, i32 2176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 %198) #19, !srcloc !103
  br label %ixgbe_write_reg.exit145.i

ixgbe_write_reg.exit145.i:                        ; preds = %do.body1.i144.i, %if.end46.i.ixgbe_write_reg.exit145.i_crit_edge
  %199 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i146.i = icmp eq ptr %200, null
  br i1 %tobool.not.i.i146.i, label %ixgbe_write_reg.exit145.i.ixgbe_write_reg.exit149.i_crit_edge, label %do.body1.i148.i

ixgbe_write_reg.exit145.i.ixgbe_write_reg.exit149.i_crit_edge: ; preds = %ixgbe_write_reg.exit145.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit149.i

do.body1.i148.i:                                  ; preds = %ixgbe_write_reg.exit145.i
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %201 = call i32 @llvm.bswap.i32(i32 %shl.i) #19
  %add.ptr.i147.i = getelementptr i8, ptr %200, i32 2056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 %201) #19, !srcloc !103
  br label %ixgbe_write_reg.exit149.i

ixgbe_write_reg.exit149.i:                        ; preds = %do.body1.i148.i, %ixgbe_write_reg.exit145.i.ixgbe_write_reg.exit149.i_crit_edge
  %call51.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #19
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %202 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %test_icr.i, align 4
  %and53.i = and i32 %203, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %ixgbe_write_reg.exit149.i.for.end.sink.split.i_crit_edge, label %if.end56.i

ixgbe_write_reg.exit149.i.for.end.sink.split.i_crit_edge: ; preds = %ixgbe_write_reg.exit149.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.sink.split.i

if.end56.i:                                       ; preds = %ixgbe_write_reg.exit149.i
  br i1 %tobool32.not.i, label %if.then58.i, label %if.end56.i.for.inc.i275_crit_edge

if.end56.i.for.inc.i275_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i275

if.then58.i:                                      ; preds = %if.end56.i
  %204 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %test_icr.i, align 4
  %and62.i = xor i32 %shl.i, 32767
  %205 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i150.i = icmp eq ptr %206, null
  br i1 %tobool.not.i.i150.i, label %if.then58.i.ixgbe_write_reg.exit153.i_crit_edge, label %do.body1.i152.i

if.then58.i.ixgbe_write_reg.exit153.i_crit_edge:  ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit153.i

do.body1.i152.i:                                  ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %207 = call i32 @llvm.bswap.i32(i32 %and62.i) #19
  %add.ptr.i151.i = getelementptr i8, ptr %206, i32 2184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i, i32 %207) #19, !srcloc !103
  br label %ixgbe_write_reg.exit153.i

ixgbe_write_reg.exit153.i:                        ; preds = %do.body1.i152.i, %if.then58.i.ixgbe_write_reg.exit153.i_crit_edge
  %208 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i154.i = icmp eq ptr %209, null
  br i1 %tobool.not.i.i154.i, label %ixgbe_write_reg.exit153.i.ixgbe_write_reg.exit157.i_crit_edge, label %do.body1.i156.i

ixgbe_write_reg.exit153.i.ixgbe_write_reg.exit157.i_crit_edge: ; preds = %ixgbe_write_reg.exit153.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit157.i

do.body1.i156.i:                                  ; preds = %ixgbe_write_reg.exit153.i
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %210 = call i32 @llvm.bswap.i32(i32 %and62.i) #19
  %add.ptr.i155.i = getelementptr i8, ptr %209, i32 2056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.i, i32 %210) #19, !srcloc !103
  br label %ixgbe_write_reg.exit157.i

ixgbe_write_reg.exit157.i:                        ; preds = %do.body1.i156.i, %ixgbe_write_reg.exit153.i.ixgbe_write_reg.exit157.i_crit_edge
  %call67.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #19
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %211 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %test_icr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool69.not.i = icmp eq i32 %212, 0
  br i1 %tobool69.not.i, label %ixgbe_write_reg.exit157.i.for.inc.i275_crit_edge, label %ixgbe_write_reg.exit157.i.for.end.sink.split.i_crit_edge

ixgbe_write_reg.exit157.i.for.end.sink.split.i_crit_edge: ; preds = %ixgbe_write_reg.exit157.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.sink.split.i

ixgbe_write_reg.exit157.i.for.inc.i275_crit_edge: ; preds = %ixgbe_write_reg.exit157.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i275

for.inc.i275:                                     ; preds = %ixgbe_write_reg.exit157.i.for.inc.i275_crit_edge, %if.end56.i.for.inc.i275_crit_edge
  %inc.i274 = add nuw nsw i32 %i.0162.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i274, 10
  br i1 %exitcond.not.i, label %for.inc.i275.for.end.i276_crit_edge, label %for.inc.i275.for.body.i273_crit_edge

for.inc.i275.for.body.i273_crit_edge:             ; preds = %for.inc.i275
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i273

for.inc.i275.for.end.i276_crit_edge:              ; preds = %for.inc.i275
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i276

for.end.sink.split.i:                             ; preds = %ixgbe_write_reg.exit157.i.for.end.sink.split.i_crit_edge, %ixgbe_write_reg.exit149.i.for.end.sink.split.i_crit_edge, %ixgbe_write_reg.exit141.i.for.end.sink.split.i_crit_edge
  %.sink.i = phi i64 [ 3, %ixgbe_write_reg.exit141.i.for.end.sink.split.i_crit_edge ], [ 4, %ixgbe_write_reg.exit149.i.for.end.sink.split.i_crit_edge ], [ 5, %ixgbe_write_reg.exit157.i.for.end.sink.split.i_crit_edge ]
  %213 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %.sink.i, ptr %arrayidx99, align 8
  br label %for.end.i276

for.end.i276:                                     ; preds = %for.end.sink.split.i, %for.inc.i275.for.end.i276_crit_edge
  %214 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i158.i = icmp eq ptr %215, null
  br i1 %tobool.not.i.i158.i, label %for.end.i276.ixgbe_intr_test.exit_crit_edge, label %do.body1.i160.i

for.end.i276.ixgbe_intr_test.exit_crit_edge:      ; preds = %for.end.i276
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_intr_test.exit

do.body1.i160.i:                                  ; preds = %for.end.i276
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %add.ptr.i159.i = getelementptr i8, ptr %215, i32 2184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i, i32 -1) #19, !srcloc !103
  br label %ixgbe_intr_test.exit

ixgbe_intr_test.exit:                             ; preds = %do.body1.i160.i, %for.end.i276.ixgbe_intr_test.exit_crit_edge
  %call75.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #19
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %call76.i = call ptr @free_irq(i32 noundef %173, ptr noundef %169) #19
  %216 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %arrayidx99, align 8
  %conv77.i = trunc i64 %217 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv77.i)
  %tobool101.not = icmp eq i32 %conv77.i, 0
  br i1 %tobool101.not, label %ixgbe_intr_test.exit.if.end105_crit_edge, label %ixgbe_intr_test.exit.if.then102_crit_edge

ixgbe_intr_test.exit.if.then102_crit_edge:        ; preds = %ixgbe_intr_test.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then102

ixgbe_intr_test.exit.if.end105_crit_edge:         ; preds = %ixgbe_intr_test.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end105

if.then102.sink.split:                            ; preds = %if.else13.i.if.then102.sink.split_crit_edge, %if.then4.i.if.then102.sink.split_crit_edge
  %218 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 1, ptr %arrayidx99, align 8
  br label %if.then102

if.then102:                                       ; preds = %if.then102.sink.split, %ixgbe_intr_test.exit.if.then102_crit_edge
  %219 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %flags10, align 4
  %or104 = or i32 %220, 2
  store i32 %or104, ptr %flags10, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %ixgbe_intr_test.exit.if.end105_crit_edge, %do.end98.if.end105_crit_edge
  %221 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %flags15, align 4
  %and107 = and i32 %222, 8404992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end121, label %do.body110

do.body110:                                       ; preds = %if.end105
  %223 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %msg_enable35, align 4
  %225 = and i16 %224, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %225)
  %tobool114.not = icmp eq i16 %225, 0
  br i1 %tobool114.not, label %do.body110.do.end119_crit_edge, label %if.then115

do.body110.do.end119_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end119

if.then115:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #21
  %226 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %netdev1.i, align 128
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %227, ptr noundef nonnull @.str.8) #23
  br label %do.end119

do.end119:                                        ; preds = %if.then115, %do.body110.do.end119_crit_edge
  %arrayidx120 = getelementptr i64, ptr %data, i32 3
  %228 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 0, ptr %arrayidx120, align 8
  br label %skip_loopback

if.end121:                                        ; preds = %if.end105
  call void @ixgbe_reset(ptr noundef %add.ptr.i) #19
  %229 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %msg_enable35, align 4
  %231 = and i16 %230, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %231)
  %tobool126.not = icmp eq i16 %231, 0
  br i1 %tobool126.not, label %if.end121.do.end131_crit_edge, label %if.then127

if.end121.do.end131_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end131

if.then127:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #21
  %232 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %netdev1.i, align 128
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %233, ptr noundef nonnull @.str.9) #23
  br label %do.end131

do.end131:                                        ; preds = %if.then127, %if.end121.do.end131_crit_edge
  %arrayidx132 = getelementptr i64, ptr %data, i32 3
  %test_tx_ring.i.i = getelementptr i8, ptr %netdev, i32 5504
  %test_rx_ring.i.i = getelementptr i8, ptr %netdev, i32 6016
  %count.i.i = getelementptr i8, ptr %netdev, i32 5548
  %234 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 512, ptr %count.i.i, align 4
  %queue_index.i.i = getelementptr i8, ptr %netdev, i32 5550
  %235 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 0, ptr %queue_index.i.i, align 2
  %236 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pdev.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %237, i32 0, i32 44
  %dev2.i.i = getelementptr i8, ptr %netdev, i32 5520
  %238 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %dev.i.i, ptr %dev2.i.i, align 16
  %239 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %netdev1.i, align 128
  %netdev3.i.i = getelementptr i8, ptr %netdev, i32 5512
  %241 = ptrtoint ptr %netdev3.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %240, ptr %netdev3.i.i, align 8
  %tx_ring4.i.i = getelementptr i8, ptr %netdev, i32 3200
  %242 = ptrtoint ptr %tx_ring4.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %tx_ring4.i.i, align 128
  %reg_idx.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %243, i32 0, i32 13
  %244 = ptrtoint ptr %reg_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %reg_idx.i.i, align 1
  %reg_idx5.i.i = getelementptr i8, ptr %netdev, i32 5551
  %246 = ptrtoint ptr %reg_idx5.i.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %reg_idx5.i.i, align 1
  %call.i.i279 = call i32 @ixgbe_setup_tx_resources(ptr noundef %test_tx_ring.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i279)
  %tobool.not.i.i280 = icmp eq i32 %call.i.i279, 0
  br i1 %tobool.not.i.i280, label %if.end.i.i281, label %do.end131.ixgbe_setup_desc_rings.exit.thread.i_crit_edge

do.end131.ixgbe_setup_desc_rings.exit.thread.i_crit_edge: ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_setup_desc_rings.exit.thread.i

if.end.i.i281:                                    ; preds = %do.end131
  %type.i.i = getelementptr i8, ptr %netdev, i32 6808
  %247 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %type.i.i, align 8
  %.off.i.i = add i32 %248, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 5
  br i1 %switch.i.i, label %sw.bb.i.i, label %if.end.i.i281.sw.epilog.i.i_crit_edge

if.end.i.i281.sw.epilog.i.i_crit_edge:            ; preds = %if.end.i.i281
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i281
  %call8.i.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 19072) #19
  %249 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i.i282 = icmp eq ptr %250, null
  br i1 %tobool.not.i.i.i.i282, label %sw.bb.i.i.sw.epilog.i.i_crit_edge, label %do.body1.i.i.i284

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i.i

do.body1.i.i.i284:                                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %or.i.i = or i32 %call8.i.i, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %251 = call i32 @llvm.bswap.i32(i32 %or.i.i) #19
  %add.ptr.i.i.i283 = getelementptr i8, ptr %250, i32 19072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i283, i32 %251) #19, !srcloc !103
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.body1.i.i.i284, %sw.bb.i.i.sw.epilog.i.i_crit_edge, %if.end.i.i281.sw.epilog.i.i_crit_edge
  call void @ixgbe_configure_tx_ring(ptr noundef %add.ptr.i, ptr noundef %test_tx_ring.i.i) #19
  %count10.i.i = getelementptr i8, ptr %netdev, i32 6060
  %252 = ptrtoint ptr %count10.i.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 512, ptr %count10.i.i, align 4
  %queue_index11.i.i = getelementptr i8, ptr %netdev, i32 6062
  %253 = ptrtoint ptr %queue_index11.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %queue_index11.i.i, align 2
  %254 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %pdev.i, align 8
  %dev13.i.i = getelementptr inbounds %struct.pci_dev, ptr %255, i32 0, i32 44
  %dev14.i.i = getelementptr i8, ptr %netdev, i32 6032
  %256 = ptrtoint ptr %dev14.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %dev13.i.i, ptr %dev14.i.i, align 16
  %257 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %netdev1.i, align 128
  %netdev16.i.i = getelementptr i8, ptr %netdev, i32 6024
  %259 = ptrtoint ptr %netdev16.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %258, ptr %netdev16.i.i, align 8
  %rx_ring17.i.i = getelementptr i8, ptr %netdev, i32 3476
  %260 = ptrtoint ptr %rx_ring17.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %rx_ring17.i.i, align 4
  %reg_idx19.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %261, i32 0, i32 13
  %262 = ptrtoint ptr %reg_idx19.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %reg_idx19.i.i, align 1
  %reg_idx20.i.i = getelementptr i8, ptr %netdev, i32 6063
  %264 = ptrtoint ptr %reg_idx20.i.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %263, ptr %reg_idx20.i.i, align 1
  %call21.i.i = call i32 @ixgbe_setup_rx_resources(ptr noundef %add.ptr.i, ptr noundef %test_rx_ring.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end24.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @ixgbe_disable_rx(ptr noundef %add.ptr.i) #19
  call void @ixgbe_disable_tx(ptr noundef %add.ptr.i) #19
  call void @ixgbe_reset(ptr noundef %add.ptr.i) #19
  call void @ixgbe_free_tx_resources(ptr noundef %test_tx_ring.i.i) #19
  call void @ixgbe_free_rx_resources(ptr noundef %test_rx_ring.i.i) #19
  br label %ixgbe_setup_desc_rings.exit.thread.i

if.end24.i.i:                                     ; preds = %sw.epilog.i.i
  %disable_rx.i.i = getelementptr i8, ptr %netdev, i32 6772
  %265 = ptrtoint ptr %disable_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %disable_rx.i.i, align 4
  call void %266(ptr noundef %hw) #19
  call void @ixgbe_configure_rx_ring(ptr noundef %add.ptr.i, ptr noundef %test_rx_ring.i.i) #19
  %call27.i.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12288) #19
  %267 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i73.i.i = icmp eq ptr %268, null
  br i1 %tobool.not.i.i73.i.i, label %if.end24.i.i.if.end.i285_crit_edge, label %do.body1.i75.i.i

if.end24.i.i.if.end.i285_crit_edge:               ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i285

do.body1.i75.i.i:                                 ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %or28.i.i = or i32 %call27.i.i, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %269 = call i32 @llvm.bswap.i32(i32 %or28.i.i) #19
  %add.ptr.i74.i.i = getelementptr i8, ptr %268, i32 12288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i.i, i32 %269) #19, !srcloc !103
  br label %if.end.i285

ixgbe_setup_desc_rings.exit.thread.i:             ; preds = %if.then23.i.i, %do.end131.ixgbe_setup_desc_rings.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 1, %do.end131.ixgbe_setup_desc_rings.exit.thread.i_crit_edge ], [ 4, %if.then23.i.i ]
  %270 = zext i32 %retval.0.i.ph.i to i64
  %271 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 %270, ptr %arrayidx132, align 8
  br label %ixgbe_loopback_test.exit

if.end.i285:                                      ; preds = %do.body1.i75.i.i, %if.end24.i.i.if.end.i285_crit_edge
  %enable_rx.i.i = getelementptr i8, ptr %netdev, i32 6776
  %272 = ptrtoint ptr %enable_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %enable_rx.i.i, align 4
  call void %273(ptr noundef %hw) #19
  %274 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store8_noabort(i32 %274)
  store i64 0, ptr %arrayidx132, align 8
  %call.i19.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16960) #19
  %275 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i20.i = icmp eq ptr %276, null
  br i1 %tobool.not.i.i.i20.i, label %if.end.i285.ixgbe_write_reg.exit.i.i287_crit_edge, label %do.body1.i.i23.i

if.end.i285.ixgbe_write_reg.exit.i.i287_crit_edge: ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit.i.i287

do.body1.i.i23.i:                                 ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #21
  %or.i21.i = or i32 %call.i19.i, 32768
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %277 = call i32 @llvm.bswap.i32(i32 %or.i21.i) #19
  %add.ptr.i.i22.i = getelementptr i8, ptr %276, i32 16960
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22.i, i32 %277) #19, !srcloc !103
  br label %ixgbe_write_reg.exit.i.i287

ixgbe_write_reg.exit.i.i287:                      ; preds = %do.body1.i.i23.i, %if.end.i285.ixgbe_write_reg.exit.i.i287_crit_edge
  %call2.i.i286 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 20608) #19
  %278 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i90.i.i = icmp eq ptr %279, null
  br i1 %tobool.not.i.i90.i.i, label %ixgbe_write_reg.exit.i.i287.ixgbe_write_reg.exit93.i.i_crit_edge, label %do.body1.i92.i.i

ixgbe_write_reg.exit.i.i287.ixgbe_write_reg.exit93.i.i_crit_edge: ; preds = %ixgbe_write_reg.exit.i.i287
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit93.i.i

do.body1.i92.i.i:                                 ; preds = %ixgbe_write_reg.exit.i.i287
  call void @__sanitizer_cov_trace_pc() #21
  %or3.i.i = or i32 %call2.i.i286, 1282
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %280 = call i32 @llvm.bswap.i32(i32 %or3.i.i) #19
  %add.ptr.i91.i.i = getelementptr i8, ptr %279, i32 20608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i.i, i32 %280) #19, !srcloc !103
  br label %ixgbe_write_reg.exit93.i.i

ixgbe_write_reg.exit93.i.i:                       ; preds = %do.body1.i92.i.i, %ixgbe_write_reg.exit.i.i287.ixgbe_write_reg.exit93.i.i_crit_edge
  %281 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %type.i.i, align 8
  %.off.i25.i = add i32 %282, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i25.i)
  %switch.i26.i = icmp ult i32 %.off.i25.i, 4
  br i1 %switch.i26.i, label %sw.bb.i27.i, label %sw.default.i.i

sw.bb.i27.i:                                      ; preds = %ixgbe_write_reg.exit93.i.i
  %call5.i.i288 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17200) #19
  %283 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i94.i.i = icmp eq ptr %284, null
  br i1 %tobool.not.i.i94.i.i, label %sw.bb.i27.i.sw.epilog.i29.i_crit_edge, label %do.body1.i96.i.i

sw.bb.i27.i.sw.epilog.i29.i_crit_edge:            ; preds = %sw.bb.i27.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i29.i

do.body1.i96.i.i:                                 ; preds = %sw.bb.i27.i
  call void @__sanitizer_cov_trace_pc() #21
  %or6.i.i = or i32 %call5.i.i288, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %285 = call i32 @llvm.bswap.i32(i32 %or6.i.i) #19
  %add.ptr.i95.i.i = getelementptr i8, ptr %284, i32 17200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i.i, i32 %285) #19, !srcloc !103
  br label %sw.epilog.i29.i

sw.default.i.i:                                   ; preds = %ixgbe_write_reg.exit93.i.i
  %orig_autoc.i.i = getelementptr i8, ptr %netdev, i32 7380
  %286 = ptrtoint ptr %orig_autoc.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %orig_autoc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool.not.i28.i = icmp eq i32 %287, 0
  br i1 %tobool.not.i28.i, label %ixgbe_setup_loopback_test.exit.i, label %if.then.i.i289

if.then.i.i289:                                   ; preds = %sw.default.i.i
  %288 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i98.i.i = icmp eq ptr %289, null
  br i1 %tobool.not.i.i98.i.i, label %if.then.i.i289.sw.epilog.i29.i_crit_edge, label %do.body1.i100.i.i

if.then.i.i289.sw.epilog.i29.i_crit_edge:         ; preds = %if.then.i.i289
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i29.i

do.body1.i100.i.i:                                ; preds = %if.then.i.i289
  call void @__sanitizer_cov_trace_pc() #21
  %or10.i.i = or i32 %287, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %290 = call i32 @llvm.bswap.i32(i32 %or10.i.i) #19
  %add.ptr.i99.i.i = getelementptr i8, ptr %289, i32 17056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i.i, i32 %290) #19, !srcloc !103
  br label %sw.epilog.i29.i

sw.epilog.i29.i:                                  ; preds = %do.body1.i100.i.i, %if.then.i.i289.sw.epilog.i29.i_crit_edge, %do.body1.i96.i.i, %sw.bb.i27.i.sw.epilog.i29.i_crit_edge
  %call11.i.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #19
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %291 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %292)
  %cmp.i.i = icmp eq i32 %292, 1
  br i1 %cmp.i.i, label %if.then14.i.i, label %sw.epilog.i29.i.if.end5.i_crit_edge

sw.epilog.i29.i.if.end5.i_crit_edge:              ; preds = %sw.epilog.i29.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i

if.then14.i.i:                                    ; preds = %sw.epilog.i29.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %atlas.i.i) #19
  %293 = ptrtoint ptr %atlas.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 -1, ptr %atlas.i.i, align 1, !annotation !101
  %read_analog_reg8.i.i = getelementptr i8, ptr %netdev, i32 6584
  %294 = ptrtoint ptr %read_analog_reg8.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %read_analog_reg8.i.i, align 4
  %call16.i.i = call i32 %295(ptr noundef %hw, i32 noundef 36, ptr noundef nonnull %atlas.i.i) #19
  %296 = ptrtoint ptr %atlas.i.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %atlas.i.i, align 1
  %298 = or i8 %297, 16
  store i8 %298, ptr %atlas.i.i, align 1
  %write_analog_reg8.i.i = getelementptr i8, ptr %netdev, i32 6588
  %299 = ptrtoint ptr %write_analog_reg8.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %write_analog_reg8.i.i, align 4
  %call21.i30.i = call i32 %300(ptr noundef %hw, i32 noundef 36, i8 noundef zeroext %298) #19
  %301 = ptrtoint ptr %read_analog_reg8.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %read_analog_reg8.i.i, align 4
  %call25.i.i = call i32 %302(ptr noundef %hw, i32 noundef 11, ptr noundef nonnull %atlas.i.i) #19
  %303 = ptrtoint ptr %atlas.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %atlas.i.i, align 1
  %305 = or i8 %304, -16
  store i8 %305, ptr %atlas.i.i, align 1
  %306 = ptrtoint ptr %write_analog_reg8.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %write_analog_reg8.i.i, align 4
  %call32.i.i = call i32 %307(ptr noundef %hw, i32 noundef 11, i8 noundef zeroext %305) #19
  %308 = ptrtoint ptr %read_analog_reg8.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %read_analog_reg8.i.i, align 4
  %call36.i.i = call i32 %309(ptr noundef %hw, i32 noundef 12, ptr noundef nonnull %atlas.i.i) #19
  %310 = ptrtoint ptr %atlas.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %atlas.i.i, align 1
  %312 = or i8 %311, -16
  store i8 %312, ptr %atlas.i.i, align 1
  %313 = ptrtoint ptr %write_analog_reg8.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %write_analog_reg8.i.i, align 4
  %call43.i.i = call i32 %314(ptr noundef %hw, i32 noundef 12, i8 noundef zeroext %312) #19
  %315 = ptrtoint ptr %read_analog_reg8.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %read_analog_reg8.i.i, align 4
  %call47.i.i = call i32 %316(ptr noundef %hw, i32 noundef 13, ptr noundef nonnull %atlas.i.i) #19
  %317 = ptrtoint ptr %atlas.i.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %atlas.i.i, align 1
  %319 = or i8 %318, -16
  store i8 %319, ptr %atlas.i.i, align 1
  %320 = ptrtoint ptr %write_analog_reg8.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %write_analog_reg8.i.i, align 4
  %call54.i.i = call i32 %321(ptr noundef %hw, i32 noundef 13, i8 noundef zeroext %319) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %atlas.i.i) #19
  br label %if.end5.i

ixgbe_setup_loopback_test.exit.i:                 ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %322 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store8_noabort(i32 %322)
  store i64 10, ptr %arrayidx132, align 8
  br label %err_loopback.i

if.end5.i:                                        ; preds = %if.then14.i.i, %sw.epilog.i29.i.if.end5.i_crit_edge
  %323 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store8_noabort(i32 %323)
  store i64 0, ptr %arrayidx132, align 8
  %324 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %flags15, align 4
  %and.i.i290 = and i32 %325, -4097
  store i32 %and.i.i290, ptr %flags15, align 4
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 1024, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #19
  %tobool.not.i34.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i34.i, label %if.end5.i.ixgbe_run_loopback_test.exit.i_crit_edge, label %if.end.i37.i

if.end5.i.ixgbe_run_loopback_test.exit.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_run_loopback_test.exit.i

if.end.i37.i:                                     ; preds = %if.end5.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %326 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %data.i.i.i, align 4
  %328 = call ptr @memset(ptr %327, i32 255, i32 1024)
  %329 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %329, i32 512
  %330 = call ptr @memset(ptr %arrayidx.i.i.i, i32 170, i32 255)
  %331 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx3.i.i.i = getelementptr i8, ptr %331, i32 522
  %332 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 -66, ptr %arrayidx3.i.i.i, align 1
  %333 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr i8, ptr %333, i32 524
  %334 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 -81, ptr %arrayidx6.i.i.i, align 1
  %call2.i35.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1024) #19
  %335 = ptrtoint ptr %count10.i.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %count10.i.i, align 4
  %337 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %count.i.i, align 4
  %339 = call i16 @llvm.umax.i16(i16 %336, i16 %338) #19
  %lc.0.in.in.i.i = lshr i16 %339, 5
  %lc.0.in.i.i = or i16 %lc.0.in.in.i.i, 1
  %users.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 21
  %next_to_clean.i.i.i = getelementptr i8, ptr %netdev, i32 6066
  %next_to_clean1.i.i.i = getelementptr i8, ptr %netdev, i32 5554
  %desc.i.i.i = getelementptr i8, ptr %netdev, i32 6036
  %next_to_use.i.i.i = getelementptr i8, ptr %netdev, i32 5552
  %desc4.i.i.i = getelementptr i8, ptr %netdev, i32 5524
  %340 = getelementptr i8, ptr %netdev, i32 5528
  %341 = getelementptr i8, ptr %netdev, i32 6040
  %state.i.i.i.i = getelementptr i8, ptr %netdev, i32 6044
  %narrow.i.i = add nuw nsw i16 %lc.0.in.i.i, 1
  %342 = zext i16 %narrow.i.i to i32
  br label %for.cond17.preheader.i.i

for.cond.i.i:                                     ; preds = %ixgbe_clean_test_rings.exit.i.i
  %inc39.i.i = add nuw nsw i32 %j.080.i.i, 1
  %exitcond82.i.i = icmp eq i32 %inc39.i.i, %342
  br i1 %exitcond82.i.i, label %for.cond.i.i.for.end40.i.i_crit_edge, label %for.cond.i.i.for.cond17.preheader.i.i_crit_edge

for.cond.i.i.for.cond17.preheader.i.i_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond17.preheader.i.i

for.cond.i.i.for.end40.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end40.i.i

for.cond17.preheader.i.i:                         ; preds = %for.cond.i.i.for.cond17.preheader.i.i_crit_edge, %if.end.i37.i
  %j.080.i.i = phi i32 [ 0, %if.end.i37.i ], [ %inc39.i.i, %for.cond.i.i.for.cond17.preheader.i.i_crit_edge ]
  br label %for.body20.i.i

for.body20.i.i:                                   ; preds = %skb_get.exit.i.i.for.body20.i.i_crit_edge, %for.cond17.preheader.i.i
  %good_cnt.079.i.i = phi i32 [ 0, %for.cond17.preheader.i.i ], [ %spec.select.i.i, %skb_get.exit.i.i.for.body20.i.i_crit_edge ]
  %i.078.i.i = phi i32 [ 0, %for.cond17.preheader.i.i ], [ %inc27.i.i, %skb_get.exit.i.i.for.body20.i.i_crit_edge ]
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i.i, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr %users.i.i.i, i32 1, i32 3, i32 1) #19
  %343 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i.i, ptr %users.i.i.i, i32 1, ptr elementtype(i32) %users.i.i.i) #19, !srcloc !104
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %343, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %for.body20.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !99

for.body20.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %for.body20.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %344 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %344)
  %.not.i.i.i.i.i.i = icmp sgt i32 %344, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.skb_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !105

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.skb_get.exit.i.i_crit_edge:   ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %skb_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %for.body20.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %for.body20.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %users.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #19
  br label %skb_get.exit.i.i

skb_get.exit.i.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.skb_get.exit.i.i_crit_edge
  %call22.i.i = call i32 @ixgbe_xmit_frame_ring(ptr noundef nonnull %call.i.i.i, ptr noundef %add.ptr.i, ptr noundef %test_tx_ring.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp eq i32 %call22.i.i, 0
  %inc.i.i = zext i1 %cmp23.i.i to i32
  %spec.select.i.i = add i32 %good_cnt.079.i.i, %inc.i.i
  %inc27.i.i = add nuw nsw i32 %i.078.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc27.i.i, 64
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %skb_get.exit.i.i.for.body20.i.i_crit_edge

skb_get.exit.i.i.for.body20.i.i_crit_edge:        ; preds = %skb_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body20.i.i

for.end.i.i:                                      ; preds = %skb_get.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select.i.i)
  %cmp28.not.i.i = icmp eq i32 %spec.select.i.i, 64
  br i1 %cmp28.not.i.i, label %if.end31.i.i, label %for.end.i.i.for.end40.i.i_crit_edge

for.end.i.i.for.end40.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end40.i.i

if.end31.i.i:                                     ; preds = %for.end.i.i
  call void @msleep(i32 noundef 200) #19
  %345 = ptrtoint ptr %next_to_clean.i.i.i to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %next_to_clean.i.i.i, align 2
  %347 = ptrtoint ptr %next_to_clean1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %next_to_clean1.i.i.i, align 2
  %349 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %desc.i.i.i, align 4
  %idxprom.i.i.i = zext i16 %346 to i32
  %arrayidx.i74.i.i = getelementptr %union.ixgbe_adv_rx_desc, ptr %350, i32 %idxprom.i.i.i
  %351 = ptrtoint ptr %next_to_use.i.i.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %next_to_use.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %348, i16 %352)
  %cmp.not19.i.i.i = icmp eq i16 %348, %352
  br i1 %cmp.not19.i.i.i, label %if.end31.i.i.while.cond18.preheader.i.i.i_crit_edge, label %if.end31.i.i.while.body.i.i.i_crit_edge

if.end31.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end31.i.i
  br label %while.body.i.i.i

if.end31.i.i.while.cond18.preheader.i.i.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond18.preheader.i.i.i

while.cond18.preheader.i.i.i:                     ; preds = %cleanup.i.i.i.while.cond18.preheader.i.i.i_crit_edge, %if.end31.i.i.while.cond18.preheader.i.i.i_crit_edge
  %tx_ntc.0.lcssa.i.i.i = phi i16 [ %348, %if.end31.i.i.while.cond18.preheader.i.i.i_crit_edge ], [ %spec.store.select.i.i.i, %cleanup.i.i.i.while.cond18.preheader.i.i.i_crit_edge ]
  %length22.i.i.i = getelementptr inbounds %struct.anon.137, ptr %arrayidx.i74.i.i, i32 0, i32 1, i32 1
  %353 = ptrtoint ptr %length22.i.i.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %length22.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %354)
  %tobool19.not23.i.i.i = icmp eq i16 %354, 0
  br i1 %tobool19.not23.i.i.i, label %while.cond18.preheader.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge, label %while.cond18.preheader.i.i.i.while.body20.i.i.i_crit_edge

while.cond18.preheader.i.i.i.while.body20.i.i.i_crit_edge: ; preds = %while.cond18.preheader.i.i.i
  br label %while.body20.i.i.i

while.cond18.preheader.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge: ; preds = %while.cond18.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_clean_test_rings.exit.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.end31.i.i.while.body.i.i.i_crit_edge
  %tx_ntc.020.i.i.i = phi i16 [ %spec.store.select.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %348, %if.end31.i.i.while.body.i.i.i_crit_edge ]
  %conv21.i.i.i = zext i16 %tx_ntc.020.i.i.i to i32
  %355 = ptrtoint ptr %desc4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %desc4.i.i.i, align 4
  %status.i.i.i = getelementptr %union.ixgbe_adv_tx_desc, ptr %356, i32 %conv21.i.i.i, i32 0, i32 2
  %357 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %status.i.i.i, align 4
  %and.i.i.i = and i32 %358, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i291 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i291, label %while.body.i.i.i.for.end40.i.i_crit_edge, label %cleanup.i.i.i

while.body.i.i.i.for.end40.i.i_crit_edge:         ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end40.i.i

cleanup.i.i.i:                                    ; preds = %while.body.i.i.i
  %359 = ptrtoint ptr %340 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %340, align 8
  %361 = getelementptr %struct.ixgbe_tx_buffer, ptr %360, i32 %conv21.i.i.i, i32 2
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %361, align 4
  call void @__dev_kfree_skb_any(ptr noundef %363, i32 noundef 1) #19
  %364 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dev2.i.i, align 16
  %dma.i.i.i = getelementptr %struct.ixgbe_tx_buffer, ptr %360, i32 %conv21.i.i.i, i32 6
  %366 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %dma.i.i.i, align 4
  %len.i.i.i = getelementptr %struct.ixgbe_tx_buffer, ptr %360, i32 %conv21.i.i.i, i32 7
  %368 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %len.i.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %365, i32 noundef %367, i32 noundef %369, i32 noundef 1, i32 noundef 0) #19
  %370 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 0, ptr %len.i.i.i, align 4
  %inc.i.i.i = add i16 %tx_ntc.020.i.i.i, 1
  %371 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i.i, i16 %372)
  %cmp13.i.i.i = icmp eq i16 %inc.i.i.i, %372
  %spec.store.select.i.i.i = select i1 %cmp13.i.i.i, i16 0, i16 %inc.i.i.i
  %373 = ptrtoint ptr %next_to_use.i.i.i to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %next_to_use.i.i.i, align 16
  %cmp.not.i.i.i = icmp eq i16 %spec.store.select.i.i.i, %374
  br i1 %cmp.not.i.i.i, label %cleanup.i.i.i.while.cond18.preheader.i.i.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i.i

cleanup.i.i.i.while.cond18.preheader.i.i.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond18.preheader.i.i.i

while.body20.i.i.i:                               ; preds = %cleanup43.i.i.i.while.body20.i.i.i_crit_edge, %while.cond18.preheader.i.i.i.while.body20.i.i.i_crit_edge
  %count.025.i.i.i = phi i16 [ %inc27.i.i.i, %cleanup43.i.i.i.while.body20.i.i.i_crit_edge ], [ 0, %while.cond18.preheader.i.i.i.while.body20.i.i.i_crit_edge ]
  %rx_ntc.024.i.i.i = phi i16 [ %spec.store.select54.i.i.i, %cleanup43.i.i.i.while.body20.i.i.i_crit_edge ], [ %346, %while.cond18.preheader.i.i.i.while.body20.i.i.i_crit_edge ]
  %375 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %341, align 8
  %idxprom21.i.i.i = zext i16 %rx_ntc.024.i.i.i to i32
  %arrayidx22.i.i.i = getelementptr %struct.ixgbe_rx_buffer, ptr %376, i32 %idxprom21.i.i.i
  %377 = ptrtoint ptr %dev14.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %dev14.i.i, align 16
  %dma24.i.i.i = getelementptr inbounds %struct.anon.123, ptr %arrayidx22.i.i.i, i32 0, i32 1
  %379 = ptrtoint ptr %dma24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %dma24.i.i.i, align 4
  %381 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %382, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i.i.i38.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i38.i, label %if.end.i.i.i.i, label %while.body20.i.i.i.ixgbe_rx_bufsz.exit.i.i.i_crit_edge

while.body20.i.i.i.ixgbe_rx_bufsz.exit.i.i.i_crit_edge: ; preds = %while.body20.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_rx_bufsz.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %while.body20.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %383 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load volatile i32, ptr %state.i.i.i.i, align 4
  %385 = and i32 %384, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %385)
  %tobool3.not.i.i.i.i = icmp eq i32 %385, 0
  %..i.i.i.i = select i1 %tobool3.not.i.i.i.i, i32 2048, i32 1534
  br label %ixgbe_rx_bufsz.exit.i.i.i

ixgbe_rx_bufsz.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %while.body20.i.i.i.ixgbe_rx_bufsz.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 3072, %while.body20.i.i.i.ixgbe_rx_bufsz.exit.i.i.i_crit_edge ], [ %..i.i.i.i, %if.end.i.i.i.i ]
  call void @dma_sync_single_for_cpu(ptr noundef %378, i32 noundef %380, i32 noundef %retval.0.i.i.i.i, i32 noundef 2) #19
  %page.i.i.i.i = getelementptr inbounds %struct.anon.123, ptr %arrayidx22.i.i.i, i32 0, i32 2
  %386 = ptrtoint ptr %page.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %page.i.i.i.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 44) #19
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %387, align 4
  %shr.i.i.i.i.i.i = lshr i32 %389, 30
  %390 = zext i32 %shr.i.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %390, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %shr.i.i.i.i.i.i, label %ixgbe_rx_bufsz.exit.i.i.i.if.then.i.i.i.i.i_crit_edge [
    i32 2, label %ixgbe_rx_bufsz.exit.i.i.i.if.else.i.i.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i.i.i
  ]

ixgbe_rx_bufsz.exit.i.i.i.if.else.i.i.i.i.i_crit_edge: ; preds = %ixgbe_rx_bufsz.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i.i.i.i.i

ixgbe_rx_bufsz.exit.i.i.i.if.then.i.i.i.i.i_crit_edge: ; preds = %ixgbe_rx_bufsz.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i.i.i.i.i

is_highmem_idx.exit.i.i.i.i.i:                    ; preds = %ixgbe_rx_bufsz.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %391 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %391)
  %cmp2.i.not.i.i.i.i.i = icmp eq i32 %391, 2
  br i1 %cmp2.i.not.i.i.i.i.i, label %is_highmem_idx.exit.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge, label %is_highmem_idx.exit.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge

is_highmem_idx.exit.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i.i.i.i.i

is_highmem_idx.exit.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %is_highmem_idx.exit.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge, %ixgbe_rx_bufsz.exit.i.i.i.if.then.i.i.i.i.i_crit_edge
  %call5.i.i.i.i.i = call ptr @page_address(ptr noundef %387) #19
  br label %kmap.exit.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %is_highmem_idx.exit.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge, %ixgbe_rx_bufsz.exit.i.i.i.if.else.i.i.i.i.i_crit_edge
  %call6.i.i.i.i.i = call ptr @kmap_high(ptr noundef %387) #19
  br label %kmap.exit.i.i.i.i

kmap.exit.i.i.i.i:                                ; preds = %if.else.i.i.i.i.i, %if.then.i.i.i.i.i
  %addr.0.i.i.i.i.i = phi ptr [ %call6.i.i.i.i.i, %if.else.i.i.i.i.i ], [ %call5.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %page_offset.i.i.i.i = getelementptr inbounds %struct.anon.123, ptr %arrayidx22.i.i.i, i32 0, i32 3
  %392 = ptrtoint ptr %page_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %page_offset.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %addr.0.i.i.i.i.i, i32 %393
  %arrayidx.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 3
  %394 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %395)
  %cmp.not.i.i.i.i = icmp eq i8 %395, -1
  br i1 %cmp.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %kmap.exit.i.i.i.i.if.then.i.i.i.i_crit_edge

kmap.exit.i.i.i.i.if.then.i.i.i.i_crit_edge:      ; preds = %kmap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %kmap.exit.i.i.i.i
  %arrayidx2.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 522
  %396 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %arrayidx2.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %397)
  %cmp4.not.i.i.i.i = icmp eq i8 %397, -66
  br i1 %cmp4.not.i.i.i.i, label %lor.lhs.false6.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i.i.i.i

lor.lhs.false6.i.i.i.i:                           ; preds = %lor.lhs.false.i.i.i.i
  %arrayidx8.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 524
  %398 = ptrtoint ptr %arrayidx8.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %arrayidx8.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %399)
  %cmp10.not.i.i.i.i = icmp eq i8 %399, -81
  br i1 %cmp10.not.i.i.i.i, label %lor.lhs.false6.i.i.i.i.if.end.i1.i.i.i_crit_edge, label %lor.lhs.false6.i.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false6.i.i.i.i.if.then.i.i.i.i_crit_edge: ; preds = %lor.lhs.false6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i.i.i.i

lor.lhs.false6.i.i.i.i.if.end.i1.i.i.i_crit_edge: ; preds = %lor.lhs.false6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i1.i.i.i

if.then.i.i.i.i:                                  ; preds = %lor.lhs.false6.i.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge, %kmap.exit.i.i.i.i.if.then.i.i.i.i_crit_edge
  br label %if.end.i1.i.i.i

if.end.i1.i.i.i:                                  ; preds = %if.then.i.i.i.i, %lor.lhs.false6.i.i.i.i.if.end.i1.i.i.i_crit_edge
  %match.0.off0.i.i.i.i = phi i1 [ false, %if.then.i.i.i.i ], [ true, %lor.lhs.false6.i.i.i.i.if.end.i1.i.i.i_crit_edge ]
  %400 = ptrtoint ptr %page.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %page.i.i.i.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 55) #19
  %402 = ptrtoint ptr %401 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %401, align 4
  %shr.i.i1.i.i.i.i = lshr i32 %403, 30
  %404 = zext i32 %shr.i.i1.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %404, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %shr.i.i1.i.i.i.i, label %if.end.i1.i.i.i.ixgbe_check_lbtest_frame.exit.i.i.i_crit_edge [
    i32 2, label %if.end.i1.i.i.i.if.end.i.i.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i3.i.i.i.i
  ]

if.end.i1.i.i.i.if.end.i.i.i.i.i_crit_edge:       ; preds = %if.end.i1.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i.i.i.i

if.end.i1.i.i.i.ixgbe_check_lbtest_frame.exit.i.i.i_crit_edge: ; preds = %if.end.i1.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_check_lbtest_frame.exit.i.i.i

is_highmem_idx.exit.i3.i.i.i.i:                   ; preds = %if.end.i1.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %405 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %405)
  %cmp2.i.not.i2.i.i.i.i = icmp eq i32 %405, 2
  br i1 %cmp2.i.not.i2.i.i.i.i, label %is_highmem_idx.exit.i3.i.i.i.i.if.end.i.i.i.i.i_crit_edge, label %is_highmem_idx.exit.i3.i.i.i.i.ixgbe_check_lbtest_frame.exit.i.i.i_crit_edge

is_highmem_idx.exit.i3.i.i.i.i.ixgbe_check_lbtest_frame.exit.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_check_lbtest_frame.exit.i.i.i

is_highmem_idx.exit.i3.i.i.i.i.if.end.i.i.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %is_highmem_idx.exit.i3.i.i.i.i.if.end.i.i.i.i.i_crit_edge, %if.end.i1.i.i.i.if.end.i.i.i.i.i_crit_edge
  call void @kunmap_high(ptr noundef %401) #19
  br label %ixgbe_check_lbtest_frame.exit.i.i.i

ixgbe_check_lbtest_frame.exit.i.i.i:              ; preds = %if.end.i.i.i.i.i, %is_highmem_idx.exit.i3.i.i.i.i.ixgbe_check_lbtest_frame.exit.i.i.i_crit_edge, %if.end.i1.i.i.i.ixgbe_check_lbtest_frame.exit.i.i.i_crit_edge
  br i1 %match.0.off0.i.i.i.i, label %if.then26.i.i.i, label %ixgbe_check_lbtest_frame.exit.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge

ixgbe_check_lbtest_frame.exit.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge: ; preds = %ixgbe_check_lbtest_frame.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_clean_test_rings.exit.i.i

if.then26.i.i.i:                                  ; preds = %ixgbe_check_lbtest_frame.exit.i.i.i
  %inc27.i.i.i = add i16 %count.025.i.i.i, 1
  %406 = ptrtoint ptr %dev14.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %dev14.i.i, align 16
  %408 = ptrtoint ptr %dma24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %dma24.i.i.i, align 4
  %410 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i3.i.i.i = and i32 %411, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i3.i.i.i)
  %tobool.not.i4.i.i.i = icmp eq i32 %and1.i.i3.i.i.i, 0
  br i1 %tobool.not.i4.i.i.i, label %if.end.i7.i.i.i, label %if.then26.i.i.i.cleanup43.i.i.i_crit_edge

if.then26.i.i.i.cleanup43.i.i.i_crit_edge:        ; preds = %if.then26.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup43.i.i.i

if.end.i7.i.i.i:                                  ; preds = %if.then26.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %412 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load volatile i32, ptr %state.i.i.i.i, align 4
  %414 = and i32 %413, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %414)
  %tobool3.not.i5.i.i.i = icmp eq i32 %414, 0
  %..i6.i.i.i = select i1 %tobool3.not.i5.i.i.i, i32 2048, i32 1534
  br label %cleanup43.i.i.i

cleanup43.i.i.i:                                  ; preds = %if.end.i7.i.i.i, %if.then26.i.i.i.cleanup43.i.i.i_crit_edge
  %retval.0.i8.i.i.i = phi i32 [ 3072, %if.then26.i.i.i.cleanup43.i.i.i_crit_edge ], [ %..i6.i.i.i, %if.end.i7.i.i.i ]
  call void @dma_sync_single_for_device(ptr noundef %407, i32 noundef %409, i32 noundef %retval.0.i8.i.i.i, i32 noundef 2) #19
  %inc32.i.i.i = add i16 %rx_ntc.024.i.i.i, 1
  %415 = ptrtoint ptr %count10.i.i to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %count10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc32.i.i.i, i16 %416)
  %cmp36.i.i.i = icmp eq i16 %inc32.i.i.i, %416
  %spec.store.select54.i.i.i = select i1 %cmp36.i.i.i, i16 0, i16 %inc32.i.i.i
  %417 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %desc.i.i.i, align 4
  %idxprom41.i.i.i = zext i16 %spec.store.select54.i.i.i to i32
  %arrayidx42.i.i.i = getelementptr %union.ixgbe_adv_rx_desc, ptr %418, i32 %idxprom41.i.i.i
  %length.i.i.i = getelementptr inbounds %struct.anon.137, ptr %arrayidx42.i.i.i, i32 0, i32 1, i32 1
  %419 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load2_noabort(i32 %419)
  %420 = load i16, ptr %length.i.i.i, align 4
  %tobool19.not.i.i.i = icmp eq i16 %420, 0
  br i1 %tobool19.not.i.i.i, label %cleanup43.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge, label %cleanup43.i.i.i.while.body20.i.i.i_crit_edge

cleanup43.i.i.i.while.body20.i.i.i_crit_edge:     ; preds = %cleanup43.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body20.i.i.i

cleanup43.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge: ; preds = %cleanup43.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_clean_test_rings.exit.i.i

ixgbe_clean_test_rings.exit.i.i:                  ; preds = %cleanup43.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge, %ixgbe_check_lbtest_frame.exit.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge, %while.cond18.preheader.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge
  %rx_ntc.0.lcssa.i.i.i = phi i16 [ %346, %while.cond18.preheader.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge ], [ %spec.store.select54.i.i.i, %cleanup43.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge ], [ %rx_ntc.024.i.i.i, %ixgbe_check_lbtest_frame.exit.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge ]
  %count.0.lcssa.i.i.i = phi i16 [ 0, %while.cond18.preheader.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge ], [ %inc27.i.i.i, %cleanup43.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge ], [ %count.025.i.i.i, %ixgbe_check_lbtest_frame.exit.i.i.i.ixgbe_clean_test_rings.exit.i.i_crit_edge ]
  %421 = ptrtoint ptr %netdev3.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %netdev3.i.i, align 8
  %423 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %queue_index.i.i, align 2
  %conv.i.i.i.i = zext i8 %424 to i32
  %_tx.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %422, i32 0, i32 103
  %425 = ptrtoint ptr %_tx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %_tx.i.i.i.i.i, align 128
  %state.i10.i.i.i = getelementptr %struct.netdev_queue, ptr %426, i32 %conv.i.i.i.i, i32 13
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i10.i.i.i) #19
  %dql.i.i.i.i = getelementptr %struct.netdev_queue, ptr %426, i32 %conv.i.i.i.i, i32 15
  call void @dql_reset(ptr noundef %dql.i.i.i.i) #19
  call void @ixgbe_alloc_rx_buffers(ptr noundef %test_rx_ring.i.i, i16 noundef zeroext %count.0.lcssa.i.i.i) #19
  %427 = ptrtoint ptr %next_to_clean.i.i.i to i32
  call void @__asan_store2_noabort(i32 %427)
  store i16 %rx_ntc.0.lcssa.i.i.i, ptr %next_to_clean.i.i.i, align 2
  %428 = ptrtoint ptr %next_to_clean1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %428)
  store i16 %tx_ntc.0.lcssa.i.i.i, ptr %next_to_clean1.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %count.0.lcssa.i.i.i)
  %cmp34.not.i.i = icmp eq i16 %count.0.lcssa.i.i.i, 64
  br i1 %cmp34.not.i.i, label %for.cond.i.i, label %ixgbe_clean_test_rings.exit.i.i.for.end40.i.i_crit_edge

ixgbe_clean_test_rings.exit.i.i.for.end40.i.i_crit_edge: ; preds = %ixgbe_clean_test_rings.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end40.i.i

for.end40.i.i:                                    ; preds = %ixgbe_clean_test_rings.exit.i.i.for.end40.i.i_crit_edge, %while.body.i.i.i.for.end40.i.i_crit_edge, %for.end.i.i.for.end40.i.i_crit_edge, %for.cond.i.i.for.end40.i.i_crit_edge
  %ret_val.0.i.i = phi i32 [ 13, %while.body.i.i.i.for.end40.i.i_crit_edge ], [ 13, %ixgbe_clean_test_rings.exit.i.i.for.end40.i.i_crit_edge ], [ 12, %for.end.i.i.for.end40.i.i_crit_edge ], [ 0, %for.cond.i.i.for.end40.i.i_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #19
  %429 = ptrtoint ptr %flags15 to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %325, ptr %flags15, align 4
  br label %ixgbe_run_loopback_test.exit.i

ixgbe_run_loopback_test.exit.i:                   ; preds = %for.end40.i.i, %if.end5.i.ixgbe_run_loopback_test.exit.i_crit_edge
  %retval.0.i39.i = phi i32 [ %ret_val.0.i.i, %for.end40.i.i ], [ 11, %if.end5.i.ixgbe_run_loopback_test.exit.i_crit_edge ]
  %conv752.i = zext i32 %retval.0.i39.i to i64
  %430 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store8_noabort(i32 %430)
  store i64 %conv752.i, ptr %arrayidx132, align 8
  %call.i40.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16960) #19
  %431 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i41.i = icmp eq ptr %432, null
  br i1 %tobool.not.i.i.i41.i, label %ixgbe_run_loopback_test.exit.i.err_loopback.i_crit_edge, label %do.body1.i.i44.i

ixgbe_run_loopback_test.exit.i.err_loopback.i_crit_edge: ; preds = %ixgbe_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_loopback.i

do.body1.i.i44.i:                                 ; preds = %ixgbe_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %and.i42.i = and i32 %call.i40.i, -32769
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  call void @arm_heavy_mb() #19
  %433 = call i32 @llvm.bswap.i32(i32 %and.i42.i) #19
  %add.ptr.i.i43.i = getelementptr i8, ptr %432, i32 16960
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43.i, i32 %433) #19, !srcloc !103
  br label %err_loopback.i

err_loopback.i:                                   ; preds = %do.body1.i.i44.i, %ixgbe_run_loopback_test.exit.i.err_loopback.i_crit_edge, %ixgbe_setup_loopback_test.exit.i
  call void @ixgbe_disable_rx(ptr noundef %add.ptr.i) #19
  call void @ixgbe_disable_tx(ptr noundef %add.ptr.i) #19
  call void @ixgbe_reset(ptr noundef %add.ptr.i) #19
  call void @ixgbe_free_tx_resources(ptr noundef %test_tx_ring.i.i) #19
  call void @ixgbe_free_rx_resources(ptr noundef %test_rx_ring.i.i) #19
  br label %ixgbe_loopback_test.exit

ixgbe_loopback_test.exit:                         ; preds = %err_loopback.i, %ixgbe_setup_desc_rings.exit.thread.i
  %434 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load8_noabort(i32 %434)
  %435 = load i64, ptr %arrayidx132, align 8
  %conv8.i = trunc i64 %435 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i)
  %tobool134.not = icmp eq i32 %conv8.i, 0
  br i1 %tobool134.not, label %ixgbe_loopback_test.exit.skip_loopback_crit_edge, label %if.then135

ixgbe_loopback_test.exit.skip_loopback_crit_edge: ; preds = %ixgbe_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %skip_loopback

if.then135:                                       ; preds = %ixgbe_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #21
  %436 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %flags10, align 4
  %or137 = or i32 %437, 2
  store i32 %or137, ptr %flags10, align 4
  br label %skip_loopback

skip_loopback:                                    ; preds = %if.then135, %ixgbe_loopback_test.exit.skip_loopback_crit_edge, %do.end119
  call void @ixgbe_reset(ptr noundef %add.ptr.i) #19
  call void @_clear_bit(i32 noundef 0, ptr noundef %state) #19
  br i1 %tobool.i.not, label %if.else143, label %if.then141

if.then141:                                       ; preds = %skip_loopback
  call void @__sanitizer_cov_trace_pc() #21
  %call142 = call i32 @ixgbe_open(ptr noundef %netdev) #19
  br label %cleanup178

if.else143:                                       ; preds = %skip_loopback
  %disable_tx_laser = getelementptr i8, ptr %netdev, i32 6628
  %438 = ptrtoint ptr %disable_tx_laser to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %disable_tx_laser, align 4
  %tobool144.not = icmp eq ptr %439, null
  br i1 %tobool144.not, label %if.else143.cleanup178_crit_edge, label %if.then145

if.else143.cleanup178_crit_edge:                  ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup178

if.then145:                                       ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #21
  call void %439(ptr noundef %hw) #19
  br label %cleanup178

do.body155:                                       ; preds = %if.end9
  %msg_enable156 = getelementptr i8, ptr %netdev, i32 7828
  %440 = ptrtoint ptr %msg_enable156 to i32
  call void @__asan_load2_noabort(i32 %440)
  %441 = load i16, ptr %msg_enable156, align 4
  %442 = and i16 %441, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %442)
  %tobool159.not = icmp eq i16 %442, 0
  br i1 %tobool159.not, label %do.body155.do.end164_crit_edge, label %if.then160

do.body155.do.end164_crit_edge:                   ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end164

if.then160:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #21
  %netdev161 = getelementptr i8, ptr %netdev, i32 2816
  %443 = ptrtoint ptr %netdev161 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %netdev161, align 128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %444, ptr noundef nonnull @.str.10) #23
  br label %do.end164

do.end164:                                        ; preds = %if.then160, %do.body155.do.end164_crit_edge
  %arrayidx165 = getelementptr i64, ptr %data, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up.i292) #19
  %445 = ptrtoint ptr %link_up.i292 to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 -1, ptr %link_up.i292, align 1, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_speed.i293) #19
  %446 = ptrtoint ptr %link_speed.i293 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 0, ptr %link_speed.i293, align 4
  %447 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %hw, align 4
  %tobool.not.i.i295 = icmp eq ptr %448, null
  br i1 %tobool.not.i.i295, label %do.end164.ixgbe_link_test.exit305.thread_crit_edge, label %if.end.i300

do.end164.ixgbe_link_test.exit305.thread_crit_edge: ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_link_test.exit305.thread

if.end.i300:                                      ; preds = %do.end164
  %449 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store8_noabort(i32 %449)
  store i64 0, ptr %arrayidx165, align 8
  %check_link.i297 = getelementptr i8, ptr %netdev, i32 6652
  %450 = ptrtoint ptr %check_link.i297 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %check_link.i297, align 4
  %call2.i298 = call i32 %451(ptr noundef %hw, ptr noundef nonnull %link_speed.i293, ptr noundef nonnull %link_up.i292, i1 noundef zeroext true) #19
  %452 = ptrtoint ptr %link_up.i292 to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %link_up.i292, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %453)
  %tobool.not.i299 = icmp eq i8 %453, 0
  br i1 %tobool.not.i299, label %if.end.i300.ixgbe_link_test.exit305.thread_crit_edge, label %ixgbe_link_test.exit305

if.end.i300.ixgbe_link_test.exit305.thread_crit_edge: ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_link_test.exit305.thread

ixgbe_link_test.exit305.thread:                   ; preds = %if.end.i300.ixgbe_link_test.exit305.thread_crit_edge, %do.end164.ixgbe_link_test.exit305.thread_crit_edge
  %454 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store8_noabort(i32 %454)
  store i64 1, ptr %arrayidx165, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed.i293) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i292) #19
  br label %if.then168

ixgbe_link_test.exit305:                          ; preds = %if.end.i300
  %455 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load8_noabort(i32 %455)
  %456 = load i64, ptr %arrayidx165, align 8
  %conv.i301 = trunc i64 %456 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed.i293) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i292) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i301)
  %tobool167.not = icmp eq i32 %conv.i301, 0
  br i1 %tobool167.not, label %ixgbe_link_test.exit305.if.end171_crit_edge, label %ixgbe_link_test.exit305.if.then168_crit_edge

ixgbe_link_test.exit305.if.then168_crit_edge:     ; preds = %ixgbe_link_test.exit305
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then168

ixgbe_link_test.exit305.if.end171_crit_edge:      ; preds = %ixgbe_link_test.exit305
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end171

if.then168:                                       ; preds = %ixgbe_link_test.exit305.if.then168_crit_edge, %ixgbe_link_test.exit305.thread
  %457 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %flags10, align 4
  %or170 = or i32 %458, 2
  store i32 %or170, ptr %flags10, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %ixgbe_link_test.exit305.if.end171_crit_edge
  %459 = call ptr @memset(ptr %data, i32 0, i32 32)
  call void @_clear_bit(i32 noundef 0, ptr noundef %state) #19
  br label %cleanup178

cleanup178:                                       ; preds = %if.end171, %if.then145, %if.else143.cleanup178_crit_edge, %if.then141, %if.then23, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #19
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %p, align 4
  %1 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 0, label %for.body.preheader
    i32 1, label %entry.for.body4_crit_edge
    i32 2, label %sw.bb35
  ]

entry.for.body4_crit_edge:                        ; preds = %entry
  br label %for.body4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @ixgbe_gstrings_test) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([5 x [32 x i8]], ptr @ixgbe_gstrings_test, i32 0, i32 1)) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([5 x [32 x i8]], ptr @ixgbe_gstrings_test, i32 0, i32 2)) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([5 x [32 x i8]], ptr @ixgbe_gstrings_test, i32 0, i32 3)) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([5 x [32 x i8]], ptr @ixgbe_gstrings_test, i32 0, i32 4)) #19
  br label %sw.epilog

for.cond10.preheader:                             ; preds = %for.body4
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1161.not = icmp eq i32 %3, 0
  br i1 %cmp1161.not, label %for.cond10.preheader.for.cond23.preheader_crit_edge, label %for.cond10.preheader.for.body12_crit_edge

for.cond10.preheader.for.body12_crit_edge:        ; preds = %for.cond10.preheader
  br label %for.body12

for.cond10.preheader.for.cond23.preheader_crit_edge: ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond23.preheader

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %entry.for.body4_crit_edge
  %i.160 = phi i32 [ %inc8, %for.body4.for.body4_crit_edge ], [ 0, %entry.for.body4_crit_edge ]
  %arrayidx5 = getelementptr [64 x %struct.ixgbe_stats], ptr @ixgbe_gstrings_stats, i32 0, i32 %i.160
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef %arrayidx5) #19
  %inc8 = add nuw nsw i32 %i.160, 1
  %exitcond.not = icmp eq i32 %inc8, 64
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body4

for.cond16.preheader:                             ; preds = %for.body12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1863.not = icmp eq i32 %5, 0
  br i1 %cmp1863.not, label %for.cond16.preheader.for.cond23.preheader_crit_edge, label %for.cond16.preheader.for.body19_crit_edge

for.cond16.preheader.for.body19_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body19

for.cond16.preheader.for.cond23.preheader_crit_edge: ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond23.preheader

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.cond10.preheader.for.body12_crit_edge
  %i.262 = phi i32 [ %inc14, %for.body12.for.body12_crit_edge ], [ 0, %for.cond10.preheader.for.body12_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.19, i32 noundef %i.262) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.20, i32 noundef %i.262) #19
  %inc14 = add nuw i32 %i.262, 1
  %4 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues, align 4
  %cmp11 = icmp ult i32 %inc14, %5
  br i1 %cmp11, label %for.body12.for.body12_crit_edge, label %for.cond16.preheader

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body12

for.cond23.preheader:                             ; preds = %for.body19.for.cond23.preheader_crit_edge, %for.cond16.preheader.for.cond23.preheader_crit_edge, %for.cond10.preheader.for.cond23.preheader_crit_edge
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.23, i32 noundef 0) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef 0) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.23, i32 noundef 1) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef 1) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.23, i32 noundef 2) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef 2) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.23, i32 noundef 3) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef 3) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.23, i32 noundef 4) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef 4) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.23, i32 noundef 5) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef 5) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.23, i32 noundef 6) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef 6) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.23, i32 noundef 7) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef 7) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.25, i32 noundef 0) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.26, i32 noundef 0) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.25, i32 noundef 1) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.26, i32 noundef 1) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.25, i32 noundef 2) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.26, i32 noundef 2) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.25, i32 noundef 3) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.26, i32 noundef 3) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.25, i32 noundef 4) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.26, i32 noundef 4) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.25, i32 noundef 5) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.26, i32 noundef 5) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.25, i32 noundef 6) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.26, i32 noundef 6) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.25, i32 noundef 7) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.26, i32 noundef 7) #19
  br label %sw.epilog

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.cond16.preheader.for.body19_crit_edge
  %i.364 = phi i32 [ %inc21, %for.body19.for.body19_crit_edge ], [ 0, %for.cond16.preheader.for.body19_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.21, i32 noundef %i.364) #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.22, i32 noundef %i.364) #19
  %inc21 = add nuw i32 %i.364, 1
  %6 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues, align 4
  %cmp18 = icmp ult i32 %inc21, %7
  br i1 %cmp18, label %for.body19.for.body19_crit_edge, label %for.body19.for.cond23.preheader_crit_edge

for.body19.for.cond23.preheader_crit_edge:        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond23.preheader

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body19

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %8 = call ptr @memcpy(ptr %data, ptr @ixgbe_priv_flags_strings, i32 64)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %for.cond23.preheader, %for.body.preheader, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_phys_id(ptr noundef %netdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 6528
  %led_on = getelementptr i8, ptr %netdev, i32 6668
  %0 = ptrtoint ptr %led_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %led_on, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %led_off = getelementptr i8, ptr %netdev, i32 6672
  %2 = ptrtoint ptr %led_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led_off, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %state, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb12
    i32 0, label %sw.bb20
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 512) #19
  %led_reg = getelementptr i8, ptr %netdev, i32 67296
  %5 = ptrtoint ptr %led_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call5, ptr %led_reg, align 32
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %led_link_act = getelementptr i8, ptr %netdev, i32 7405
  %6 = ptrtoint ptr %led_link_act to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %led_link_act, align 1
  %conv = zext i8 %7 to i32
  %call11 = tail call i32 %1(ptr noundef %hw1, i32 noundef %conv) #19
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %led_link_act17 = getelementptr i8, ptr %netdev, i32 7405
  %8 = ptrtoint ptr %led_link_act17 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %led_link_act17, align 1
  %conv18 = zext i8 %9 to i32
  %call19 = tail call i32 %3(ptr noundef %hw1, i32 noundef %conv18) #19
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %led_reg22 = getelementptr i8, ptr %netdev, i32 67296
  %10 = ptrtoint ptr %led_reg22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %led_reg22, align 32
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %sw.bb20.cleanup_crit_edge, label %do.body1.i

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body1.i:                                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  tail call void @arm_heavy_mb() #19
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #19
  %add.ptr.i36 = getelementptr i8, ptr %13, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %14) #19, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i, %sw.bb20.cleanup_crit_edge, %sw.bb12, %sw.bb6, %sw.bb, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb12 ], [ 0, %sw.bb6 ], [ 0, %sw.bb20.cleanup_crit_edge ], [ 0, %do.body1.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %temp = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp) #19
  %0 = call ptr @memset(ptr %temp, i32 255, i32 192)
  tail call void @ixgbe_update_stats(ptr noundef %add.ptr.i) #19
  %call1 = call ptr @dev_get_stats(ptr noundef %netdev, ptr noundef nonnull %temp) #19
  br label %for.body

for.cond11.preheader:                             ; preds = %for.inc
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %1 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp12166.not = icmp eq i32 %2, 0
  br i1 %cmp12166.not, label %for.cond11.preheader.for.cond62.preheader_crit_edge, label %for.cond11.preheader.for.body14_crit_edge

for.cond11.preheader.for.body14_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body14

for.cond11.preheader.for.cond62.preheader_crit_edge: ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond62.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0163 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %type = getelementptr [64 x %struct.ixgbe_stats], ptr @ixgbe_gstrings_stats, i32 0, i32 %i.0163, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %4, label %for.body.for.inc_crit_edge [
    i32 0, label %for.body.sw.epilog_crit_edge
    i32 1, label %sw.bb3
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

sw.bb3:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %for.body.sw.epilog_crit_edge
  %add.ptr.i.sink = phi ptr [ %add.ptr.i, %sw.bb3 ], [ %call1, %for.body.sw.epilog_crit_edge ]
  %stat_offset5 = getelementptr [64 x %struct.ixgbe_stats], ptr @ixgbe_gstrings_stats, i32 0, i32 %i.0163, i32 3
  %6 = ptrtoint ptr %stat_offset5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stat_offset5, align 4
  %add.ptr6 = getelementptr i8, ptr %add.ptr.i.sink, i32 %7
  %sizeof_stat = getelementptr [64 x %struct.ixgbe_stats], ptr @ixgbe_gstrings_stats, i32 0, i32 %i.0163, i32 2
  %8 = ptrtoint ptr %sizeof_stat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sizeof_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp9 = icmp eq i32 %9, 8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr6, align 8
  br label %for.inc

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  %12 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr6, align 4
  %conv = zext i32 %13 to i64
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %cond.true, %for.body.for.inc_crit_edge
  %cond.sink = phi i64 [ 0, %for.body.for.inc_crit_edge ], [ %11, %cond.true ], [ %conv, %cond.false ]
  %arrayidx10 = getelementptr i64, ptr %data, i32 %i.0163
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %cond.sink, ptr %arrayidx10, align 8
  %inc = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.cond11.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.cond31.preheader:                             ; preds = %for.inc28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp33169.not = icmp eq i32 %28, 0
  br i1 %cmp33169.not, label %for.cond31.preheader.for.cond62.preheader_crit_edge, label %for.cond31.preheader.for.body35_crit_edge

for.cond31.preheader.for.body35_crit_edge:        ; preds = %for.cond31.preheader
  br label %for.body35

for.cond31.preheader.for.cond62.preheader_crit_edge: ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond62.preheader

for.body14:                                       ; preds = %for.inc28.for.body14_crit_edge, %for.cond11.preheader.for.body14_crit_edge
  %j.0168 = phi i32 [ %inc29, %for.inc28.for.body14_crit_edge ], [ 0, %for.cond11.preheader.for.body14_crit_edge ]
  %i.1167 = phi i32 [ %i.2, %for.inc28.for.body14_crit_edge ], [ 64, %for.cond11.preheader.for.body14_crit_edge ]
  %arrayidx15 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %j.0168
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx15, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.then, label %do.body.preheader

do.body.preheader:                                ; preds = %for.body14
  %syncp = getelementptr inbounds %struct.ixgbe_ring, ptr %16, i32 0, i32 20
  %stats20 = getelementptr inbounds %struct.ixgbe_ring, ptr %16, i32 0, i32 19
  %arrayidx21 = getelementptr i64, ptr %data, i32 %i.1167
  %bytes = getelementptr inbounds %struct.ixgbe_ring, ptr %16, i32 0, i32 19, i32 1
  %add23 = or i32 %i.1167, 1
  %arrayidx24 = getelementptr i64, ptr %data, i32 %add23
  br label %do.body

if.then:                                          ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx16 = getelementptr i64, ptr %data, i32 %i.1167
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %arrayidx16, align 8
  %add = or i32 %i.1167, 1
  %arrayidx17 = getelementptr i64, ptr %data, i32 %add
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %arrayidx17, align 8
  br label %for.inc28

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %call19 = call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %19 = ptrtoint ptr %stats20 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %stats20, align 64
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx21, align 8
  %22 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bytes, align 8
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx24, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !106
  %25 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %26, %call19
  br i1 %cmp.i.i.i.i.not, label %do.body.for.inc28_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

do.body.for.inc28_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc28

for.inc28:                                        ; preds = %do.body.for.inc28_crit_edge, %if.then
  %i.2 = add i32 %i.1167, 2
  %inc29 = add nuw i32 %j.0168, 1
  %27 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_tx_queues, align 4
  %cmp12 = icmp ult i32 %inc29, %28
  br i1 %cmp12, label %for.inc28.for.body14_crit_edge, label %for.cond31.preheader

for.inc28.for.body14_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body14

for.cond62.preheader:                             ; preds = %for.inc59.for.cond62.preheader_crit_edge, %for.cond31.preheader.for.cond62.preheader_crit_edge, %for.cond11.preheader.for.cond62.preheader_crit_edge
  %i.3.lcssa = phi i32 [ %i.2, %for.cond31.preheader.for.cond62.preheader_crit_edge ], [ 64, %for.cond11.preheader.for.cond62.preheader_crit_edge ], [ %i.4, %for.inc59.for.cond62.preheader_crit_edge ]
  %arrayidx67 = getelementptr i8, ptr %netdev, i32 7992
  %29 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx67, align 8
  %inc68 = add i32 %i.3.lcssa, 1
  %arrayidx69 = getelementptr i64, ptr %data, i32 %i.3.lcssa
  %31 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx69, align 8
  %arrayidx71 = getelementptr i8, ptr %netdev, i32 8120
  %32 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx71, align 8
  %inc72 = add i32 %i.3.lcssa, 2
  %arrayidx73 = getelementptr i64, ptr %data, i32 %inc68
  %34 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx73, align 8
  %arrayidx67.1 = getelementptr i8, ptr %netdev, i32 8000
  %35 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx67.1, align 8
  %inc68.1 = add i32 %i.3.lcssa, 3
  %arrayidx69.1 = getelementptr i64, ptr %data, i32 %inc72
  %37 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx69.1, align 8
  %arrayidx71.1 = getelementptr i8, ptr %netdev, i32 8128
  %38 = ptrtoint ptr %arrayidx71.1 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx71.1, align 8
  %inc72.1 = add i32 %i.3.lcssa, 4
  %arrayidx73.1 = getelementptr i64, ptr %data, i32 %inc68.1
  %40 = ptrtoint ptr %arrayidx73.1 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx73.1, align 8
  %arrayidx67.2 = getelementptr i8, ptr %netdev, i32 8008
  %41 = ptrtoint ptr %arrayidx67.2 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx67.2, align 8
  %inc68.2 = add i32 %i.3.lcssa, 5
  %arrayidx69.2 = getelementptr i64, ptr %data, i32 %inc72.1
  %43 = ptrtoint ptr %arrayidx69.2 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx69.2, align 8
  %arrayidx71.2 = getelementptr i8, ptr %netdev, i32 8136
  %44 = ptrtoint ptr %arrayidx71.2 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx71.2, align 8
  %inc72.2 = add i32 %i.3.lcssa, 6
  %arrayidx73.2 = getelementptr i64, ptr %data, i32 %inc68.2
  %46 = ptrtoint ptr %arrayidx73.2 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %arrayidx73.2, align 8
  %arrayidx67.3 = getelementptr i8, ptr %netdev, i32 8016
  %47 = ptrtoint ptr %arrayidx67.3 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx67.3, align 8
  %inc68.3 = add i32 %i.3.lcssa, 7
  %arrayidx69.3 = getelementptr i64, ptr %data, i32 %inc72.2
  %49 = ptrtoint ptr %arrayidx69.3 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %arrayidx69.3, align 8
  %arrayidx71.3 = getelementptr i8, ptr %netdev, i32 8144
  %50 = ptrtoint ptr %arrayidx71.3 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx71.3, align 8
  %inc72.3 = add i32 %i.3.lcssa, 8
  %arrayidx73.3 = getelementptr i64, ptr %data, i32 %inc68.3
  %52 = ptrtoint ptr %arrayidx73.3 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx73.3, align 8
  %arrayidx67.4 = getelementptr i8, ptr %netdev, i32 8024
  %53 = ptrtoint ptr %arrayidx67.4 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx67.4, align 8
  %inc68.4 = add i32 %i.3.lcssa, 9
  %arrayidx69.4 = getelementptr i64, ptr %data, i32 %inc72.3
  %55 = ptrtoint ptr %arrayidx69.4 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx69.4, align 8
  %arrayidx71.4 = getelementptr i8, ptr %netdev, i32 8152
  %56 = ptrtoint ptr %arrayidx71.4 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx71.4, align 8
  %inc72.4 = add i32 %i.3.lcssa, 10
  %arrayidx73.4 = getelementptr i64, ptr %data, i32 %inc68.4
  %58 = ptrtoint ptr %arrayidx73.4 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %arrayidx73.4, align 8
  %arrayidx67.5 = getelementptr i8, ptr %netdev, i32 8032
  %59 = ptrtoint ptr %arrayidx67.5 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx67.5, align 8
  %inc68.5 = add i32 %i.3.lcssa, 11
  %arrayidx69.5 = getelementptr i64, ptr %data, i32 %inc72.4
  %61 = ptrtoint ptr %arrayidx69.5 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx69.5, align 8
  %arrayidx71.5 = getelementptr i8, ptr %netdev, i32 8160
  %62 = ptrtoint ptr %arrayidx71.5 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx71.5, align 8
  %inc72.5 = add i32 %i.3.lcssa, 12
  %arrayidx73.5 = getelementptr i64, ptr %data, i32 %inc68.5
  %64 = ptrtoint ptr %arrayidx73.5 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %arrayidx73.5, align 8
  %arrayidx67.6 = getelementptr i8, ptr %netdev, i32 8040
  %65 = ptrtoint ptr %arrayidx67.6 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx67.6, align 8
  %inc68.6 = add i32 %i.3.lcssa, 13
  %arrayidx69.6 = getelementptr i64, ptr %data, i32 %inc72.5
  %67 = ptrtoint ptr %arrayidx69.6 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %arrayidx69.6, align 8
  %arrayidx71.6 = getelementptr i8, ptr %netdev, i32 8168
  %68 = ptrtoint ptr %arrayidx71.6 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx71.6, align 8
  %inc72.6 = add i32 %i.3.lcssa, 14
  %arrayidx73.6 = getelementptr i64, ptr %data, i32 %inc68.6
  %70 = ptrtoint ptr %arrayidx73.6 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %arrayidx73.6, align 8
  %arrayidx67.7 = getelementptr i8, ptr %netdev, i32 8048
  %71 = ptrtoint ptr %arrayidx67.7 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx67.7, align 8
  %inc68.7 = add i32 %i.3.lcssa, 15
  %arrayidx69.7 = getelementptr i64, ptr %data, i32 %inc72.6
  %73 = ptrtoint ptr %arrayidx69.7 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %arrayidx69.7, align 8
  %arrayidx71.7 = getelementptr i8, ptr %netdev, i32 8176
  %74 = ptrtoint ptr %arrayidx71.7 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx71.7, align 8
  %inc72.7 = add i32 %i.3.lcssa, 16
  %arrayidx73.7 = getelementptr i64, ptr %data, i32 %inc68.7
  %76 = ptrtoint ptr %arrayidx73.7 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %arrayidx73.7, align 8
  %arrayidx82 = getelementptr i8, ptr %netdev, i32 8056
  %77 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx82, align 8
  %inc83 = add i32 %i.3.lcssa, 17
  %arrayidx84 = getelementptr i64, ptr %data, i32 %inc72.7
  %79 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %arrayidx84, align 8
  %arrayidx86 = getelementptr i8, ptr %netdev, i32 8184
  %80 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx86, align 8
  %inc87 = add i32 %i.3.lcssa, 18
  %arrayidx88 = getelementptr i64, ptr %data, i32 %inc83
  %82 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %arrayidx88, align 8
  %arrayidx82.1 = getelementptr i8, ptr %netdev, i32 8064
  %83 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx82.1, align 8
  %inc83.1 = add i32 %i.3.lcssa, 19
  %arrayidx84.1 = getelementptr i64, ptr %data, i32 %inc87
  %85 = ptrtoint ptr %arrayidx84.1 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %arrayidx84.1, align 8
  %arrayidx86.1 = getelementptr i8, ptr %netdev, i32 8192
  %86 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx86.1, align 8
  %inc87.1 = add i32 %i.3.lcssa, 20
  %arrayidx88.1 = getelementptr i64, ptr %data, i32 %inc83.1
  %88 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %arrayidx88.1, align 8
  %arrayidx82.2 = getelementptr i8, ptr %netdev, i32 8072
  %89 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx82.2, align 8
  %inc83.2 = add i32 %i.3.lcssa, 21
  %arrayidx84.2 = getelementptr i64, ptr %data, i32 %inc87.1
  %91 = ptrtoint ptr %arrayidx84.2 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %arrayidx84.2, align 8
  %arrayidx86.2 = getelementptr i8, ptr %netdev, i32 8200
  %92 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx86.2, align 8
  %inc87.2 = add i32 %i.3.lcssa, 22
  %arrayidx88.2 = getelementptr i64, ptr %data, i32 %inc83.2
  %94 = ptrtoint ptr %arrayidx88.2 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %arrayidx88.2, align 8
  %arrayidx82.3 = getelementptr i8, ptr %netdev, i32 8080
  %95 = ptrtoint ptr %arrayidx82.3 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx82.3, align 8
  %inc83.3 = add i32 %i.3.lcssa, 23
  %arrayidx84.3 = getelementptr i64, ptr %data, i32 %inc87.2
  %97 = ptrtoint ptr %arrayidx84.3 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %arrayidx84.3, align 8
  %arrayidx86.3 = getelementptr i8, ptr %netdev, i32 8208
  %98 = ptrtoint ptr %arrayidx86.3 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %arrayidx86.3, align 8
  %inc87.3 = add i32 %i.3.lcssa, 24
  %arrayidx88.3 = getelementptr i64, ptr %data, i32 %inc83.3
  %100 = ptrtoint ptr %arrayidx88.3 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %arrayidx88.3, align 8
  %arrayidx82.4 = getelementptr i8, ptr %netdev, i32 8088
  %101 = ptrtoint ptr %arrayidx82.4 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx82.4, align 8
  %inc83.4 = add i32 %i.3.lcssa, 25
  %arrayidx84.4 = getelementptr i64, ptr %data, i32 %inc87.3
  %103 = ptrtoint ptr %arrayidx84.4 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %arrayidx84.4, align 8
  %arrayidx86.4 = getelementptr i8, ptr %netdev, i32 8216
  %104 = ptrtoint ptr %arrayidx86.4 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %arrayidx86.4, align 8
  %inc87.4 = add i32 %i.3.lcssa, 26
  %arrayidx88.4 = getelementptr i64, ptr %data, i32 %inc83.4
  %106 = ptrtoint ptr %arrayidx88.4 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %arrayidx88.4, align 8
  %arrayidx82.5 = getelementptr i8, ptr %netdev, i32 8096
  %107 = ptrtoint ptr %arrayidx82.5 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx82.5, align 8
  %inc83.5 = add i32 %i.3.lcssa, 27
  %arrayidx84.5 = getelementptr i64, ptr %data, i32 %inc87.4
  %109 = ptrtoint ptr %arrayidx84.5 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %arrayidx84.5, align 8
  %arrayidx86.5 = getelementptr i8, ptr %netdev, i32 8224
  %110 = ptrtoint ptr %arrayidx86.5 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx86.5, align 8
  %inc87.5 = add i32 %i.3.lcssa, 28
  %arrayidx88.5 = getelementptr i64, ptr %data, i32 %inc83.5
  %112 = ptrtoint ptr %arrayidx88.5 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %arrayidx88.5, align 8
  %arrayidx82.6 = getelementptr i8, ptr %netdev, i32 8104
  %113 = ptrtoint ptr %arrayidx82.6 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx82.6, align 8
  %inc83.6 = add i32 %i.3.lcssa, 29
  %arrayidx84.6 = getelementptr i64, ptr %data, i32 %inc87.5
  %115 = ptrtoint ptr %arrayidx84.6 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %arrayidx84.6, align 8
  %arrayidx86.6 = getelementptr i8, ptr %netdev, i32 8232
  %116 = ptrtoint ptr %arrayidx86.6 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx86.6, align 8
  %inc87.6 = add i32 %i.3.lcssa, 30
  %arrayidx88.6 = getelementptr i64, ptr %data, i32 %inc83.6
  %118 = ptrtoint ptr %arrayidx88.6 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %arrayidx88.6, align 8
  %arrayidx82.7 = getelementptr i8, ptr %netdev, i32 8112
  %119 = ptrtoint ptr %arrayidx82.7 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx82.7, align 8
  %inc83.7 = add i32 %i.3.lcssa, 31
  %arrayidx84.7 = getelementptr i64, ptr %data, i32 %inc87.6
  %121 = ptrtoint ptr %arrayidx84.7 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %arrayidx84.7, align 8
  %arrayidx86.7 = getelementptr i8, ptr %netdev, i32 8240
  %122 = ptrtoint ptr %arrayidx86.7 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx86.7, align 8
  %arrayidx88.7 = getelementptr i64, ptr %data, i32 %inc83.7
  %124 = ptrtoint ptr %arrayidx88.7 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %123, ptr %arrayidx88.7, align 8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp) #19
  ret void

for.body35:                                       ; preds = %for.inc59.for.body35_crit_edge, %for.cond31.preheader.for.body35_crit_edge
  %j.1171 = phi i32 [ %inc60, %for.inc59.for.body35_crit_edge ], [ 0, %for.cond31.preheader.for.body35_crit_edge ]
  %i.3170 = phi i32 [ %i.4, %for.inc59.for.body35_crit_edge ], [ %i.2, %for.cond31.preheader.for.body35_crit_edge ]
  %arrayidx36 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %j.1171
  %125 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx36, align 4
  %tobool37.not = icmp eq ptr %126, null
  br i1 %tobool37.not, label %if.then38, label %do.body44.preheader

do.body44.preheader:                              ; preds = %for.body35
  %syncp45 = getelementptr inbounds %struct.ixgbe_ring, ptr %126, i32 0, i32 20
  %stats47 = getelementptr inbounds %struct.ixgbe_ring, ptr %126, i32 0, i32 19
  %arrayidx49 = getelementptr i64, ptr %data, i32 %i.3170
  %bytes51 = getelementptr inbounds %struct.ixgbe_ring, ptr %126, i32 0, i32 19, i32 1
  %add52 = or i32 %i.3170, 1
  %arrayidx53 = getelementptr i64, ptr %data, i32 %add52
  br label %do.body44

if.then38:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx39 = getelementptr i64, ptr %data, i32 %i.3170
  %127 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 0, ptr %arrayidx39, align 8
  %add40 = or i32 %i.3170, 1
  %arrayidx41 = getelementptr i64, ptr %data, i32 %add40
  %128 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 0, ptr %arrayidx41, align 8
  br label %for.inc59

do.body44:                                        ; preds = %do.body44.do.body44_crit_edge, %do.body44.preheader
  %call46 = call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp45)
  %129 = ptrtoint ptr %stats47 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %stats47, align 64
  %131 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %arrayidx49, align 8
  %132 = ptrtoint ptr %bytes51 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %bytes51, align 8
  %134 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %133, ptr %arrayidx53, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !106
  %135 = ptrtoint ptr %syncp45 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %syncp45, align 4
  %cmp.i.i.i.i162.not = icmp eq i32 %136, %call46
  br i1 %cmp.i.i.i.i162.not, label %do.body44.for.inc59_crit_edge, label %do.body44.do.body44_crit_edge

do.body44.do.body44_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body44

do.body44.for.inc59_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc59

for.inc59:                                        ; preds = %do.body44.for.inc59_crit_edge, %if.then38
  %i.4 = add i32 %i.3170, 2
  %inc60 = add nuw i32 %j.1171, 1
  %137 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_tx_queues, align 4
  %cmp33 = icmp ult i32 %inc60, %138
  br i1 %cmp33, label %for.inc59.for.body35_crit_edge, label %for.inc59.for.cond62.preheader_crit_edge

for.inc59.for.cond62.preheader_crit_edge:         ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond62.preheader

for.inc59.for.body35_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body35
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_get_priv_flags(ptr nocapture noundef readonly %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr i8, ptr %netdev, i32 2840
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags2, align 8
  %and = lshr i32 %1, 16
  %and.lobit = and i32 %and, 1
  %and2 = lshr i32 %1, 17
  %2 = and i32 %and2, 2
  %3 = or i32 %2, %and.lobit
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_priv_flags(ptr noundef %netdev, i32 noundef %priv_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags21 = getelementptr i8, ptr %netdev, i32 2840
  %0 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags21, align 8
  %and = and i32 %1, -327681
  %and2 = shl i32 %priv_flags, 16
  %2 = and i32 %and2, 65536
  %and4 = shl i32 %priv_flags, 17
  %3 = and i32 %and4, 262144
  %spec.select = or i32 %3, %2
  %flags2.1 = or i32 %spec.select, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %flags2.1, i32 %1)
  %cmp.not = icmp eq i32 %flags2.1, %1
  br i1 %cmp.not, label %entry.if.end15_crit_edge, label %if.then10

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15

if.then10:                                        ; preds = %entry
  %4 = ptrtoint ptr %flags21 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags2.1, ptr %flags21, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then10.if.end15_crit_edge, label %if.then13

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ixgbe_reinit_locked(ptr noundef %add.ptr.i) #19
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %sset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %sset, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %1 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_tx_queues, align 4
  %mul = shl i32 %2, 2
  %add3 = add i32 %mul, 96
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ 2, %sw.bb4 ], [ %add3, %sw.bb1 ], [ 5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_rxnfc(ptr nocapture noundef readonly %dev, ptr noundef %cmd, ptr nocapture noundef writeonly %rule_locs) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 46, label %sw.bb2
    i32 47, label %sw.bb3
    i32 48, label %sw.bb5
    i32 41, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %num_rx_queues = getelementptr i8, ptr %dev, i32 2864
  %3 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_rx_queues, align 16
  %conv = sext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %fdir_filter_count = getelementptr i8, ptr %dev, i32 9780
  %6 = ptrtoint ptr %fdir_filter_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fdir_filter_count, align 4
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %fdir_mask.i = getelementptr i8, ptr %dev, i32 9736
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %fdir_pballoc.i = getelementptr i8, ptr %dev, i32 9784
  %10 = ptrtoint ptr %fdir_pballoc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fdir_pballoc.i, align 8
  %shl.i = shl i32 1024, %11
  %sub.i = add i32 %shl.i, -2
  %conv.i = sext i32 %sub.i to i64
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv.i, ptr %data.i, align 8
  %fdir_filter_list.i = getelementptr i8, ptr %dev, i32 9728
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %sw.bb3
  %rule.0.in.i = phi ptr [ %fdir_filter_list.i, %sw.bb3 ], [ %rule.0.i, %land.rhs.i.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %rule.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %rule.0.i = load ptr, ptr %rule.0.in.i, align 8
  %tobool2.not.i = icmp eq ptr %rule.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.sw.epilog_crit_edge, label %land.rhs.i

for.cond.i.sw.epilog_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

land.rhs.i:                                       ; preds = %for.cond.i
  %14 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %location.i, align 8
  %sw_idx.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %sw_idx.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sw_idx.i, align 4
  %conv5.i = zext i16 %17 to i32
  %cmp.not.i = icmp ugt i32 %15, %conv5.i
  br i1 %cmp.not.i, label %land.rhs.i.for.cond.i_crit_edge, label %lor.lhs.false.critedge.i

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i

lor.lhs.false.critedge.i:                         ; preds = %land.rhs.i
  %conv5.i.le = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv5.i.le)
  %cmp21.not.i = icmp eq i32 %15, %conv5.i.le
  br i1 %cmp21.not.i, label %if.end24.i, label %lor.lhs.false.critedge.i.sw.epilog_crit_edge

lor.lhs.false.critedge.i.sw.epilog_crit_edge:     ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end24.i:                                       ; preds = %lor.lhs.false.critedge.i
  %filter.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0.i, i32 0, i32 1
  %flow_type.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0.i, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flow_type.i, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %19, label %if.end24.i.sw.epilog_crit_edge [
    i8 2, label %sw.bb.i
    i8 1, label %sw.bb27.i
    i8 3, label %sw.bb29.i
    i8 0, label %sw.bb31.i
  ]

if.end24.i.sw.epilog_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  %21 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %fs.i, align 8
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  %22 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %fs.i, align 8
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  %23 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %fs.i, align 8
  br label %sw.epilog.i

sw.bb31.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  %24 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 13, ptr %fs.i, align 8
  %h_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %ip_ver.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 4
  %25 = ptrtoint ptr %ip_ver.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %ip_ver.i, align 1
  %proto.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 5
  %26 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %proto.i, align 2
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %proto34.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i, i32 0, i32 5
  %27 = ptrtoint ptr %proto34.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %proto34.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb31.i, %sw.bb29.i, %sw.bb27.i, %sw.bb.i
  %src_port.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0.i, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %src_port.i, align 4
  %h_u36.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %30 = ptrtoint ptr %psrc.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %psrc.i, align 4
  %src_port37.i = getelementptr i8, ptr %dev, i32 9772
  %31 = ptrtoint ptr %src_port37.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %src_port37.i, align 4
  %m_u38.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %psrc39.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %33 = ptrtoint ptr %psrc39.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %psrc39.i, align 4
  %dst_port.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0.i, i32 0, i32 1, i32 0, i32 6
  %34 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %dst_port.i, align 2
  %pdst.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u36.i, i32 0, i32 3
  %36 = ptrtoint ptr %pdst.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %pdst.i, align 2
  %dst_port42.i = getelementptr i8, ptr %dev, i32 9774
  %37 = ptrtoint ptr %dst_port42.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dst_port42.i, align 2
  %pdst44.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u38.i, i32 0, i32 3
  %39 = ptrtoint ptr %pdst44.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %pdst44.i, align 2
  %src_ip.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0.i, i32 0, i32 1, i32 0, i32 4
  %40 = ptrtoint ptr %src_ip.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %src_ip.i, align 4
  %42 = ptrtoint ptr %h_u36.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %h_u36.i, align 4
  %src_ip47.i = getelementptr i8, ptr %dev, i32 9756
  %43 = ptrtoint ptr %src_ip47.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %src_ip47.i, align 4
  %45 = ptrtoint ptr %m_u38.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %m_u38.i, align 4
  %dst_ip.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0.i, i32 0, i32 1, i32 0, i32 3
  %46 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dst_ip.i, align 4
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %ip4dst.i, align 4
  %dst_ip54.i = getelementptr i8, ptr %dev, i32 9740
  %49 = ptrtoint ptr %dst_ip54.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dst_ip54.i, align 4
  %ip4dst57.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %ip4dst57.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ip4dst57.i, align 4
  %vlan_id.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0.i, i32 0, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vlan_id.i, align 2
  %vlan_tci.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %54 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %vlan_tci.i, align 2
  %vlan_id59.i = getelementptr i8, ptr %dev, i32 9738
  %55 = ptrtoint ptr %vlan_id59.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vlan_id59.i, align 2
  %vlan_tci60.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %57 = ptrtoint ptr %vlan_tci60.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %vlan_tci60.i, align 2
  %flex_bytes.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0.i, i32 0, i32 1, i32 0, i32 7
  %58 = ptrtoint ptr %flex_bytes.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %flex_bytes.i, align 8
  %vlan_etype.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 2
  %60 = ptrtoint ptr %vlan_etype.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %vlan_etype.i, align 8
  %flex_bytes63.i = getelementptr i8, ptr %dev, i32 9776
  %61 = ptrtoint ptr %flex_bytes63.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %flex_bytes63.i, align 4
  %vlan_etype65.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 2
  %63 = ptrtoint ptr %vlan_etype65.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %vlan_etype65.i, align 8
  %64 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %filter.i, align 8
  %conv67.i = zext i8 %65 to i32
  %arrayidx70.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 4, i32 1
  %66 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv67.i, ptr %arrayidx70.i, align 4
  %67 = ptrtoint ptr %fdir_mask.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fdir_mask.i, align 4
  %conv72.i = zext i8 %68 to i32
  %arrayidx75.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4, i32 1
  %69 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv72.i, ptr %arrayidx75.i, align 4
  %70 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fs.i, align 8
  %or.i = or i32 %71, -2147483648
  store i32 %or.i, ptr %fs.i, align 8
  %action.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0.i, i32 0, i32 3
  %72 = ptrtoint ptr %action.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 127, i64 %73)
  %cmp77.i = icmp eq i64 %73, 127
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %..i = select i1 %cmp77.i, i64 -1, i64 %73
  %74 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %..i, ptr %ring_cookie.i, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %fdir_pballoc.i18 = getelementptr i8, ptr %dev, i32 9784
  %75 = ptrtoint ptr %fdir_pballoc.i18 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fdir_pballoc.i18, align 8
  %shl.i19 = shl i32 1024, %76
  %sub.i20 = add i32 %shl.i19, -2
  %conv.i21 = sext i32 %sub.i20 to i64
  %data.i22 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %77 = ptrtoint ptr %data.i22 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv.i21, ptr %data.i22, align 8
  %fdir_filter_list.i23 = getelementptr i8, ptr %dev, i32 9728
  %78 = ptrtoint ptr %fdir_filter_list.i23 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fdir_filter_list.i23, align 128
  %tobool2.not32.i = icmp eq ptr %79, null
  br i1 %tobool2.not32.i, label %sw.bb5.for.end.i_crit_edge, label %land.rhs.lr.ph.i

sw.bb5.for.end.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %sw.bb5
  %80 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  br label %land.rhs.i24

land.rhs.i24:                                     ; preds = %if.end.i.land.rhs.i24_crit_edge, %land.rhs.lr.ph.i
  %rule.034.i = phi ptr [ %79, %land.rhs.lr.ph.i ], [ %84, %if.end.i.land.rhs.i24_crit_edge ]
  %cnt.033.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %if.end.i.land.rhs.i24_crit_edge ]
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.033.i, i32 %82)
  %cmp.i = icmp eq i32 %cnt.033.i, %82
  br i1 %cmp.i, label %land.rhs.i24.sw.epilog_crit_edge, label %if.end.i

land.rhs.i24.sw.epilog_crit_edge:                 ; preds = %land.rhs.i24
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end.i:                                         ; preds = %land.rhs.i24
  %83 = ptrtoint ptr %rule.034.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rule.034.i, align 8
  %sw_idx.i25 = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.034.i, i32 0, i32 2
  %85 = ptrtoint ptr %sw_idx.i25 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %sw_idx.i25, align 4
  %conv6.i = zext i16 %86 to i32
  %arrayidx.i = getelementptr i32, ptr %rule_locs, i32 %cnt.033.i
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv6.i, ptr %arrayidx.i, align 4
  %inc.i = add i32 %cnt.033.i, 1
  %tobool2.not.i26 = icmp eq ptr %84, null
  br i1 %tobool2.not.i26, label %if.end.i.for.end.i_crit_edge, label %if.end.i.land.rhs.i24_crit_edge

if.end.i.land.rhs.i24_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs.i24

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %sw.bb5.for.end.i_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %sw.bb5.for.end.i_crit_edge ], [ %inc.i, %if.end.i.for.end.i_crit_edge ]
  %88 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %cnt.0.lcssa.i, ptr %88, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %data.i28 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %90 = ptrtoint ptr %data.i28 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 0, ptr %data.i28, align 8
  %flow_type.i29 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %91 = ptrtoint ptr %flow_type.i29 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flow_type.i29, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %92, label %sw.bb7.sw.epilog_crit_edge [
    i32 1, label %sw.bb.i30
    i32 2, label %sw.bb7.sw.bb2.i_crit_edge
    i32 3, label %sw.bb7.sw.epilog.i31_crit_edge
    i32 4, label %sw.bb7.sw.epilog.i31_crit_edge50
    i32 9, label %sw.bb7.sw.epilog.i31_crit_edge51
    i32 10, label %sw.bb7.sw.epilog.i31_crit_edge52
    i32 16, label %sw.bb7.sw.epilog.i31_crit_edge53
    i32 5, label %sw.bb8.i
    i32 6, label %sw.bb7.sw.bb11.i_crit_edge
    i32 7, label %sw.bb7.sw.epilog.i31_crit_edge54
    i32 8, label %sw.bb7.sw.epilog.i31_crit_edge55
    i32 11, label %sw.bb7.sw.epilog.i31_crit_edge56
    i32 12, label %sw.bb7.sw.epilog.i31_crit_edge57
    i32 17, label %sw.bb7.sw.epilog.i31_crit_edge58
  ]

sw.bb7.sw.epilog.i31_crit_edge58:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i31

sw.bb7.sw.epilog.i31_crit_edge57:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i31

sw.bb7.sw.epilog.i31_crit_edge56:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i31

sw.bb7.sw.epilog.i31_crit_edge55:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i31

sw.bb7.sw.epilog.i31_crit_edge54:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i31

sw.bb7.sw.bb11.i_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb11.i

sw.bb7.sw.epilog.i31_crit_edge53:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i31

sw.bb7.sw.epilog.i31_crit_edge52:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i31

sw.bb7.sw.epilog.i31_crit_edge51:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i31

sw.bb7.sw.epilog.i31_crit_edge50:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i31

sw.bb7.sw.epilog.i31_crit_edge:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i31

sw.bb7.sw.bb2.i_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2.i

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb.i30:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  %94 = ptrtoint ptr %data.i28 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 192, ptr %data.i28, align 8
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i30, %sw.bb7.sw.bb2.i_crit_edge
  %flags2.i = getelementptr i8, ptr %dev, i32 2840
  %95 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags2.i, align 8
  %and.i = and i32 %96, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb2.i.sw.epilog.i31_crit_edge, label %sw.bb2.i.sw.epilog.sink.split.i_crit_edge

sw.bb2.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split.i

sw.bb2.i.sw.epilog.i31_crit_edge:                 ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i31

sw.bb8.i:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  %97 = ptrtoint ptr %data.i28 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 192, ptr %data.i28, align 8
  br label %sw.bb11.i

sw.bb11.i:                                        ; preds = %sw.bb8.i, %sw.bb7.sw.bb11.i_crit_edge
  %flags212.i = getelementptr i8, ptr %dev, i32 2840
  %98 = ptrtoint ptr %flags212.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags212.i, align 8
  %and13.i = and i32 %99, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %sw.bb11.i.sw.epilog.i31_crit_edge, label %sw.bb11.i.sw.epilog.sink.split.i_crit_edge

sw.bb11.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split.i

sw.bb11.i.sw.epilog.i31_crit_edge:                ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i31

sw.epilog.sink.split.i:                           ; preds = %sw.bb11.i.sw.epilog.sink.split.i_crit_edge, %sw.bb2.i.sw.epilog.sink.split.i_crit_edge
  %100 = ptrtoint ptr %data.i28 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %data.i28, align 8
  %or17.i = or i64 %101, 192
  store i64 %or17.i, ptr %data.i28, align 8
  br label %sw.epilog.i31

sw.epilog.i31:                                    ; preds = %sw.epilog.sink.split.i, %sw.bb11.i.sw.epilog.i31_crit_edge, %sw.bb2.i.sw.epilog.i31_crit_edge, %sw.bb7.sw.epilog.i31_crit_edge, %sw.bb7.sw.epilog.i31_crit_edge50, %sw.bb7.sw.epilog.i31_crit_edge51, %sw.bb7.sw.epilog.i31_crit_edge52, %sw.bb7.sw.epilog.i31_crit_edge53, %sw.bb7.sw.epilog.i31_crit_edge54, %sw.bb7.sw.epilog.i31_crit_edge55, %sw.bb7.sw.epilog.i31_crit_edge56, %sw.bb7.sw.epilog.i31_crit_edge57, %sw.bb7.sw.epilog.i31_crit_edge58
  %102 = ptrtoint ptr %data.i28 to i32
  call void @__asan_load8_noabort(i32 %102)
  %storemerge.in.i = load i64, ptr %data.i28, align 8
  %storemerge.i = or i64 %storemerge.in.i, 48
  store i64 %storemerge.i, ptr %data.i28, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.i31, %sw.bb7.sw.epilog_crit_edge, %for.end.i, %land.rhs.i24.sw.epilog_crit_edge, %sw.epilog.i, %if.end24.i.sw.epilog_crit_edge, %lor.lhs.false.critedge.i.sw.epilog_crit_edge, %for.cond.i.sw.epilog_crit_edge, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %lor.lhs.false.critedge.i.sw.epilog_crit_edge ], [ -22, %if.end24.i.sw.epilog_crit_edge ], [ 0, %sw.epilog.i ], [ 0, %for.end.i ], [ 0, %sw.epilog.i31 ], [ -22, %sw.bb7.sw.epilog_crit_edge ], [ -22, %for.cond.i.sw.epilog_crit_edge ], [ -90, %land.rhs.i24.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_rxnfc(ptr noundef %dev, ptr noundef readonly %cmd) #0 align 64 {
entry:
  %mask.i = alloca %union.ixgbe_atr_input, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 50, label %sw.bb
    i32 49, label %sw.bb3
    i32 42, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %hw1.i = getelementptr i8, ptr %dev, i32 6528
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mask.i) #19
  %flags.i = getelementptr i8, ptr %dev, i32 2836
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.ixgbe_add_ethtool_fdir_entry.exit_crit_edge, label %if.end.i

sw.bb.ixgbe_add_ethtool_fdir_entry.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_add_ethtool_fdir_entry.exit

if.end.i:                                         ; preds = %sw.bb
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %5 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ring_cookie.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %6)
  %cmp.i = icmp eq i64 %6, -1
  br i1 %cmp.i, label %if.end.i.if.end31.i_crit_edge, label %if.else.i

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end31.i

if.else.i:                                        ; preds = %if.end.i
  %conv.i = trunc i64 %6 to i32
  %and.i250.i = lshr i64 %6, 32
  %conv6.i = trunc i64 %and.i250.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6.i)
  %tobool7.not.i = icmp eq i8 %conv6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i, label %if.else.i.if.else11.i_crit_edge

if.else.i.if.else11.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else11.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %num_rx_queues.i = getelementptr i8, ptr %dev, i32 2864
  %7 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_rx_queues.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv.i)
  %cmp8.not.i = icmp ugt i32 %8, %conv.i
  br i1 %cmp8.not.i, label %land.lhs.true.i.if.else11.i_crit_edge, label %land.lhs.true.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge

land.lhs.true.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_add_ethtool_fdir_entry.exit

land.lhs.true.i.if.else11.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else11.i

if.else11.i:                                      ; preds = %land.lhs.true.i.if.else11.i_crit_edge, %if.else.i.if.else11.i_crit_edge
  %9 = trunc i64 %and.i250.i to i32
  %10 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not.i = icmp eq i32 %10, 0
  br i1 %tobool13.not.i, label %if.else11.i.if.end22.i_crit_edge, label %land.lhs.true14.i

if.else11.i.if.end22.i_crit_edge:                 ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22.i

land.lhs.true14.i:                                ; preds = %if.else11.i
  %num_vfs.i = getelementptr i8, ptr %dev, i32 67628
  %11 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_vfs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp16.i = icmp ugt i32 %10, %12
  br i1 %cmp16.i, label %land.lhs.true14.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true14.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_add_ethtool_fdir_entry.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true14.i
  %num_rx_queues_per_pool.i = getelementptr i8, ptr %dev, i32 3736
  %13 = ptrtoint ptr %num_rx_queues_per_pool.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_rx_queues_per_pool.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv.i)
  %cmp18.not.i = icmp ugt i32 %14, %conv.i
  br i1 %cmp18.not.i, label %lor.lhs.false.i.if.end22.i_crit_edge, label %lor.lhs.false.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge

lor.lhs.false.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_add_ethtool_fdir_entry.exit

lor.lhs.false.i.if.end22.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22.i

if.end22.i:                                       ; preds = %lor.lhs.false.i.if.end22.i_crit_edge, %if.else11.i.if.end22.i_crit_edge
  br i1 %tobool7.not.i, label %if.then24.i, label %if.else25.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx.i = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %reg_idx.i = getelementptr inbounds %struct.ixgbe_ring, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg_idx.i, align 1
  br label %if.end31.i

if.else25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i = add i32 %9, 255
  %num_rx_queues_per_pool27.i = getelementptr i8, ptr %dev, i32 3736
  %19 = ptrtoint ptr %num_rx_queues_per_pool27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_rx_queues_per_pool27.i, align 8
  %mul.i = mul i32 %20, %sub.i
  %add.i = add i32 %mul.i, %conv.i
  %conv28.i = trunc i32 %add.i to i8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else25.i, %if.then24.i, %if.end.i.if.end31.i_crit_edge
  %queue.2.i = phi i8 [ 127, %if.end.i.if.end31.i_crit_edge ], [ %conv28.i, %if.else25.i ], [ %18, %if.then24.i ]
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %21 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %location.i, align 8
  %fdir_pballoc.i = getelementptr i8, ptr %dev, i32 9784
  %23 = ptrtoint ptr %fdir_pballoc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fdir_pballoc.i, align 8
  %shl.i = shl i32 1024, %24
  %sub32.i = add i32 %shl.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %sub32.i)
  %cmp33.not.i = icmp ult i32 %22, %sub32.i
  br i1 %cmp33.not.i, label %if.end41.i, label %do.body.i

do.body.i:                                        ; preds = %if.end31.i
  %msg_enable.i = getelementptr i8, ptr %dev, i32 7828
  %25 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %msg_enable.i, align 4
  %27 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool38.not.i = icmp eq i16 %27, 0
  br i1 %tobool38.not.i, label %do.body.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge, label %if.then39.i

do.body.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_add_ethtool_fdir_entry.exit

if.then39.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %netdev.i = getelementptr i8, ptr %dev, i32 2816
  %28 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev.i, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.27) #23
  br label %ixgbe_add_ethtool_fdir_entry.exit

if.end41.i:                                       ; preds = %if.end31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 2848, i32 noundef 64) #25
  %tobool43.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool43.not.i, label %if.end41.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge, label %if.end45.i

if.end41.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_add_ethtool_fdir_entry.exit

if.end45.i:                                       ; preds = %if.end41.i
  %31 = call ptr @memset(ptr %mask.i, i32 0, i32 44)
  %32 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %location.i, align 8
  %conv47.i = trunc i32 %33 to i16
  %sw_idx.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %call7.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %sw_idx.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv47.i, ptr %sw_idx.i, align 4
  %filter.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %call7.i.i.i, i32 0, i32 1
  %flow_type.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fs.i, align 8
  %and.i251.i = and i32 %36, 2147483647
  %37 = zext i32 %and.i251.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %and.i251.i, label %if.end45.i.do.body51.i_crit_edge [
    i32 1, label %if.end45.i.if.end61.i_crit_edge
    i32 2, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 13, label %sw.bb4.i.i
  ]

if.end45.i.if.end61.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end61.i

if.end45.i.do.body51.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body51.i

sw.bb2.i.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end61.i

sw.bb3.i.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end61.i

sw.bb4.i.i:                                       ; preds = %if.end45.i
  %h_u.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %proto.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %proto.i.i, align 2
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %39, label %sw.bb4.i.i.do.body51.i_crit_edge [
    i8 6, label %sw.bb4.i.i.if.end61.i_crit_edge
    i8 17, label %sw.bb6.i.i
    i8 -124, label %sw.bb7.i.i
    i8 0, label %sw.bb8.i.i
  ]

sw.bb4.i.i.if.end61.i_crit_edge:                  ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end61.i

sw.bb4.i.i.do.body51.i_crit_edge:                 ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body51.i

sw.bb6.i.i:                                       ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end61.i

sw.bb7.i.i:                                       ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end61.i

sw.bb8.i.i:                                       ; preds = %sw.bb4.i.i
  %m_u.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %proto9.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %proto9.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %proto9.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i, label %sw.bb8.i.i.if.end61.i_crit_edge, label %sw.bb8.i.i.do.body51.i_crit_edge

sw.bb8.i.i.do.body51.i_crit_edge:                 ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body51.i

sw.bb8.i.i.if.end61.i_crit_edge:                  ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end61.i

do.body51.i:                                      ; preds = %sw.bb8.i.i.do.body51.i_crit_edge, %sw.bb4.i.i.do.body51.i_crit_edge, %if.end45.i.do.body51.i_crit_edge
  %msg_enable52.i = getelementptr i8, ptr %dev, i32 7828
  %43 = ptrtoint ptr %msg_enable52.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %msg_enable52.i, align 4
  %45 = and i16 %44, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool55.not.i = icmp eq i16 %45, 0
  br i1 %tobool55.not.i, label %do.body51.i.err_out.i_crit_edge, label %if.then56.i

do.body51.i.err_out.i_crit_edge:                  ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_out.i

if.then56.i:                                      ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #21
  %netdev57.i = getelementptr i8, ptr %dev, i32 2816
  %46 = ptrtoint ptr %netdev57.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev57.i, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %47, ptr noundef nonnull @.str.28) #23
  br label %err_out.i

if.end61.i:                                       ; preds = %sw.bb8.i.i.if.end61.i_crit_edge, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb4.i.i.if.end61.i_crit_edge, %sw.bb3.i.i, %sw.bb2.i.i, %if.end45.i.if.end61.i_crit_edge
  %cmp66.i = phi i8 [ 4, %sw.bb8.i.i.if.end61.i_crit_edge ], [ 7, %sw.bb7.i.i ], [ 7, %sw.bb6.i.i ], [ 7, %sw.bb4.i.i.if.end61.i_crit_edge ], [ 7, %sw.bb3.i.i ], [ 7, %sw.bb2.i.i ], [ 7, %if.end45.i.if.end61.i_crit_edge ]
  %.sink.i.i = phi i8 [ 0, %sw.bb8.i.i.if.end61.i_crit_edge ], [ 3, %sw.bb7.i.i ], [ 1, %sw.bb6.i.i ], [ 2, %sw.bb4.i.i.if.end61.i_crit_edge ], [ 3, %sw.bb3.i.i ], [ 1, %sw.bb2.i.i ], [ 2, %if.end45.i.if.end61.i_crit_edge ]
  %48 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.sink.i.i, ptr %flow_type.i, align 1
  %flow_type62.i = getelementptr inbounds %struct.anon.128, ptr %mask.i, i32 0, i32 1
  %49 = ptrtoint ptr %flow_type62.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %cmp66.i, ptr %flow_type62.i, align 1
  %h_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %h_u.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %h_u.i, align 4
  %src_ip.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 4
  %52 = ptrtoint ptr %src_ip.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %src_ip.i, align 4
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %m_u.i, align 4
  %src_ip77.i = getelementptr inbounds %struct.anon.128, ptr %mask.i, i32 0, i32 4
  %55 = ptrtoint ptr %src_ip77.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %src_ip77.i, align 4
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ip4dst.i, align 4
  %dst_ip.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %58 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %dst_ip.i, align 4
  %ip4dst83.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %ip4dst83.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ip4dst83.i, align 4
  %dst_ip84.i = getelementptr inbounds %struct.anon.128, ptr %mask.i, i32 0, i32 3
  %61 = ptrtoint ptr %dst_ip84.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %dst_ip84.i, align 4
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %62 = ptrtoint ptr %psrc.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %psrc.i, align 4
  %src_port.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5
  %64 = ptrtoint ptr %src_port.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %src_port.i, align 4
  %psrc89.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %65 = ptrtoint ptr %psrc89.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %psrc89.i, align 4
  %src_port90.i = getelementptr inbounds %struct.anon.128, ptr %mask.i, i32 0, i32 5
  %67 = ptrtoint ptr %src_port90.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %src_port90.i, align 4
  %pdst.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i, i32 0, i32 3
  %68 = ptrtoint ptr %pdst.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %pdst.i, align 2
  %dst_port.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 6
  %70 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %dst_port.i, align 2
  %pdst94.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i, i32 0, i32 3
  %71 = ptrtoint ptr %pdst94.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %pdst94.i, align 2
  %dst_port95.i = getelementptr inbounds %struct.anon.128, ptr %mask.i, i32 0, i32 6
  %73 = ptrtoint ptr %dst_port95.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %dst_port95.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %tobool98.not.i = icmp sgt i32 %36, -1
  br i1 %tobool98.not.i, label %if.end61.i.if.end117.i_crit_edge, label %if.then99.i

if.end61.i.if.end117.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end117.i

if.then99.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx100.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 4, i32 1
  %74 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx100.i, align 4
  %conv101.i = trunc i32 %75 to i8
  %76 = ptrtoint ptr %filter.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv101.i, ptr %filter.i, align 8
  %arrayidx104.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4, i32 1
  %77 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx104.i, align 4
  %conv105.i = trunc i32 %78 to i8
  %79 = ptrtoint ptr %mask.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv105.i, ptr %mask.i, align 4
  %vlan_tci.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %80 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %vlan_tci.i, align 2
  %vlan_id.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %82 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %vlan_id.i, align 2
  %vlan_tci110.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %83 = ptrtoint ptr %vlan_tci110.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %vlan_tci110.i, align 2
  %vlan_id111.i = getelementptr inbounds %struct.anon.128, ptr %mask.i, i32 0, i32 2
  %85 = ptrtoint ptr %vlan_id111.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %vlan_id111.i, align 2
  %vlan_etype.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 2
  %86 = ptrtoint ptr %vlan_etype.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %vlan_etype.i, align 8
  %flex_bytes.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 7
  %88 = ptrtoint ptr %flex_bytes.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %flex_bytes.i, align 8
  %vlan_etype115.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 2
  %89 = ptrtoint ptr %vlan_etype115.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %vlan_etype115.i, align 8
  %flex_bytes116.i = getelementptr inbounds %struct.anon.128, ptr %mask.i, i32 0, i32 7
  %91 = ptrtoint ptr %flex_bytes116.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %flex_bytes116.i, align 4
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then99.i, %if.end61.i.if.end117.i_crit_edge
  %92 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %ring_cookie.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %93)
  %cmp119.i = icmp eq i64 %93, -1
  %spec.select.i = select i1 %cmp119.i, i64 127, i64 %93
  %94 = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %call7.i.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %spec.select.i, ptr %94, align 8
  %fdir_perfect_lock.i = getelementptr i8, ptr %dev, i32 9792
  tail call void @_raw_spin_lock(ptr noundef %fdir_perfect_lock.i) #19
  %fdir_filter_list.i = getelementptr i8, ptr %dev, i32 9728
  %96 = ptrtoint ptr %fdir_filter_list.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %fdir_filter_list.i, align 4
  %tobool.not.i252.not.i = icmp eq ptr %97, null
  %fdir_mask.i = getelementptr i8, ptr %dev, i32 9736
  br i1 %tobool.not.i252.not.i, label %if.then128.i, label %if.else143.i

if.then128.i:                                     ; preds = %if.end117.i
  %98 = call ptr @memcpy(ptr %fdir_mask.i, ptr %mask.i, i32 44)
  %call129.i = call i32 @ixgbe_fdir_set_input_mask_82599(ptr noundef %hw1.i, ptr noundef nonnull %mask.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i)
  %tobool130.not.i = icmp eq i32 %call129.i, 0
  br i1 %tobool130.not.i, label %if.then128.i.if.end159.i_crit_edge, label %do.body132.i

if.then128.i.if.end159.i_crit_edge:               ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end159.i

do.body132.i:                                     ; preds = %if.then128.i
  %msg_enable133.i = getelementptr i8, ptr %dev, i32 7828
  %99 = ptrtoint ptr %msg_enable133.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %msg_enable133.i, align 4
  %101 = and i16 %100, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool136.not.i = icmp eq i16 %101, 0
  br i1 %tobool136.not.i, label %do.body132.i.err_out_w_lock.i_crit_edge, label %if.then137.i

do.body132.i.err_out_w_lock.i_crit_edge:          ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_out_w_lock.i

if.then137.i:                                     ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #21
  %netdev138.i = getelementptr i8, ptr %dev, i32 2816
  %102 = ptrtoint ptr %netdev138.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %netdev138.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %103, ptr noundef nonnull @.str.29) #23
  br label %err_out_w_lock.i

if.else143.i:                                     ; preds = %if.end117.i
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(44) %fdir_mask.i, ptr noundef nonnull dereferenceable(44) %mask.i, i32 44) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool146.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool146.not.i, label %if.else143.i.if.end159.i_crit_edge, label %do.body148.i

if.else143.i.if.end159.i_crit_edge:               ; preds = %if.else143.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end159.i

do.body148.i:                                     ; preds = %if.else143.i
  %msg_enable149.i = getelementptr i8, ptr %dev, i32 7828
  %104 = ptrtoint ptr %msg_enable149.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %msg_enable149.i, align 4
  %106 = and i16 %105, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool152.not.i = icmp eq i16 %106, 0
  br i1 %tobool152.not.i, label %do.body148.i.err_out_w_lock.i_crit_edge, label %if.then153.i

do.body148.i.err_out_w_lock.i_crit_edge:          ; preds = %do.body148.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_out_w_lock.i

if.then153.i:                                     ; preds = %do.body148.i
  call void @__sanitizer_cov_trace_pc() #21
  %netdev154.i = getelementptr i8, ptr %dev, i32 2816
  %107 = ptrtoint ptr %netdev154.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %netdev154.i, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %108, ptr noundef nonnull @.str.30) #23
  br label %err_out_w_lock.i

if.end159.i:                                      ; preds = %if.else143.i.if.end159.i_crit_edge, %if.then128.i.if.end159.i_crit_edge
  call void @ixgbe_atr_compute_perfect_hash_82599(ptr noundef %filter.i, ptr noundef nonnull %mask.i) #19
  %109 = ptrtoint ptr %sw_idx.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %sw_idx.i, align 4
  %call163.i = call i32 @ixgbe_fdir_write_perfect_filter_82599(ptr noundef %hw1.i, ptr noundef %filter.i, i16 noundef zeroext %110, i8 noundef zeroext %queue.2.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163.i)
  %tobool164.not.i = icmp eq i32 %call163.i, 0
  br i1 %tobool164.not.i, label %if.end166.i, label %if.end159.i.err_out_w_lock.i_crit_edge

if.end159.i.err_out_w_lock.i_crit_edge:           ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_out_w_lock.i

if.end166.i:                                      ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #21
  %111 = ptrtoint ptr %sw_idx.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %sw_idx.i, align 4
  %call168.i = call i32 @ixgbe_update_ethtool_fdir_entry(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext %112) #19
  call void @_raw_spin_unlock(ptr noundef %fdir_perfect_lock.i) #19
  br label %ixgbe_add_ethtool_fdir_entry.exit

err_out_w_lock.i:                                 ; preds = %if.end159.i.err_out_w_lock.i_crit_edge, %if.then153.i, %do.body148.i.err_out_w_lock.i_crit_edge, %if.then137.i, %do.body132.i.err_out_w_lock.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %fdir_perfect_lock.i) #19
  br label %err_out.i

err_out.i:                                        ; preds = %err_out_w_lock.i, %if.then56.i, %do.body51.i.err_out.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #19
  br label %ixgbe_add_ethtool_fdir_entry.exit

ixgbe_add_ethtool_fdir_entry.exit:                ; preds = %err_out.i, %if.end166.i, %if.end41.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge, %if.then39.i, %do.body.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge, %lor.lhs.false.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge, %land.lhs.true14.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge, %land.lhs.true.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge, %sw.bb.ixgbe_add_ethtool_fdir_entry.exit_crit_edge
  %retval.1.i = phi i32 [ -22, %err_out.i ], [ 0, %if.end166.i ], [ -95, %sw.bb.ixgbe_add_ethtool_fdir_entry.exit_crit_edge ], [ -22, %if.then39.i ], [ -22, %do.body.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge ], [ -12, %if.end41.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge ], [ -22, %land.lhs.true.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge ], [ -22, %lor.lhs.false.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge ], [ -22, %land.lhs.true14.i.ixgbe_add_ethtool_fdir_entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mask.i) #19
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %fdir_perfect_lock.i12 = getelementptr i8, ptr %dev, i32 9792
  tail call void @_raw_spin_lock(ptr noundef %fdir_perfect_lock.i12) #19
  %location.i13 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %113 = ptrtoint ptr %location.i13 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %location.i13, align 8
  %conv.i14 = trunc i32 %114 to i16
  %hw1.i.i = getelementptr i8, ptr %dev, i32 6528
  %fdir_filter_list.i.i = getelementptr i8, ptr %dev, i32 9728
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.rhs.i.i.for.cond.i.i_crit_edge, %sw.bb3
  %rule.0.in.i.i = phi ptr [ %fdir_filter_list.i.i, %sw.bb3 ], [ %rule.0.i.i, %land.rhs.i.i.for.cond.i.i_crit_edge ]
  %115 = ptrtoint ptr %rule.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %rule.0.i.i = load ptr, ptr %rule.0.in.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %rule.0.i.i, null
  br i1 %tobool3.not.i.i, label %for.cond.i.i.ixgbe_del_ethtool_fdir_entry.exit_crit_edge, label %land.rhs.i.i

for.cond.i.i.ixgbe_del_ethtool_fdir_entry.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_del_ethtool_fdir_entry.exit

land.rhs.i.i:                                     ; preds = %for.cond.i.i
  %sw_idx6.i.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0.i.i, i32 0, i32 2
  %116 = ptrtoint ptr %sw_idx6.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %sw_idx6.i.i, align 4
  %cmp.not.i.i = icmp ult i16 %117, %conv.i14
  br i1 %cmp.not.i.i, label %land.rhs.i.i.for.cond.i.i_crit_edge, label %land.lhs.true.critedge.i.i

land.rhs.i.i.for.cond.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i.i

land.lhs.true.critedge.i.i:                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %conv.i14)
  %cmp23.i.i = icmp eq i16 %117, %conv.i14
  br i1 %cmp23.i.i, label %if.then25.i.i, label %land.lhs.true.critedge.i.i.ixgbe_del_ethtool_fdir_entry.exit_crit_edge

land.lhs.true.critedge.i.i.ixgbe_del_ethtool_fdir_entry.exit_crit_edge: ; preds = %land.lhs.true.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_del_ethtool_fdir_entry.exit

if.then25.i.i:                                    ; preds = %land.lhs.true.critedge.i.i
  %filter34.i.i = getelementptr inbounds %struct.ixgbe_fdir_filter, ptr %rule.0.i.i, i32 0, i32 1
  %call.i.i = tail call i32 @ixgbe_fdir_erase_perfect_filter_82599(ptr noundef %hw1.i.i, ptr noundef %filter34.i.i, i16 noundef zeroext %conv.i14) #19
  %118 = ptrtoint ptr %rule.0.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rule.0.i.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %rule.0.i.i, i32 0, i32 1
  %120 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %119, ptr %121, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %119, null
  br i1 %tobool.not.i.i.i.i, label %if.then25.i.i.hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.then25.i.i.hlist_del.exit.i.i_crit_edge:       ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %hlist_del.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %119, i32 0, i32 1
  %123 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %121, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del.exit.i.i

hlist_del.exit.i.i:                               ; preds = %do.body13.i.i.i.i, %if.then25.i.i.hlist_del.exit.i.i_crit_edge
  %124 = ptrtoint ptr %rule.0.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.0.i.i, align 4
  %125 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %rule.0.i.i) #19
  %fdir_filter_count.i.i = getelementptr i8, ptr %dev, i32 9780
  %126 = ptrtoint ptr %fdir_filter_count.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fdir_filter_count.i.i, align 4
  %dec.i.i = add i32 %127, -1
  store i32 %dec.i.i, ptr %fdir_filter_count.i.i, align 4
  br label %ixgbe_del_ethtool_fdir_entry.exit

ixgbe_del_ethtool_fdir_entry.exit:                ; preds = %hlist_del.exit.i.i, %land.lhs.true.critedge.i.i.ixgbe_del_ethtool_fdir_entry.exit_crit_edge, %for.cond.i.i.ixgbe_del_ethtool_fdir_entry.exit_crit_edge
  %err.1.i.i = phi i32 [ %call.i.i, %hlist_del.exit.i.i ], [ -22, %land.lhs.true.critedge.i.i.ixgbe_del_ethtool_fdir_entry.exit_crit_edge ], [ -22, %for.cond.i.i.ixgbe_del_ethtool_fdir_entry.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %fdir_perfect_lock.i12) #19
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %flags21.i = getelementptr i8, ptr %dev, i32 2840
  %128 = ptrtoint ptr %flags21.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %flags21.i, align 8
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %130 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %data.i, align 8
  %and.i15 = and i64 %131, -241
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i15)
  %tobool.not.i16 = icmp eq i64 %and.i15, 0
  br i1 %tobool.not.i16, label %if.end.i18, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end.i18:                                       ; preds = %sw.bb5
  %flow_type.i17 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %132 = ptrtoint ptr %flow_type.i17 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flow_type.i17, align 4
  %134 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %133, label %if.end.i18.sw.epilog_crit_edge [
    i32 1, label %if.end.i18.sw.bb.i_crit_edge
    i32 5, label %if.end.i18.sw.bb.i_crit_edge34
    i32 2, label %sw.bb18.i
    i32 6, label %sw.bb33.i
    i32 4, label %if.end.i18.sw.bb51.i_crit_edge
    i32 9, label %if.end.i18.sw.bb51.i_crit_edge35
    i32 10, label %if.end.i18.sw.bb51.i_crit_edge36
    i32 3, label %if.end.i18.sw.bb51.i_crit_edge37
    i32 8, label %if.end.i18.sw.bb51.i_crit_edge38
    i32 11, label %if.end.i18.sw.bb51.i_crit_edge39
    i32 12, label %if.end.i18.sw.bb51.i_crit_edge40
    i32 7, label %if.end.i18.sw.bb51.i_crit_edge41
  ]

if.end.i18.sw.bb51.i_crit_edge41:                 ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb51.i

if.end.i18.sw.bb51.i_crit_edge40:                 ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb51.i

if.end.i18.sw.bb51.i_crit_edge39:                 ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb51.i

if.end.i18.sw.bb51.i_crit_edge38:                 ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb51.i

if.end.i18.sw.bb51.i_crit_edge37:                 ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb51.i

if.end.i18.sw.bb51.i_crit_edge36:                 ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb51.i

if.end.i18.sw.bb51.i_crit_edge35:                 ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb51.i

if.end.i18.sw.bb51.i_crit_edge:                   ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb51.i

if.end.i18.sw.bb.i_crit_edge34:                   ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb.i

if.end.i18.sw.bb.i_crit_edge:                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb.i

if.end.i18.sw.epilog_crit_edge:                   ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end.i18.sw.bb.i_crit_edge, %if.end.i18.sw.bb.i_crit_edge34
  %135 = and i64 %131, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 240, i64 %135)
  %.not177.i = icmp eq i64 %135, 240
  br i1 %.not177.i, label %sw.bb.i.sw.epilog70.thread.i_crit_edge, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb.i.sw.epilog70.thread.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog70.thread.i

sw.bb18.i:                                        ; preds = %if.end.i18
  %136 = and i64 %131, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %136)
  %.not176.i = icmp eq i64 %136, 48
  br i1 %.not176.i, label %if.end27.i, label %sw.bb18.i.sw.epilog_crit_edge

sw.bb18.i.sw.epilog_crit_edge:                    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end27.i:                                       ; preds = %sw.bb18.i
  %137 = trunc i64 %131 to i8
  %trunc162.i = and i8 %137, -64
  %138 = zext i8 %trunc162.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %trunc162.i, label %if.end27.i.sw.epilog_crit_edge [
    i8 0, label %sw.bb30.i
    i8 -64, label %sw.bb32.i
  ]

if.end27.i.sw.epilog_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb30.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #21
  %and31.i = and i32 %129, -257
  br label %sw.epilog70.i

sw.bb32.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #21
  %or.i = or i32 %129, 256
  br label %sw.epilog70.i

sw.bb33.i:                                        ; preds = %if.end.i18
  %139 = and i64 %131, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %139)
  %.not.i = icmp eq i64 %139, 48
  br i1 %.not.i, label %if.end42.i, label %sw.bb33.i.sw.epilog_crit_edge

sw.bb33.i.sw.epilog_crit_edge:                    ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end42.i:                                       ; preds = %sw.bb33.i
  %140 = trunc i64 %131 to i8
  %trunc.i = and i8 %140, -64
  %141 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %trunc.i, label %if.end42.i.sw.epilog_crit_edge [
    i8 0, label %sw.bb45.i
    i8 -64, label %sw.bb47.i
  ]

if.end42.i.sw.epilog_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb45.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #21
  %and46.i = and i32 %129, -513
  br label %sw.epilog70.i

sw.bb47.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #21
  %or48.i = or i32 %129, 512
  br label %sw.epilog70.i

sw.bb51.i:                                        ; preds = %if.end.i18.sw.bb51.i_crit_edge, %if.end.i18.sw.bb51.i_crit_edge35, %if.end.i18.sw.bb51.i_crit_edge36, %if.end.i18.sw.bb51.i_crit_edge37, %if.end.i18.sw.bb51.i_crit_edge38, %if.end.i18.sw.bb51.i_crit_edge39, %if.end.i18.sw.bb51.i_crit_edge40, %if.end.i18.sw.bb51.i_crit_edge41
  %142 = and i64 %131, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %142)
  %143 = icmp eq i64 %142, 48
  br i1 %143, label %sw.bb51.i.sw.epilog70.thread.i_crit_edge, label %sw.bb51.i.sw.epilog_crit_edge

sw.bb51.i.sw.epilog_crit_edge:                    ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb51.i.sw.epilog70.thread.i_crit_edge:         ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog70.thread.i

sw.epilog70.thread.i:                             ; preds = %sw.bb51.i.sw.epilog70.thread.i_crit_edge, %sw.bb.i.sw.epilog70.thread.i_crit_edge
  br label %sw.epilog

sw.epilog70.i:                                    ; preds = %sw.bb47.i, %sw.bb45.i, %sw.bb32.i, %sw.bb30.i
  %flags2.0.i = phi i32 [ %or48.i, %sw.bb47.i ], [ %and46.i, %sw.bb45.i ], [ %or.i, %sw.bb32.i ], [ %and31.i, %sw.bb30.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %flags2.0.i, i32 %129)
  %cmp.not.i = icmp eq i32 %flags2.0.i, %129
  br i1 %cmp.not.i, label %sw.epilog70.i.sw.epilog_crit_edge, label %if.then72.i

sw.epilog70.i.sw.epilog_crit_edge:                ; preds = %sw.epilog70.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then72.i:                                      ; preds = %sw.epilog70.i
  %hw73.i = getelementptr i8, ptr %dev, i32 6528
  %num_vfs.i19 = getelementptr i8, ptr %dev, i32 67628
  %144 = ptrtoint ptr %num_vfs.i19 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %num_vfs.i19, align 4
  %type.i = getelementptr i8, ptr %dev, i32 6808
  %146 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %147)
  %cmp74.i = icmp ugt i32 %147, 3
  br i1 %cmp74.i, label %land.lhs.true.i21, label %if.then72.i.if.end79.i_crit_edge

if.then72.i.if.end79.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end79.i

land.lhs.true.i21:                                ; preds = %if.then72.i
  %flags.i20 = getelementptr i8, ptr %dev, i32 2836
  %148 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags.i20, align 4
  %and75.i = and i32 %149, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %land.lhs.true.i21.if.end79.i_crit_edge, label %if.then77.i

land.lhs.true.i21.if.end79.i_crit_edge:           ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end79.i

if.then77.i:                                      ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #21
  %mul.i22 = shl i32 %145, 2
  %add.i23 = add i32 %mul.i22, 13312
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then77.i, %land.lhs.true.i21.if.end79.i_crit_edge, %if.then72.i.if.end79.i_crit_edge
  %.sink.i = phi i32 [ %add.i23, %if.then77.i ], [ 22552, %land.lhs.true.i21.if.end79.i_crit_edge ], [ 22552, %if.then72.i.if.end79.i_crit_edge ]
  %call78.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw73.i, i32 noundef %.sink.i) #19
  %and80.i = and i32 %flags2.0.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.end79.i.if.end91.i_crit_edge, label %land.lhs.true82.i

if.end79.i.if.end91.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end91.i

land.lhs.true82.i:                                ; preds = %if.end79.i
  %150 = ptrtoint ptr %flags21.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags21.i, align 8
  %and84.i = and i32 %151, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %do.body.i25, label %land.lhs.true82.i.if.end91.i_crit_edge

land.lhs.true82.i.if.end91.i_crit_edge:           ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end91.i

do.body.i25:                                      ; preds = %land.lhs.true82.i
  %msg_enable.i24 = getelementptr i8, ptr %dev, i32 7828
  %152 = ptrtoint ptr %msg_enable.i24 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %msg_enable.i24, align 4
  %154 = and i16 %153, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %tobool88.not.i = icmp eq i16 %154, 0
  br i1 %tobool88.not.i, label %do.body.i25.if.end91.i_crit_edge, label %if.then89.i

do.body.i25.if.end91.i_crit_edge:                 ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end91.i

if.then89.i:                                      ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #21
  %netdev.i26 = getelementptr i8, ptr %dev, i32 2816
  %155 = ptrtoint ptr %netdev.i26 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %netdev.i26, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %156, ptr noundef nonnull @.str.31) #23
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then89.i, %do.body.i25.if.end91.i_crit_edge, %land.lhs.true82.i.if.end91.i_crit_edge, %if.end79.i.if.end91.i_crit_edge
  %157 = ptrtoint ptr %flags21.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %flags2.0.i, ptr %flags21.i, align 8
  %or93.i = and i32 %call78.i, -15925249
  %and95.i = and i32 %flags2.0.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  %spec.select.v.i = select i1 %tobool96.not.i, i32 3342336, i32 7536640
  %and100.i = shl i32 %flags2.0.i, 14
  %158 = and i32 %and100.i, 8388608
  %spec.select.i27 = or i32 %spec.select.v.i, %158
  %159 = or i32 %spec.select.i27, %or93.i
  %160 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %161)
  %cmp107.i = icmp ugt i32 %161, 3
  br i1 %cmp107.i, label %land.lhs.true109.i, label %if.end91.i.if.else116.i_crit_edge

if.end91.i.if.else116.i_crit_edge:                ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else116.i

land.lhs.true109.i:                               ; preds = %if.end91.i
  %flags110.i = getelementptr i8, ptr %dev, i32 2836
  %162 = ptrtoint ptr %flags110.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %flags110.i, align 4
  %and111.i = and i32 %163, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  br i1 %tobool112.not.i, label %land.lhs.true109.i.if.else116.i_crit_edge, label %if.then113.i

land.lhs.true109.i.if.else116.i_crit_edge:        ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else116.i

if.then113.i:                                     ; preds = %land.lhs.true109.i
  %164 = ptrtoint ptr %hw73.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile ptr, ptr %hw73.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %165, null
  br i1 %tobool.not.i.i.i, label %if.then113.i.sw.epilog_crit_edge, label %do.body1.i.i

if.then113.i.sw.epilog_crit_edge:                 ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body1.i.i:                                     ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #21
  %mul114.i = shl i32 %145, 2
  %add115.i = add i32 %mul114.i, 13312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  tail call void @arm_heavy_mb() #19
  %166 = tail call i32 @llvm.bswap.i32(i32 %159) #19
  %add.ptr.i.i = getelementptr i8, ptr %165, i32 %add115.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %166) #19, !srcloc !103
  br label %sw.epilog

if.else116.i:                                     ; preds = %land.lhs.true109.i.if.else116.i_crit_edge, %if.end91.i.if.else116.i_crit_edge
  %167 = ptrtoint ptr %hw73.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile ptr, ptr %hw73.i, align 4
  %tobool.not.i.i170.i = icmp eq ptr %168, null
  br i1 %tobool.not.i.i170.i, label %if.else116.i.sw.epilog_crit_edge, label %do.body1.i172.i

if.else116.i.sw.epilog_crit_edge:                 ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body1.i172.i:                                  ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  tail call void @arm_heavy_mb() #19
  %169 = tail call i32 @llvm.bswap.i32(i32 %159) #19
  %add.ptr.i171.i = getelementptr i8, ptr %168, i32 22552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.i, i32 %169) #19, !srcloc !103
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body1.i172.i, %if.else116.i.sw.epilog_crit_edge, %do.body1.i.i, %if.then113.i.sw.epilog_crit_edge, %sw.epilog70.i.sw.epilog_crit_edge, %sw.epilog70.thread.i, %sw.bb51.i.sw.epilog_crit_edge, %if.end42.i.sw.epilog_crit_edge, %sw.bb33.i.sw.epilog_crit_edge, %if.end27.i.sw.epilog_crit_edge, %sw.bb18.i.sw.epilog_crit_edge, %sw.bb.i.sw.epilog_crit_edge, %if.end.i18.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %ixgbe_del_ethtool_fdir_entry.exit, %ixgbe_add_ethtool_fdir_entry.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ %err.1.i.i, %ixgbe_del_ethtool_fdir_entry.exit ], [ %retval.1.i, %ixgbe_add_ethtool_fdir_entry.exit ], [ -22, %sw.bb5.sw.epilog_crit_edge ], [ -22, %sw.bb.i.sw.epilog_crit_edge ], [ -22, %sw.bb18.i.sw.epilog_crit_edge ], [ -22, %if.end27.i.sw.epilog_crit_edge ], [ -22, %sw.bb33.i.sw.epilog_crit_edge ], [ -22, %if.end42.i.sw.epilog_crit_edge ], [ -22, %sw.bb51.i.sw.epilog_crit_edge ], [ -22, %if.end.i18.sw.epilog_crit_edge ], [ 0, %sw.epilog70.i.sw.epilog_crit_edge ], [ 0, %sw.epilog70.thread.i ], [ 0, %if.then113.i.sw.epilog_crit_edge ], [ 0, %do.body1.i.i ], [ 0, %if.else116.i.sw.epilog_crit_edge ], [ 0, %do.body1.i172.i ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_get_rxfh_key_size(ptr nocapture noundef readnone %netdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_rss_indir_size(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @ixgbe_rss_indir_tbl_entries(ptr noundef %add.ptr.i) #19
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_rxfh(ptr noundef %netdev, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %0 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %indir, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %call.i = tail call i32 @ixgbe_rss_indir_tbl_entries(ptr noundef %add.ptr.i) #19
  %mask.i = getelementptr i8, ptr %netdev, i32 4996
  %1 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mask.i, align 4
  %flags.i = getelementptr i8, ptr %netdev, i32 2836
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then2.if.end.i_crit_edge, label %if.then.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  %indices.i = getelementptr i8, ptr %netdev, i32 4994
  %5 = ptrtoint ptr %indices.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %indices.i, align 2
  %sub.i = add i16 %6, -1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then2.if.end.i_crit_edge
  %rss_m.0.i = phi i16 [ %sub.i, %if.then.i ], [ %2, %if.then2.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17.i = icmp sgt i32 %call.i, 0
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %if.end.i.if.end3_crit_edge

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end3

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv7.i = zext i16 %rss_m.0.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 115, i32 %i.018.i
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %8 to i32
  %and8.i = and i32 %conv6.i, %conv7.i
  %arrayidx9.i = getelementptr i32, ptr %indir, i32 %i.018.i
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and8.i, ptr %arrayidx9.i, align 4
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.body.i.if.end3_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.if.end3_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end3

if.end3:                                          ; preds = %for.body.i.if.end3_crit_edge, %if.end.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %key, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  %rss_key = getelementptr i8, ptr %netdev, i32 68256
  %10 = ptrtoint ptr %rss_key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rss_key, align 32
  %12 = call ptr @memcpy(ptr %key, ptr %11, i32 40)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_rxfh(ptr noundef %netdev, ptr noundef readonly %indir, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @ixgbe_rss_indir_tbl_entries(ptr noundef %add.ptr.i) #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hfunc)
  %tobool.not = icmp eq i8 %hfunc, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup26_crit_edge

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup26

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %indir, null
  br i1 %tobool2.not, label %if.end.if.end21_crit_edge, label %if.then3

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

if.then3:                                         ; preds = %if.end
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2864
  %0 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_queues, align 16
  %type.i = getelementptr i8, ptr %netdev, i32 6808
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp ult i32 %3, 4
  %..i = select i1 %cmp.i, i32 16, i32 64
  %4 = tail call i32 @llvm.smin.i32(i32 %1, i32 %..i)
  %flags = getelementptr i8, ptr %netdev, i32 2836
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %7 = tail call i32 @llvm.smax.i32(i32 %4, i32 2)
  %max_queues.0 = select i1 %tobool5.not, i32 %4, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp952.not = icmp eq i32 %call1, 0
  br i1 %cmp952.not, label %if.then3.for.end20_crit_edge, label %if.then3.for.body_crit_edge

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

if.then3.for.end20_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end20

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.cond.for.body15_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.cond.for.body15_crit_edge:                    ; preds = %for.cond
  br label %for.body15

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then3.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then3.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %i.053
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %max_queues.0)
  %cmp10.not = icmp ult i32 %9, %max_queues.0
  br i1 %cmp10.not, label %for.cond, label %for.body.cleanup26_crit_edge

for.body.cleanup26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup26

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond.for.body15_crit_edge
  %i.155 = phi i32 [ %inc19, %for.body15.for.body15_crit_edge ], [ 0, %for.cond.for.body15_crit_edge ]
  %arrayidx16 = getelementptr i32, ptr %indir, i32 %i.155
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16, align 4
  %conv = trunc i32 %11 to i8
  %arrayidx17 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 115, i32 %i.155
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx17, align 1
  %inc19 = add nuw i32 %i.155, 1
  %exitcond57.not = icmp eq i32 %inc19, %call1
  br i1 %exitcond57.not, label %for.body15.for.end20_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body15

for.body15.for.end20_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end20

for.end20:                                        ; preds = %for.body15.for.end20_crit_edge, %if.then3.for.end20_crit_edge
  tail call void @ixgbe_store_reta(ptr noundef %add.ptr.i) #19
  br label %if.end21

if.end21:                                         ; preds = %for.end20, %if.end.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %key, null
  br i1 %tobool22.not, label %if.end21.cleanup26_crit_edge, label %if.then23

if.end21.cleanup26_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup26

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  %rss_key = getelementptr i8, ptr %netdev, i32 68256
  %13 = ptrtoint ptr %rss_key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rss_key, align 32
  %15 = call ptr @memcpy(ptr %14, ptr %key, i32 40)
  tail call void @ixgbe_store_key(ptr noundef %add.ptr.i) #19
  br label %cleanup26

cleanup26:                                        ; preds = %if.then23, %if.end21.cleanup26_crit_edge, %for.body.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup26_crit_edge ], [ 0, %if.then23 ], [ 0, %if.end21.cleanup26_crit_edge ], [ -22, %for.body.cleanup26_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_get_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_tcs.i = getelementptr i8, ptr %dev, i32 4652
  %0 = ptrtoint ptr %hw_tcs.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_tcs.i, align 4
  %flags.i = getelementptr i8, ptr %dev, i32 2836
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ixgbe_max_channels.exit_crit_edge, label %if.else.i

entry.ixgbe_max_channels.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_max_channels.exit

if.else.i:                                        ; preds = %entry
  %and2.i = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %mask.i = getelementptr i8, ptr %dev, i32 4996
  %4 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mask.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  br label %ixgbe_max_channels.exit

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp ugt i8 %1, 1
  br i1 %cmp.i, label %if.then8.i, label %if.else19.i

if.then8.i:                                       ; preds = %if.else5.i
  %type.i = getelementptr i8, ptr %dev, i32 6808
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp9.i = icmp eq i32 %7, 1
  br i1 %cmp9.i, label %if.then8.i.ixgbe_max_channels.exit_crit_edge, label %if.else12.i

if.then8.i.ixgbe_max_channels.exit_crit_edge:     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_max_channels.exit

if.else12.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp14.i = icmp ugt i8 %1, 4
  %..i = select i1 %cmp14.i, i32 8, i32 16
  br label %ixgbe_max_channels.exit

if.else19.i:                                      ; preds = %if.else5.i
  %atr_sample_rate.i = getelementptr i8, ptr %dev, i32 9788
  %8 = ptrtoint ptr %atr_sample_rate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %atr_sample_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not.i = icmp eq i32 %9, 0
  br i1 %tobool20.not.i, label %if.else22.i, label %if.else19.i.ixgbe_max_channels.exit_crit_edge

if.else19.i.ixgbe_max_channels.exit_crit_edge:    ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_max_channels.exit

if.else22.i:                                      ; preds = %if.else19.i
  %type.i.i = getelementptr i8, ptr %dev, i32 6808
  %10 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i.i, align 8
  %switch.tableidx = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 6
  br i1 %12, label %switch.lookup, label %if.else22.i.ixgbe_max_channels.exit_crit_edge

if.else22.i.ixgbe_max_channels.exit_crit_edge:    ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_max_channels.exit

switch.lookup:                                    ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #21
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_channels, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ixgbe_max_channels.exit

ixgbe_max_channels.exit:                          ; preds = %switch.lookup, %if.else22.i.ixgbe_max_channels.exit_crit_edge, %if.else19.i.ixgbe_max_channels.exit_crit_edge, %if.else12.i, %if.then8.i.ixgbe_max_channels.exit_crit_edge, %if.then4.i, %entry.ixgbe_max_channels.exit_crit_edge
  %max_combined.0.i = phi i32 [ %add.i, %if.then4.i ], [ 1, %entry.ixgbe_max_channels.exit_crit_edge ], [ 4, %if.then8.i.ixgbe_max_channels.exit_crit_edge ], [ %..i, %if.else12.i ], [ 63, %if.else19.i.ixgbe_max_channels.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.else22.i.ixgbe_max_channels.exit_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %14 = load volatile i32, ptr @__num_online_cpus, align 4
  %15 = tail call i32 @llvm.smin.i32(i32 %max_combined.0.i, i32 %14) #19
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %16 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max_combined, align 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ixgbe_max_channels.exit.if.end_crit_edge, label %if.then

ixgbe_max_channels.exit.if.end_crit_edge:         ; preds = %ixgbe_max_channels.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %ixgbe_max_channels.exit
  call void @__sanitizer_cov_trace_pc() #21
  %max_other = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 3
  %19 = ptrtoint ptr %max_other to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %max_other, align 4
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %20 = ptrtoint ptr %other_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %other_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %ixgbe_max_channels.exit.if.end_crit_edge
  %indices = getelementptr i8, ptr %dev, i32 4994
  %21 = ptrtoint ptr %indices to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %indices, align 2
  %conv = zext i16 %22 to i32
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %23 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %combined_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp = icmp eq i16 %22, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and7 = and i32 %25, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %26 = ptrtoint ptr %hw_tcs.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hw_tcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp12 = icmp ugt i8 %27, 1
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %atr_sample_rate = getelementptr i8, ptr %dev, i32 9788
  %28 = ptrtoint ptr %atr_sample_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %atr_sample_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not = icmp eq i32 %29, 0
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.end18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  %indices21 = getelementptr i8, ptr %dev, i32 5122
  %30 = ptrtoint ptr %indices21 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %indices21, align 2
  %conv22 = zext i16 %31 to i32
  %32 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv22, ptr %combined_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_channels(ptr noundef %dev, ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %0 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %combined_count, align 4
  %type.i = getelementptr i8, ptr %dev, i32 6808
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 8
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 6
  br i1 %4, label %switch.lookup, label %entry.ixgbe_max_rss_indices.exit_crit_edge

entry.ixgbe_max_rss_indices.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_max_rss_indices.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_set_channels, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ixgbe_max_rss_indices.exit

ixgbe_max_rss_indices.exit:                       ; preds = %switch.lookup, %entry.ixgbe_max_rss_indices.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.ixgbe_max_rss_indices.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %ixgbe_max_rss_indices.exit.cleanup_crit_edge, label %lor.lhs.false

ixgbe_max_rss_indices.exit.cleanup_crit_edge:     ; preds = %ixgbe_max_rss_indices.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %ixgbe_max_rss_indices.exit
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %6 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %8 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %10 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %other_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %hw_tcs.i = getelementptr i8, ptr %dev, i32 4652
  %12 = ptrtoint ptr %hw_tcs.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw_tcs.i, align 4
  %flags.i = getelementptr i8, ptr %dev, i32 2836
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.ixgbe_max_channels.exit_crit_edge, label %if.else.i

if.end6.ixgbe_max_channels.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_max_channels.exit

if.else.i:                                        ; preds = %if.end6
  %and2.i = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %mask.i = getelementptr i8, ptr %dev, i32 4996
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mask.i, align 4
  %conv.i = zext i16 %17 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  br label %ixgbe_max_channels.exit

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.i = icmp ugt i8 %13, 1
  br i1 %cmp.i, label %if.then8.i, label %if.else19.i

if.then8.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp9.i = icmp eq i32 %3, 1
  br i1 %cmp9.i, label %if.then8.i.ixgbe_max_channels.exit_crit_edge, label %if.else12.i

if.then8.i.ixgbe_max_channels.exit_crit_edge:     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_max_channels.exit

if.else12.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp14.i = icmp ugt i8 %13, 4
  %..i = select i1 %cmp14.i, i32 8, i32 16
  br label %ixgbe_max_channels.exit

if.else19.i:                                      ; preds = %if.else5.i
  %atr_sample_rate.i = getelementptr i8, ptr %dev, i32 9788
  %18 = ptrtoint ptr %atr_sample_rate.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %atr_sample_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not.i = icmp eq i32 %19, 0
  br i1 %tobool20.not.i, label %if.else22.i, label %if.else19.i.ixgbe_max_channels.exit_crit_edge

if.else19.i.ixgbe_max_channels.exit_crit_edge:    ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_max_channels.exit

if.else22.i:                                      ; preds = %if.else19.i
  %switch.tableidx50 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx50)
  %20 = icmp ult i32 %switch.tableidx50, 6
  br i1 %20, label %switch.lookup49, label %if.else22.i.ixgbe_max_channels.exit_crit_edge

if.else22.i.ixgbe_max_channels.exit_crit_edge:    ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_max_channels.exit

switch.lookup49:                                  ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #21
  %switch.gep51 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_set_channels.72, i32 0, i32 %switch.tableidx50
  %21 = ptrtoint ptr %switch.gep51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load52 = load i32, ptr %switch.gep51, align 4
  br label %ixgbe_max_channels.exit

ixgbe_max_channels.exit:                          ; preds = %switch.lookup49, %if.else22.i.ixgbe_max_channels.exit_crit_edge, %if.else19.i.ixgbe_max_channels.exit_crit_edge, %if.else12.i, %if.then8.i.ixgbe_max_channels.exit_crit_edge, %if.then4.i, %if.end6.ixgbe_max_channels.exit_crit_edge
  %max_combined.0.i = phi i32 [ %add.i, %if.then4.i ], [ 1, %if.end6.ixgbe_max_channels.exit_crit_edge ], [ 4, %if.then8.i.ixgbe_max_channels.exit_crit_edge ], [ %..i, %if.else12.i ], [ 63, %if.else19.i.ixgbe_max_channels.exit_crit_edge ], [ %switch.load52, %switch.lookup49 ], [ 0, %if.else22.i.ixgbe_max_channels.exit_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %22 = load volatile i32, ptr @__num_online_cpus, align 4
  %23 = tail call i32 @llvm.smin.i32(i32 %max_combined.0.i, i32 %22) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %23)
  %cmp8 = icmp ugt i32 %1, %23
  br i1 %cmp8, label %ixgbe_max_channels.exit.cleanup_crit_edge, label %if.end10

ixgbe_max_channels.exit.cleanup_crit_edge:        ; preds = %ixgbe_max_channels.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end10:                                         ; preds = %ixgbe_max_channels.exit
  call void @__sanitizer_cov_trace_pc() #21
  %conv = trunc i32 %1 to i16
  %arrayidx = getelementptr i8, ptr %dev, i32 5120
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %arrayidx, align 128
  %25 = tail call i32 @llvm.umin.i32(i32 %1, i32 %retval.0.i)
  %conv17 = trunc i32 %25 to i16
  %arrayidx19 = getelementptr i8, ptr %dev, i32 4992
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv17, ptr %arrayidx19, align 128
  %27 = tail call i32 @llvm.umin.i32(i32 %25, i32 8)
  %conv25 = trunc i32 %27 to i16
  %arrayidx27 = getelementptr i8, ptr %dev, i32 5248
  %28 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv25, ptr %arrayidx27, align 128
  %29 = ptrtoint ptr %hw_tcs.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hw_tcs.i, align 4
  %call29 = tail call i32 @ixgbe_setup_tc(ptr noundef %dev, i8 noundef zeroext %30) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %ixgbe_max_channels.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %ixgbe_max_rss_indices.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end10 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %ixgbe_max_rss_indices.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %ixgbe_max_channels.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_ts_info(ptr noundef %dev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %rx_filters, align 4
  %type = getelementptr i8, ptr %dev, i32 6808
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 8
  %switch.tableidx = add i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 5
  br i1 %3, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call5 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %dev, ptr noundef %info) #19
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ixgbe_get_ts_info, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %5 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %switch.load, ptr %rx_filters, align 4
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 95, ptr %so_timestamping, align 4
  %ptp_clock = getelementptr i8, ptr %dev, i32 67300
  %7 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp_clock, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %switch.lookup.if.end_crit_edge, label %if.then

switch.lookup.if.end_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #21
  %call7 = tail call i32 @ptp_clock_index(ptr noundef nonnull %8) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %switch.lookup.if.end_crit_edge
  %call7.sink = phi i32 [ %call7, %if.then ], [ -1, %switch.lookup.if.end_crit_edge ]
  %9 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call7.sink, ptr %9, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %tx_types, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.default
  %retval.0 = phi i32 [ %call5, %sw.default ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_module_info(ptr noundef %dev, ptr nocapture noundef writeonly %modinfo) #0 align 64 {
entry:
  %sff8472_rev = alloca i8, align 1
  %addr_mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %dev, i32 6528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sff8472_rev) #19
  %0 = ptrtoint ptr %sff8472_rev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sff8472_rev, align 1, !annotation !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr_mode) #19
  %1 = ptrtoint ptr %addr_mode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %addr_mode, align 1, !annotation !101
  %type = getelementptr i8, ptr %dev, i32 7624
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %3)
  %cmp = icmp eq i32 %3, 27
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_i2c_eeprom = getelementptr i8, ptr %dev, i32 7568
  %4 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_i2c_eeprom, align 4
  %call3 = call i32 %5(ptr noundef %hw1, i8 noundef zeroext 94, ptr noundef nonnull %sff8472_rev) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_i2c_eeprom, align 4
  %call9 = call i32 %7(ptr noundef %hw1, i8 noundef zeroext 92, ptr noundef nonnull %addr_mode) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %addr_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr_mode, align 1
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.end20, label %do.body

do.body:                                          ; preds = %if.end12
  %msg_enable = getelementptr i8, ptr %dev, i32 7828
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msg_enable, align 4
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool17.not = icmp eq i16 %13, 0
  br i1 %tobool17.not, label %do.body.cleanup.sink.split_crit_edge, label %if.then18

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %netdev = getelementptr i8, ptr %dev, i32 2816
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.32) #23
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %sff8472_rev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sff8472_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp22 = icmp eq i8 %17, 0
  br i1 %cmp22, label %if.end20.cleanup.sink.split_crit_edge, label %lor.lhs.false26

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split

lor.lhs.false26:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  %18 = ptrtoint ptr %addr_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr_mode, align 1
  %20 = and i8 %19, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool29.not = icmp eq i8 %20, 0
  %spec.select = select i1 %tobool29.not, i32 1, i32 2
  %spec.select54 = select i1 %tobool29.not, i32 256, i32 512
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false26, %if.end20.cleanup.sink.split_crit_edge, %if.then18, %do.body.cleanup.sink.split_crit_edge
  %.sink53 = phi i32 [ 1, %if.then18 ], [ 1, %do.body.cleanup.sink.split_crit_edge ], [ 1, %if.end20.cleanup.sink.split_crit_edge ], [ %spec.select, %lor.lhs.false26 ]
  %.sink = phi i32 [ 256, %if.then18 ], [ 256, %do.body.cleanup.sink.split_crit_edge ], [ 256, %if.end20.cleanup.sink.split_crit_edge ], [ %spec.select54, %lor.lhs.false26 ]
  %type31 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %21 = ptrtoint ptr %type31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink53, ptr %type31, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %22 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %eeprom_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end5.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr_mode) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sff8472_rev) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_module_eeprom(ptr noundef %dev, ptr nocapture noundef readonly %ee, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %databyte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %dev, i32 6528
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %databyte) #19
  %0 = ptrtoint ptr %databyte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %databyte, align 1
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr i8, ptr %dev, i32 7624
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %4)
  %cmp2 = icmp eq i32 %4, 27
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %state = getelementptr i8, ptr %dev, i32 2832
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %add42 = add i32 %8, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add42)
  %cmp743 = icmp ult i32 %6, %add42
  br i1 %cmp743, label %if.end4.for.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %if.end22.for.body_crit_edge ], [ %6, %if.end4.for.body_crit_edge ]
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state, align 4
  %11 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end10, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.044)
  %cmp11 = icmp slt i32 %i.044, 256
  %read_i2c_eeprom.read_i2c_sff8472.v = select i1 %cmp11, i32 7568, i32 7564
  %read_i2c_eeprom.read_i2c_sff8472 = getelementptr i8, ptr %dev, i32 %read_i2c_eeprom.read_i2c_sff8472.v
  %12 = ptrtoint ptr %read_i2c_eeprom.read_i2c_sff8472 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_i2c_eeprom.read_i2c_sff8472, align 4
  %conv17 = trunc i32 %i.044 to i8
  %call18 = call i32 %13(ptr noundef %hw1, i8 noundef zeroext %conv17, ptr noundef nonnull %databyte) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool20.not = icmp eq i32 %call18, 0
  br i1 %tobool20.not, label %if.end22, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %databyte to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %databyte, align 1
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %sub = sub i32 %i.044, %17
  %arrayidx = getelementptr i8, ptr %data, i32 %sub
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %15, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.044, 1
  %19 = load i32, ptr %offset, align 4
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %add = add i32 %21, %19
  %cmp7 = icmp ult i32 %inc, %add
  br i1 %cmp7, label %if.end22.for.body_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

cleanup:                                          ; preds = %if.end22.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -16, %for.body.cleanup_crit_edge ], [ -5, %if.end10.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %databyte) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_eee(ptr noundef %netdev, ptr nocapture noundef %edata) #0 align 64 {
entry:
  %info.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr i8, ptr %netdev, i32 2840
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags2, align 8
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %eee_speeds_supported = getelementptr i8, ptr %netdev, i32 7664
  %2 = ptrtoint ptr %eee_speeds_supported to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eee_speeds_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr i8, ptr %netdev, i32 7624
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %5)
  %cmp = icmp eq i32 %5, 27
  br i1 %cmp, label %if.then4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #19
  %6 = call ptr @memset(ptr %info.i, i32 0, i32 16)
  %hw1.i = getelementptr i8, ptr %netdev, i32 6528
  %call.i = call i32 @ixgbe_fw_phy_activity(ptr noundef %hw1.i, i16 noundef zeroext 4098, ptr noundef nonnull %info.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.ixgbe_get_eee_fw.exit_crit_edge

if.then4.ixgbe_get_eee_fw.exit_crit_edge:         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_get_eee_fw.exit

if.end.i:                                         ; preds = %if.then4
  %lp_advertised.i = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 3
  %7 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %info.i, align 4
  %and.i = shl i32 %8, 2
  %9 = and i32 %and.i, 8
  %10 = ptrtoint ptr %lp_advertised.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %lp_advertised.i, align 4
  %and.1.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool5.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool5.not.1.i, label %if.end.i.for.inc.1.i_crit_edge, label %if.then6.1.i

if.end.i.for.inc.1.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.1.i

if.then6.1.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %lp_advertised.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lp_advertised.i, align 4
  %or.1.i = or i32 %12, 32
  store i32 %or.1.i, ptr %lp_advertised.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then6.1.i, %if.end.i.for.inc.1.i_crit_edge
  %and.2.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool5.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool5.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then6.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.2.i

if.then6.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #21
  %13 = ptrtoint ptr %lp_advertised.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lp_advertised.i, align 4
  %or.2.i = or i32 %14, 4096
  store i32 %or.2.i, ptr %lp_advertised.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then6.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %and.3.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool5.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool5.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then6.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.3.i

if.then6.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #21
  %15 = ptrtoint ptr %lp_advertised.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lp_advertised.i, align 4
  %or.3.i = or i32 %16, 131072
  store i32 %or.3.i, ptr %lp_advertised.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then6.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %and.4.i = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool5.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool5.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then6.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.4.i

if.then6.4.i:                                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #21
  %17 = ptrtoint ptr %lp_advertised.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lp_advertised.i, align 4
  %or.4.i = or i32 %18, 262144
  store i32 %or.4.i, ptr %lp_advertised.i, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then6.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %and.5.i = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool5.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool5.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then6.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.5.i

if.then6.5.i:                                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #21
  %19 = ptrtoint ptr %lp_advertised.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lp_advertised.i, align 4
  %or.5.i = or i32 %20, 524288
  store i32 %or.5.i, ptr %lp_advertised.i, align 4
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then6.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %supported.i = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 1
  %21 = ptrtoint ptr %supported.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %supported.i, align 4
  %22 = ptrtoint ptr %eee_speeds_supported to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eee_speeds_supported, align 4
  %and19.i = and i32 %23, 2
  store i32 %and19.i, ptr %supported.i, align 4
  %24 = load i32, ptr %eee_speeds_supported, align 4
  %and19.1.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.1.i)
  %tobool20.not.1.i = icmp eq i32 %and19.1.i, 0
  br i1 %tobool20.not.1.i, label %for.inc.5.i.for.inc28.1.i_crit_edge, label %if.then21.1.i

for.inc.5.i.for.inc28.1.i_crit_edge:              ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc28.1.i

if.then21.1.i:                                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #21
  %25 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %supported.i, align 4
  %or26.1.i = or i32 %26, 8
  store i32 %or26.1.i, ptr %supported.i, align 4
  br label %for.inc28.1.i

for.inc28.1.i:                                    ; preds = %if.then21.1.i, %for.inc.5.i.for.inc28.1.i_crit_edge
  %27 = ptrtoint ptr %eee_speeds_supported to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %eee_speeds_supported, align 4
  %and19.2.i = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.2.i)
  %tobool20.not.2.i = icmp eq i32 %and19.2.i, 0
  br i1 %tobool20.not.2.i, label %for.inc28.1.i.for.inc28.2.i_crit_edge, label %if.then21.2.i

for.inc28.1.i.for.inc28.2.i_crit_edge:            ; preds = %for.inc28.1.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc28.2.i

if.then21.2.i:                                    ; preds = %for.inc28.1.i
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %supported.i, align 4
  %or26.2.i = or i32 %30, 32
  store i32 %or26.2.i, ptr %supported.i, align 4
  br label %for.inc28.2.i

for.inc28.2.i:                                    ; preds = %if.then21.2.i, %for.inc28.1.i.for.inc28.2.i_crit_edge
  %31 = ptrtoint ptr %eee_speeds_supported to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %eee_speeds_supported, align 4
  %and19.3.i = and i32 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.3.i)
  %tobool20.not.3.i = icmp eq i32 %and19.3.i, 0
  br i1 %tobool20.not.3.i, label %for.inc28.2.i.for.inc28.3.i_crit_edge, label %if.then21.3.i

for.inc28.2.i.for.inc28.3.i_crit_edge:            ; preds = %for.inc28.2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc28.3.i

if.then21.3.i:                                    ; preds = %for.inc28.2.i
  call void @__sanitizer_cov_trace_pc() #21
  %33 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %supported.i, align 4
  %or26.3.i = or i32 %34, 32768
  store i32 %or26.3.i, ptr %supported.i, align 4
  br label %for.inc28.3.i

for.inc28.3.i:                                    ; preds = %if.then21.3.i, %for.inc28.2.i.for.inc28.3.i_crit_edge
  %35 = ptrtoint ptr %eee_speeds_supported to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %eee_speeds_supported, align 4
  %and19.4.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.4.i)
  %tobool20.not.4.i = icmp eq i32 %and19.4.i, 0
  br i1 %tobool20.not.4.i, label %for.inc28.3.i.for.inc28.4.i_crit_edge, label %if.then21.4.i

for.inc28.3.i.for.inc28.4.i_crit_edge:            ; preds = %for.inc28.3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc28.4.i

if.then21.4.i:                                    ; preds = %for.inc28.3.i
  call void @__sanitizer_cov_trace_pc() #21
  %37 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %supported.i, align 4
  %or26.4.i = or i32 %38, 4096
  store i32 %or26.4.i, ptr %supported.i, align 4
  br label %for.inc28.4.i

for.inc28.4.i:                                    ; preds = %if.then21.4.i, %for.inc28.3.i.for.inc28.4.i_crit_edge
  %advertised.i = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %39 = ptrtoint ptr %advertised.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %advertised.i, align 4
  %eee_speeds_advertised.i = getelementptr i8, ptr %netdev, i32 7668
  %40 = ptrtoint ptr %eee_speeds_advertised.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %eee_speeds_advertised.i, align 4
  %and40.i = and i32 %41, 2
  store i32 %and40.i, ptr %advertised.i, align 4
  %42 = load i32, ptr %eee_speeds_advertised.i, align 4
  %and40.1.i = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.1.i)
  %tobool41.not.1.i = icmp eq i32 %and40.1.i, 0
  br i1 %tobool41.not.1.i, label %for.inc28.4.i.for.inc49.1.i_crit_edge, label %if.then42.1.i

for.inc28.4.i.for.inc49.1.i_crit_edge:            ; preds = %for.inc28.4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc49.1.i

if.then42.1.i:                                    ; preds = %for.inc28.4.i
  call void @__sanitizer_cov_trace_pc() #21
  %43 = ptrtoint ptr %advertised.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %advertised.i, align 4
  %or47.1.i = or i32 %44, 8
  store i32 %or47.1.i, ptr %advertised.i, align 4
  br label %for.inc49.1.i

for.inc49.1.i:                                    ; preds = %if.then42.1.i, %for.inc28.4.i.for.inc49.1.i_crit_edge
  %45 = ptrtoint ptr %eee_speeds_advertised.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %eee_speeds_advertised.i, align 4
  %and40.2.i = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.2.i)
  %tobool41.not.2.i = icmp eq i32 %and40.2.i, 0
  br i1 %tobool41.not.2.i, label %for.inc49.1.i.for.inc49.2.i_crit_edge, label %if.then42.2.i

for.inc49.1.i.for.inc49.2.i_crit_edge:            ; preds = %for.inc49.1.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc49.2.i

if.then42.2.i:                                    ; preds = %for.inc49.1.i
  call void @__sanitizer_cov_trace_pc() #21
  %47 = ptrtoint ptr %advertised.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %advertised.i, align 4
  %or47.2.i = or i32 %48, 32
  store i32 %or47.2.i, ptr %advertised.i, align 4
  br label %for.inc49.2.i

for.inc49.2.i:                                    ; preds = %if.then42.2.i, %for.inc49.1.i.for.inc49.2.i_crit_edge
  %49 = ptrtoint ptr %eee_speeds_advertised.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %eee_speeds_advertised.i, align 4
  %and40.3.i = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.3.i)
  %tobool41.not.3.i = icmp eq i32 %and40.3.i, 0
  br i1 %tobool41.not.3.i, label %for.inc49.2.i.for.inc49.3.i_crit_edge, label %if.then42.3.i

for.inc49.2.i.for.inc49.3.i_crit_edge:            ; preds = %for.inc49.2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc49.3.i

if.then42.3.i:                                    ; preds = %for.inc49.2.i
  call void @__sanitizer_cov_trace_pc() #21
  %51 = ptrtoint ptr %advertised.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %advertised.i, align 4
  %or47.3.i = or i32 %52, 32768
  store i32 %or47.3.i, ptr %advertised.i, align 4
  br label %for.inc49.3.i

for.inc49.3.i:                                    ; preds = %if.then42.3.i, %for.inc49.2.i.for.inc49.3.i_crit_edge
  %53 = ptrtoint ptr %eee_speeds_advertised.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %eee_speeds_advertised.i, align 4
  %and40.4.i = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.4.i)
  %tobool41.not.4.i = icmp eq i32 %and40.4.i, 0
  br i1 %tobool41.not.4.i, label %for.inc49.3.i.for.inc49.4.i_crit_edge, label %if.then42.4.i

for.inc49.3.i.for.inc49.4.i_crit_edge:            ; preds = %for.inc49.3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc49.4.i

if.then42.4.i:                                    ; preds = %for.inc49.3.i
  call void @__sanitizer_cov_trace_pc() #21
  %55 = ptrtoint ptr %advertised.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %advertised.i, align 4
  %or47.4.i = or i32 %56, 4096
  store i32 %or47.4.i, ptr %advertised.i, align 4
  br label %for.inc49.4.i

for.inc49.4.i:                                    ; preds = %if.then42.4.i, %for.inc49.3.i.for.inc49.4.i_crit_edge
  %57 = ptrtoint ptr %advertised.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %advertised.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool53.i = icmp ne i32 %58, 0
  %lnot.ext.i = zext i1 %tobool53.i to i32
  %eee_enabled.i = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %59 = ptrtoint ptr %eee_enabled.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %lnot.ext.i, ptr %eee_enabled.i, align 4
  %tx_lpi_enabled.i = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %60 = ptrtoint ptr %tx_lpi_enabled.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %lnot.ext.i, ptr %tx_lpi_enabled.i, align 4
  %61 = ptrtoint ptr %lp_advertised.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %lp_advertised.i, align 4
  %and58.i = and i32 %62, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %for.inc49.4.i.ixgbe_get_eee_fw.exit_crit_edge, label %if.then60.i

for.inc49.4.i.ixgbe_get_eee_fw.exit_crit_edge:    ; preds = %for.inc49.4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_get_eee_fw.exit

if.then60.i:                                      ; preds = %for.inc49.4.i
  call void @__sanitizer_cov_trace_pc() #21
  %eee_active.i = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %63 = ptrtoint ptr %eee_active.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %eee_active.i, align 4
  br label %ixgbe_get_eee_fw.exit

ixgbe_get_eee_fw.exit:                            ; preds = %if.then60.i, %for.inc49.4.i.ixgbe_get_eee_fw.exit_crit_edge, %if.then4.ixgbe_get_eee_fw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #19
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_get_eee_fw.exit, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %ixgbe_get_eee_fw.exit ], [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_eee(ptr noundef %netdev, ptr nocapture noundef readonly %edata) #0 align 64 {
entry:
  %eee_data = alloca %struct.ethtool_eee, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %eee_data) #19
  %flags2 = getelementptr i8, ptr %netdev, i32 2840
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags2, align 8
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %eee_data, i32 0, i32 40)
  %call2 = call i32 @ixgbe_get_eee(ptr noundef %netdev, ptr noundef nonnull %eee_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee_data, i32 0, i32 5
  %3 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.end5.if.end48_crit_edge, label %land.lhs.true

if.end5.if.end48_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end5
  %eee_enabled7 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %5 = ptrtoint ptr %eee_enabled7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eee_enabled7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48

if.then9:                                         ; preds = %land.lhs.true
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee_data, i32 0, i32 6
  %7 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_lpi_enabled, align 4
  %tx_lpi_enabled10 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %9 = ptrtoint ptr %tx_lpi_enabled10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_lpi_enabled10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  br i1 %cmp.not, label %if.end17, label %do.body

do.body:                                          ; preds = %if.then9
  %msg_enable = getelementptr i8, ptr %netdev, i32 7828
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msg_enable, align 4
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool13.not = icmp eq i16 %13, 0
  br i1 %tobool13.not, label %do.body.cleanup_crit_edge, label %if.then14

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %netdev15 = getelementptr i8, ptr %netdev, i32 2816
  %14 = ptrtoint ptr %netdev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev15, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.33) #23
  br label %cleanup

if.end17:                                         ; preds = %if.then9
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %eee_data, i32 0, i32 7
  %16 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_lpi_timer, align 4
  %tx_lpi_timer18 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %18 = ptrtoint ptr %tx_lpi_timer18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_lpi_timer18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp19.not = icmp eq i32 %17, %19
  br i1 %cmp19.not, label %if.end32, label %do.body22

do.body22:                                        ; preds = %if.end17
  %msg_enable23 = getelementptr i8, ptr %netdev, i32 7828
  %20 = ptrtoint ptr %msg_enable23 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %msg_enable23, align 4
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool26.not = icmp eq i16 %22, 0
  br i1 %tobool26.not, label %do.body22.cleanup_crit_edge, label %if.then27

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #21
  %netdev28 = getelementptr i8, ptr %netdev, i32 2816
  %23 = ptrtoint ptr %netdev28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev28, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.34) #23
  br label %cleanup

if.end32:                                         ; preds = %if.end17
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %eee_data, i32 0, i32 2
  %25 = ptrtoint ptr %advertised to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %advertised, align 4
  %advertised33 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %27 = ptrtoint ptr %advertised33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %advertised33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp34.not = icmp eq i32 %26, %28
  br i1 %cmp34.not, label %if.end32.if.end48_crit_edge, label %do.body37

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48

do.body37:                                        ; preds = %if.end32
  %msg_enable38 = getelementptr i8, ptr %netdev, i32 7828
  %29 = ptrtoint ptr %msg_enable38 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %msg_enable38, align 4
  %31 = and i16 %30, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool41.not = icmp eq i16 %31, 0
  br i1 %tobool41.not, label %do.body37.cleanup_crit_edge, label %if.then42

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #21
  %netdev43 = getelementptr i8, ptr %netdev, i32 2816
  %32 = ptrtoint ptr %netdev43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev43, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.35) #23
  br label %cleanup

if.end48:                                         ; preds = %if.end32.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %if.end5.if.end48_crit_edge
  %eee_enabled50 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %34 = ptrtoint ptr %eee_enabled50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %eee_enabled50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %35)
  %cmp51.not = icmp eq i32 %4, %35
  br i1 %cmp51.not, label %if.end48.cleanup_crit_edge, label %if.then53

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool55.not = icmp eq i32 %35, 0
  %36 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags2, align 8
  br i1 %tobool55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #21
  %or = or i32 %37, 32768
  %38 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or, ptr %flags2, align 8
  %eee_speeds_supported = getelementptr i8, ptr %netdev, i32 7664
  %39 = ptrtoint ptr %eee_speeds_supported to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %eee_speeds_supported, align 4
  br label %if.end63

if.else:                                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #21
  %and60 = and i32 %37, -32769
  %41 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and60, ptr %flags2, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then56
  %.sink = phi i32 [ 0, %if.else ], [ %40, %if.then56 ]
  %42 = getelementptr i8, ptr %netdev, i32 7668
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink, ptr %42, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else66, label %if.then65

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ixgbe_reinit_locked(ptr noundef %add.ptr.i) #19
  br label %cleanup

if.else66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ixgbe_reset(ptr noundef %add.ptr.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.else66, %if.then65, %if.end48.cleanup_crit_edge, %if.then42, %do.body37.cleanup_crit_edge, %if.then27, %do.body22.cleanup_crit_edge, %if.then14, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %if.then14 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then27 ], [ -22, %do.body22.cleanup_crit_edge ], [ -22, %if.then42 ], [ -22, %do.body37.cleanup_crit_edge ], [ 0, %if.then65 ], [ 0, %if.else66 ], [ 0, %if.end48.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %eee_data) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #0 align 64 {
entry:
  %supported_link = alloca i32, align 4
  %autoneg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 6528
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supported_link) #19
  %0 = ptrtoint ptr %supported_link to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %supported_link, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %autoneg) #19
  %1 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %autoneg, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %get_link_capabilities = getelementptr i8, ptr %netdev, i32 6656
  %2 = call ptr @memset(ptr %link_modes, i32 0, i32 24)
  %3 = ptrtoint ptr %get_link_capabilities to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_link_capabilities, align 4
  %call4 = call i32 %4(ptr noundef %hw1, ptr noundef nonnull %supported_link, ptr noundef nonnull %autoneg) #19
  %5 = ptrtoint ptr %supported_link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %supported_link, align 4
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  %media_type.i = getelementptr i8, ptr %netdev, i32 7644
  %7 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp.i = icmp eq i32 %8, 5
  br i1 %cmp.i, label %if.end.i, label %if.then.ixgbe_set_supported_10gtypes.exit_crit_edge

if.then.ixgbe_set_supported_10gtypes.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_supported_10gtypes.exit

if.end.i:                                         ; preds = %if.then
  %device_id.i = getelementptr i8, ptr %netdev, i32 7812
  %9 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device_id.i, align 4
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %10, label %sw.default.i [
    i16 4278, label %if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge
    i16 4343, label %if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge461
    i16 5396, label %if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge462
    i16 5546, label %if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge463
    i16 5384, label %if.end.i.sw.bb4.i_crit_edge
    i16 5399, label %if.end.i.sw.bb4.i_crit_edge464
    i16 5547, label %if.end.i.sw.bb4.i_crit_edge465
    i16 5552, label %if.end.i.sw.bb4.i_crit_edge466
  ]

if.end.i.sw.bb4.i_crit_edge466:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb4.i

if.end.i.sw.bb4.i_crit_edge465:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb4.i

if.end.i.sw.bb4.i_crit_edge464:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb4.i

if.end.i.sw.bb4.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb4.i

if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge463: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_supported_10gtypes.exit

if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge462: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_supported_10gtypes.exit

if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge461: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_supported_10gtypes.exit

if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_supported_10gtypes.exit

sw.bb4.i:                                         ; preds = %if.end.i.sw.bb4.i_crit_edge, %if.end.i.sw.bb4.i_crit_edge464, %if.end.i.sw.bb4.i_crit_edge465, %if.end.i.sw.bb4.i_crit_edge466
  br label %ixgbe_set_supported_10gtypes.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_supported_10gtypes.exit

ixgbe_set_supported_10gtypes.exit:                ; preds = %sw.default.i, %sw.bb4.i, %if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge, %if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge461, %if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge462, %if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge463, %if.then.ixgbe_set_supported_10gtypes.exit_crit_edge
  %.sink23.i = phi i32 [ 786432, %sw.default.i ], [ 524288, %sw.bb4.i ], [ 4096, %if.then.ixgbe_set_supported_10gtypes.exit_crit_edge ], [ 262144, %if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge ], [ 262144, %if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge461 ], [ 262144, %if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge462 ], [ 262144, %if.end.i.ixgbe_set_supported_10gtypes.exit_crit_edge463 ]
  %12 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %link_modes, align 4
  %or.i.i = or i32 %13, %.sink23.i
  store i32 %or.i.i, ptr %link_modes, align 4
  %14 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp.i427 = icmp eq i32 %15, 5
  br i1 %cmp.i427, label %if.end.i429, label %ixgbe_set_supported_10gtypes.exit.ixgbe_set_advertising_10gtypes.exit_crit_edge

ixgbe_set_supported_10gtypes.exit.ixgbe_set_advertising_10gtypes.exit_crit_edge: ; preds = %ixgbe_set_supported_10gtypes.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_advertising_10gtypes.exit

if.end.i429:                                      ; preds = %ixgbe_set_supported_10gtypes.exit
  %device_id.i428 = getelementptr i8, ptr %netdev, i32 7812
  %16 = ptrtoint ptr %device_id.i428 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device_id.i428, align 4
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %17, label %sw.default.i431 [
    i16 4278, label %if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge
    i16 4343, label %if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge467
    i16 5396, label %if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge468
    i16 5546, label %if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge469
    i16 5384, label %if.end.i429.sw.bb4.i430_crit_edge
    i16 5399, label %if.end.i429.sw.bb4.i430_crit_edge470
    i16 5547, label %if.end.i429.sw.bb4.i430_crit_edge471
    i16 5552, label %if.end.i429.sw.bb4.i430_crit_edge472
  ]

if.end.i429.sw.bb4.i430_crit_edge472:             ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb4.i430

if.end.i429.sw.bb4.i430_crit_edge471:             ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb4.i430

if.end.i429.sw.bb4.i430_crit_edge470:             ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb4.i430

if.end.i429.sw.bb4.i430_crit_edge:                ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb4.i430

if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge469: ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_advertising_10gtypes.exit

if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge468: ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_advertising_10gtypes.exit

if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge467: ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_advertising_10gtypes.exit

if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge: ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_advertising_10gtypes.exit

sw.bb4.i430:                                      ; preds = %if.end.i429.sw.bb4.i430_crit_edge, %if.end.i429.sw.bb4.i430_crit_edge470, %if.end.i429.sw.bb4.i430_crit_edge471, %if.end.i429.sw.bb4.i430_crit_edge472
  br label %ixgbe_set_advertising_10gtypes.exit

sw.default.i431:                                  ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_advertising_10gtypes.exit

ixgbe_set_advertising_10gtypes.exit:              ; preds = %sw.default.i431, %sw.bb4.i430, %if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge, %if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge467, %if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge468, %if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge469, %ixgbe_set_supported_10gtypes.exit.ixgbe_set_advertising_10gtypes.exit_crit_edge
  %.sink23.i432 = phi i32 [ 786432, %sw.default.i431 ], [ 524288, %sw.bb4.i430 ], [ 4096, %ixgbe_set_supported_10gtypes.exit.ixgbe_set_advertising_10gtypes.exit_crit_edge ], [ 262144, %if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge ], [ 262144, %if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge467 ], [ 262144, %if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge468 ], [ 262144, %if.end.i429.ixgbe_set_advertising_10gtypes.exit_crit_edge469 ]
  %19 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %advertising, align 4
  %or.i.i433 = or i32 %20, %.sink23.i432
  store i32 %or.i.i433, ptr %advertising, align 4
  br label %if.end

if.end:                                           ; preds = %ixgbe_set_advertising_10gtypes.exit, %entry.if.end_crit_edge
  %and5 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %22, 65536
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %and12 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %if.then14

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i380 = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %add.ptr.i380 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i380, align 4
  %or.i381 = or i32 %24, 32768
  store i32 %or.i381, ptr %add.ptr.i380, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11.if.end18_crit_edge
  %and19 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end36_crit_edge, label %if.then21

if.end18.if.end36_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end36

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  %media_type = getelementptr i8, ptr %netdev, i32 7644
  %25 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %cmp = icmp eq i32 %26, 5
  %27 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_modes, align 4
  %. = select i1 %cmp, i32 131072, i32 32
  %or.i382 = or i32 %28, %.
  store i32 %or.i382, ptr %link_modes, align 4
  %29 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %advertising, align 4
  %or.i383 = or i32 %30, %.
  store i32 %or.i383, ptr %advertising, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then21, %if.end18.if.end36_crit_edge
  %and37 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end46_crit_edge, label %if.then39

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end46

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #21
  %31 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %link_modes, align 4
  %or.i386 = or i32 %32, 8
  store i32 %or.i386, ptr %link_modes, align 4
  %33 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %advertising, align 4
  %or.i387 = or i32 %34, 8
  store i32 %or.i387, ptr %advertising, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.end36.if.end46_crit_edge
  %and47 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end56_crit_edge, label %if.then49

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end56

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #21
  %35 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %link_modes, align 4
  %or.i388 = or i32 %36, 2
  store i32 %or.i388, ptr %link_modes, align 4
  %37 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %advertising, align 4
  %or.i389 = or i32 %38, 2
  store i32 %or.i389, ptr %advertising, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.end46.if.end56_crit_edge
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 7656
  %39 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %autoneg_advertised, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool58.not = icmp eq i32 %40, 0
  br i1 %tobool58.not, label %if.else125, label %if.then59

if.then59:                                        ; preds = %if.end56
  %41 = call ptr @memset(ptr %advertising, i32 0, i32 12)
  %42 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %autoneg_advertised, align 4
  %and65 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.then59.if.end71_crit_edge, label %if.then67

if.then59.if.end71_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

if.then67:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #21
  %44 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %advertising, align 4
  %or.i390 = or i32 %45, 2
  store i32 %or.i390, ptr %advertising, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.then59.if.end71_crit_edge
  %46 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %autoneg_advertised, align 4
  %and74 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end71.if.end80_crit_edge, label %if.then76

if.end71.if.end80_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end80

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #21
  %48 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %advertising, align 4
  %or.i391 = or i32 %49, 8
  store i32 %or.i391, ptr %advertising, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.end71.if.end80_crit_edge
  %50 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %autoneg_advertised, align 4
  %and83 = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end80.if.end86_crit_edge, label %if.then85

if.end80.if.end86_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end86

if.then85:                                        ; preds = %if.end80
  %media_type.i434 = getelementptr i8, ptr %netdev, i32 7644
  %52 = ptrtoint ptr %media_type.i434 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %media_type.i434, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %53)
  %cmp.i435 = icmp eq i32 %53, 5
  br i1 %cmp.i435, label %if.end.i437, label %if.then85.ixgbe_set_advertising_10gtypes.exit443_crit_edge

if.then85.ixgbe_set_advertising_10gtypes.exit443_crit_edge: ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_advertising_10gtypes.exit443

if.end.i437:                                      ; preds = %if.then85
  %device_id.i436 = getelementptr i8, ptr %netdev, i32 7812
  %54 = ptrtoint ptr %device_id.i436 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %device_id.i436, align 4
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %55, label %sw.default.i439 [
    i16 4278, label %if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge
    i16 4343, label %if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge473
    i16 5396, label %if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge474
    i16 5546, label %if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge475
    i16 5384, label %if.end.i437.sw.bb4.i438_crit_edge
    i16 5399, label %if.end.i437.sw.bb4.i438_crit_edge476
    i16 5547, label %if.end.i437.sw.bb4.i438_crit_edge477
    i16 5552, label %if.end.i437.sw.bb4.i438_crit_edge478
  ]

if.end.i437.sw.bb4.i438_crit_edge478:             ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb4.i438

if.end.i437.sw.bb4.i438_crit_edge477:             ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb4.i438

if.end.i437.sw.bb4.i438_crit_edge476:             ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb4.i438

if.end.i437.sw.bb4.i438_crit_edge:                ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb4.i438

if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge475: ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_advertising_10gtypes.exit443

if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge474: ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_advertising_10gtypes.exit443

if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge473: ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_advertising_10gtypes.exit443

if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge: ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_advertising_10gtypes.exit443

sw.bb4.i438:                                      ; preds = %if.end.i437.sw.bb4.i438_crit_edge, %if.end.i437.sw.bb4.i438_crit_edge476, %if.end.i437.sw.bb4.i438_crit_edge477, %if.end.i437.sw.bb4.i438_crit_edge478
  br label %ixgbe_set_advertising_10gtypes.exit443

sw.default.i439:                                  ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_set_advertising_10gtypes.exit443

ixgbe_set_advertising_10gtypes.exit443:           ; preds = %sw.default.i439, %sw.bb4.i438, %if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge, %if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge473, %if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge474, %if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge475, %if.then85.ixgbe_set_advertising_10gtypes.exit443_crit_edge
  %.sink23.i440 = phi i32 [ 786432, %sw.default.i439 ], [ 524288, %sw.bb4.i438 ], [ 4096, %if.then85.ixgbe_set_advertising_10gtypes.exit443_crit_edge ], [ 262144, %if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge ], [ 262144, %if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge473 ], [ 262144, %if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge474 ], [ 262144, %if.end.i437.ixgbe_set_advertising_10gtypes.exit443_crit_edge475 ]
  %57 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %advertising, align 4
  %or.i.i442 = or i32 %58, %.sink23.i440
  store i32 %or.i.i442, ptr %advertising, align 4
  br label %if.end86

if.end86:                                         ; preds = %ixgbe_set_advertising_10gtypes.exit443, %if.end80.if.end86_crit_edge
  %59 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %autoneg_advertised, align 4
  %and89 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end86.if.end106_crit_edge, label %if.then91

if.end86.if.end106_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end106

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #21
  %61 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %link_modes, align 4
  %63 = and i32 %62, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool96.not = icmp eq i32 %63, 0
  %64 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %advertising, align 4
  %.460 = select i1 %tobool96.not, i32 32, i32 131072
  %or.i392 = or i32 %65, %.460
  store i32 %or.i392, ptr %advertising, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then91, %if.end86.if.end106_crit_edge
  %66 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %autoneg_advertised, align 4
  %and109 = and i32 %67, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end106.if.end115_crit_edge, label %if.then111

if.end106.if.end115_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end115

if.then111:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i394 = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %68 = ptrtoint ptr %add.ptr.i394 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i394, align 4
  %or.i395 = or i32 %69, 65536
  store i32 %or.i395, ptr %add.ptr.i394, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %if.end106.if.end115_crit_edge
  %70 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %autoneg_advertised, align 4
  %and118 = and i32 %71, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end115.if.end138_crit_edge, label %if.then120

if.end115.if.end138_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end138

if.then120:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i396 = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  br label %if.end138.sink.split

if.else125:                                       ; preds = %if.end56
  %multispeed_fiber = getelementptr i8, ptr %netdev, i32 7677
  %72 = ptrtoint ptr %multispeed_fiber to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %multispeed_fiber, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool127.not = icmp eq i8 %73, 0
  br i1 %tobool127.not, label %if.else125.if.end138_crit_edge, label %land.lhs.true

if.else125.if.end138_crit_edge:                   ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end138

land.lhs.true:                                    ; preds = %if.else125
  %74 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %autoneg, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool128.not = icmp eq i8 %75, 0
  br i1 %tobool128.not, label %if.then129, label %land.lhs.true.if.then140_crit_edge

land.lhs.true.if.then140_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then140

if.then129:                                       ; preds = %land.lhs.true
  br i1 %tobool.not, label %if.then129.if.end151_crit_edge, label %if.then129.if.end138.sink.split_crit_edge

if.then129.if.end138.sink.split_crit_edge:        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end138.sink.split

if.then129.if.end151_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end151

if.end138.sink.split:                             ; preds = %if.then129.if.end138.sink.split_crit_edge, %if.then120
  %advertising.sink451 = phi ptr [ %add.ptr.i396, %if.then120 ], [ %advertising, %if.then129.if.end138.sink.split_crit_edge ]
  %.sink450 = phi i32 [ 32768, %if.then120 ], [ 4096, %if.then129.if.end138.sink.split_crit_edge ]
  %76 = ptrtoint ptr %advertising.sink451 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %advertising.sink451, align 4
  %or.i398 = or i32 %77, %.sink450
  store i32 %or.i398, ptr %advertising.sink451, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.end138.sink.split, %if.else125.if.end138_crit_edge, %if.end115.if.end138_crit_edge
  %78 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %78)
  %.pr = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool139.not = icmp eq i8 %.pr, 0
  br i1 %tobool139.not, label %if.end138.if.end151_crit_edge, label %if.end138.if.then140_crit_edge

if.end138.if.then140_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then140

if.end138.if.end151_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end151

if.then140:                                       ; preds = %if.end138.if.then140_crit_edge, %land.lhs.true.if.then140_crit_edge
  %79 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %link_modes, align 4
  %or.i399 = or i32 %80, 64
  store i32 %or.i399, ptr %link_modes, align 4
  %81 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %advertising, align 4
  %or.i400 = or i32 %82, 64
  store i32 %or.i400, ptr %advertising, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then140, %if.end138.if.end151_crit_edge, %if.then129.if.end151_crit_edge
  %.sink452 = phi i8 [ 1, %if.then140 ], [ 0, %if.then129.if.end151_crit_edge ], [ 0, %if.end138.if.end151_crit_edge ]
  %autoneg150 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %83 = ptrtoint ptr %autoneg150 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %.sink452, ptr %autoneg150, align 1
  %type = getelementptr i8, ptr %netdev, i32 7624
  %84 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %type, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %85, label %sw.default228 [
    i32 2, label %if.end151.sw.epilog237_crit_edge
    i32 3, label %if.end151.sw.epilog237_crit_edge479
    i32 7, label %if.end151.sw.epilog237_crit_edge480
    i32 27, label %if.end151.sw.epilog237_crit_edge481
    i32 9, label %if.end151.sw.epilog237_crit_edge482
    i32 10, label %sw.bb161
    i32 12, label %if.end151.sw.bb170_crit_edge
    i32 13, label %if.end151.sw.bb170_crit_edge483
    i32 14, label %if.end151.sw.bb170_crit_edge484
    i32 17, label %if.end151.sw.bb170_crit_edge485
    i32 16, label %if.end151.sw.bb170_crit_edge486
    i32 20, label %if.end151.sw.bb170_crit_edge487
    i32 19, label %if.end151.sw.bb170_crit_edge488
    i32 21, label %if.end151.sw.bb170_crit_edge489
    i32 22, label %if.end151.sw.bb170_crit_edge490
    i32 23, label %if.end151.sw.bb170_crit_edge491
    i32 24, label %if.end151.sw.bb170_crit_edge492
    i32 11, label %sw.bb218
  ]

if.end151.sw.bb170_crit_edge492:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb170

if.end151.sw.bb170_crit_edge491:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb170

if.end151.sw.bb170_crit_edge490:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb170

if.end151.sw.bb170_crit_edge489:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb170

if.end151.sw.bb170_crit_edge488:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb170

if.end151.sw.bb170_crit_edge487:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb170

if.end151.sw.bb170_crit_edge486:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb170

if.end151.sw.bb170_crit_edge485:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb170

if.end151.sw.bb170_crit_edge484:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb170

if.end151.sw.bb170_crit_edge483:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb170

if.end151.sw.bb170_crit_edge:                     ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb170

if.end151.sw.epilog237_crit_edge482:              ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

if.end151.sw.epilog237_crit_edge481:              ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

if.end151.sw.epilog237_crit_edge480:              ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

if.end151.sw.epilog237_crit_edge479:              ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

if.end151.sw.epilog237_crit_edge:                 ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

sw.bb161:                                         ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

sw.bb170:                                         ; preds = %if.end151.sw.bb170_crit_edge, %if.end151.sw.bb170_crit_edge483, %if.end151.sw.bb170_crit_edge484, %if.end151.sw.bb170_crit_edge485, %if.end151.sw.bb170_crit_edge486, %if.end151.sw.bb170_crit_edge487, %if.end151.sw.bb170_crit_edge488, %if.end151.sw.bb170_crit_edge489, %if.end151.sw.bb170_crit_edge490, %if.end151.sw.bb170_crit_edge491, %if.end151.sw.bb170_crit_edge492
  %sfp_type = getelementptr i8, ptr %netdev, i32 7632
  %87 = ptrtoint ptr %sfp_type to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sfp_type, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %88, label %sw.default [
    i32 0, label %sw.bb170.sw.epilog237_crit_edge
    i32 3, label %sw.bb170.sw.epilog237_crit_edge493
    i32 4, label %sw.bb170.sw.epilog237_crit_edge494
    i32 1, label %sw.bb170.sw.bb182_crit_edge
    i32 2, label %sw.bb170.sw.bb182_crit_edge495
    i32 5, label %sw.bb170.sw.bb182_crit_edge496
    i32 6, label %sw.bb170.sw.bb182_crit_edge497
    i32 11, label %sw.bb170.sw.bb182_crit_edge498
    i32 12, label %sw.bb170.sw.bb182_crit_edge499
    i32 13, label %sw.bb170.sw.bb182_crit_edge500
    i32 14, label %sw.bb170.sw.bb182_crit_edge501
    i32 65534, label %sw.bb191
    i32 9, label %sw.bb170.sw.bb200_crit_edge
    i32 10, label %sw.bb170.sw.bb200_crit_edge502
  ]

sw.bb170.sw.bb200_crit_edge502:                   ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb200

sw.bb170.sw.bb200_crit_edge:                      ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb200

sw.bb170.sw.bb182_crit_edge501:                   ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb182

sw.bb170.sw.bb182_crit_edge500:                   ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb182

sw.bb170.sw.bb182_crit_edge499:                   ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb182

sw.bb170.sw.bb182_crit_edge498:                   ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb182

sw.bb170.sw.bb182_crit_edge497:                   ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb182

sw.bb170.sw.bb182_crit_edge496:                   ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb182

sw.bb170.sw.bb182_crit_edge495:                   ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb182

sw.bb170.sw.bb182_crit_edge:                      ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb182

sw.bb170.sw.epilog237_crit_edge494:               ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

sw.bb170.sw.epilog237_crit_edge493:               ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

sw.bb170.sw.epilog237_crit_edge:                  ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

sw.bb182:                                         ; preds = %sw.bb170.sw.bb182_crit_edge, %sw.bb170.sw.bb182_crit_edge495, %sw.bb170.sw.bb182_crit_edge496, %sw.bb170.sw.bb182_crit_edge497, %sw.bb170.sw.bb182_crit_edge498, %sw.bb170.sw.bb182_crit_edge499, %sw.bb170.sw.bb182_crit_edge500, %sw.bb170.sw.bb182_crit_edge501
  br label %sw.epilog237

sw.bb191:                                         ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

sw.bb200:                                         ; preds = %sw.bb170.sw.bb200_crit_edge, %sw.bb170.sw.bb200_crit_edge502
  br label %sw.epilog237

sw.default:                                       ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

sw.bb218:                                         ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

sw.default228:                                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog237

sw.epilog237:                                     ; preds = %sw.default228, %sw.bb218, %sw.default, %sw.bb200, %sw.bb191, %sw.bb182, %sw.bb170.sw.epilog237_crit_edge, %sw.bb170.sw.epilog237_crit_edge493, %sw.bb170.sw.epilog237_crit_edge494, %sw.bb161, %if.end151.sw.epilog237_crit_edge, %if.end151.sw.epilog237_crit_edge479, %if.end151.sw.epilog237_crit_edge480, %if.end151.sw.epilog237_crit_edge481, %if.end151.sw.epilog237_crit_edge482
  %.sink457 = phi i32 [ 1024, %sw.bb182 ], [ 1024, %sw.bb191 ], [ 128, %sw.bb200 ], [ 1024, %sw.default ], [ 1024, %sw.default228 ], [ 1024, %sw.bb218 ], [ 1024, %sw.bb161 ], [ 128, %if.end151.sw.epilog237_crit_edge ], [ 128, %if.end151.sw.epilog237_crit_edge479 ], [ 128, %if.end151.sw.epilog237_crit_edge480 ], [ 128, %if.end151.sw.epilog237_crit_edge481 ], [ 128, %if.end151.sw.epilog237_crit_edge482 ], [ 1024, %sw.bb170.sw.epilog237_crit_edge ], [ 1024, %sw.bb170.sw.epilog237_crit_edge493 ], [ 1024, %sw.bb170.sw.epilog237_crit_edge494 ]
  %.sink453 = phi i8 [ 3, %sw.bb182 ], [ -17, %sw.bb191 ], [ 0, %sw.bb200 ], [ -1, %sw.default ], [ -1, %sw.default228 ], [ -17, %sw.bb218 ], [ 3, %sw.bb161 ], [ 0, %if.end151.sw.epilog237_crit_edge ], [ 0, %if.end151.sw.epilog237_crit_edge479 ], [ 0, %if.end151.sw.epilog237_crit_edge480 ], [ 0, %if.end151.sw.epilog237_crit_edge481 ], [ 0, %if.end151.sw.epilog237_crit_edge482 ], [ 5, %sw.bb170.sw.epilog237_crit_edge ], [ 5, %sw.bb170.sw.epilog237_crit_edge493 ], [ 5, %sw.bb170.sw.epilog237_crit_edge494 ]
  %90 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %link_modes, align 4
  %or.i405 = or i32 %91, %.sink457
  store i32 %or.i405, ptr %link_modes, align 4
  %92 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %advertising, align 4
  %or.i406 = or i32 %93, %.sink457
  store i32 %or.i406, ptr %advertising, align 4
  %port181 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %94 = ptrtoint ptr %port181 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %.sink453, ptr %port181, align 1
  %or.i419 = or i32 %or.i405, 8192
  store i32 %or.i419, ptr %link_modes, align 4
  %requested_mode = getelementptr i8, ptr %netdev, i32 7504
  %95 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %requested_mode, align 4
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %96, label %sw.default256 [
    i32 3, label %sw.bb241
    i32 1, label %sw.bb245
    i32 2, label %sw.bb252
  ]

sw.bb241:                                         ; preds = %sw.epilog237
  call void @__sanitizer_cov_trace_pc() #21
  %98 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %advertising, align 4
  %or.i420 = or i32 %99, 8192
  br label %sw.epilog263

sw.bb245:                                         ; preds = %sw.epilog237
  call void @__sanitizer_cov_trace_pc() #21
  %100 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %advertising, align 4
  %or.i422 = or i32 %101, 24576
  br label %sw.epilog263

sw.bb252:                                         ; preds = %sw.epilog237
  call void @__sanitizer_cov_trace_pc() #21
  %102 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %advertising, align 4
  %or.i423 = or i32 %103, 16384
  br label %sw.epilog263

sw.default256:                                    ; preds = %sw.epilog237
  call void @__sanitizer_cov_trace_pc() #21
  %104 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %advertising, align 4
  %and.i424 = and i32 %105, -24577
  br label %sw.epilog263

sw.epilog263:                                     ; preds = %sw.default256, %sw.bb252, %sw.bb245, %sw.bb241
  %and.i424.sink = phi i32 [ %and.i424, %sw.default256 ], [ %or.i423, %sw.bb252 ], [ %or.i422, %sw.bb245 ], [ %or.i420, %sw.bb241 ]
  %106 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %and.i424.sink, ptr %advertising, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %107 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %state.i, align 4
  %109 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i = icmp eq i32 %109, 0
  br i1 %tobool.not.i, label %if.then265, label %sw.epilog263.if.end291.sink.split_crit_edge

sw.epilog263.if.end291.sink.split_crit_edge:      ; preds = %sw.epilog263
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end291.sink.split

if.then265:                                       ; preds = %sw.epilog263
  %link_speed = getelementptr i8, ptr %netdev, i32 9620
  %110 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %link_speed, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %111, label %if.then265.if.end291_crit_edge [
    i32 128, label %if.then265.if.end291.sink.split_crit_edge
    i32 2048, label %sw.bb268
    i32 1024, label %sw.bb271
    i32 32, label %sw.bb274
    i32 8, label %sw.bb277
    i32 2, label %sw.bb280
  ]

if.then265.if.end291.sink.split_crit_edge:        ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end291.sink.split

if.then265.if.end291_crit_edge:                   ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end291

sw.bb268:                                         ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end291.sink.split

sw.bb271:                                         ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end291.sink.split

sw.bb274:                                         ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end291.sink.split

sw.bb277:                                         ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end291.sink.split

sw.bb280:                                         ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end291.sink.split

if.end291.sink.split:                             ; preds = %sw.bb280, %sw.bb277, %sw.bb274, %sw.bb271, %sw.bb268, %if.then265.if.end291.sink.split_crit_edge, %sw.epilog263.if.end291.sink.split_crit_edge
  %.sink458.sink = phi i32 [ 10, %sw.bb280 ], [ 100, %sw.bb277 ], [ 1000, %sw.bb274 ], [ 2500, %sw.bb271 ], [ 5000, %sw.bb268 ], [ 10000, %if.then265.if.end291.sink.split_crit_edge ], [ -1, %sw.epilog263.if.end291.sink.split_crit_edge ]
  %.sink459.ph = phi i8 [ 1, %sw.bb280 ], [ 1, %sw.bb277 ], [ 1, %sw.bb274 ], [ 1, %sw.bb271 ], [ 1, %sw.bb268 ], [ 1, %if.then265.if.end291.sink.split_crit_edge ], [ -1, %sw.epilog263.if.end291.sink.split_crit_edge ]
  %speed282 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %113 = ptrtoint ptr %speed282 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %.sink458.sink, ptr %speed282, align 4
  br label %if.end291

if.end291:                                        ; preds = %if.end291.sink.split, %if.then265.if.end291_crit_edge
  %.sink459 = phi i8 [ 1, %if.then265.if.end291_crit_edge ], [ %.sink459.ph, %if.end291.sink.split ]
  %duplex290 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %114 = ptrtoint ptr %duplex290 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %.sink459, ptr %duplex290, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %autoneg) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supported_link) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 6528
  %media_type = getelementptr i8, ptr %netdev, i32 7644
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %multispeed_fiber = getelementptr i8, ptr %netdev, i32 7677
  %2 = ptrtoint ptr %multispeed_fiber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multispeed_fiber, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @__bitmap_subset(ptr noundef %advertising, ptr noundef %link_modes, i32 noundef 92) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not, label %if.then.cleanup115_crit_edge, label %if.end

if.then.cleanup115_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup115

if.end:                                           ; preds = %if.then
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %multispeed_fiber10 = getelementptr i8, ptr %netdev, i32 7677
  %6 = ptrtoint ptr %multispeed_fiber10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %multispeed_fiber10, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end26_crit_edge, label %if.then12

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

if.then12:                                        ; preds = %land.lhs.true
  %8 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %advertising, align 4
  %10 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  br i1 %tobool17.not, label %if.then12.if.end26_crit_edge, label %land.lhs.true18

if.then12.if.end26_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

land.lhs.true18:                                  ; preds = %if.then12
  %11 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %advertising, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not = icmp eq i32 %13, 0
  br i1 %tobool23.not, label %land.lhs.true18.if.end26_crit_edge, label %land.lhs.true18.cleanup115_crit_edge

land.lhs.true18.cleanup115_crit_edge:             ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup115

land.lhs.true18.if.end26_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true18.if.end26_crit_edge, %if.then12.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 7656
  %14 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %autoneg_advertised, align 4
  %16 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %advertising, align 4
  %18 = lshr i32 %17, 5
  %19 = and i32 %18, 128
  %arrayidx.i = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i, align 4
  %22 = lshr i32 %21, 5
  %23 = and i32 %22, 2048
  %24 = or i32 %23, %19
  %25 = load volatile i32, ptr %arrayidx.i, align 4
  %26 = lshr i32 %25, 5
  %27 = and i32 %26, 1024
  %28 = or i32 %24, %27
  %29 = load volatile i32, ptr %advertising, align 4
  %30 = and i32 %29, 32
  %31 = or i32 %28, %30
  %32 = load volatile i32, ptr %advertising, align 4
  %33 = and i32 %32, 8
  %34 = or i32 %31, %33
  %35 = load volatile i32, ptr %advertising, align 4
  %36 = and i32 %35, 2
  %37 = or i32 %34, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %37)
  %cmp75 = icmp eq i32 %15, %37
  br i1 %cmp75, label %if.end26.cleanup115_crit_edge, label %while.cond.preheader

if.end26.cleanup115_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup115

while.cond.preheader:                             ; preds = %if.end26
  %state = getelementptr i8, ptr %netdev, i32 2832
  %call78175 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78175)
  %tobool79.not176 = icmp eq i32 %call78175, 0
  br i1 %tobool79.not176, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %call78 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state) #19
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %autotry_restart = getelementptr i8, ptr %netdev, i32 7389
  %38 = ptrtoint ptr %autotry_restart to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %autotry_restart, align 1
  %setup_link = getelementptr i8, ptr %netdev, i32 6644
  %39 = ptrtoint ptr %setup_link to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %setup_link, align 4
  %call81 = tail call i32 %40(ptr noundef %hw1, i32 noundef %37, i1 noundef zeroext true) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %while.end.if.end92_crit_edge, label %do.body

while.end.if.end92_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end92

do.body:                                          ; preds = %while.end
  %msg_enable = getelementptr i8, ptr %netdev, i32 7828
  %41 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %msg_enable, align 4
  %43 = and i16 %42, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool84.not = icmp eq i16 %43, 0
  br i1 %tobool84.not, label %do.body.do.end_crit_edge, label %if.then85

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

if.then85:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %netdev86 = getelementptr i8, ptr %netdev, i32 2816
  %44 = ptrtoint ptr %netdev86 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev86, align 128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %45, ptr noundef nonnull @.str.36, i32 noundef %call81) #23
  br label %do.end

do.end:                                           ; preds = %if.then85, %do.body.do.end_crit_edge
  %46 = ptrtoint ptr %setup_link to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %setup_link, align 4
  %call91 = tail call i32 %47(ptr noundef %hw1, i32 noundef %15, i1 noundef zeroext true) #19
  br label %if.end92

if.end92:                                         ; preds = %do.end, %while.end.if.end92_crit_edge
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state) #19
  br label %cleanup115

if.else:                                          ; preds = %lor.lhs.false
  %speed95 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %48 = ptrtoint ptr %speed95 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %speed95, align 4
  %autoneg97 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %50 = ptrtoint ptr %autoneg97 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %autoneg97, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %cmp99 = icmp eq i8 %51, 1
  br i1 %cmp99, label %if.else.cleanup115_crit_edge, label %lor.lhs.false101

if.else.cleanup115_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup115

lor.lhs.false101:                                 ; preds = %if.else
  %advertising103 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %advertising103 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %advertising103, align 4
  %54 = and i32 %53, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool106.not = icmp eq i32 %54, 0
  br i1 %tobool106.not, label %lor.lhs.false101.cleanup115_crit_edge, label %lor.lhs.false107

lor.lhs.false101.cleanup115_crit_edge:            ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup115

lor.lhs.false107:                                 ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #21
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %55 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %duplex, align 4
  %conv109 = zext i8 %56 to i32
  %add = add i32 %49, %conv109
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %add)
  %cmp110.not = icmp eq i32 %add, 10001
  %spec.select157 = select i1 %cmp110.not, i32 0, i32 -22
  br label %cleanup115

cleanup115:                                       ; preds = %lor.lhs.false107, %lor.lhs.false101.cleanup115_crit_edge, %if.else.cleanup115_crit_edge, %if.end92, %if.end26.cleanup115_crit_edge, %land.lhs.true18.cleanup115_crit_edge, %if.then.cleanup115_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup115_crit_edge ], [ -22, %land.lhs.true18.cleanup115_crit_edge ], [ 0, %if.end26.cleanup115_crit_edge ], [ -22, %if.else.cleanup115_crit_edge ], [ -22, %lor.lhs.false101.cleanup115_crit_edge ], [ %call81, %if.end92 ], [ %spec.select157, %lor.lhs.false107 ]
  ret i32 %retval.1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ixgbe_wol_supported(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_reinit_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_write_eitr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_do_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_tx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_free_tx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_rx_resources(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_free_rx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ixgbe_device_supports_autoneg_fc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @reg_pattern_test(ptr noundef %adapter, ptr nocapture noundef writeonly %data, i32 noundef %reg, i32 noundef %mask, i32 noundef %write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 128
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %reg) #19
  %and = and i32 %write, 1515870810
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %for.body.preheader.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body.preheader.ixgbe_write_reg.exit_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %data, align 8
  br label %cleanup

do.body1.i:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  tail call void @arm_heavy_mb() #19
  %5 = tail call i32 @llvm.bswap.i32(i32 %and) #19
  %add.ptr.i = getelementptr i8, ptr %3, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #19, !srcloc !103
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body.preheader.ixgbe_write_reg.exit_crit_edge
  %call5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %reg) #19
  %and8 = and i32 %and, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %and8)
  %cmp9.not = icmp eq i32 %call5, %and8
  br i1 %cmp9.not, label %if.end19, label %ixgbe_write_reg.exit.do.body_crit_edge

ixgbe_write_reg.exit.do.body_crit_edge:           ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

do.body:                                          ; preds = %ixgbe_write_reg.exit.3.do.body_crit_edge, %ixgbe_write_reg.exit.2.do.body_crit_edge, %ixgbe_write_reg.exit.1.do.body_crit_edge, %ixgbe_write_reg.exit.do.body_crit_edge
  %call5.lcssa = phi i32 [ %call5, %ixgbe_write_reg.exit.do.body_crit_edge ], [ %call5.1, %ixgbe_write_reg.exit.1.do.body_crit_edge ], [ %call5.2, %ixgbe_write_reg.exit.2.do.body_crit_edge ], [ %call5.3, %ixgbe_write_reg.exit.3.do.body_crit_edge ]
  %and8.lcssa = phi i32 [ %and8, %ixgbe_write_reg.exit.do.body_crit_edge ], [ %and8.1, %ixgbe_write_reg.exit.1.do.body_crit_edge ], [ 0, %ixgbe_write_reg.exit.2.do.body_crit_edge ], [ %and8.3, %ixgbe_write_reg.exit.3.do.body_crit_edge ]
  %call2.lcssa = phi i32 [ %call2, %ixgbe_write_reg.exit.do.body_crit_edge ], [ %call2.1, %ixgbe_write_reg.exit.1.do.body_crit_edge ], [ %call2.2, %ixgbe_write_reg.exit.2.do.body_crit_edge ], [ %call2.3, %ixgbe_write_reg.exit.3.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %msg_enable, align 4
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then12

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %reg, i32 noundef %call5.lcssa, i32 noundef %and8.lcssa) #23
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body.do.end_crit_edge
  %11 = zext i32 %reg to i64
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %data, align 8
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i46 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i46, label %do.end.cleanup_crit_edge, label %do.body1.i48

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body1.i48:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  tail call void @arm_heavy_mb() #19
  %15 = tail call i32 @llvm.bswap.i32(i32 %call2.lcssa) #19
  %add.ptr.i47 = getelementptr i8, ptr %14, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %15) #19, !srcloc !103
  br label %cleanup

if.end19:                                         ; preds = %ixgbe_write_reg.exit
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i50 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i50, label %if.end19.ixgbe_write_reg.exit53_crit_edge, label %do.body1.i52

if.end19.ixgbe_write_reg.exit53_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit53

do.body1.i52:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  tail call void @arm_heavy_mb() #19
  %18 = tail call i32 @llvm.bswap.i32(i32 %call2) #19
  %add.ptr.i51 = getelementptr i8, ptr %17, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %18) #19, !srcloc !103
  br label %ixgbe_write_reg.exit53

ixgbe_write_reg.exit53:                           ; preds = %do.body1.i52, %if.end19.ixgbe_write_reg.exit53_crit_edge
  %call2.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %reg) #19
  %and.1 = and i32 %write, -1515870811
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.1 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.1, label %ixgbe_write_reg.exit53.ixgbe_write_reg.exit.1_crit_edge, label %do.body1.i.1

ixgbe_write_reg.exit53.ixgbe_write_reg.exit.1_crit_edge: ; preds = %ixgbe_write_reg.exit53
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit.1

do.body1.i.1:                                     ; preds = %ixgbe_write_reg.exit53
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  tail call void @arm_heavy_mb() #19
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.1) #19
  %add.ptr.i.1 = getelementptr i8, ptr %20, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %21) #19, !srcloc !103
  br label %ixgbe_write_reg.exit.1

ixgbe_write_reg.exit.1:                           ; preds = %do.body1.i.1, %ixgbe_write_reg.exit53.ixgbe_write_reg.exit.1_crit_edge
  %call5.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %reg) #19
  %and8.1 = and i32 %and.1, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.1, i32 %and8.1)
  %cmp9.not.1 = icmp eq i32 %call5.1, %and8.1
  br i1 %cmp9.not.1, label %if.end19.1, label %ixgbe_write_reg.exit.1.do.body_crit_edge

ixgbe_write_reg.exit.1.do.body_crit_edge:         ; preds = %ixgbe_write_reg.exit.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

if.end19.1:                                       ; preds = %ixgbe_write_reg.exit.1
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i50.1 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i50.1, label %if.end19.1.ixgbe_write_reg.exit53.1_crit_edge, label %do.body1.i52.1

if.end19.1.ixgbe_write_reg.exit53.1_crit_edge:    ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit53.1

do.body1.i52.1:                                   ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  tail call void @arm_heavy_mb() #19
  %24 = tail call i32 @llvm.bswap.i32(i32 %call2.1) #19
  %add.ptr.i51.1 = getelementptr i8, ptr %23, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.1, i32 %24) #19, !srcloc !103
  br label %ixgbe_write_reg.exit53.1

ixgbe_write_reg.exit53.1:                         ; preds = %do.body1.i52.1, %if.end19.1.ixgbe_write_reg.exit53.1_crit_edge
  %call2.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %reg) #19
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.2 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.2, label %ixgbe_write_reg.exit53.1.ixgbe_write_reg.exit.2_crit_edge, label %do.body1.i.2

ixgbe_write_reg.exit53.1.ixgbe_write_reg.exit.2_crit_edge: ; preds = %ixgbe_write_reg.exit53.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit.2

do.body1.i.2:                                     ; preds = %ixgbe_write_reg.exit53.1
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  tail call void @arm_heavy_mb() #19
  %add.ptr.i.2 = getelementptr i8, ptr %26, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 0) #19, !srcloc !103
  br label %ixgbe_write_reg.exit.2

ixgbe_write_reg.exit.2:                           ; preds = %do.body1.i.2, %ixgbe_write_reg.exit53.1.ixgbe_write_reg.exit.2_crit_edge
  %call5.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %reg) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %cmp9.not.2 = icmp eq i32 %call5.2, 0
  br i1 %cmp9.not.2, label %if.end19.2, label %ixgbe_write_reg.exit.2.do.body_crit_edge

ixgbe_write_reg.exit.2.do.body_crit_edge:         ; preds = %ixgbe_write_reg.exit.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

if.end19.2:                                       ; preds = %ixgbe_write_reg.exit.2
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i50.2 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i50.2, label %if.end19.2.ixgbe_write_reg.exit53.2_crit_edge, label %do.body1.i52.2

if.end19.2.ixgbe_write_reg.exit53.2_crit_edge:    ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit53.2

do.body1.i52.2:                                   ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  tail call void @arm_heavy_mb() #19
  %29 = tail call i32 @llvm.bswap.i32(i32 %call2.2) #19
  %add.ptr.i51.2 = getelementptr i8, ptr %28, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.2, i32 %29) #19, !srcloc !103
  br label %ixgbe_write_reg.exit53.2

ixgbe_write_reg.exit53.2:                         ; preds = %do.body1.i52.2, %if.end19.2.ixgbe_write_reg.exit53.2_crit_edge
  %call2.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %reg) #19
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.3 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.3, label %ixgbe_write_reg.exit53.2.ixgbe_write_reg.exit.3_crit_edge, label %do.body1.i.3

ixgbe_write_reg.exit53.2.ixgbe_write_reg.exit.3_crit_edge: ; preds = %ixgbe_write_reg.exit53.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %ixgbe_write_reg.exit.3

do.body1.i.3:                                     ; preds = %ixgbe_write_reg.exit53.2
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  tail call void @arm_heavy_mb() #19
  %32 = tail call i32 @llvm.bswap.i32(i32 %write) #19
  %add.ptr.i.3 = getelementptr i8, ptr %31, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %32) #19, !srcloc !103
  br label %ixgbe_write_reg.exit.3

ixgbe_write_reg.exit.3:                           ; preds = %do.body1.i.3, %ixgbe_write_reg.exit53.2.ixgbe_write_reg.exit.3_crit_edge
  %call5.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %reg) #19
  %and8.3 = and i32 %write, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.3, i32 %and8.3)
  %cmp9.not.3 = icmp eq i32 %call5.3, %and8.3
  br i1 %cmp9.not.3, label %if.end19.3, label %ixgbe_write_reg.exit.3.do.body_crit_edge

ixgbe_write_reg.exit.3.do.body_crit_edge:         ; preds = %ixgbe_write_reg.exit.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

if.end19.3:                                       ; preds = %ixgbe_write_reg.exit.3
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i50.3 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i50.3, label %if.end19.3.cleanup_crit_edge, label %do.body1.i52.3

if.end19.3.cleanup_crit_edge:                     ; preds = %if.end19.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body1.i52.3:                                   ; preds = %if.end19.3
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !102
  tail call void @arm_heavy_mb() #19
  %35 = tail call i32 @llvm.bswap.i32(i32 %call2.3) #19
  %add.ptr.i51.3 = getelementptr i8, ptr %34, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.3, i32 %35) #19, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i52.3, %if.end19.3.cleanup_crit_edge, %do.body1.i48, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ true, %do.end.cleanup_crit_edge ], [ true, %do.body1.i48 ], [ false, %do.body1.i52.3 ], [ false, %if.end19.3.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_test_intr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %data, i32 6528
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 2048) #19
  %test_icr = getelementptr i8, ptr %data, i32 5380
  %0 = ptrtoint ptr %test_icr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %test_icr, align 4
  %or = or i32 %1, %call1
  store i32 %or, ptr %test_icr, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_configure_tx_ring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_configure_rx_ring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_xmit_frame_ring(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_alloc_rx_buffers(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_disable_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_disable_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_update_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !107
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @trace_hardirqs_off() #19
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #19
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #19
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #19
  tail call void @trace_hardirqs_on() #19
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #19
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #19
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #19
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !108
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !99

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #19, !srcloc !109
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !110
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #19, !srcloc !111
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !112
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_fdir_set_input_mask_82599(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_atr_compute_perfect_hash_82599(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_fdir_write_perfect_filter_82599(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_rss_indir_tbl_entries(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_store_reta(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_store_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_fw_phy_activity(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold nounwind }
attributes #24 = { nobuiltin }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @ixgbe_ethtool_ops, !1, !"ixgbe_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 3540, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2407, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2413, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2156, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2173, i32 26}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2188, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2202, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2207, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2212, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2220, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2226, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2240, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1565, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1598, i32 3}
!28 = !{ptr @reg_test_82598, !29, !"reg_test_82598", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1481, i32 36}
!30 = !{ptr @reg_test_82599, !31, !"reg_test_82599", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1457, i32 36}
!32 = distinct !{null, !33, !"test_pattern", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1512, i32 19}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1524, i32 4}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1548, i32 3}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1708, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1387, i32 24}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1388, i32 24}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1391, i32 24}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1392, i32 24}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1395, i32 24}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1396, i32 24}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1399, i32 24}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 1400, i32 24}
!60 = !{ptr @ixgbe_gstrings_test, !61, !"ixgbe_gstrings_test", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 129, i32 19}
!62 = !{ptr @ixgbe_gstrings_stats, !63, !"ixgbe_gstrings_stats", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 39, i32 33}
!64 = !{ptr @ixgbe_priv_flags_strings, !65, !"ixgbe_priv_flags_strings", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 136, i32 19}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2808, i32 3}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2824, i32 3}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2869, i32 4}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2873, i32 3}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 2998, i32 4}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 3319, i32 3}
!78 = distinct !{null, !79, !"ixgbe_lp_map", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 3386, i32 3}
!80 = distinct !{null, !81, !"ixgbe_ls_map", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 3375, i32 3}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 3465, i32 4}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 3470, i32 4}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 3476, i32 4}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c", i32 515, i32 4}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i8 0, i8 2}
!101 = !{!"auto-init"}
!102 = !{i64 2157359318}
!103 = !{i64 4301333}
!104 = !{i64 2148340240, i64 2148340272, i64 2148340301, i64 2148340335, i64 2148340366, i64 2148340389}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{i64 2150311827}
!107 = !{i64 731191, i64 731252}
!108 = !{i64 733923}
!109 = !{i64 734208}
!110 = !{i64 2154875010}
!111 = !{i64 2154874852}
!112 = !{i64 2154875180}
