; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i40e_diag_reg_test_info = type { i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i40e_stats = type { [32 x i8], i32, i32 }
%struct.i40e_priv_flags = type { [32 x i8], i64, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.i40e_vsi = type { ptr, [128 x i32], i8, i8, i32, [1 x i32], i32, %struct.spinlock, [256 x %struct.hlist_head], i8, %struct.rtnl_link_stats64, %struct.rtnl_link_stats64, %struct.i40e_eth_stats, %struct.i40e_eth_stats, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, ptr, ptr, i16, i16, ptr, ptr, i32, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, %struct.tc_mqprio_qopt_offload, %struct.i40e_tc_configuration, %struct.i40e_aqc_vsi_properties_data, i16, i8, [8 x i8], [8 x i16], [8 x i8], ptr, i16, i16, ptr, i8, i32, i16, i16, i16, i8, i16, %struct.list_head, [8 x i16], [4 x i32], %struct.list_head, i32, ptr, ptr, ptr, [88 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.i40e_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.i40e_tc_configuration = type { i8, i8, [8 x %struct.i40e_tc_info] }
%struct.i40e_tc_info = type { i16, i16, i8 }
%struct.i40e_aqc_vsi_properties_data = type { i16, i16, [2 x i8], i8, i8, i16, i16, i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, [3 x i8], i8, i8, i32, [8 x i8], [8 x i16], i16, i16, [12 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.i40e_pf = type { ptr, %struct.i40e_hw, [2 x i32], ptr, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i8, i8, %struct.hlist_head, i16, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.list_head, %struct.list_head, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, %struct.hlist_head, i16, i32, i16, i16, i32, [32 x i8], i16, i32, i32, %struct.timer_list, %struct.work_struct, i32, i32, ptr, i8, %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, %struct.mutex, i16, i16, i16, ptr, [16 x ptr], ptr, ptr, i16, i16, i16, ptr, ptr, i8, i16, ptr, i32, i32, i32, i16, %struct.i40e_filter_control_settings, %struct.i40e_rx_pb_config, %struct.i40e_dcbx_config, ptr, %struct.ptp_clock_info, ptr, i32, %struct.hwtstamp_config, %struct.timespec64, %struct.work_struct, %struct.work_struct, %struct.work_struct, i64, %struct.mutex, i32, i32, i32, i32, i32, i64, i32, %struct.spinlock, [3 x %struct.ptp_pin_desc], [4 x i32], i8, i8, ptr, i16, i32, i32, i32, i32, i16, i16, i16, i16, %struct.list_head }
%struct.i40e_hw = type { ptr, ptr, %struct.i40e_phy_info, %struct.i40e_mac_info, %struct.i40e_bus_info, %struct.i40e_nvm_info, %struct.i40e_fc_info, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities, i16, i8, i16, i16, i16, i16, i16, %struct.i40e_adminq_info, i32, %struct.i40e_aq_desc, %struct.i40e_aq_desc, %struct.i40e_virt_mem, i8, i16, %struct.i40e_hmc_info, i16, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, i64, i16, i16, i16, i32, [16 x i8] }
%struct.i40e_phy_info = type { %struct.i40e_link_status, %struct.i40e_link_status, i8, i32, i64 }
%struct.i40e_link_status = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [3 x i8] }
%struct.i40e_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.i40e_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.i40e_nvm_info = type { i64, i32, i16, i8, i16, i32, i32 }
%struct.i40e_fc_info = type { i32, i32 }
%struct.i40e_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i64 }
%struct.i40e_adminq_info = type { %struct.i40e_adminq_ring, %struct.i40e_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.i40e_adminq_ring = type { %struct.i40e_virt_mem, %struct.i40e_dma_mem, %struct.i40e_virt_mem, %union.anon.209, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%union.anon.209 = type { ptr }
%struct.i40e_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.210 }
%union.anon.210 = type { %struct.anon.211 }
%struct.anon.211 = type { i32, i32, i32, i32 }
%struct.i40e_virt_mem = type { ptr, i32 }
%struct.i40e_hmc_info = type { i32, i8, i16, ptr, %struct.i40e_virt_mem, %struct.i40e_hmc_sd_table }
%struct.i40e_hmc_sd_table = type { %struct.i40e_virt_mem, i32, i32, ptr }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.i40e_hw_port_stats = type { %struct.i40e_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], i64, i64, [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.i40e_filter_control_settings = type { i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.i40e_rx_pb_config = type { i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32] }
%struct.i40e_dcbx_config = type { i8, i8, i32, i32, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_pfc_config, [32 x %struct.i40e_dcb_app_priority_table] }
%struct.i40e_dcb_ets_config = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.i40e_dcb_pfc_config = type { i8, i8, i8, i8 }
%struct.i40e_dcb_app_priority_table = type { i8, i8, i16 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.199, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.199 = type { ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.208, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.208 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.i40e_nvm_access = type { i32, i32, i32, i32, [1 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i40e_ring = type { ptr, ptr, ptr, ptr, ptr, %union.anon.205, [1 x i32], i16, i8, ptr, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, %struct.i40e_queue_stats, %struct.u64_stats_sync, %union.anon.207, i32, i32, ptr, ptr, %struct.callback_head, i16, ptr, ptr, i16, [58 x i8], %struct.xdp_rxq_info, ptr, ptr, [120 x i8] }
%union.anon.205 = type { ptr }
%struct.i40e_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.207 = type { %struct.i40e_tx_queue_stats }
%struct.i40e_tx_queue_stats = type { i64, i64, i64, i64, i64, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.i40e_vf = type { ptr, i16, i32, %struct.virtchnl_version_info, i32, i16, %struct.virtchnl_ether_addr, i16, i8, i8, i16, i16, i8, i8, i64, i32, i32, i32, i8, i8, i8, i16, i8, i8, [4 x %struct.i40evf_channel], %struct.hlist_head, i16, ptr }
%struct.virtchnl_version_info = type { i32, i32 }
%struct.virtchnl_ether_addr = type { [6 x i8], i8, i8 }
%struct.i40evf_channel = type { i16, i16, i16, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.i40e_veb = type { ptr, i16, i16, i16, i16, i16, i8, i16, i16, i16, i8, i8, [8 x i8], [8 x i16], [8 x i8], ptr, i8, %struct.i40e_eth_stats, %struct.i40e_eth_stats, %struct.i40e_veb_tc_stats, %struct.i40e_veb_tc_stats }
%struct.i40e_veb_tc_stats = type { [8 x i64], [8 x i64], [8 x i64], [8 x i64] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.193, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.193 = type { i32 }
%struct.i40e_fdir_filter = type { %struct.hlist_node, i8, i8, i32, i32, [4 x i32], [4 x i32], i16, i16, i32, i16, i16, i16, i16, i8, i16, i8, i8, i16, i8, i8, i16, i32 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethtool_usrip6_spec = type { [4 x i32], [4 x i32], i32, i8, i8 }
%struct.i40e_flex_pit = type { %struct.list_head, i16, i8 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.i40e_aq_get_phy_abilities_resp = type { i32, i8, i8, i16, i32, i8, i8, i8, i8, [4 x i8], [3 x i8], i8, [16 x %struct.i40e_aqc_module_desc] }
%struct.i40e_aqc_module_desc = type { [3 x i8], i8, [16 x i8], [4 x i8], [8 x i8] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.i40e_ethtool_not_used = type { i32, ptr }
%struct.i40e_aq_set_phy_config = type { i32, i8, i8, i16, i32, i8, i8, i8, i8 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.194, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.194 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.i40e_q_vector = type { ptr, i16, i16, %struct.napi_struct, %struct.i40e_ring_container, %struct.i40e_ring_container, i8, i8, %struct.cpumask, %struct.irq_affinity_notify, %struct.callback_head, [32 x i8], i8, [123 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.i40e_ring_container = type { ptr, i32, i32, i32, i16, i16, i16 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.__va_list = type { ptr }

@i40e_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 657049, i32 0, ptr @i40e_get_drvinfo, ptr @i40e_get_regs_len, ptr @i40e_get_regs, ptr @i40e_get_wol, ptr @i40e_set_wol, ptr @i40e_get_msglevel, ptr @i40e_set_msglevel, ptr @i40e_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @i40e_get_eeprom_len, ptr @i40e_get_eeprom, ptr @i40e_set_eeprom, ptr @i40e_get_coalesce, ptr @i40e_set_coalesce, ptr @i40e_get_ringparam, ptr @i40e_set_ringparam, ptr null, ptr @i40e_get_pauseparam, ptr @i40e_set_pauseparam, ptr @i40e_diag_test, ptr @i40e_get_strings, ptr @i40e_set_phys_id, ptr @i40e_get_ethtool_stats, ptr null, ptr null, ptr @i40e_get_priv_flags, ptr @i40e_set_priv_flags, ptr @i40e_get_sset_count, ptr @i40e_get_rxnfc, ptr @i40e_set_rxnfc, ptr @i40e_ddp_flash, ptr null, ptr @i40e_get_rxfh_key_size, ptr @i40e_get_rxfh_indir_size, ptr @i40e_get_rxfh, ptr @i40e_set_rxfh, ptr null, ptr null, ptr @i40e_get_channels, ptr @i40e_set_channels, ptr null, ptr null, ptr null, ptr @i40e_get_ts_info, ptr @i40e_get_module_info, ptr @i40e_get_module_eeprom, ptr @i40e_get_eee, ptr @i40e_set_eee, ptr null, ptr null, ptr @i40e_get_per_queue_coalesce, ptr @i40e_set_per_queue_coalesce, ptr @i40e_get_link_ksettings, ptr @i40e_set_link_ksettings, ptr null, ptr @i40e_get_fec_param, ptr @i40e_set_fec_param, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@i40e_ethtool_recovery_mode_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @i40e_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i40e_get_eeprom_len, ptr @i40e_get_eeprom, ptr @i40e_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@i40e_driver_name = external dso_local constant [0 x i8], align 1
@i40e_nvm_version_str.buf = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%x.%x.%x\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%x.%02x 0x%x %d.%d.%d\00", [42 x i8] zeroinitializer }, align 32
@i40e_reg_list = external dso_local local_unnamed_addr global [0 x %struct.i40e_diag_reg_test_info], align 4
@i40e_partition_setting_complaint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 473, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [161 x i8], [63 x i8] } { [161 x i8] c"The link settings are allowed to be changed only from the first partition of a given port. Please switch to the first partition in order to change the setting.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i40e_partition_setting_complaint\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/intel/i40e/i40e_ethtool.c\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i40e_partition_setting_complaint._entry_ptr = internal global ptr @i40e_partition_setting_complaint._entry, section ".printk_index", align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i40e debug_mask: 0x%08X\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"link restart failed, err %s aq_err %s\0A\00", [57 x i8] zeroinitializer }, align 32
@i40e_get_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 1789, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"NVMUpdate read failed err=%d status=0x%x errno=%d module=%d offset=0x%x size=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i40e_get_eeprom\00", [16 x i8] zeroinitializer }, align 32
@i40e_get_eeprom._entry_ptr = internal global ptr @i40e_get_eeprom._entry, section ".printk_index", align 4
@i40e_get_eeprom._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 1805, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failed Acquiring NVM resource for read err=%d status=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@i40e_get_eeprom._entry_ptr.13 = internal global ptr @i40e_get_eeprom._entry.11, section ".printk_index", align 4
@i40e_get_eeprom._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.4, i32 1825, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"read NVM failed, invalid offset 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@i40e_get_eeprom._entry_ptr.16 = internal global ptr @i40e_get_eeprom._entry.14, section ".printk_index", align 4
@i40e_get_eeprom._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.4, i32 1831, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"read NVM failed, access, offset 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@i40e_get_eeprom._entry_ptr.19 = internal global ptr @i40e_get_eeprom._entry.17, section ".printk_index", align 4
@i40e_get_eeprom._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.4, i32 1836, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"read NVM failed offset %d err=%d status=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_get_eeprom._entry_ptr.22 = internal global ptr @i40e_get_eeprom._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@i40e_set_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1896, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"NVMUpdate write failed err=%d status=0x%x errno=%d module=%d offset=0x%x size=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i40e_set_eeprom\00", [16 x i8] zeroinitializer }, align 32
@i40e_set_eeprom._entry_ptr = internal global ptr @i40e_set_eeprom._entry, section ".printk_index", align 4
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid queue value, queue range is 0 - %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"tx-usecs-high is not used, please program rx-usecs-high\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid value, rx-usecs-high range is 0-%lu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"RX interrupt moderation cannot be changed if adaptive-rx is enabled.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid value, rx-usecs range is 0-8160\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"TX interrupt moderation cannot be changed if adaptive-tx is enabled.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid value, tx-usecs range is 0-8160\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Interrupt rate limit rounded down to %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Descriptors requested (Tx: %d / Rx: %d) out of range [%d-%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Changing Tx descriptor count from %d to %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Changing Rx descriptor count from %d to %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"To change autoneg please use: ethtool -s <dev> autoneg <on|off>\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Autoneg did not complete so changing settings may not result in an actual change.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Priority flow control enabled. Cannot set link flow control.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Set fc failed on the get_phy_capabilities call with err %s aq_err %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Set fc failed on the set_phy_config call with err %s aq_err %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Set fc failed on the get_link_info call with err %s aq_err %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"offline testing starting\0A\00", [38 x i8] zeroinitializer }, align 32
@i40e_diag_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 2585, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"Please take active VFs and Netqueues offline and restart the adapter before running NIC diagnostics\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i40e_diag_test\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@i40e_diag_test._entry_ptr = internal global ptr @i40e_diag_test._entry, section ".printk_index", align 4
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"online testing starting\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"testing finished\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link test\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"link query timed out, please retry test\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eeprom test\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"interrupt test\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register test\0A\00", [17 x i8] zeroinitializer }, align 32
@i40e_gstrings_test = internal constant { [4 x [32 x i8]], [32 x i8] } { [4 x [32 x i8]] [[32 x i8] c"Register test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Eeprom test    (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Interrupt test (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Link test   (on/offline)\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@i40e_gstrings_net_stats = internal constant { [11 x %struct.i40e_stats], [104 x i8] } { [11 x %struct.i40e_stats] [%struct.i40e_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 0 }, %struct.i40e_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 8 }, %struct.i40e_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 16 }, %struct.i40e_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 24 }, %struct.i40e_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 32 }, %struct.i40e_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 40 }, %struct.i40e_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 48 }, %struct.i40e_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 56 }, %struct.i40e_stats { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 72 }, %struct.i40e_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 80 }, %struct.i40e_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 96 }], [104 x i8] zeroinitializer }, align 32
@i40e_gstrings_misc_stats = internal constant { [12 x %struct.i40e_stats], [96 x i8] } { [12 x %struct.i40e_stats] [%struct.i40e_stats { [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2000 }, %struct.i40e_stats { [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2048 }, %struct.i40e_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2008 }, %struct.i40e_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2056 }, %struct.i40e_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2016 }, %struct.i40e_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2064 }, %struct.i40e_stats { [32 x i8] c"rx_unknown_protocol\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2032 }, %struct.i40e_stats { [32 x i8] c"tx_linearize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2200 }, %struct.i40e_stats { [32 x i8] c"tx_force_wb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2208 }, %struct.i40e_stats { [32 x i8] c"tx_busy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2192 }, %struct.i40e_stats { [32 x i8] c"rx_alloc_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2216 }, %struct.i40e_stats { [32 x i8] c"rx_pg_alloc_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2224 }], [96 x i8] zeroinitializer }, align 32
@i40e_gstrings_queue_stats = internal constant { [2 x %struct.i40e_stats], [48 x i8] } { [2 x %struct.i40e_stats] [%struct.i40e_stats { [32 x i8] c"%s-%u.packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 64 }, %struct.i40e_stats { [32 x i8] c"%s-%u.bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 72 }], [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@i40e_gstrings_veb_stats = internal constant { [12 x %struct.i40e_stats], [96 x i8] } { [12 x %struct.i40e_stats] [%struct.i40e_stats { [32 x i8] c"veb.rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 64 }, %struct.i40e_stats { [32 x i8] c"veb.tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 112 }, %struct.i40e_stats { [32 x i8] c"veb.rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 72 }, %struct.i40e_stats { [32 x i8] c"veb.tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 120 }, %struct.i40e_stats { [32 x i8] c"veb.rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 80 }, %struct.i40e_stats { [32 x i8] c"veb.tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 128 }, %struct.i40e_stats { [32 x i8] c"veb.rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 88 }, %struct.i40e_stats { [32 x i8] c"veb.tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 136 }, %struct.i40e_stats { [32 x i8] c"veb.rx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 96 }, %struct.i40e_stats { [32 x i8] c"veb.tx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 144 }, %struct.i40e_stats { [32 x i8] c"veb.tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 152 }, %struct.i40e_stats { [32 x i8] c"veb.rx_unknown_protocol\00\00\00\00\00\00\00\00\00", i32 8, i32 104 }], [96 x i8] zeroinitializer }, align 32
@i40e_gstrings_veb_tc_stats = internal constant { [4 x %struct.i40e_stats], [32 x i8] } { [4 x %struct.i40e_stats] [%struct.i40e_stats { [32 x i8] c"veb.tc_%u_tx_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 16 }, %struct.i40e_stats { [32 x i8] c"veb.tc_%u_tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 24 }, %struct.i40e_stats { [32 x i8] c"veb.tc_%u_rx_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 0 }, %struct.i40e_stats { [32 x i8] c"veb.tc_%u_rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 8 }], [32 x i8] zeroinitializer }, align 32
@i40e_gstrings_stats = internal constant { [55 x %struct.i40e_stats], [552 x i8] } { [55 x %struct.i40e_stats] [%struct.i40e_stats { [32 x i8] c"port.rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2080 }, %struct.i40e_stats { [32 x i8] c"port.tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2128 }, %struct.i40e_stats { [32 x i8] c"port.rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2088 }, %struct.i40e_stats { [32 x i8] c"port.tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2136 }, %struct.i40e_stats { [32 x i8] c"port.rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2096 }, %struct.i40e_stats { [32 x i8] c"port.tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2144 }, %struct.i40e_stats { [32 x i8] c"port.rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2104 }, %struct.i40e_stats { [32 x i8] c"port.tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2152 }, %struct.i40e_stats { [32 x i8] c"port.tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2168 }, %struct.i40e_stats { [32 x i8] c"port.rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2112 }, %struct.i40e_stats { [32 x i8] c"port.tx_dropped_link_down\00\00\00\00\00\00\00", i32 8, i32 2176 }, %struct.i40e_stats { [32 x i8] c"port.rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2184 }, %struct.i40e_stats { [32 x i8] c"port.illegal_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2192 }, %struct.i40e_stats { [32 x i8] c"port.mac_local_faults\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2208 }, %struct.i40e_stats { [32 x i8] c"port.mac_remote_faults\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2216 }, %struct.i40e_stats { [32 x i8] c"port.tx_timeout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 3520 }, %struct.i40e_stats { [32 x i8] c"port.rx_csum_bad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 3536 }, %struct.i40e_stats { [32 x i8] c"port.rx_length_errors\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2224 }, %struct.i40e_stats { [32 x i8] c"port.link_xon_rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2232 }, %struct.i40e_stats { [32 x i8] c"port.link_xoff_rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2240 }, %struct.i40e_stats { [32 x i8] c"port.link_xon_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2376 }, %struct.i40e_stats { [32 x i8] c"port.link_xoff_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2384 }, %struct.i40e_stats { [32 x i8] c"port.rx_size_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2584 }, %struct.i40e_stats { [32 x i8] c"port.rx_size_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2592 }, %struct.i40e_stats { [32 x i8] c"port.rx_size_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2600 }, %struct.i40e_stats { [32 x i8] c"port.rx_size_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2608 }, %struct.i40e_stats { [32 x i8] c"port.rx_size_1023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2616 }, %struct.i40e_stats { [32 x i8] c"port.rx_size_1522\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2624 }, %struct.i40e_stats { [32 x i8] c"port.rx_size_big\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2632 }, %struct.i40e_stats { [32 x i8] c"port.tx_size_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2672 }, %struct.i40e_stats { [32 x i8] c"port.tx_size_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2680 }, %struct.i40e_stats { [32 x i8] c"port.tx_size_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2688 }, %struct.i40e_stats { [32 x i8] c"port.tx_size_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2696 }, %struct.i40e_stats { [32 x i8] c"port.tx_size_1023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2704 }, %struct.i40e_stats { [32 x i8] c"port.tx_size_1522\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2712 }, %struct.i40e_stats { [32 x i8] c"port.tx_size_big\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2720 }, %struct.i40e_stats { [32 x i8] c"port.rx_undersize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2640 }, %struct.i40e_stats { [32 x i8] c"port.rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2648 }, %struct.i40e_stats { [32 x i8] c"port.rx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2656 }, %struct.i40e_stats { [32 x i8] c"port.rx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2664 }, %struct.i40e_stats { [32 x i8] c"port.VF_admin_queue_requests\00\00\00\00", i32 4, i32 3760 }, %struct.i40e_stats { [32 x i8] c"port.arq_overflows\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 3764 }, %struct.i40e_stats { [32 x i8] c"port.tx_hwtstamp_timeouts\00\00\00\00\00\00\00", i32 4, i32 4560 }, %struct.i40e_stats { [32 x i8] c"port.rx_hwtstamp_cleared\00\00\00\00\00\00\00\00", i32 4, i32 4568 }, %struct.i40e_stats { [32 x i8] c"port.tx_hwtstamp_skipped\00\00\00\00\00\00\00\00", i32 4, i32 4564 }, %struct.i40e_stats { [32 x i8] c"port.fdir_flush_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 1796 }, %struct.i40e_stats { [32 x i8] c"port.fdir_atr_match\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2744 }, %struct.i40e_stats { [32 x i8] c"port.fdir_atr_tunnel_match\00\00\00\00\00\00", i32 8, i32 2760 }, %struct.i40e_stats { [32 x i8] c"port.fdir_atr_status\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 2768 }, %struct.i40e_stats { [32 x i8] c"port.fdir_sb_match\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2752 }, %struct.i40e_stats { [32 x i8] c"port.fdir_sb_status\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 2772 }, %struct.i40e_stats { [32 x i8] c"port.tx_lpi_status\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 2776 }, %struct.i40e_stats { [32 x i8] c"port.rx_lpi_status\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 2780 }, %struct.i40e_stats { [32 x i8] c"port.tx_lpi_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2784 }, %struct.i40e_stats { [32 x i8] c"port.rx_lpi_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2792 }], [552 x i8] zeroinitializer }, align 32
@i40e_gstrings_pfc_stats = internal constant { [5 x %struct.i40e_stats], [56 x i8] } { [5 x %struct.i40e_stats] [%struct.i40e_stats { [32 x i8] c"port.tx_priority_%u_xon_tx\00\00\00\00\00\00", i32 8, i32 16 }, %struct.i40e_stats { [32 x i8] c"port.tx_priority_%u_xoff_tx\00\00\00\00\00", i32 8, i32 24 }, %struct.i40e_stats { [32 x i8] c"port.rx_priority_%u_xon_rx\00\00\00\00\00\00", i32 8, i32 0 }, %struct.i40e_stats { [32 x i8] c"port.rx_priority_%u_xoff_rx\00\00\00\00\00", i32 8, i32 8 }, %struct.i40e_stats { [32 x i8] c"port.rx_priority_%u_xon_2_xoff\00\00", i32 8, i32 32 }], [56 x i8] zeroinitializer }, align 32
@i40e_get_stat_strings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stat strings count mismatch!\00", [35 x i8] zeroinitializer }, align 32
@i40e_gstrings_priv_flags = internal constant { [12 x %struct.i40e_priv_flags], [128 x i8] } { [12 x %struct.i40e_priv_flags] [%struct.i40e_priv_flags { [32 x i8] c"MFP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 1024, i8 1 }, %struct.i40e_priv_flags { [32 x i8] c"total-port-shutdown\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 134217728, i8 1 }, %struct.i40e_priv_flags { [32 x i8] c"LinkPolling\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 16384, i8 0 }, %struct.i40e_priv_flags { [32 x i8] c"flow-director-atr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 512, i8 0 }, %struct.i40e_priv_flags { [32 x i8] c"veb-stats\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 8192, i8 0 }, %struct.i40e_priv_flags { [32 x i8] c"hw-atr-eviction\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 2048, i8 0 }, %struct.i40e_priv_flags { [32 x i8] c"link-down-on-close\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 524288, i8 0 }, %struct.i40e_priv_flags { [32 x i8] c"legacy-rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 65536, i8 0 }, %struct.i40e_priv_flags { [32 x i8] c"disable-source-pruning\00\00\00\00\00\00\00\00\00\00", i64 1048576, i8 0 }, %struct.i40e_priv_flags { [32 x i8] c"disable-fw-lldp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 16777216, i8 0 }, %struct.i40e_priv_flags { [32 x i8] c"rs-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 33554432, i8 0 }, %struct.i40e_priv_flags { [32 x i8] c"base-r-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 67108864, i8 0 }], [128 x i8] zeroinitializer }, align 32
@i40e_gl_gstrings_priv_flags = internal constant { [1 x %struct.i40e_priv_flags], [48 x i8] } { [1 x %struct.i40e_priv_flags] [%struct.i40e_priv_flags { [32 x i8] c"vf-true-promisc-support\00\00\00\00\00\00\00\00\00", i64 32768, i8 0 }], [48 x i8] zeroinitializer }, align 32
@i40e_get_ethtool_stats.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ethtool stats count mismatch!\00", [34 x i8] zeroinitializer }, align 32
@i40e_add_one_ethtool_stat.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unexpected stat size for %s\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@i40e_set_priv_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 5204, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device does not support changing FW LLDP\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i40e_set_priv_flags\00", [44 x i8] zeroinitializer }, align 32
@i40e_set_priv_flags._entry_ptr = internal global ptr @i40e_set_priv_flags._entry, section ".printk_index", align 4
@i40e_set_priv_flags._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.4, i32 5213, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Device does not support changing FEC configuration\0A\00", [44 x i8] zeroinitializer }, align 32
@i40e_set_priv_flags._entry_ptr.65 = internal global ptr @i40e_set_priv_flags._entry.63, section ".printk_index", align 4
@i40e_set_priv_flags._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.4, i32 5222, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@i40e_set_priv_flags._entry_ptr.67 = internal global ptr @i40e_set_priv_flags._entry.66, section ".printk_index", align 4
@i40e_set_priv_flags._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.62, ptr @.str.4, i32 5252, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"couldn't set switch config bits, err %s aq_err %s\0A\00", [45 x i8] zeroinitializer }, align 32
@i40e_set_priv_flags._entry_ptr.70 = internal global ptr @i40e_set_priv_flags._entry.68, section ".printk_index", align 4
@i40e_set_priv_flags._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.62, ptr @.str.4, i32 5272, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot change FEC config\0A\00", [38 x i8] zeroinitializer }, align 32
@i40e_set_priv_flags._entry_ptr.73 = internal global ptr @i40e_set_priv_flags._entry.71, section ".printk_index", align 4
@i40e_set_priv_flags._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.62, ptr @.str.4, i32 5278, ptr @.str.76, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"Setting link-down-on-close not supported on this port (because total-port-shutdown is enabled)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@i40e_set_priv_flags._entry_ptr.77 = internal global ptr @i40e_set_priv_flags._entry.74, section ".printk_index", align 4
@i40e_set_priv_flags._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.62, ptr @.str.4, i32 5286, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Turning on link-down-on-close flag may affect other partitions\0A\00", [32 x i8] zeroinitializer }, align 32
@i40e_set_priv_flags._entry_ptr.80 = internal global ptr @i40e_set_priv_flags._entry.78, section ".printk_index", align 4
@i40e_set_priv_flags._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.62, ptr @.str.4, i32 5302, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FW LLDP agent is already running\0A\00", [62 x i8] zeroinitializer }, align 32
@i40e_set_priv_flags._entry_ptr.83 = internal global ptr @i40e_set_priv_flags._entry.81, section ".printk_index", align 4
@i40e_set_priv_flags._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.62, ptr @.str.4, i32 5307, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Device configuration forbids SW from starting the LLDP agent.\0A\00", [33 x i8] zeroinitializer }, align 32
@i40e_set_priv_flags._entry_ptr.86 = internal global ptr @i40e_set_priv_flags._entry.84, section ".printk_index", align 4
@i40e_set_priv_flags._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.62, ptr @.str.4, i32 5311, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Stop FW LLDP agent command is still being processed, please try again in a second.\0A\00", [44 x i8] zeroinitializer }, align 32
@i40e_set_priv_flags._entry_ptr.89 = internal global ptr @i40e_set_priv_flags._entry.87, section ".printk_index", align 4
@i40e_set_priv_flags._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.62, ptr @.str.4, i32 5319, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Starting FW LLDP agent failed: error: %s, %s\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_set_priv_flags._entry_ptr.92 = internal global ptr @i40e_set_priv_flags._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Set phy config failed, err %s aq_err %s\0A\00", [55 x i8] zeroinitializer }, align 32
@i40e_set_fec_cfg.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.94, ptr @.str.95, ptr @.str.4, ptr @.str.96, i8 1, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i40e\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i40e_set_fec_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Updating link info failed with err %s aq_err %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Missing input set index for flow_type %d\0A\00", [54 x i8] zeroinitializer }, align 32
@i40e_set_rss_hash_opt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 3507, ptr @.str.76, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Change of RSS hash input set is not supported when MFP mode is enabled\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i40e_set_rss_hash_opt\00", [42 x i8] zeroinitializer }, align 32
@i40e_set_rss_hash_opt._entry_ptr = internal global ptr @i40e_set_rss_hash_opt._entry, section ".printk_index", align 4
@i40e_check_fdir_input_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.4, i32 4437, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Flexible data offset must be 2-byte aligned\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i40e_check_fdir_input_set\00", [38 x i8] zeroinitializer }, align 32
@i40e_check_fdir_input_set._entry_ptr = internal global ptr @i40e_check_fdir_input_set._entry, section ".printk_index", align 4
@i40e_check_fdir_input_set._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.4, i32 4446, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Flexible data must reside within first 64 bytes of the packet payload\0A\00", [57 x i8] zeroinitializer }, align 32
@i40e_check_fdir_input_set._entry_ptr.104 = internal global ptr @i40e_check_fdir_input_set._entry.102, section ".printk_index", align 4
@.str.105 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Input set change requested for %s flows:\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FLEX index %d: Offset -> %d\00", [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Cannot change Flow Director input sets while MFP is enabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Cannot change input set for %s flows until %d preexisting filters are removed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tcp4\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"udp4\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sctp4\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ip4\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tcp6\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"udp6\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sctp6\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ip6\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"L3 source address: %s -> %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"L3 destination address: %s -> %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"L4 source port: %s -> %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"L4 destination port: %s -> %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SCTP verification tag: %s -> %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FLEX index %d: %s -> %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  Current input set: %0llx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Requested input set: %0llx\0A\00", [36 x i8] zeroinitializer }, align 32
@i40e_disallow_matching_filters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.4, i32 4656, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Existing user defined filter %d already matches this flow.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i40e_disallow_matching_filters\00", [33 x i8] zeroinitializer }, align 32
@i40e_disallow_matching_filters._entry_ptr = internal global ptr @i40e_disallow_matching_filters._entry, section ".printk_index", align 4
@i40e_set_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.4, i32 4942, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Existing user defined filter %d assigns flow to queue %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i40e_set_channels\00", [46 x i8] zeroinitializer }, align 32
@i40e_set_channels._entry_ptr = internal global ptr @i40e_set_channels._entry, section ".printk_index", align 4
@i40e_set_channels._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.4, i32 4950, ptr @.str.76, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Existing filter rules must be deleted to reduce combined channel count to %d\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_set_channels._entry_ptr.134 = internal global ptr @i40e_set_channels._entry.132, section ".printk_index", align 4
@.str.135 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Module EEPROM memory read not supported. Please update the NVM image.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Cannot read module EEPROM memory. No module connected.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Module address swap to access page 0xA2 is not supported.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Module type unrecognized\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"advertise\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx-timer\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx-lpi\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EEE setting %s not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"WARNING: Link is up but PHY type 0x%x is not recognized, or incorrect cable is in use\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Changing settings is not supported on backplane.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Autoneg not supported on this phy\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Autoneg cannot be disabled on this phy\0A\00", [56 x i8] zeroinitializer }, align 32
@i40e_set_link_ksettings.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.94, ptr @.str.147, ptr @.str.4, ptr @.str.96, i8 1, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i40e_set_link_ksettings\00", [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Nothing changed, exiting without setting anything.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Setting FEC encoding not supported by firmware. Please update the NVM image.\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_set_fec_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.4, i32 1525, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported FEC mode: %d\00", [39 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i40e_set_fec_param\00", [45 x i8] zeroinitializer }, align 32
@i40e_set_fec_param._entry_ptr = internal global ptr @i40e_set_fec_param._entry, section ".printk_index", align 4
@switch.table.i40e_get_rxnfc = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2112, i32 1984, i32 2176, i32 2176, i32 2752, i32 2624, i32 2816, i32 2176, i32 2176, i32 2176, i32 2176, i32 2176, i32 2240, i32 2880], [40 x i8] zeroinitializer }, align 32
@switch.table.i40e_set_rxnfc = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.117, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.117, ptr @.str.117, ptr @.str.117, ptr @.str.117, ptr @.str.112, ptr @.str.116], [40 x i8] zeroinitializer }, align 32
@switch.table.i40e_set_rxnfc.152 = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.117, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.117, ptr @.str.117, ptr @.str.117, ptr @.str.117, ptr @.str.112, ptr @.str.116], [40 x i8] zeroinitializer }, align 32
@switch.table.i40e_get_link_ksettings = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1024, i32 128, i32 65600, i32 1024, i32 1024], [44 x i8] zeroinitializer }, align 32
@switch.table.i40e_get_link_ksettings.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\03\00\EF\05\05", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.156 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.157 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.158 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.159 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.160 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.161 = internal global [5 x i64] [i64 3, i64 16, i64 5514, i64 5515, i64 14286]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 13]
@__sancov_gen_cov_switch_values.163 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.164 = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.165 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@__sancov_gen_cov_switch_values.166 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.167 = internal global [7 x i64] [i64 5, i64 8, i64 5, i64 6, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.168 = internal global [5 x i64] [i64 3, i64 32, i64 42, i64 49, i64 50]
@__sancov_gen_cov_switch_values.169 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@__sancov_gen_cov_switch_values.170 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.172 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.173 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 33024]
@__sancov_gen_cov_switch_values.185 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.186 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.187 = internal global [6 x i64] [i64 4, i64 8, i64 5, i64 6, i64 7, i64 14]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 13, i64 17]
@__sancov_gen_cov_switch_values.189 = internal global [38 x i64] [i64 36, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 48, i64 49]
@__sancov_gen_cov_switch_values.190 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.191 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.192 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.193 = internal global [8 x i64] [i64 6, i64 16, i64 5504, i64 5505, i64 5511, i64 5512, i64 5514, i64 14286]
@__sancov_gen_cov_switch_values.194 = internal global [5 x i64] [i64 3, i64 16, i64 5514, i64 5515, i64 14286]
@__sancov_gen_cov_switch_values.195 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"i40e_ethtool_ops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5636, i32 33 }
@___asan_gen_.199 = private unnamed_addr constant [31 x i8] c"i40e_ethtool_recovery_mode_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5629, i32 33 }
@___asan_gen_.202 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 988, i32 14 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1002, i32 30 }
@___asan_gen_.209 = private unnamed_addr constant [42 x i8] c"../drivers/net/ethernet/intel/i40e/i40e.h\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1013, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 472, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1695, i32 23 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1543, i32 23 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1785, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1803, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1823, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1829, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1834, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1892, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2925, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2935, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2940, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2947, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2952, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2958, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2963, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2976, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1971, i32 8 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2022, i32 8 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2061, i32 8 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1622, i32 23 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1629, i32 23 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1634, i32 8 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1660, i32 23 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1666, i32 23 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1672, i32 23 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2579, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2584, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2627, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2640, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2494, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2497, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2526, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2541, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2515, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [19 x i8] c"i40e_gstrings_test\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 416, i32 19 }
@___asan_gen_.367 = private unnamed_addr constant [24 x i8] c"i40e_gstrings_net_stats\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 242, i32 32 }
@___asan_gen_.370 = private unnamed_addr constant [25 x i8] c"i40e_gstrings_misc_stats\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 285, i32 32 }
@___asan_gen_.373 = private unnamed_addr constant [26 x i8] c"i40e_gstrings_queue_stats\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 61, i32 32 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2387, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2389, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant [24 x i8] c"i40e_gstrings_veb_stats\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 256, i32 32 }
@___asan_gen_.385 = private unnamed_addr constant [27 x i8] c"i40e_gstrings_veb_tc_stats\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 278, i32 32 }
@___asan_gen_.388 = private unnamed_addr constant [20 x i8] c"i40e_gstrings_stats\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 310, i32 32 }
@___asan_gen_.391 = private unnamed_addr constant [24 x i8] c"i40e_gstrings_pfc_stats\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 378, i32 32 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2407, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [25 x i8] c"i40e_gstrings_priv_flags\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 437, i32 37 }
@___asan_gen_.400 = private unnamed_addr constant [28 x i8] c"i40e_gl_gstrings_priv_flags\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 459, i32 37 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2360, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 105, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 695, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 723, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5203, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5212, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5221, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5248, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5272, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5277, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5285, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5301, i32 6 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5306, i32 6 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5310, i32 6 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5314, i32 6 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1422, i32 9 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1435, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 3328, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 3506, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4436, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4445, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4515, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4519, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4528, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4542, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4015, i32 10 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4017, i32 10 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4019, i32 10 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4021, i32 10 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4023, i32 10 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4025, i32 10 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4027, i32 10 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4029, i32 10 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4031, i32 10 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4085, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4092, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4099, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4106, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4113, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4124, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4130, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4132, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4654, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4940, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 4948, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5362, i32 27 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5371, i32 27 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5399, i32 29 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5441, i32 27 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5547, i32 44 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5548, i32 25 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5549, i32 54 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 5556, i32 9 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 983, i32 8 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1183, i32 23 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1247, i32 25 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1266, i32 25 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1369, i32 4 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1375, i32 23 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1503, i32 22 }
@___asan_gen_.664 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.670 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.671 = private constant [50 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1524, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant [28 x i8] c"switch.table.i40e_get_rxnfc\00", align 1
@___asan_gen_.674 = private unnamed_addr constant [28 x i8] c"switch.table.i40e_set_rxnfc\00", align 1
@___asan_gen_.675 = private unnamed_addr constant [32 x i8] c"switch.table.i40e_set_rxnfc.152\00", align 1
@___asan_gen_.676 = private unnamed_addr constant [37 x i8] c"switch.table.i40e_get_link_ksettings\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [41 x i8] c"switch.table.i40e_get_link_ksettings.153\00", align 1
@llvm.compiler.used = appending global [190 x ptr] [ptr @i40e_check_fdir_input_set._entry, ptr @i40e_check_fdir_input_set._entry.102, ptr @i40e_check_fdir_input_set._entry_ptr, ptr @i40e_check_fdir_input_set._entry_ptr.104, ptr @i40e_diag_test._entry, ptr @i40e_diag_test._entry_ptr, ptr @i40e_disallow_matching_filters._entry, ptr @i40e_disallow_matching_filters._entry_ptr, ptr @i40e_get_eeprom._entry, ptr @i40e_get_eeprom._entry.11, ptr @i40e_get_eeprom._entry.14, ptr @i40e_get_eeprom._entry.17, ptr @i40e_get_eeprom._entry.20, ptr @i40e_get_eeprom._entry_ptr, ptr @i40e_get_eeprom._entry_ptr.13, ptr @i40e_get_eeprom._entry_ptr.16, ptr @i40e_get_eeprom._entry_ptr.19, ptr @i40e_get_eeprom._entry_ptr.22, ptr @i40e_partition_setting_complaint._entry, ptr @i40e_partition_setting_complaint._entry_ptr, ptr @i40e_set_channels._entry, ptr @i40e_set_channels._entry.132, ptr @i40e_set_channels._entry_ptr, ptr @i40e_set_channels._entry_ptr.134, ptr @i40e_set_eeprom._entry, ptr @i40e_set_eeprom._entry_ptr, ptr @i40e_set_fec_param._entry, ptr @i40e_set_fec_param._entry_ptr, ptr @i40e_set_priv_flags._entry, ptr @i40e_set_priv_flags._entry.63, ptr @i40e_set_priv_flags._entry.66, ptr @i40e_set_priv_flags._entry.68, ptr @i40e_set_priv_flags._entry.71, ptr @i40e_set_priv_flags._entry.74, ptr @i40e_set_priv_flags._entry.78, ptr @i40e_set_priv_flags._entry.81, ptr @i40e_set_priv_flags._entry.84, ptr @i40e_set_priv_flags._entry.87, ptr @i40e_set_priv_flags._entry.90, ptr @i40e_set_priv_flags._entry_ptr, ptr @i40e_set_priv_flags._entry_ptr.65, ptr @i40e_set_priv_flags._entry_ptr.67, ptr @i40e_set_priv_flags._entry_ptr.70, ptr @i40e_set_priv_flags._entry_ptr.73, ptr @i40e_set_priv_flags._entry_ptr.77, ptr @i40e_set_priv_flags._entry_ptr.80, ptr @i40e_set_priv_flags._entry_ptr.83, ptr @i40e_set_priv_flags._entry_ptr.86, ptr @i40e_set_priv_flags._entry_ptr.89, ptr @i40e_set_priv_flags._entry_ptr.92, ptr @i40e_set_rss_hash_opt._entry, ptr @i40e_set_rss_hash_opt._entry_ptr, ptr @i40e_ethtool_ops, ptr @i40e_ethtool_recovery_mode_ops, ptr @i40e_nvm_version_str.buf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @i40e_gstrings_test, ptr @i40e_gstrings_net_stats, ptr @i40e_gstrings_misc_stats, ptr @i40e_gstrings_queue_stats, ptr @.str.53, ptr @.str.54, ptr @i40e_gstrings_veb_stats, ptr @i40e_gstrings_veb_tc_stats, ptr @i40e_gstrings_stats, ptr @i40e_gstrings_pfc_stats, ptr @.str.55, ptr @i40e_gstrings_priv_flags, ptr @i40e_gl_gstrings_priv_flags, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @switch.table.i40e_get_rxnfc, ptr @switch.table.i40e_set_rxnfc, ptr @switch.table.i40e_set_rxnfc.152, ptr @switch.table.i40e_get_link_ksettings, ptr @switch.table.i40e_get_link_ksettings.153], section "llvm.metadata"
@0 = internal global [164 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ethtool_recovery_mode_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvm_version_str.buf to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_partition_setting_complaint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 161, i32 224, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_get_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_get_eeprom._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_get_eeprom._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_get_eeprom._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_get_eeprom._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_diag_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_gstrings_test to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_gstrings_net_stats to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_gstrings_misc_stats to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_gstrings_queue_stats to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_gstrings_veb_stats to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_gstrings_veb_tc_stats to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_gstrings_stats to i32), i32 2200, i32 2752, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_gstrings_pfc_stats to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_gstrings_priv_flags to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_gl_gstrings_priv_flags to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_priv_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_priv_flags._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_priv_flags._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_priv_flags._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_priv_flags._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_priv_flags._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_priv_flags._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_priv_flags._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_priv_flags._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_priv_flags._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_priv_flags._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_rss_hash_opt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_check_fdir_input_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_check_fdir_input_set._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_disallow_matching_filters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_channels._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_set_fec_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i40e_get_rxnfc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i40e_set_rxnfc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i40e_set_rxnfc.152 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i40e_get_link_ksettings to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i40e_get_link_ksettings.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @i40e_set_ethtool_ops(ptr nocapture noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %arrayidx.i = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool.not, ptr @i40e_ethtool_ops, ptr @i40e_ethtool_recovery_mode_ops
  %7 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spec.select, ptr %7, align 16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @i40e_driver_name, i32 noundef 32) #21
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %oem_ver.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 5, i32 6
  %4 = ptrtoint ptr %oem_ver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oem_ver.i, align 8
  %eetrack.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 5, i32 5
  %6 = ptrtoint ptr %eetrack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eetrack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i = icmp eq i32 %7, -1
  %shr.i = lshr i32 %5, 24
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %and.i = lshr i32 %5, 16
  %conv7.i = and i32 %and.i, 255
  %conv8.i = and i32 %5, 65535
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @i40e_nvm_version_str.buf, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %shr.i, i32 noundef %conv7.i, i32 noundef %conv8.i) #21
  br label %i40e_nvm_version_str.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %shr11.i = lshr i32 %5, 8
  %version.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 5, i32 4
  %8 = ptrtoint ptr %version.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %version.i, align 8
  %conv17.i = zext i16 %9 to i32
  %10 = lshr i32 %conv17.i, 12
  %and23.i = and i32 %conv17.i, 255
  %conv28.i = and i32 %shr11.i, 65535
  %conv29.i = and i32 %5, 255
  %call30.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @i40e_nvm_version_str.buf, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %10, i32 noundef %and23.i, i32 noundef %7, i32 noundef %shr.i, i32 noundef %conv28.i, i32 noundef %conv29.i) #21
  br label %i40e_nvm_version_str.exit

i40e_nvm_version_str.exit:                        ; preds = %if.else.i, %if.then.i
  %call5 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @i40e_nvm_version_str.buf, i32 noundef 32) #21
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %i40e_nvm_version_str.exit.pci_name.exit_crit_edge

i40e_nvm_version_str.exit.pci_name.exit_crit_edge: ; preds = %i40e_nvm_version_str.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %i40e_nvm_version_str.exit
  call void @__sanitizer_cov_trace_pc() #23
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %i40e_nvm_version_str.exit.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %i40e_nvm_version_str.exit.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call8 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #21
  %n_priv_flags = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 7
  %17 = ptrtoint ptr %n_priv_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12, ptr %n_priv_flags, align 4
  %pf_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 17
  %18 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pf_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp = icmp eq i8 %19, 0
  %spec.store.select = select i1 %cmp, i32 13, i32 12
  %20 = ptrtoint ptr %n_priv_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.store.select, ptr %n_priv_flags, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_regs_len(ptr nocapture noundef readnone %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @i40e_reg_list to i32))
  %0 = load i32, ptr @i40e_reg_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not5 = icmp eq i32 %0, 0
  br i1 %cmp.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %reg_count.06 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %elements = getelementptr [0 x %struct.i40e_diag_reg_test_info], ptr @i40e_reg_list, i32 0, i32 %i.07, i32 2
  %1 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %elements, align 4
  %add = add i32 %2, %reg_count.06
  %inc = add i32 %i.07, 1
  %arrayidx = getelementptr [0 x %struct.i40e_diag_reg_test_info], ptr @i40e_reg_list, i32 0, i32 %inc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %phi.bo = shl i32 %add, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %reg_count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  ret i32 %reg_count.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_get_regs(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %version, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @i40e_reg_list to i32))
  %5 = load i32, ptr @i40e_reg_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not25 = icmp eq i32 %5, 0
  br i1 %cmp.not25, label %entry.for.end15_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  br label %for.cond2.preheader

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end15

for.cond2.preheader:                              ; preds = %for.inc13.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %arrayidx29 = phi ptr [ %arrayidx, %for.inc13.for.cond2.preheader_crit_edge ], [ @i40e_reg_list, %entry.for.cond2.preheader_crit_edge ]
  %i.027 = phi i32 [ %inc14, %for.inc13.for.cond2.preheader_crit_edge ], [ 0, %entry.for.cond2.preheader_crit_edge ]
  %ri.026 = phi i32 [ %ri.1.lcssa, %for.inc13.for.cond2.preheader_crit_edge ], [ 0, %entry.for.cond2.preheader_crit_edge ]
  %elements = getelementptr [0 x %struct.i40e_diag_reg_test_info], ptr @i40e_reg_list, i32 0, i32 %i.027, i32 2
  %6 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elements, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp422.not = icmp eq i32 %7, 0
  br i1 %cmp422.not, label %for.cond2.preheader.for.inc13_crit_edge, label %for.body5.lr.ph

for.cond2.preheader.for.inc13_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc13

for.body5.lr.ph:                                  ; preds = %for.cond2.preheader
  %stride = getelementptr [0 x %struct.i40e_diag_reg_test_info], ptr @i40e_reg_list, i32 0, i32 %i.027, i32 3
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.lr.ph
  %j.024 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc12, %for.body5.for.body5_crit_edge ]
  %ri.123 = phi i32 [ %ri.026, %for.body5.lr.ph ], [ %inc, %for.body5.for.body5_crit_edge ]
  %8 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx29, align 4
  %10 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stride, align 4
  %mul = mul i32 %11, %j.024
  %add = add i32 %mul, %9
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #21, !srcloc !318
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #21, !srcloc !319
  %inc = add i32 %ri.123, 1
  %arrayidx11 = getelementptr i32, ptr %p, i32 %ri.123
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx11, align 4
  %inc12 = add nuw i32 %j.024, 1
  %17 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %elements, align 4
  %cmp4 = icmp ult i32 %inc12, %18
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.inc13_crit_edge

for.body5.for.inc13_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc13

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body5

for.inc13:                                        ; preds = %for.body5.for.inc13_crit_edge, %for.cond2.preheader.for.inc13_crit_edge
  %ri.1.lcssa = phi i32 [ %ri.026, %for.cond2.preheader.for.inc13_crit_edge ], [ %inc, %for.body5.for.inc13_crit_edge ]
  %inc14 = add i32 %i.027, 1
  %arrayidx = getelementptr [0 x %struct.i40e_diag_reg_test_info], ptr @i40e_reg_list, i32 0, i32 %inc14
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %20, 0
  br i1 %cmp.not, label %for.inc13.for.end15_crit_edge, label %for.inc13.for.cond2.preheader_crit_edge

for.inc13.for.cond2.preheader_crit_edge:          ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond2.preheader

for.inc13.for.end15_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end15

for.end15:                                        ; preds = %for.inc13.for.end15_crit_edge, %entry.for.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %wol) #4 align 64 {
entry:
  %wol_nvm_bits = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wol_nvm_bits) #21
  %4 = ptrtoint ptr %wol_nvm_bits to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %wol_nvm_bits, align 2, !annotation !320
  %call2 = call i32 @i40e_read_nvm_word(ptr noundef %hw1, i16 noundef zeroext 25, ptr noundef nonnull %wol_nvm_bits) #21
  %port = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 12
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port, align 1
  %conv = zext i8 %6 to i32
  %shl = shl nuw i32 1, %conv
  %7 = ptrtoint ptr %wol_nvm_bits to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %wol_nvm_bits, align 2
  %conv3 = zext i16 %8 to i32
  %and = and i32 %shl, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %partition_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 19
  %9 = ptrtoint ptr %partition_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %partition_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp.not = icmp eq i16 %10, 1
  br i1 %cmp.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %11 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %supported, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  %supported6 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %12 = ptrtoint ptr %supported6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %supported6, align 4
  %wol_en = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 22
  %13 = ptrtoint ptr %wol_en to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wol_en, align 1, !range !321
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  %cond = select i1 %tobool7.not, i32 0, i32 32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cond.sink = phi i32 [ %cond, %if.else ], [ 0, %if.then ]
  %wolopts9 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %15 = ptrtoint ptr %wolopts9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond.sink, ptr %wolopts9, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wol_nvm_bits) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %wol) #4 align 64 {
entry:
  %wol_nvm_bits = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw3 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wol_nvm_bits) #21
  %4 = ptrtoint ptr %wol_nvm_bits to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %wol_nvm_bits, align 2, !annotation !320
  %partition_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 19
  %5 = ptrtoint ptr %partition_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %partition_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp.not = icmp eq i16 %6, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.2) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %vsi5 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 74
  %9 = ptrtoint ptr %vsi5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsi5, align 8
  %lan_vsi = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 71
  %11 = ptrtoint ptr %lan_vsi to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %lan_vsi, align 8
  %idxprom = zext i16 %12 to i32
  %arrayidx = getelementptr ptr, ptr %10, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp6.not = icmp eq ptr %1, %14
  br i1 %cmp6.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @i40e_read_nvm_word(ptr noundef %hw3, i16 noundef zeroext 25, ptr noundef nonnull %wol_nvm_bits) #21
  %port = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 12
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port, align 1
  %conv11 = zext i8 %16 to i32
  %shl = shl nuw i32 1, %conv11
  %17 = ptrtoint ptr %wol_nvm_bits to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %wol_nvm_bits, align 2
  %conv12 = zext i16 %18 to i32
  %and = and i32 %shl, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %19 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wolopts, align 4
  %and15 = and i32 %20, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %wol_en = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 22
  %21 = ptrtoint ptr %wol_en to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wol_en, align 1, !range !321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22 = icmp ne i32 %20, 0
  %23 = zext i1 %tobool22 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %23)
  %cmp24.not = icmp eq i8 %22, %23
  br i1 %cmp24.not, label %if.end18.cleanup_crit_edge, label %if.then26

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #23
  %24 = ptrtoint ptr %wol_en to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %wol_en, align 1
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %call36 = call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool22) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end9.cleanup_crit_edge ], [ -95, %if.end14.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wol_nvm_bits) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_msglevel(ptr noundef %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %debug_mask1 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 39
  %4 = ptrtoint ptr %debug_mask1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.7, i32 noundef %5) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %msg_enable = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 46
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @i40e_set_msglevel(ptr nocapture noundef readonly %netdev, i32 noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %data)
  %tobool.not = icmp ult i32 %data, 268435456
  %msg_enable = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 46
  %debug_mask = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 39
  %msg_enable.sink = select i1 %tobool.not, ptr %msg_enable, ptr %debug_mask
  %4 = ptrtoint ptr %msg_enable.sink to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %data, ptr %msg_enable.sink, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_nway_reset(ptr noundef %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %link_info2 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %link_info2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_info2, align 8
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool = icmp ne i8 %6, 0
  %call4 = tail call i32 @i40e_aq_set_link_restart_an(ptr noundef %hw1, i1 noundef zeroext %tobool, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call6 = tail call ptr @i40e_stat_str(ptr noundef %hw1, i32 noundef %call4) #21
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %7 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %asq_last_status, align 8
  %call7 = tail call ptr @i40e_aq_str(ptr noundef %hw1, i32 noundef %8) #21
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.8, ptr noundef %call6, ptr noundef %call7) #24
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_eeprom_len(ptr nocapture noundef readonly %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %mac = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 779396
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #21, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #21, !srcloc !322
  %9 = and i32 %8, -1073676288
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %shr = lshr exact i32 %10, 6
  %mul = shl i32 65536, %shr
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ 6004736, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_eeprom(ptr nocapture noundef readonly %netdev, ptr noundef %eeprom, ptr noundef %bytes) #4 align 64 {
entry:
  %errno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %len4 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %4 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 8
  %device_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 7
  %magic6 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %6 = ptrtoint ptr %magic6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.if.end39_crit_edge, label %land.lhs.true

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vendor_id, align 2
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device_id, align 8
  %conv5 = zext i16 %11 to i32
  %shl = shl nuw i32 %conv5, 16
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %or)
  %cmp8.not = icmp eq i32 %7, %or
  br i1 %cmp8.not, label %land.lhs.true.if.end39_crit_edge, label %if.then10

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end39

if.then10:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %errno) #21
  %12 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %errno, align 4
  %shr = lshr i32 %7, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv5)
  %cmp14.not = icmp eq i32 %shr, %conv5
  br i1 %cmp14.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #23
  %13 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -22, ptr %errno, align 4
  br label %if.end27

if.else:                                          ; preds = %if.then10
  %state = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.else.if.then23_crit_edge

if.else.if.then23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.else
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state, align 4
  %19 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %if.else24, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %if.else.if.then23_crit_edge
  %20 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -16, ptr %errno, align 4
  br label %if.end27

if.else24:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  %call25 = call i32 @i40e_nvmupd_command(ptr noundef %hw1, ptr noundef %eeprom, ptr noundef %bytes, ptr noundef nonnull %errno) #21
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.then23, %if.then16
  %ret_val.0 = phi i32 [ 0, %if.then16 ], [ 0, %if.then23 ], [ %call25, %if.else24 ]
  %21 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %errno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool28.not = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %tobool30.not = icmp eq i32 %ret_val.0, 0
  %or.cond = select i1 %tobool28.not, i1 %tobool30.not, i1 false
  br i1 %or.cond, label %if.end27.if.end38_crit_edge, label %land.lhs.true31

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end38

land.lhs.true31:                                  ; preds = %if.end27
  %debug_mask = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 39
  %23 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_mask, align 8
  %and = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %land.lhs.true31.if.end38_crit_edge, label %do.end

land.lhs.true31.if.end38_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end38

do.end:                                           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #23
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %27 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %asq_last_status, align 8
  %29 = ptrtoint ptr %magic6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %magic6, align 4
  %conv36 = and i32 %30, 255
  %offset37 = getelementptr inbounds %struct.i40e_nvm_access, ptr %eeprom, i32 0, i32 2
  %31 = ptrtoint ptr %offset37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset37, align 4
  %33 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len4, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %ret_val.0, i32 noundef %28, i32 noundef %22, i32 noundef %conv36, i32 noundef %32, i32 noundef %34) #24
  br label %if.end38

if.end38:                                         ; preds = %do.end, %land.lhs.true31.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  %35 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %errno, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errno) #21
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %if.end.if.end39_crit_edge
  %37 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vendor_id, align 2
  %conv41 = zext i16 %38 to i32
  %39 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %device_id, align 8
  %conv43 = zext i16 %40 to i32
  %shl44 = shl nuw i32 %conv43, 16
  %or45 = or i32 %shl44, %conv41
  %41 = ptrtoint ptr %magic6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or45, ptr %magic6, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #25
  %tobool49.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool49.not, label %if.end39.cleanup_crit_edge, label %if.end51

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end51:                                         ; preds = %if.end39
  %call52 = tail call i32 @i40e_acquire_nvm(ptr noundef %hw1, i32 noundef 1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end62, label %do.end57

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #23
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %asq_last_status61 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %44 = ptrtoint ptr %asq_last_status61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %asq_last_status61, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev59, ptr noundef nonnull @.str.12, i32 noundef %call52, i32 noundef %45) #24
  br label %free_buff

if.end62:                                         ; preds = %if.end51
  %46 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len4, align 4
  %div197 = lshr i32 %47, 12
  %rem = and i32 %47, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool66.not = icmp ne i32 %rem, 0
  %cond = zext i1 %tobool66.not to i32
  %add = add nuw nsw i32 %div197, %cond
  %conv70 = and i32 %add, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv70)
  %cmp71201.not = icmp eq i32 %conv70, 0
  br i1 %cmp71201.not, label %if.end62.for.end_crit_edge, label %for.body.lr.ph

if.end62.for.end_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end62
  %sub = add nsw i32 %conv70, -1
  %offset82 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %mul.neg = mul nsw i32 %sub, -4096
  br label %for.body

for.cond:                                         ; preds = %if.end81
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv70
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %last.0.off0204 = phi i1 [ false, %for.body.lr.ph ], [ %last.1.off0, %for.cond.for.body_crit_edge ]
  %len.0202 = phi i32 [ 4096, %for.body.lr.ph ], [ %len.1, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %indvars.iv)
  %cmp75 = icmp eq i32 %sub, %indvars.iv
  br i1 %cmp75, label %if.then77, label %for.body.if.end81_crit_edge

for.body.if.end81_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end81

if.then77:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %48 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len4, align 4
  %sub80 = add i32 %49, %mul.neg
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %for.body.if.end81_crit_edge
  %len.1 = phi i32 [ %sub80, %if.then77 ], [ %len.0202, %for.body.if.end81_crit_edge ]
  %last.1.off0 = phi i1 [ true, %if.then77 ], [ %last.0.off0204, %for.body.if.end81_crit_edge ]
  %50 = ptrtoint ptr %offset82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset82, align 4
  %mul84 = shl nuw nsw i32 %indvars.iv, 12
  %add85 = add i32 %51, %mul84
  %conv86 = trunc i32 %len.1 to i16
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %mul84
  %call90 = tail call i32 @i40e_aq_read_nvm(ptr noundef %hw1, i8 noundef zeroext 0, i32 noundef %add85, i16 noundef zeroext %conv86, ptr noundef %add.ptr, i1 noundef zeroext %last.1.off0, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %for.cond, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %if.end81
  %asq_last_status94 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %52 = ptrtoint ptr %asq_last_status94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %asq_last_status94, align 8
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %53, label %do.end121.critedge [
    i32 1, label %do.end100
    i32 10, label %do.end113
  ]

do.end100:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #23
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 8
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev102, ptr noundef nonnull @.str.15, i32 noundef %add85) #24
  br label %for.end

do.end113:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #23
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 8
  %dev115 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev115, ptr noundef nonnull @.str.18, i32 noundef %add85) #24
  br label %for.end

do.end121.critedge:                               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #23
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 8
  %dev123 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev123, ptr noundef nonnull @.str.21, i32 noundef %add85, i32 noundef %call90, i32 noundef %53) #24
  br label %for.end

for.end:                                          ; preds = %do.end121.critedge, %do.end113, %do.end100, %for.cond.for.end_crit_edge, %if.end62.for.end_crit_edge
  %ret_val.2 = phi i32 [ %call90, %do.end100 ], [ %call90, %do.end113 ], [ %call90, %do.end121.critedge ], [ 0, %if.end62.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  tail call void @i40e_release_nvm(ptr noundef %hw1) #21
  %61 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len4, align 4
  %63 = call ptr @memcpy(ptr %bytes, ptr %call9.i.i, i32 %62)
  br label %free_buff

free_buff:                                        ; preds = %for.end, %do.end57
  %ret_val.3 = phi i32 [ %call52, %do.end57 ], [ %ret_val.2, %for.end ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #21
  br label %cleanup

cleanup:                                          ; preds = %free_buff, %if.end39.cleanup_crit_edge, %if.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %36, %if.end38 ], [ %ret_val.3, %free_buff ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_eeprom(ptr nocapture noundef readonly %netdev, ptr noundef %eeprom, ptr noundef %bytes) #4 align 64 {
entry:
  %errno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %errno) #21
  %4 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %errno, align 4
  %vendor_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor_id, align 2
  %conv = zext i16 %6 to i32
  %device_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 7
  %7 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device_id, align 8
  %conv4 = zext i16 %8 to i32
  %shl = shl nuw i32 %conv4, 16
  %or = or i32 %shl, %conv
  %magic5 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %9 = ptrtoint ptr %magic5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %magic5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %or)
  %cmp = icmp eq i32 %10, %or
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %11 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -95, ptr %errno, align 4
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp ne i32 %10, 0
  %shr = lshr i32 %10, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv4)
  %cmp11.not = icmp eq i32 %shr, %conv4
  %or.cond = select i1 %tobool.not, i1 %cmp11.not, i1 false
  br i1 %or.cond, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  %12 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -22, ptr %errno, align 4
  br label %if.end26

if.else14:                                        ; preds = %if.else
  %state = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state, align 4
  %15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %if.else14.if.then22_crit_edge

if.else14.if.then22_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then22

lor.lhs.false17:                                  ; preds = %if.else14
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state, align 4
  %18 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not = icmp eq i32 %18, 0
  br i1 %tobool21.not, label %if.else23, label %lor.lhs.false17.if.then22_crit_edge

lor.lhs.false17.if.then22_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false17.if.then22_crit_edge, %if.else14.if.then22_crit_edge
  %19 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -16, ptr %errno, align 4
  br label %if.end26

if.else23:                                        ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #23
  %call24 = call i32 @i40e_nvmupd_command(ptr noundef %hw1, ptr noundef %eeprom, ptr noundef %bytes, ptr noundef nonnull %errno) #21
  br label %if.end26

if.end26:                                         ; preds = %if.else23, %if.then22, %if.then13, %if.then
  %ret_val.0 = phi i32 [ 0, %if.then ], [ 0, %if.then13 ], [ 0, %if.then22 ], [ %call24, %if.else23 ]
  %20 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %errno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool27.not = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %tobool29.not = icmp eq i32 %ret_val.0, 0
  %or.cond51 = select i1 %tobool27.not, i1 %tobool29.not, i1 false
  br i1 %or.cond51, label %if.end26.if.end35_crit_edge, label %land.lhs.true

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end26
  %debug_mask = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 39
  %22 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_mask, align 8
  %and = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %land.lhs.true.if.end35_crit_edge, label %do.end

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %26 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %asq_last_status, align 8
  %28 = ptrtoint ptr %magic5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %magic5, align 4
  %conv34 = and i32 %29, 255
  %offset = getelementptr inbounds %struct.i40e_nvm_access, ptr %eeprom, i32 0, i32 2
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset, align 4
  %data_size = getelementptr inbounds %struct.i40e_nvm_access, ptr %eeprom, i32 0, i32 3
  %32 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_size, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %ret_val.0, i32 noundef %27, i32 noundef %21, i32 noundef %conv34, i32 noundef %31, i32 noundef %33) #24
  br label %if.end35

if.end35:                                         ; preds = %do.end, %land.lhs.true.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  %34 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %errno, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errno) #21
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i40e_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %work_limit.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %work_limit.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %work_limit.i, align 4
  %conv.i = zext i16 %3 to i32
  %tx_max_coalesced_frames_irq.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 8
  %4 = ptrtoint ptr %tx_max_coalesced_frames_irq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv.i, ptr %tx_max_coalesced_frames_irq.i, align 4
  %5 = load i16, ptr %work_limit.i, align 4
  %conv3.i = zext i16 %5 to i32
  %rx_max_coalesced_frames_irq.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 4
  %6 = ptrtoint ptr %rx_max_coalesced_frames_irq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv3.i, ptr %rx_max_coalesced_frames_irq.i, align 4
  %rx_rings.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_rings.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tx_rings.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_rings.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %itr_setting.i = getelementptr inbounds %struct.i40e_ring, ptr %10, i32 0, i32 10
  %15 = ptrtoint ptr %itr_setting.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %itr_setting.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %tobool.not.i = icmp sgt i16 %16, -1
  br i1 %tobool.not.i, label %entry.if.end13.i_crit_edge, label %if.then12.i

entry.if.end13.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end13.i

if.then12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %use_adaptive_rx_coalesce.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %17 = ptrtoint ptr %use_adaptive_rx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %use_adaptive_rx_coalesce.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %entry.if.end13.i_crit_edge
  %itr_setting14.i = getelementptr inbounds %struct.i40e_ring, ptr %14, i32 0, i32 10
  %18 = ptrtoint ptr %itr_setting14.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %itr_setting14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %tobool17.not.i = icmp sgt i16 %19, -1
  br i1 %tobool17.not.i, label %if.end13.i.__i40e_get_coalesce.exit_crit_edge, label %if.then18.i

if.end13.i.__i40e_get_coalesce.exit_crit_edge:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %__i40e_get_coalesce.exit

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #23
  %use_adaptive_tx_coalesce.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %20 = ptrtoint ptr %use_adaptive_tx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %use_adaptive_tx_coalesce.i, align 4
  br label %__i40e_get_coalesce.exit

__i40e_get_coalesce.exit:                         ; preds = %if.then18.i, %if.end13.i.__i40e_get_coalesce.exit_crit_edge
  %21 = ptrtoint ptr %itr_setting.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %itr_setting.i, align 4
  %23 = and i16 %22, 32767
  %and22.i = zext i16 %23 to i32
  %rx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %24 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and22.i, ptr %rx_coalesce_usecs.i, align 4
  %25 = ptrtoint ptr %itr_setting14.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %itr_setting14.i, align 4
  %27 = and i16 %26, 32767
  %and25.i = zext i16 %27 to i32
  %tx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %28 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and25.i, ptr %tx_coalesce_usecs.i, align 4
  %int_rate_limit.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 26
  %29 = ptrtoint ptr %int_rate_limit.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %int_rate_limit.i, align 2
  %conv26.i = zext i16 %30 to i32
  %rx_coalesce_usecs_high.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 18
  %31 = ptrtoint ptr %rx_coalesce_usecs_high.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv26.i, ptr %rx_coalesce_usecs_high.i, align 4
  %32 = load i16, ptr %int_rate_limit.i, align 2
  %conv28.i = zext i16 %32 to i32
  %tx_coalesce_usecs_high.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 20
  %33 = ptrtoint ptr %tx_coalesce_usecs_high.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv28.i, ptr %tx_coalesce_usecs_high.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_coalesce(ptr noundef %netdev, ptr nocapture noundef %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__i40e_set_coalesce(ptr noundef %netdev, ptr noundef %ec, i32 noundef -1)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @i40e_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %vsi2 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 74
  %4 = ptrtoint ptr %vsi2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsi2, align 8
  %lan_vsi = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 71
  %6 = ptrtoint ptr %lan_vsi to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %lan_vsi, align 8
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr ptr, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %10 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %11 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4096, ptr %tx_max_pending, align 4
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 2
  %12 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rx_mini_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 3
  %13 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rx_jumbo_max_pending, align 4
  %rx_rings = getelementptr inbounds %struct.i40e_vsi, ptr %9, i32 0, i32 20
  %14 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_rings, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %count = getelementptr inbounds %struct.i40e_ring, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %count, align 2
  %conv = zext i16 %19 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %20 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %rx_pending, align 4
  %tx_rings = getelementptr inbounds %struct.i40e_vsi, ptr %9, i32 0, i32 21
  %21 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_rings, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %count5 = getelementptr inbounds %struct.i40e_ring, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %count5 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %count5, align 2
  %conv6 = zext i16 %26 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %27 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv6, ptr %tx_pending, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %28 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %rx_mini_pending, align 4
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %29 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %rx_jumbo_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %4 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup267_crit_edge

entry.cleanup267_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup267

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.cleanup267_crit_edge

lor.lhs.false.cleanup267_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup267

if.end:                                           ; preds = %lor.lhs.false
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %8 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_pending, align 4
  %10 = add i32 %9, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4033, i32 %10)
  %11 = icmp ult i32 %10, -4033
  br i1 %11, label %if.end.if.then14_crit_edge, label %lor.lhs.false9

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then14

lor.lhs.false9:                                   ; preds = %if.end
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %12 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_pending, align 4
  %14 = add i32 %13, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4033, i32 %14)
  %15 = icmp ult i32 %14, -4033
  br i1 %15, label %lor.lhs.false9.if.then14_crit_edge, label %if.end17

lor.lhs.false9.if.then14_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false9.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %rx_pending16 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %16 = ptrtoint ptr %rx_pending16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_pending16, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.33, i32 noundef %9, i32 noundef %17, i32 noundef 64, i32 noundef 4096) #24
  br label %cleanup267

if.end17:                                         ; preds = %lor.lhs.false9
  %add = add nuw nsw i32 %9, 31
  %and = and i32 %add, -32
  %add20 = add nuw nsw i32 %13, 31
  %and21 = and i32 %add20, -32
  %tx_rings22 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 21
  %18 = ptrtoint ptr %tx_rings22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_rings22, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %count = getelementptr inbounds %struct.i40e_ring, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count, align 2
  %conv = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp23 = icmp eq i32 %and, %conv
  br i1 %cmp23, label %land.lhs.true, label %if.end17.if.end32_crit_edge

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end17
  %rx_rings25 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 20
  %24 = ptrtoint ptr %rx_rings25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_rings25, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %count27 = getelementptr inbounds %struct.i40e_ring, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %count27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count27, align 2
  %conv28 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %conv28)
  %cmp29 = icmp eq i32 %and21, %conv28
  br i1 %cmp29, label %land.lhs.true.cleanup267_crit_edge, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32

land.lhs.true.cleanup267_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup267

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %if.end17.if.end32_crit_edge
  %call33 = tail call zeroext i1 @i40e_xsk_any_rx_ring_enabled(ptr noundef %1) #21
  br i1 %call33, label %if.end32.cleanup267_crit_edge, label %while.cond.preheader

if.end32.cleanup267_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup267

while.cond.preheader:                             ; preds = %if.end32
  %state = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 2
  %call36561 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36561)
  %tobool37.not562 = icmp eq i32 %call36561, 0
  br i1 %tobool37.not562, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %timeout.0563 = phi i32 [ %dec, %if.end40.while.body_crit_edge ], [ 50, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %timeout.0563, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool38.not = icmp eq i32 %dec, 0
  br i1 %tobool38.not, label %while.body.cleanup267_crit_edge, label %if.end40

while.body.cleanup267_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup267

if.end40:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #21
  %call36 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #21
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end40.while.end_crit_edge, label %if.end40.while.body_crit_edge

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.cond.preheader, label %if.end63

for.cond.preheader:                               ; preds = %while.end
  %num_queue_pairs = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 44
  %34 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %num_queue_pairs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp45584.not = icmp eq i16 %35, 0
  %.pre = trunc i32 %and to i16
  %.pre592 = trunc i32 %and21 to i16
  br i1 %cmp45584.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rx_rings52 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 20
  %xdp_prog.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 33
  %xdp_rings = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0585 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %36 = ptrtoint ptr %tx_rings22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_rings22, align 4
  %arrayidx49 = getelementptr ptr, ptr %37, i32 %i.0585
  %38 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx49, align 4
  %count50 = getelementptr inbounds %struct.i40e_ring, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %count50 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %.pre, ptr %count50, align 2
  %41 = ptrtoint ptr %rx_rings52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_rings52, align 8
  %arrayidx53 = getelementptr ptr, ptr %42, i32 %i.0585
  %43 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx53, align 4
  %count54 = getelementptr inbounds %struct.i40e_ring, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %count54 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %.pre592, ptr %count54, align 2
  %46 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %xdp_prog.i, align 32
  %tobool.i443.not = icmp eq ptr %47, null
  br i1 %tobool.i443.not, label %for.body.for.inc_crit_edge, label %if.then56

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.then56:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %48 = ptrtoint ptr %xdp_rings to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xdp_rings, align 64
  %arrayidx58 = getelementptr ptr, ptr %49, i32 %i.0585
  %50 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx58, align 4
  %count59 = getelementptr inbounds %struct.i40e_ring, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %count59 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %.pre, ptr %count59, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then56, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0585, 1
  %53 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %num_queue_pairs, align 2
  %conv44 = zext i16 %54 to i32
  %cmp45 = icmp ult i32 %inc, %conv44
  br i1 %cmp45, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_tx_desc = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 45
  %55 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %.pre, ptr %num_tx_desc, align 128
  %num_rx_desc = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 46
  %56 = ptrtoint ptr %num_rx_desc to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %.pre592, ptr %num_rx_desc, align 2
  br label %done

if.end63:                                         ; preds = %while.end
  %alloc_queue_pairs = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 42
  %57 = ptrtoint ptr %alloc_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %alloc_queue_pairs, align 2
  %xdp_prog.i444 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 33
  %59 = ptrtoint ptr %xdp_prog.i444 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %xdp_prog.i444, align 32
  %tobool.i445.not = icmp eq ptr %60, null
  %cond = select i1 %tobool.i445.not, i16 1, i16 2
  %mul = mul i16 %cond, %58
  %61 = ptrtoint ptr %tx_rings22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_rings22, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %count70 = getelementptr inbounds %struct.i40e_ring, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %count70 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %count70, align 2
  %conv71 = zext i16 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv71)
  %cmp72.not = icmp eq i32 %and, %conv71
  br i1 %cmp72.not, label %if.end63.if.end119_crit_edge, label %if.then74

if.end63.if.end119_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end119

if.then74:                                        ; preds = %if.end63
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.34, i32 noundef %conv71, i32 noundef %and) #24
  %conv79 = zext i16 %mul to i32
  %67 = shl nuw nsw i32 %conv79, 9
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %67, i32 noundef 3520) #25
  %tobool81.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool81.not, label %if.then74.done_crit_edge, label %for.cond84.preheader

if.then74.done_crit_edge:                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #23
  br label %done

for.cond84.preheader:                             ; preds = %if.then74
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul)
  %cmp86564.not = icmp eq i16 %mul, 0
  br i1 %cmp86564.not, label %for.cond84.preheader.if.end119_crit_edge, label %for.body88.lr.ph

for.cond84.preheader.if.end119_crit_edge:         ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end119

for.body88.lr.ph:                                 ; preds = %for.cond84.preheader
  %num_queue_pairs.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 44
  %conv96 = trunc i32 %and to i16
  br label %for.body88

for.body88:                                       ; preds = %for.inc116.for.body88_crit_edge, %for.body88.lr.ph
  %i.1565 = phi i32 [ 0, %for.body88.lr.ph ], [ %inc117, %for.inc116.for.body88_crit_edge ]
  %conv89 = trunc i32 %i.1565 to i16
  %68 = ptrtoint ptr %xdp_prog.i444 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %xdp_prog.i444, align 32
  %tobool.i.not.i = icmp eq ptr %69, null
  %70 = ptrtoint ptr %num_queue_pairs.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %num_queue_pairs.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %conv89)
  %cmp17.i = icmp ugt i16 %71, %conv89
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body88
  br i1 %cmp17.i, label %if.then.i.if.end92_crit_edge, label %lor.rhs.i

if.then.i.if.end92_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end92

lor.rhs.i:                                        ; preds = %if.then.i
  %conv1.i = zext i16 %71 to i32
  %72 = ptrtoint ptr %alloc_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %alloc_queue_pairs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %conv89)
  %cmp5.not.i = icmp ule i16 %73, %conv89
  %conv4.i = zext i16 %73 to i32
  %add.i = add nuw nsw i32 %conv4.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %i.1565)
  %cmp12.i = icmp ugt i32 %add.i, %i.1565
  %or.cond554 = select i1 %cmp5.not.i, i1 %cmp12.i, i1 false
  br i1 %or.cond554, label %lor.rhs.i.if.end92_crit_edge, label %lor.rhs.i.for.inc116_crit_edge

lor.rhs.i.for.inc116_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc116

lor.rhs.i.if.end92_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end92

if.end.i:                                         ; preds = %for.body88
  br i1 %cmp17.i, label %if.end.i.if.end92_crit_edge, label %if.end.i.for.inc116_crit_edge

if.end.i.for.inc116_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc116

if.end.i.if.end92_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end92

if.end92:                                         ; preds = %if.end.i.if.end92_crit_edge, %lor.rhs.i.if.end92_crit_edge, %if.then.i.if.end92_crit_edge
  %arrayidx93 = getelementptr %struct.i40e_ring, ptr %call8.i.i, i32 %i.1565
  %74 = ptrtoint ptr %tx_rings22 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx_rings22, align 4
  %arrayidx95 = getelementptr ptr, ptr %75, i32 %i.1565
  %76 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx95, align 4
  %78 = call ptr @memcpy(ptr %arrayidx93, ptr %77, i32 512)
  %count98 = getelementptr %struct.i40e_ring, ptr %call8.i.i, i32 %i.1565, i32 11
  %79 = ptrtoint ptr %count98 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv96, ptr %count98, align 2
  %desc = getelementptr %struct.i40e_ring, ptr %call8.i.i, i32 %i.1565, i32 1
  %80 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %desc, align 4
  %81 = getelementptr %struct.i40e_ring, ptr %call8.i.i, i32 %i.1565, i32 5
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %81, align 4
  %call102 = tail call i32 @i40e_setup_tx_descriptors(ptr noundef %arrayidx93) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end92.for.inc116_crit_edge, label %while.cond105.preheader

if.end92.for.inc116_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc116

while.cond105.preheader:                          ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1565)
  %tobool106.not567 = icmp eq i32 %i.1565, 0
  br i1 %tobool106.not567, label %while.cond105.preheader.while.end114_crit_edge, label %while.cond105.preheader.while.body107_crit_edge

while.cond105.preheader.while.body107_crit_edge:  ; preds = %while.cond105.preheader
  br label %while.body107

while.cond105.preheader.while.end114_crit_edge:   ; preds = %while.cond105.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end114

while.body107:                                    ; preds = %while.cond105.backedge.while.body107_crit_edge, %while.cond105.preheader.while.body107_crit_edge
  %i.2568 = phi i32 [ %dec108, %while.cond105.backedge.while.body107_crit_edge ], [ %i.1565, %while.cond105.preheader.while.body107_crit_edge ]
  %dec108 = add nsw i32 %i.2568, -1
  %conv109 = trunc i32 %dec108 to i16
  %83 = ptrtoint ptr %xdp_prog.i444 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %xdp_prog.i444, align 32
  %tobool.i.not.i447 = icmp eq ptr %84, null
  %85 = ptrtoint ptr %num_queue_pairs.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %num_queue_pairs.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %conv109)
  %cmp17.i461 = icmp ugt i16 %86, %conv109
  br i1 %tobool.i.not.i447, label %if.end.i462, label %if.then.i452

if.then.i452:                                     ; preds = %while.body107
  br i1 %cmp17.i461, label %if.then.i452.if.end112_crit_edge, label %lor.rhs.i455

if.then.i452.if.end112_crit_edge:                 ; preds = %if.then.i452
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end112

lor.rhs.i455:                                     ; preds = %if.then.i452
  %conv1.i450 = zext i16 %86 to i32
  %conv.i448 = and i32 %dec108, 65535
  %87 = ptrtoint ptr %alloc_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %alloc_queue_pairs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %conv109)
  %cmp5.not.i454 = icmp ule i16 %88, %conv109
  %conv4.i456 = zext i16 %88 to i32
  %add.i457 = add nuw nsw i32 %conv4.i456, %conv1.i450
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i457, i32 %conv.i448)
  %cmp12.i458 = icmp ugt i32 %add.i457, %conv.i448
  %or.cond557 = select i1 %cmp5.not.i454, i1 %cmp12.i458, i1 false
  br i1 %or.cond557, label %lor.rhs.i455.if.end112_crit_edge, label %lor.rhs.i455.while.cond105.backedge_crit_edge

lor.rhs.i455.while.cond105.backedge_crit_edge:    ; preds = %lor.rhs.i455
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond105.backedge

lor.rhs.i455.if.end112_crit_edge:                 ; preds = %lor.rhs.i455
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end112

if.end.i462:                                      ; preds = %while.body107
  br i1 %cmp17.i461, label %if.end.i462.if.end112_crit_edge, label %if.end.i462.while.cond105.backedge_crit_edge

if.end.i462.while.cond105.backedge_crit_edge:     ; preds = %if.end.i462
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond105.backedge

if.end.i462.if.end112_crit_edge:                  ; preds = %if.end.i462
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end112

if.end112:                                        ; preds = %if.end.i462.if.end112_crit_edge, %lor.rhs.i455.if.end112_crit_edge, %if.then.i452.if.end112_crit_edge
  %arrayidx113 = getelementptr %struct.i40e_ring, ptr %call8.i.i, i32 %dec108
  tail call void @i40e_free_tx_resources(ptr noundef %arrayidx113) #21
  br label %while.cond105.backedge

while.cond105.backedge:                           ; preds = %if.end112, %if.end.i462.while.cond105.backedge_crit_edge, %lor.rhs.i455.while.cond105.backedge_crit_edge
  %tobool106.not = icmp eq i32 %dec108, 0
  br i1 %tobool106.not, label %while.cond105.backedge.while.end114_crit_edge, label %while.cond105.backedge.while.body107_crit_edge

while.cond105.backedge.while.body107_crit_edge:   ; preds = %while.cond105.backedge
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body107

while.cond105.backedge.while.end114_crit_edge:    ; preds = %while.cond105.backedge
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end114

while.end114:                                     ; preds = %while.cond105.backedge.while.end114_crit_edge, %while.cond105.preheader.while.end114_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #21
  br label %done

for.inc116:                                       ; preds = %if.end92.for.inc116_crit_edge, %if.end.i.for.inc116_crit_edge, %lor.rhs.i.for.inc116_crit_edge
  %inc117 = add nuw nsw i32 %i.1565, 1
  %exitcond.not = icmp eq i32 %inc117, %conv79
  br i1 %exitcond.not, label %for.inc116.if.end119_crit_edge, label %for.inc116.for.body88_crit_edge

for.inc116.for.body88_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body88

for.inc116.if.end119_crit_edge:                   ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end119

if.end119:                                        ; preds = %for.inc116.if.end119_crit_edge, %for.cond84.preheader.if.end119_crit_edge, %if.end63.if.end119_crit_edge
  %tx_rings.0 = phi ptr [ null, %if.end63.if.end119_crit_edge ], [ %call8.i.i, %for.cond84.preheader.if.end119_crit_edge ], [ %call8.i.i, %for.inc116.if.end119_crit_edge ]
  %rx_rings120 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 20
  %89 = ptrtoint ptr %rx_rings120 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rx_rings120, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %count122 = getelementptr inbounds %struct.i40e_ring, ptr %92, i32 0, i32 11
  %93 = ptrtoint ptr %count122 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %count122, align 2
  %conv123 = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %conv123)
  %cmp124.not = icmp eq i32 %and21, %conv123
  br i1 %cmp124.not, label %if.end119.if.end195_crit_edge, label %if.then126

if.end119.if.end195_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end195

if.then126:                                       ; preds = %if.end119
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.35, i32 noundef %conv123, i32 noundef %and21) #24
  %95 = ptrtoint ptr %alloc_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %alloc_queue_pairs, align 2
  %conv132 = zext i16 %96 to i32
  %97 = shl nuw nsw i32 %conv132, 9
  %call8.i.i490 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %97, i32 noundef 3520) #25
  %tobool134.not = icmp eq ptr %call8.i.i490, null
  br i1 %tobool134.not, label %if.then126.free_tx_crit_edge, label %for.cond137.preheader

if.then126.free_tx_crit_edge:                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #23
  br label %free_tx

for.cond137.preheader:                            ; preds = %if.then126
  %num_queue_pairs138 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 44
  %98 = ptrtoint ptr %num_queue_pairs138 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %num_queue_pairs138, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp140570.not = icmp eq i16 %99, 0
  br i1 %cmp140570.not, label %for.cond137.preheader.if.end195_crit_edge, label %for.body142.lr.ph

for.cond137.preheader.if.end195_crit_edge:        ; preds = %for.cond137.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end195

for.body142.lr.ph:                                ; preds = %for.cond137.preheader
  %conv146 = trunc i32 %and21 to i16
  br label %for.body142

for.body142:                                      ; preds = %for.inc192.for.body142_crit_edge, %for.body142.lr.ph
  %i.3571 = phi i32 [ 0, %for.body142.lr.ph ], [ %inc193, %for.inc192.for.body142_crit_edge ]
  %arrayidx143 = getelementptr %struct.i40e_ring, ptr %call8.i.i490, i32 %i.3571
  %100 = ptrtoint ptr %rx_rings120 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rx_rings120, align 8
  %arrayidx145 = getelementptr ptr, ptr %101, i32 %i.3571
  %102 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx145, align 4
  %104 = call ptr @memcpy(ptr %arrayidx143, ptr %103, i32 512)
  %count148 = getelementptr %struct.i40e_ring, ptr %call8.i.i490, i32 %i.3571, i32 11
  %105 = ptrtoint ptr %count148 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv146, ptr %count148, align 2
  %desc150 = getelementptr %struct.i40e_ring, ptr %call8.i.i490, i32 %i.3571, i32 1
  %106 = ptrtoint ptr %desc150 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %desc150, align 4
  %107 = getelementptr %struct.i40e_ring, ptr %call8.i.i490, i32 %i.3571, i32 5
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %107, align 4
  %xdp_rxq = getelementptr %struct.i40e_ring, ptr %call8.i.i490, i32 %i.3571, i32 36
  %109 = call ptr @memset(ptr %xdp_rxq, i32 0, i32 128)
  %110 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw1, align 8
  %add.ptr = getelementptr i8, ptr %111, i32 753920
  %tail = getelementptr %struct.i40e_ring, ptr %call8.i.i490, i32 %i.3571, i32 9
  %112 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %add.ptr, ptr %tail, align 32
  %call155 = tail call i32 @i40e_setup_rx_descriptors(ptr noundef %arrayidx143) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %for.body142.do.body.preheader_crit_edge

for.body142.do.body.preheader_crit_edge:          ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body.preheader

if.end158:                                        ; preds = %for.body142
  %call160 = tail call i32 @i40e_alloc_rx_bi(ptr noundef %arrayidx143) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end158.do.body.preheader_crit_edge

if.end158.do.body.preheader_crit_edge:            ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body.preheader

if.end163:                                        ; preds = %if.end158
  %next_to_clean = getelementptr %struct.i40e_ring, ptr %call8.i.i490, i32 %i.3571, i32 15
  %113 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %next_to_clean, align 2
  %next_to_use = getelementptr %struct.i40e_ring, ptr %call8.i.i490, i32 %i.3571, i32 14
  %115 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %114, i16 %116)
  %cmp168 = icmp ugt i16 %114, %116
  br i1 %cmp168, label %if.end163.rx_unwind_crit_edge, label %cond.false

if.end163.rx_unwind_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #23
  br label %rx_unwind

cond.false:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #23
  %117 = ptrtoint ptr %count148 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %count148, align 2
  br label %rx_unwind

rx_unwind:                                        ; preds = %cond.false, %if.end163.rx_unwind_crit_edge
  %cond173 = phi i16 [ %118, %cond.false ], [ 0, %if.end163.rx_unwind_crit_edge ]
  %119 = xor i16 %116, -1
  %add177 = add i16 %114, %119
  %sub181 = add i16 %add177, %cond173
  %call184 = tail call zeroext i1 @i40e_alloc_rx_buffers(ptr noundef %arrayidx143, i16 noundef zeroext %sub181) #21
  br i1 %call184, label %rx_unwind.do.body.preheader_crit_edge, label %for.inc192

rx_unwind.do.body.preheader_crit_edge:            ; preds = %rx_unwind
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body.preheader

do.body.preheader:                                ; preds = %rx_unwind.do.body.preheader_crit_edge, %if.end158.do.body.preheader_crit_edge, %for.body142.do.body.preheader_crit_edge
  %err.4603 = phi i32 [ 1, %rx_unwind.do.body.preheader_crit_edge ], [ %call160, %if.end158.do.body.preheader_crit_edge ], [ %call155, %for.body142.do.body.preheader_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %i.4 = phi i32 [ %dec189, %do.body.do.body_crit_edge ], [ %i.3571, %do.body.preheader ]
  %arrayidx188 = getelementptr %struct.i40e_ring, ptr %call8.i.i490, i32 %i.4
  tail call void @i40e_free_rx_resources(ptr noundef %arrayidx188) #21
  %dec189 = add nsw i32 %i.4, -1
  %tobool190.not = icmp eq i32 %i.4, 0
  br i1 %tobool190.not, label %cleanup, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

cleanup:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @kfree(ptr noundef nonnull %call8.i.i490) #21
  br label %free_tx

for.inc192:                                       ; preds = %rx_unwind
  %inc193 = add nuw nsw i32 %i.3571, 1
  %120 = ptrtoint ptr %num_queue_pairs138 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %num_queue_pairs138, align 2
  %conv139 = zext i16 %121 to i32
  %cmp140 = icmp ult i32 %inc193, %conv139
  br i1 %cmp140, label %for.inc192.for.body142_crit_edge, label %for.inc192.if.end195_crit_edge

for.inc192.if.end195_crit_edge:                   ; preds = %for.inc192
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end195

for.inc192.for.body142_crit_edge:                 ; preds = %for.inc192
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body142

if.end195:                                        ; preds = %for.inc192.if.end195_crit_edge, %for.cond137.preheader.if.end195_crit_edge, %if.end119.if.end195_crit_edge
  %rx_rings.2 = phi ptr [ null, %if.end119.if.end195_crit_edge ], [ %call8.i.i490, %for.cond137.preheader.if.end195_crit_edge ], [ %call8.i.i490, %for.inc192.if.end195_crit_edge ]
  tail call void @i40e_down(ptr noundef %1) #21
  %tobool196.not = icmp eq ptr %tx_rings.0, null
  br i1 %tobool196.not, label %if.end195.if.end215_crit_edge, label %for.cond198.preheader

if.end195.if.end215_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end215

for.cond198.preheader:                            ; preds = %if.end195
  %conv199 = zext i16 %mul to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul)
  %cmp200576.not = icmp eq i16 %mul, 0
  br i1 %cmp200576.not, label %for.cond198.preheader.for.end214_crit_edge, label %for.body202.lr.ph

for.cond198.preheader.for.end214_crit_edge:       ; preds = %for.cond198.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end214

for.body202.lr.ph:                                ; preds = %for.cond198.preheader
  %num_queue_pairs.i497 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 44
  br label %for.body202

for.body202:                                      ; preds = %for.inc212.for.body202_crit_edge, %for.body202.lr.ph
  %i.6577 = phi i32 [ 0, %for.body202.lr.ph ], [ %inc213, %for.inc212.for.body202_crit_edge ]
  %conv203 = trunc i32 %i.6577 to i16
  %122 = ptrtoint ptr %xdp_prog.i444 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %xdp_prog.i444, align 32
  %tobool.i.not.i495 = icmp eq ptr %123, null
  %124 = ptrtoint ptr %num_queue_pairs.i497 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %num_queue_pairs.i497, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %125, i16 %conv203)
  %cmp17.i509 = icmp ugt i16 %125, %conv203
  br i1 %tobool.i.not.i495, label %if.end.i510, label %if.then.i500

if.then.i500:                                     ; preds = %for.body202
  br i1 %cmp17.i509, label %if.then.i500.if.then205_crit_edge, label %lor.rhs.i503

if.then.i500.if.then205_crit_edge:                ; preds = %if.then.i500
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then205

lor.rhs.i503:                                     ; preds = %if.then.i500
  %conv1.i498 = zext i16 %125 to i32
  %126 = ptrtoint ptr %alloc_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %alloc_queue_pairs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %127, i16 %conv203)
  %cmp5.not.i502 = icmp ule i16 %127, %conv203
  %conv4.i504 = zext i16 %127 to i32
  %add.i505 = add nuw nsw i32 %conv4.i504, %conv1.i498
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i505, i32 %i.6577)
  %cmp12.i506 = icmp ugt i32 %add.i505, %i.6577
  %or.cond555 = select i1 %cmp5.not.i502, i1 %cmp12.i506, i1 false
  br i1 %or.cond555, label %lor.rhs.i503.if.then205_crit_edge, label %lor.rhs.i503.for.inc212_crit_edge

lor.rhs.i503.for.inc212_crit_edge:                ; preds = %lor.rhs.i503
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc212

lor.rhs.i503.if.then205_crit_edge:                ; preds = %lor.rhs.i503
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then205

if.end.i510:                                      ; preds = %for.body202
  br i1 %cmp17.i509, label %if.end.i510.if.then205_crit_edge, label %if.end.i510.for.inc212_crit_edge

if.end.i510.for.inc212_crit_edge:                 ; preds = %if.end.i510
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc212

if.end.i510.if.then205_crit_edge:                 ; preds = %if.end.i510
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then205

if.then205:                                       ; preds = %if.end.i510.if.then205_crit_edge, %lor.rhs.i503.if.then205_crit_edge, %if.then.i500.if.then205_crit_edge
  %128 = ptrtoint ptr %tx_rings22 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tx_rings22, align 4
  %arrayidx207 = getelementptr ptr, ptr %129, i32 %i.6577
  %130 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx207, align 4
  tail call void @i40e_free_tx_resources(ptr noundef %131) #21
  %132 = ptrtoint ptr %tx_rings22 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tx_rings22, align 4
  %arrayidx209 = getelementptr ptr, ptr %133, i32 %i.6577
  %134 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx209, align 4
  %arrayidx210 = getelementptr %struct.i40e_ring, ptr %tx_rings.0, i32 %i.6577
  %136 = call ptr @memcpy(ptr %135, ptr %arrayidx210, i32 512)
  br label %for.inc212

for.inc212:                                       ; preds = %if.then205, %if.end.i510.for.inc212_crit_edge, %lor.rhs.i503.for.inc212_crit_edge
  %inc213 = add nuw nsw i32 %i.6577, 1
  %exitcond591.not = icmp eq i32 %inc213, %conv199
  br i1 %exitcond591.not, label %for.inc212.for.end214_crit_edge, label %for.inc212.for.body202_crit_edge

for.inc212.for.body202_crit_edge:                 ; preds = %for.inc212
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body202

for.inc212.for.end214_crit_edge:                  ; preds = %for.inc212
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end214

for.end214:                                       ; preds = %for.inc212.for.end214_crit_edge, %for.cond198.preheader.for.end214_crit_edge
  tail call void @kfree(ptr noundef nonnull %tx_rings.0) #21
  br label %if.end215

if.end215:                                        ; preds = %for.end214, %if.end195.if.end215_crit_edge
  %tobool216.not = icmp eq ptr %rx_rings.2, null
  br i1 %tobool216.not, label %if.end215.free_tx.thread_crit_edge, label %for.cond218.preheader

if.end215.free_tx.thread_crit_edge:               ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #23
  br label %free_tx.thread

for.cond218.preheader:                            ; preds = %if.end215
  %num_queue_pairs219 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 44
  %137 = ptrtoint ptr %num_queue_pairs219 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %num_queue_pairs219, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %cmp221581.not = icmp eq i16 %138, 0
  br i1 %cmp221581.not, label %for.cond218.preheader.for.end241_crit_edge, label %for.cond218.preheader.for.body223_crit_edge

for.cond218.preheader.for.body223_crit_edge:      ; preds = %for.cond218.preheader
  br label %for.body223

for.cond218.preheader.for.end241_crit_edge:       ; preds = %for.cond218.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end241

for.body223:                                      ; preds = %for.body223.for.body223_crit_edge, %for.cond218.preheader.for.body223_crit_edge
  %i.7582 = phi i32 [ %inc240, %for.body223.for.body223_crit_edge ], [ 0, %for.cond218.preheader.for.body223_crit_edge ]
  %139 = ptrtoint ptr %rx_rings120 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rx_rings120, align 8
  %arrayidx225 = getelementptr ptr, ptr %140, i32 %i.7582
  %141 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx225, align 4
  tail call void @i40e_free_rx_resources(ptr noundef %142) #21
  %143 = ptrtoint ptr %rx_rings120 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rx_rings120, align 8
  %arrayidx227 = getelementptr ptr, ptr %144, i32 %i.7582
  %145 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx227, align 4
  %tail228 = getelementptr inbounds %struct.i40e_ring, ptr %146, i32 0, i32 9
  %147 = ptrtoint ptr %tail228 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tail228, align 32
  %arrayidx229 = getelementptr %struct.i40e_ring, ptr %rx_rings.2, i32 %i.7582
  %tail230 = getelementptr %struct.i40e_ring, ptr %rx_rings.2, i32 %i.7582, i32 9
  %149 = ptrtoint ptr %tail230 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %148, ptr %tail230, align 32
  %next_to_use232 = getelementptr %struct.i40e_ring, ptr %rx_rings.2, i32 %i.7582, i32 14
  %150 = ptrtoint ptr %next_to_use232 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %next_to_use232, align 4
  %next_to_clean234 = getelementptr %struct.i40e_ring, ptr %rx_rings.2, i32 %i.7582, i32 15
  %151 = ptrtoint ptr %next_to_clean234 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %next_to_clean234, align 2
  %next_to_alloc = getelementptr %struct.i40e_ring, ptr %rx_rings.2, i32 %i.7582, i32 31
  %152 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %next_to_alloc, align 8
  %153 = load ptr, ptr %rx_rings120, align 8
  %arrayidx237 = getelementptr ptr, ptr %153, i32 %i.7582
  %154 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx237, align 4
  %156 = call ptr @memcpy(ptr %155, ptr %arrayidx229, i32 512)
  %inc240 = add nuw nsw i32 %i.7582, 1
  %157 = ptrtoint ptr %num_queue_pairs219 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %num_queue_pairs219, align 2
  %conv220 = zext i16 %158 to i32
  %cmp221 = icmp ult i32 %inc240, %conv220
  br i1 %cmp221, label %for.body223.for.body223_crit_edge, label %for.body223.for.end241_crit_edge

for.body223.for.end241_crit_edge:                 ; preds = %for.body223
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end241

for.body223.for.body223_crit_edge:                ; preds = %for.body223
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body223

for.end241:                                       ; preds = %for.body223.for.end241_crit_edge, %for.cond218.preheader.for.end241_crit_edge
  tail call void @kfree(ptr noundef nonnull %rx_rings.2) #21
  br label %free_tx.thread

free_tx.thread:                                   ; preds = %for.end241, %if.end215.free_tx.thread_crit_edge
  %conv243 = trunc i32 %and to i16
  %num_tx_desc244 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 45
  %159 = ptrtoint ptr %num_tx_desc244 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv243, ptr %num_tx_desc244, align 128
  %conv245 = trunc i32 %and21 to i16
  %num_rx_desc246 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 46
  %160 = ptrtoint ptr %num_rx_desc246 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv245, ptr %num_rx_desc246, align 2
  %call247 = tail call i32 @i40e_up(ptr noundef %1) #21
  br label %done

free_tx:                                          ; preds = %cleanup, %if.then126.free_tx_crit_edge
  %err.6 = phi i32 [ %err.4603, %cleanup ], [ -12, %if.then126.free_tx_crit_edge ]
  %tobool248.not = icmp eq ptr %tx_rings.0, null
  br i1 %tobool248.not, label %free_tx.done_crit_edge, label %for.cond250.preheader

free_tx.done_crit_edge:                           ; preds = %free_tx
  call void @__sanitizer_cov_trace_pc() #23
  br label %done

for.cond250.preheader:                            ; preds = %free_tx
  %conv251 = zext i16 %mul to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul)
  %cmp252572.not = icmp eq i16 %mul, 0
  br i1 %cmp252572.not, label %for.cond250.preheader.for.end263_crit_edge, label %for.body254.lr.ph

for.cond250.preheader.for.end263_crit_edge:       ; preds = %for.cond250.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end263

for.body254.lr.ph:                                ; preds = %for.cond250.preheader
  %num_queue_pairs.i516 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 44
  br label %for.body254

for.body254:                                      ; preds = %for.inc261.for.body254_crit_edge, %for.body254.lr.ph
  %i.8573 = phi i32 [ 0, %for.body254.lr.ph ], [ %inc262, %for.inc261.for.body254_crit_edge ]
  %conv255 = trunc i32 %i.8573 to i16
  %161 = ptrtoint ptr %xdp_prog.i444 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile ptr, ptr %xdp_prog.i444, align 32
  %tobool.i.not.i514 = icmp eq ptr %162, null
  %163 = ptrtoint ptr %num_queue_pairs.i516 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %num_queue_pairs.i516, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %164, i16 %conv255)
  %cmp17.i528 = icmp ugt i16 %164, %conv255
  br i1 %tobool.i.not.i514, label %if.end.i529, label %if.then.i519

if.then.i519:                                     ; preds = %for.body254
  br i1 %cmp17.i528, label %if.then.i519.if.then257_crit_edge, label %lor.rhs.i522

if.then.i519.if.then257_crit_edge:                ; preds = %if.then.i519
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then257

lor.rhs.i522:                                     ; preds = %if.then.i519
  %conv1.i517 = zext i16 %164 to i32
  %165 = ptrtoint ptr %alloc_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %alloc_queue_pairs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %166, i16 %conv255)
  %cmp5.not.i521 = icmp ule i16 %166, %conv255
  %conv4.i523 = zext i16 %166 to i32
  %add.i524 = add nuw nsw i32 %conv4.i523, %conv1.i517
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i524, i32 %i.8573)
  %cmp12.i525 = icmp ugt i32 %add.i524, %i.8573
  %or.cond556 = select i1 %cmp5.not.i521, i1 %cmp12.i525, i1 false
  br i1 %or.cond556, label %lor.rhs.i522.if.then257_crit_edge, label %lor.rhs.i522.for.inc261_crit_edge

lor.rhs.i522.for.inc261_crit_edge:                ; preds = %lor.rhs.i522
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc261

lor.rhs.i522.if.then257_crit_edge:                ; preds = %lor.rhs.i522
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then257

if.end.i529:                                      ; preds = %for.body254
  br i1 %cmp17.i528, label %if.end.i529.if.then257_crit_edge, label %if.end.i529.for.inc261_crit_edge

if.end.i529.for.inc261_crit_edge:                 ; preds = %if.end.i529
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc261

if.end.i529.if.then257_crit_edge:                 ; preds = %if.end.i529
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then257

if.then257:                                       ; preds = %if.end.i529.if.then257_crit_edge, %lor.rhs.i522.if.then257_crit_edge, %if.then.i519.if.then257_crit_edge
  %167 = ptrtoint ptr %tx_rings22 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %tx_rings22, align 4
  %arrayidx259 = getelementptr ptr, ptr %168, i32 %i.8573
  %169 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx259, align 4
  tail call void @i40e_free_tx_resources(ptr noundef %170) #21
  br label %for.inc261

for.inc261:                                       ; preds = %if.then257, %if.end.i529.for.inc261_crit_edge, %lor.rhs.i522.for.inc261_crit_edge
  %inc262 = add nuw nsw i32 %i.8573, 1
  %exitcond590.not = icmp eq i32 %inc262, %conv251
  br i1 %exitcond590.not, label %for.inc261.for.end263_crit_edge, label %for.inc261.for.body254_crit_edge

for.inc261.for.body254_crit_edge:                 ; preds = %for.inc261
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body254

for.inc261.for.end263_crit_edge:                  ; preds = %for.inc261
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end263

for.end263:                                       ; preds = %for.inc261.for.end263_crit_edge, %for.cond250.preheader.for.end263_crit_edge
  tail call void @kfree(ptr noundef nonnull %tx_rings.0) #21
  br label %done

done:                                             ; preds = %for.end263, %free_tx.done_crit_edge, %free_tx.thread, %while.end114, %if.then74.done_crit_edge, %for.end
  %err.7 = phi i32 [ %call102, %while.end114 ], [ %err.6, %for.end263 ], [ %err.6, %free_tx.done_crit_edge ], [ 0, %for.end ], [ -12, %if.then74.done_crit_edge ], [ 0, %free_tx.thread ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #21
  br label %cleanup267

cleanup267:                                       ; preds = %done, %while.body.cleanup267_crit_edge, %if.end32.cleanup267_crit_edge, %land.lhs.true.cleanup267_crit_edge, %if.then14, %lor.lhs.false.cleanup267_crit_edge, %entry.cleanup267_crit_edge
  %retval.0 = phi i32 [ -22, %if.then14 ], [ %err.7, %done ], [ -22, %lor.lhs.false.cleanup267_crit_edge ], [ -22, %entry.cleanup267_crit_edge ], [ 0, %land.lhs.true.cleanup267_crit_edge ], [ -16, %if.end32.cleanup267_crit_edge ], [ -16, %while.body.cleanup267_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @i40e_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pause) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %an_info = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %an_info to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %an_info, align 1
  %6 = and i8 %5, 1
  %7 = zext i8 %6 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %8 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %autoneg, align 4
  %pfcenable = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 6, i32 3
  %9 = ptrtoint ptr %pfcenable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pfcenable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %11 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rx_pause, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %12 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tx_pause, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %fc = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 6
  %13 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fc, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %14, label %if.end.cleanup_crit_edge [
    i32 1, label %if.then4
    i32 2, label %if.then10
    i32 3, label %if.then17
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %rx_pause5 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %16 = ptrtoint ptr %rx_pause5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %rx_pause5, align 4
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %tx_pause11 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %17 = ptrtoint ptr %tx_pause11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %tx_pause11, align 4
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %rx_pause18 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %18 = ptrtoint ptr %rx_pause18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %rx_pause18, align 4
  %tx_pause19 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %19 = ptrtoint ptr %tx_pause19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %tx_pause19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.then10, %if.then4, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pause) #4 align 64 {
entry:
  %aq_failures = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw3 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %link_info4 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %link_info4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_info4, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool = icmp ne i8 %6, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %aq_failures) #21
  %7 = ptrtoint ptr %aq_failures to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %aq_failures, align 1, !annotation !320
  %partition_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 19
  %8 = ptrtoint ptr %partition_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %partition_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp.not = icmp eq i16 %9, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.2) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %vsi7 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 74
  %12 = ptrtoint ptr %vsi7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vsi7, align 8
  %lan_vsi = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 71
  %14 = ptrtoint ptr %lan_vsi to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %lan_vsi, align 8
  %idxprom = zext i16 %15 to i32
  %arrayidx = getelementptr ptr, ptr %13, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %cmp8.not = icmp eq ptr %1, %17
  br i1 %cmp8.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %an_info = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 3
  %18 = ptrtoint ptr %an_info to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %an_info, align 1
  %20 = and i8 %19, 1
  %and13 = zext i8 %20 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %21 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %and13)
  %cmp14.not = icmp eq i32 %22, %and13
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.36) #24
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %state = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state, align 4
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool19.not = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool20.not = icmp eq i8 %20, 0
  %or.cond = select i1 %tobool19.not, i1 %tobool20.not, i1 false
  br i1 %or.cond, label %if.then21, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.37) #24
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17.if.end22_crit_edge
  %pfcenable = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 6, i32 3
  %26 = ptrtoint ptr %pfcenable to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pfcenable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool23.not = icmp eq i8 %27, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.38) #24
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %28 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool26.not = icmp eq i32 %29, 0
  %tx_pause42 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %30 = ptrtoint ptr %tx_pause42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_pause42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool43.not = icmp eq i32 %31, 0
  br i1 %tobool26.not, label %land.lhs.true41, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end25
  br i1 %tobool43.not, label %land.lhs.true32, label %land.lhs.true27.if.end60_crit_edge

land.lhs.true27.if.end60_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end60

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %32 = ptrtoint ptr %tx_pause42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_pause42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool34.not = icmp eq i32 %33, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.end60_crit_edge, label %land.lhs.true32.cleanup_crit_edge

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.lhs.true32.if.end60_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end60

land.lhs.true41:                                  ; preds = %if.end25
  br i1 %tobool43.not, label %land.lhs.true50, label %land.lhs.true41.if.end60_crit_edge

land.lhs.true41.if.end60_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end60

land.lhs.true50:                                  ; preds = %land.lhs.true41
  %34 = ptrtoint ptr %tx_pause42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_pause42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool52.not = icmp eq i32 %35, 0
  br i1 %tobool52.not, label %land.lhs.true50.if.end60_crit_edge, label %land.lhs.true50.cleanup_crit_edge

land.lhs.true50.cleanup_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.lhs.true50.if.end60_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true50.if.end60_crit_edge, %land.lhs.true41.if.end60_crit_edge, %land.lhs.true32.if.end60_crit_edge, %land.lhs.true27.if.end60_crit_edge
  %.sink = phi i32 [ 3, %land.lhs.true27.if.end60_crit_edge ], [ 1, %land.lhs.true32.if.end60_crit_edge ], [ 2, %land.lhs.true41.if.end60_crit_edge ], [ 0, %land.lhs.true50.if.end60_crit_edge ]
  %requested_mode37 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 6, i32 1
  %36 = ptrtoint ptr %requested_mode37 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %requested_mode37, align 4
  tail call void @i40e_print_link_message(ptr noundef %1, i1 noundef zeroext false) #21
  tail call void @netif_carrier_off(ptr noundef %netdev) #21
  tail call void @netif_tx_stop_all_queues(ptr noundef %netdev) #21
  %call62 = call i32 @i40e_set_fc(ptr noundef %hw3, ptr noundef nonnull %aq_failures, i1 noundef zeroext %tobool) #21
  %37 = ptrtoint ptr %aq_failures to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %aq_failures, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool65.not = icmp eq i8 %39, 0
  br i1 %tobool65.not, label %if.end60.if.end69_crit_edge, label %if.then66

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end69

if.then66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #23
  %call67 = call ptr @i40e_stat_str(ptr noundef %hw3, i32 noundef %call62) #21
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %40 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %asq_last_status, align 8
  %call68 = call ptr @i40e_aq_str(ptr noundef %hw3, i32 noundef %41) #21
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.39, ptr noundef %call67, ptr noundef %call68) #24
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end60.if.end69_crit_edge
  %err.0 = phi i32 [ -11, %if.then66 ], [ 0, %if.end60.if.end69_crit_edge ]
  %42 = ptrtoint ptr %aq_failures to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %aq_failures, align 1
  %44 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool72.not = icmp eq i8 %44, 0
  br i1 %tobool72.not, label %if.end69.if.end78_crit_edge, label %if.then73

if.end69.if.end78_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end78

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #23
  %call74 = call ptr @i40e_stat_str(ptr noundef %hw3, i32 noundef %call62) #21
  %asq_last_status76 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %45 = ptrtoint ptr %asq_last_status76 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %asq_last_status76, align 8
  %call77 = call ptr @i40e_aq_str(ptr noundef %hw3, i32 noundef %46) #21
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.40, ptr noundef %call74, ptr noundef %call77) #24
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.end69.if.end78_crit_edge
  %err.1 = phi i32 [ -11, %if.then73 ], [ %err.0, %if.end69.if.end78_crit_edge ]
  %47 = ptrtoint ptr %aq_failures to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %aq_failures, align 1
  %49 = and i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool81.not = icmp eq i8 %49, 0
  br i1 %tobool81.not, label %if.end78.if.end87_crit_edge, label %if.then82

if.end78.if.end87_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end87

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #23
  %call83 = call ptr @i40e_stat_str(ptr noundef %hw3, i32 noundef %call62) #21
  %asq_last_status85 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %50 = ptrtoint ptr %asq_last_status85 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %asq_last_status85, align 8
  %call86 = call ptr @i40e_aq_str(ptr noundef %hw3, i32 noundef %51) #21
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.41, ptr noundef %call83, ptr noundef %call86) #24
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %if.end78.if.end87_crit_edge
  %err.2 = phi i32 [ -11, %if.then82 ], [ %err.1, %if.end78.if.end87_crit_edge ]
  %52 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %state, align 4
  %54 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool91.not = icmp ne i32 %54, 0
  %or.cond159 = select i1 %tobool91.not, i1 true, i1 %tobool20.not
  br i1 %or.cond159, label %if.end87.cleanup_crit_edge, label %if.then94

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then94:                                        ; preds = %if.end87
  call void @msleep(i32 noundef 75) #21
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %state, align 4
  %57 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool98.not = icmp eq i32 %57, 0
  br i1 %tobool98.not, label %if.then99, label %if.then94.cleanup_crit_edge

if.then94.cleanup_crit_edge:                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then99:                                        ; preds = %if.then94
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %59, i32 0, i32 57
  %60 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %back.i, align 8
  %hw1.i = getelementptr inbounds %struct.i40e_pf, ptr %61, i32 0, i32 1
  %link_info2.i = getelementptr inbounds %struct.i40e_pf, ptr %61, i32 0, i32 1, i32 2, i32 0, i32 2
  %62 = ptrtoint ptr %link_info2.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %link_info2.i, align 8
  %64 = and i8 %63, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.i = icmp ne i8 %64, 0
  %call4.i = call i32 @i40e_aq_set_link_restart_an(ptr noundef %hw1.i, i1 noundef zeroext %tobool.i, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then99.cleanup_crit_edge, label %if.then.i

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then.i:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #23
  %call6.i = call ptr @i40e_stat_str(ptr noundef %hw1.i, i32 noundef %call4.i) #21
  %asq_last_status.i = getelementptr inbounds %struct.i40e_pf, ptr %61, i32 0, i32 1, i32 23, i32 14
  %65 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %asq_last_status.i, align 8
  %call7.i = call ptr @i40e_aq_str(ptr noundef %hw1.i, i32 noundef %66) #21
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.8, ptr noundef %call6.i, ptr noundef %call7.i) #24
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then99.cleanup_crit_edge, %if.then94.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %land.lhs.true50.cleanup_crit_edge, %land.lhs.true32.cleanup_crit_edge, %if.then24, %if.then16, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -95, %if.then16 ], [ -95, %if.then24 ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true50.cleanup_crit_edge ], [ %err.2, %if.then94.cleanup_crit_edge ], [ %err.2, %if.end87.cleanup_crit_edge ], [ -22, %land.lhs.true32.cleanup_crit_edge ], [ -5, %if.then.i ], [ 0, %if.then99.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %aq_failures) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_diag_test(ptr noundef %netdev, ptr nocapture noundef %eth_test, ptr nocapture noundef %data) #4 align 64 {
entry:
  %link_up.i151 = alloca i8, align 1
  %link_up.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 8
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %msg_enable = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 46
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %do.body55

do.body:                                          ; preds = %entry
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then2

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.42) #24
  br label %do.end

do.end:                                           ; preds = %if.then2, %do.body.do.end_crit_edge
  %state = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #21
  %vf.i = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 85
  %10 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vf.i, align 8
  %num_alloc_vfs.i = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 86
  %12 = ptrtoint ptr %num_alloc_vfs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_alloc_vfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.i = icmp sgt i32 %13, 0
  br i1 %cmp5.i, label %for.body.i.preheader, label %do.end.lor.lhs.false_crit_edge

do.end.lor.lhs.false_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %lor.lhs.false

for.body.i.preheader:                             ; preds = %do.end
  %vf_states.i176 = getelementptr %struct.i40e_vf, ptr %11, i32 0, i32 16
  %14 = ptrtoint ptr %vf_states.i176 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %vf_states.i176, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i177 = icmp eq i32 %16, 0
  br i1 %tobool.not.i177, label %for.body.i.preheader.for.cond.i_crit_edge, label %for.body.i.preheader.do.end8_crit_edge

for.body.i.preheader.do.end8_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end8

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.06.i178 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.06.i178, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %13)
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.cond.i.i40e_active_vfs.exit_crit_edge, label %for.body.i

for.cond.i.i40e_active_vfs.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_active_vfs.exit

for.body.i:                                       ; preds = %for.cond.i
  %vf_states.i = getelementptr %struct.i40e_vf, ptr %11, i32 %inc.i, i32 16
  %17 = ptrtoint ptr %vf_states.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %vf_states.i, align 4
  %19 = and i32 %18, 2
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.i40e_active_vfs.exit_crit_edge

for.body.i.i40e_active_vfs.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_active_vfs.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

i40e_active_vfs.exit:                             ; preds = %for.body.i.i40e_active_vfs.exit_crit_edge, %for.cond.i.i40e_active_vfs.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %13)
  %cmp.i.le = icmp slt i32 %inc.i, %13
  br i1 %cmp.i.le, label %i40e_active_vfs.exit.do.end8_crit_edge, label %i40e_active_vfs.exit.lor.lhs.false_crit_edge

i40e_active_vfs.exit.lor.lhs.false_crit_edge:     ; preds = %i40e_active_vfs.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %lor.lhs.false

i40e_active_vfs.exit.do.end8_crit_edge:           ; preds = %i40e_active_vfs.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end8

lor.lhs.false:                                    ; preds = %i40e_active_vfs.exit.lor.lhs.false_crit_edge, %do.end.lor.lhs.false_crit_edge
  %num_alloc_vsi.i.i = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 20
  %20 = ptrtoint ptr %num_alloc_vsi.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_alloc_vsi.i.i, align 2
  %conv.i.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp4.not.i.i = icmp eq i16 %21, 0
  br i1 %cmp4.not.i.i, label %lor.lhs.false.if.end15_crit_edge, label %for.body.lr.ph.i.i

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15

for.body.lr.ph.i.i:                               ; preds = %lor.lhs.false
  %vsi2.i.i = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 74
  %22 = ptrtoint ptr %vsi2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vsi2.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %23, i32 %i.05.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %type3.i.i = getelementptr inbounds %struct.i40e_vsi, ptr %25, i32 0, i32 47
  %26 = ptrtoint ptr %type3.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp5.i.i = icmp eq i32 %27, 2
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.do.end8_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

land.lhs.true.i.i.do.end8_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end8

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end15_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i.i

for.inc.i.i.if.end15_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15

do.end8:                                          ; preds = %land.lhs.true.i.i.do.end8_crit_edge, %i40e_active_vfs.exit.do.end8_crit_edge, %for.body.i.preheader.do.end8_crit_edge
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43) #24
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1, ptr %data, align 8
  %arrayidx9 = getelementptr i64, ptr %data, i32 1
  %31 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1, ptr %arrayidx9, align 8
  %arrayidx10 = getelementptr i64, ptr %data, i32 2
  %32 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1, ptr %arrayidx10, align 8
  %arrayidx11 = getelementptr i64, ptr %data, i32 3
  %33 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1, ptr %arrayidx11, align 8
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %or = or i32 %35, 2
  store i32 %or, ptr %flags, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #21
  br label %do.body74

if.end15:                                         ; preds = %for.inc.i.i.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  br i1 %tobool.i.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  %call18 = tail call i32 @i40e_close(ptr noundef %netdev) #21
  br label %if.end19

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @i40e_do_reset(ptr noundef %5, i32 noundef 8192, i1 noundef zeroext true) #21
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  %arrayidx20 = getelementptr i64, ptr %data, i32 3
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %37, i32 0, i32 57
  %38 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %back.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up.i) #21
  %40 = ptrtoint ptr %link_up.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %link_up.i, align 1
  %msg_enable.i = getelementptr inbounds %struct.i40e_pf, ptr %39, i32 0, i32 46
  %41 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i122 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i122, label %if.end19.do.end.i_crit_edge, label %if.then.i

if.end19.do.end.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.48) #24
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end19.do.end.i_crit_edge
  %hw.i = getelementptr inbounds %struct.i40e_pf, ptr %39, i32 0, i32 1
  %call1.i = call i32 @i40e_get_link_status(ptr noundef %hw.i, ptr noundef nonnull %link_up.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %i40e_link_test.exit, label %do.body4.i

do.body4.i:                                       ; preds = %do.end.i
  %43 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable.i, align 8
  %and6.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %do.body4.i.i40e_link_test.exit.thread_crit_edge, label %if.then8.i

do.body4.i.i40e_link_test.exit.thread_crit_edge:  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_link_test.exit.thread

if.then8.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.49) #24
  br label %i40e_link_test.exit.thread

i40e_link_test.exit.thread:                       ; preds = %if.then8.i, %do.body4.i.i40e_link_test.exit.thread_crit_edge
  %45 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 1, ptr %arrayidx20, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i) #21
  br label %if.then23

i40e_link_test.exit:                              ; preds = %do.end.i
  %46 = ptrtoint ptr %link_up.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %link_up.i, align 1, !range !321
  %48 = xor i8 %47, 1
  %49 = zext i8 %48 to i64
  %50 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %arrayidx20, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i) #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool22.not = icmp eq i8 %48, 0
  br i1 %tobool22.not, label %i40e_link_test.exit.if.end26_crit_edge, label %i40e_link_test.exit.if.then23_crit_edge

i40e_link_test.exit.if.then23_crit_edge:          ; preds = %i40e_link_test.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then23

i40e_link_test.exit.if.end26_crit_edge:           ; preds = %i40e_link_test.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end26

if.then23:                                        ; preds = %i40e_link_test.exit.if.then23_crit_edge, %i40e_link_test.exit.thread
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %or25 = or i32 %52, 2
  store i32 %or25, ptr %flags, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %i40e_link_test.exit.if.end26_crit_edge
  %arrayidx27 = getelementptr i64, ptr %data, i32 1
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 4
  %back.i124 = getelementptr inbounds %struct.i40e_vsi, ptr %54, i32 0, i32 57
  %55 = ptrtoint ptr %back.i124 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %back.i124, align 8
  %msg_enable.i125 = getelementptr inbounds %struct.i40e_pf, ptr %56, i32 0, i32 46
  %57 = ptrtoint ptr %msg_enable.i125 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable.i125, align 8
  %and.i126 = and i32 %58, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool.not.i127 = icmp eq i32 %and.i126, 0
  br i1 %tobool.not.i127, label %if.end26.i40e_eeprom_test.exit_crit_edge, label %if.then.i128

if.end26.i40e_eeprom_test.exit_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_eeprom_test.exit

if.then.i128:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.50) #24
  br label %i40e_eeprom_test.exit

i40e_eeprom_test.exit:                            ; preds = %if.then.i128, %if.end26.i40e_eeprom_test.exit_crit_edge
  %hw.i129 = getelementptr inbounds %struct.i40e_pf, ptr %56, i32 0, i32 1
  %call1.i130 = call i32 @i40e_diag_eeprom_test(ptr noundef %hw.i129) #21
  %conv.i = sext i32 %call1.i130 to i64
  %59 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv.i, ptr %arrayidx27, align 8
  %nvmupd_state.i = getelementptr inbounds %struct.i40e_pf, ptr %56, i32 0, i32 1, i32 24
  %60 = ptrtoint ptr %nvmupd_state.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %nvmupd_state.i, align 8
  %61 = load i64, ptr %arrayidx27, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %tobool29.not = icmp eq i64 %61, 0
  br i1 %tobool29.not, label %i40e_eeprom_test.exit.if.end33_crit_edge, label %if.then30

i40e_eeprom_test.exit.if.end33_crit_edge:         ; preds = %i40e_eeprom_test.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end33

if.then30:                                        ; preds = %i40e_eeprom_test.exit
  call void @__sanitizer_cov_trace_pc() #23
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %or32 = or i32 %63, 2
  store i32 %or32, ptr %flags, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %i40e_eeprom_test.exit.if.end33_crit_edge
  %arrayidx34 = getelementptr i64, ptr %data, i32 2
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 4
  %back.i133 = getelementptr inbounds %struct.i40e_vsi, ptr %65, i32 0, i32 57
  %66 = ptrtoint ptr %back.i133 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %back.i133, align 8
  %sw_int_count.i = getelementptr inbounds %struct.i40e_pf, ptr %67, i32 0, i32 69
  %68 = ptrtoint ptr %sw_int_count.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sw_int_count.i, align 8
  %msg_enable.i134 = getelementptr inbounds %struct.i40e_pf, ptr %67, i32 0, i32 46
  %70 = ptrtoint ptr %msg_enable.i134 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %msg_enable.i134, align 8
  %and.i135 = and i32 %71, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135)
  %tobool.not.i136 = icmp eq i32 %and.i135, 0
  br i1 %tobool.not.i136, label %if.end33.i40e_intr_test.exit_crit_edge, label %if.then.i137

if.end33.i40e_intr_test.exit_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_intr_test.exit

if.then.i137:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.51) #24
  br label %i40e_intr_test.exit

i40e_intr_test.exit:                              ; preds = %if.then.i137, %if.end33.i40e_intr_test.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #21, !srcloc !323
  call void @arm_heavy_mb() #21
  %hw.i138 = getelementptr inbounds %struct.i40e_pf, ptr %67, i32 0, i32 1
  %72 = ptrtoint ptr %hw.i138 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw.i138, align 8
  %add.ptr.i139 = getelementptr i8, ptr %73, i32 230528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 486539271) #21, !srcloc !324
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #21
  %74 = ptrtoint ptr %sw_int_count.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %sw_int_count.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %69, i16 %75)
  %cmp.i140 = icmp eq i16 %69, %75
  %76 = zext i1 %cmp.i140 to i64
  %77 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %arrayidx34, align 8
  br i1 %cmp.i140, label %if.then37, label %i40e_intr_test.exit.if.end40_crit_edge

i40e_intr_test.exit.if.end40_crit_edge:           ; preds = %i40e_intr_test.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end40

if.then37:                                        ; preds = %i40e_intr_test.exit
  call void @__sanitizer_cov_trace_pc() #23
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags, align 4
  %or39 = or i32 %79, 2
  store i32 %or39, ptr %flags, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %i40e_intr_test.exit.if.end40_crit_edge
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr.i, align 4
  %back.i142 = getelementptr inbounds %struct.i40e_vsi, ptr %81, i32 0, i32 57
  %82 = ptrtoint ptr %back.i142 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %back.i142, align 8
  %msg_enable.i143 = getelementptr inbounds %struct.i40e_pf, ptr %83, i32 0, i32 46
  %84 = ptrtoint ptr %msg_enable.i143 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %msg_enable.i143, align 8
  %and.i144 = and i32 %85, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool.not.i145 = icmp eq i32 %and.i144, 0
  br i1 %tobool.not.i145, label %if.end40.i40e_reg_test.exit_crit_edge, label %if.then.i146

if.end40.i40e_reg_test.exit_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_reg_test.exit

if.then.i146:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.52) #24
  br label %i40e_reg_test.exit

i40e_reg_test.exit:                               ; preds = %if.then.i146, %if.end40.i40e_reg_test.exit_crit_edge
  %hw.i147 = getelementptr inbounds %struct.i40e_pf, ptr %83, i32 0, i32 1
  %call1.i148 = call i32 @i40e_diag_reg_test(ptr noundef %hw.i147) #21
  %conv.i149 = sext i32 %call1.i148 to i64
  %86 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv.i149, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i148)
  %tobool43.not = icmp eq i32 %call1.i148, 0
  br i1 %tobool43.not, label %i40e_reg_test.exit.if.end47_crit_edge, label %if.then44

i40e_reg_test.exit.if.end47_crit_edge:            ; preds = %i40e_reg_test.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end47

if.then44:                                        ; preds = %i40e_reg_test.exit
  call void @__sanitizer_cov_trace_pc() #23
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags, align 4
  %or46 = or i32 %88, 2
  store i32 %or46, ptr %flags, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %i40e_reg_test.exit.if.end47_crit_edge
  call void @_clear_bit(i32 noundef 0, ptr noundef %state) #21
  call void @i40e_do_reset(ptr noundef %5, i32 noundef 8192, i1 noundef zeroext true) #21
  br i1 %tobool.i.not, label %if.end47.do.body74_crit_edge, label %if.then51

if.end47.do.body74_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body74

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #23
  %call52 = call i32 @i40e_open(ptr noundef %netdev) #21
  br label %do.body74

do.body55:                                        ; preds = %entry
  br i1 %tobool.not, label %do.body55.do.end62_crit_edge, label %if.then59

do.body55.do.end62_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end62

if.then59:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.46) #24
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body55.do.end62_crit_edge
  %arrayidx63 = getelementptr i64, ptr %data, i32 3
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr.i, align 4
  %back.i153 = getelementptr inbounds %struct.i40e_vsi, ptr %90, i32 0, i32 57
  %91 = ptrtoint ptr %back.i153 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %back.i153, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up.i151) #21
  %93 = ptrtoint ptr %link_up.i151 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %link_up.i151, align 1
  %msg_enable.i154 = getelementptr inbounds %struct.i40e_pf, ptr %92, i32 0, i32 46
  %94 = ptrtoint ptr %msg_enable.i154 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msg_enable.i154, align 8
  %and.i155 = and i32 %95, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i155)
  %tobool.not.i156 = icmp eq i32 %and.i155, 0
  br i1 %tobool.not.i156, label %do.end62.do.end.i161_crit_edge, label %if.then.i157

do.end62.do.end.i161_crit_edge:                   ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i161

if.then.i157:                                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.48) #24
  br label %do.end.i161

do.end.i161:                                      ; preds = %if.then.i157, %do.end62.do.end.i161_crit_edge
  %hw.i158 = getelementptr inbounds %struct.i40e_pf, ptr %92, i32 0, i32 1
  %call1.i159 = call i32 @i40e_get_link_status(ptr noundef %hw.i158, ptr noundef nonnull %link_up.i151) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i159)
  %tobool2.not.i160 = icmp eq i32 %call1.i159, 0
  br i1 %tobool2.not.i160, label %i40e_link_test.exit168, label %do.body4.i164

do.body4.i164:                                    ; preds = %do.end.i161
  %96 = ptrtoint ptr %msg_enable.i154 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %msg_enable.i154, align 8
  %and6.i162 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i162)
  %tobool7.not.i163 = icmp eq i32 %and6.i162, 0
  br i1 %tobool7.not.i163, label %do.body4.i164.i40e_link_test.exit168.thread_crit_edge, label %if.then8.i165

do.body4.i164.i40e_link_test.exit168.thread_crit_edge: ; preds = %do.body4.i164
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_link_test.exit168.thread

if.then8.i165:                                    ; preds = %do.body4.i164
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.49) #24
  br label %i40e_link_test.exit168.thread

i40e_link_test.exit168.thread:                    ; preds = %if.then8.i165, %do.body4.i164.i40e_link_test.exit168.thread_crit_edge
  %98 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 1, ptr %arrayidx63, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i151) #21
  br label %if.then66

i40e_link_test.exit168:                           ; preds = %do.end.i161
  %99 = ptrtoint ptr %link_up.i151 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %link_up.i151, align 1, !range !321
  %101 = xor i8 %100, 1
  %102 = zext i8 %101 to i64
  %103 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %arrayidx63, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i151) #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool65.not = icmp eq i8 %101, 0
  br i1 %tobool65.not, label %i40e_link_test.exit168.if.end69_crit_edge, label %i40e_link_test.exit168.if.then66_crit_edge

i40e_link_test.exit168.if.then66_crit_edge:       ; preds = %i40e_link_test.exit168
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then66

i40e_link_test.exit168.if.end69_crit_edge:        ; preds = %i40e_link_test.exit168
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end69

if.then66:                                        ; preds = %i40e_link_test.exit168.if.then66_crit_edge, %i40e_link_test.exit168.thread
  %104 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags, align 4
  %or68 = or i32 %105, 2
  store i32 %or68, ptr %flags, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %i40e_link_test.exit168.if.end69_crit_edge
  %106 = call ptr @memset(ptr %data, i32 0, i32 24)
  br label %do.body74

do.body74:                                        ; preds = %if.end69, %if.then51, %if.end47.do.body74_crit_edge, %do.end8
  %msg_enable75 = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 46
  %107 = ptrtoint ptr %msg_enable75 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %msg_enable75, align 8
  %and76 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %do.body74.do.end81_crit_edge, label %if.then78

do.body74.do.end81_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end81

if.then78:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.47) #24
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %do.body74.do.end81_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %stringset, ptr noundef %data) #4 align 64 {
entry:
  %p.i = alloca ptr, align 4
  %data.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %1 = call ptr @memcpy(ptr %data, ptr @i40e_gstrings_test, i32 128)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i)
  %2 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %data.addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %4, i32 0, i32 57
  %5 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back.i, align 8
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_net_stats, i32 noundef 11) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_misc_stats, i32 noundef 12) #21
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %7 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp77.not.i = icmp eq i32 %8, 0
  br i1 %cmp77.not.i, label %sw.bb1.for.end.i_crit_edge, label %sw.bb1.for.body.i_crit_edge

sw.bb1.for.body.i_crit_edge:                      ; preds = %sw.bb1
  br label %for.body.i

sw.bb1.for.end.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb1.for.body.i_crit_edge
  %i.078.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb1.for.body.i_crit_edge ]
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_queue_stats, i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef %i.078.i) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_queue_stats, i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef %i.078.i) #21
  %inc.i = add nuw i32 %i.078.i, 1
  %9 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb1.for.end.i_crit_edge
  %vsi2.i = getelementptr inbounds %struct.i40e_pf, ptr %6, i32 0, i32 74
  %11 = ptrtoint ptr %vsi2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vsi2.i, align 8
  %lan_vsi.i = getelementptr inbounds %struct.i40e_pf, ptr %6, i32 0, i32 71
  %13 = ptrtoint ptr %lan_vsi.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %lan_vsi.i, align 8
  %idxprom.i = zext i16 %14 to i32
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %cmp3.not.i = icmp eq ptr %4, %16
  br i1 %cmp3.not.i, label %lor.lhs.false.i, label %for.end.i.check_data_pointer.i_crit_edge

for.end.i.check_data_pointer.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %check_data_pointer.i

lor.lhs.false.i:                                  ; preds = %for.end.i
  %partition_id.i = getelementptr inbounds %struct.i40e_pf, ptr %6, i32 0, i32 1, i32 19
  %17 = ptrtoint ptr %partition_id.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %partition_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp4.not.i = icmp eq i16 %18, 1
  br i1 %cmp4.not.i, label %if.end.i, label %lor.lhs.false.i.check_data_pointer.i_crit_edge

lor.lhs.false.i.check_data_pointer.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %check_data_pointer.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_veb_stats, i32 noundef 12) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_veb_tc_stats, i32 noundef 4, i32 noundef 0) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_veb_tc_stats, i32 noundef 4, i32 noundef 1) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_veb_tc_stats, i32 noundef 4, i32 noundef 2) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_veb_tc_stats, i32 noundef 4, i32 noundef 3) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_veb_tc_stats, i32 noundef 4, i32 noundef 4) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_veb_tc_stats, i32 noundef 4, i32 noundef 5) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_veb_tc_stats, i32 noundef 4, i32 noundef 6) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_veb_tc_stats, i32 noundef 4, i32 noundef 7) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_stats, i32 noundef 55) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_pfc_stats, i32 noundef 5, i32 noundef 0) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_pfc_stats, i32 noundef 5, i32 noundef 1) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_pfc_stats, i32 noundef 5, i32 noundef 2) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_pfc_stats, i32 noundef 5, i32 noundef 3) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_pfc_stats, i32 noundef 5, i32 noundef 4) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_pfc_stats, i32 noundef 5, i32 noundef 5) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_pfc_stats, i32 noundef 5, i32 noundef 6) #21
  call void (ptr, ptr, i32, ...) @__i40e_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @i40e_gstrings_pfc_stats, i32 noundef 5, i32 noundef 7) #21
  br label %check_data_pointer.i

check_data_pointer.i:                             ; preds = %if.end.i, %lor.lhs.false.i.check_data_pointer.i_crit_edge, %for.end.i.check_data_pointer.i_crit_edge
  %19 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.addr.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %data to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i.i = getelementptr inbounds %struct.i40e_vsi, ptr %22, i32 0, i32 57
  %23 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %back.i.i, align 8
  %vsi2.i.i = getelementptr inbounds %struct.i40e_pf, ptr %24, i32 0, i32 74
  %25 = ptrtoint ptr %vsi2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vsi2.i.i, align 8
  %lan_vsi.i.i = getelementptr inbounds %struct.i40e_pf, ptr %24, i32 0, i32 71
  %27 = ptrtoint ptr %lan_vsi.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %lan_vsi.i.i, align 8
  %idxprom.i.i = zext i16 %28 to i32
  %arrayidx.i.i = getelementptr ptr, ptr %26, i32 %idxprom.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.i = icmp eq ptr %22, %30
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %check_data_pointer.i.if.else.i.i_crit_edge

check_data_pointer.i.if.else.i.i_crit_edge:       ; preds = %check_data_pointer.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %check_data_pointer.i
  %partition_id.i.i = getelementptr inbounds %struct.i40e_pf, ptr %24, i32 0, i32 1, i32 19
  %31 = ptrtoint ptr %partition_id.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %partition_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %32)
  %cmp3.i.i = icmp eq i16 %32, 1
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.i40e_get_stats_count.exit.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else.i.i

land.lhs.true.i.i.i40e_get_stats_count.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_stats_count.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %check_data_pointer.i.if.else.i.i_crit_edge
  br label %i40e_get_stats_count.exit.i

i40e_get_stats_count.exit.i:                      ; preds = %if.else.i.i, %land.lhs.true.i.i.i40e_get_stats_count.exit.i_crit_edge
  %stats_len.0.i.i = phi i32 [ 23, %if.else.i.i ], [ 162, %land.lhs.true.i.i.i40e_get_stats_count.exit.i_crit_edge ]
  %33 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_tx_queues.i, align 4
  %mul.i.i = shl i32 %34, 2
  %add.i.i = add i32 %mul.i.i, %stats_len.0.i.i
  %mul.i = shl i32 %add.i.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %mul.i)
  %cmp21.not.i = icmp eq i32 %sub.ptr.sub.i, %mul.i
  br i1 %cmp21.not.i, label %i40e_get_stats_count.exit.i.i40e_get_stat_strings.exit_crit_edge, label %land.rhs.i

i40e_get_stats_count.exit.i.i40e_get_stat_strings.exit_crit_edge: ; preds = %i40e_get_stats_count.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_stat_strings.exit

land.rhs.i:                                       ; preds = %i40e_get_stats_count.exit.i
  %.b76.i = load i1, ptr @i40e_get_stat_strings.__already_done, align 1
  br i1 %.b76.i, label %land.rhs.i.i40e_get_stat_strings.exit_crit_edge, label %if.then30.i, !prof !325

land.rhs.i.i40e_get_stat_strings.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_stat_strings.exit

if.then30.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @i40e_get_stat_strings.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2408, i32 noundef 9, ptr noundef nonnull @.str.55) #21
  br label %i40e_get_stat_strings.exit

i40e_get_stat_strings.exit:                       ; preds = %if.then30.i, %land.rhs.i.i40e_get_stat_strings.exit_crit_edge, %i40e_get_stats_count.exit.i.i40e_get_stat_strings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %add.ptr.i.i6 = getelementptr i8, ptr %netdev, i32 2304
  %35 = ptrtoint ptr %add.ptr.i.i6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i.i6, align 4
  %back.i7 = getelementptr inbounds %struct.i40e_vsi, ptr %36, i32 0, i32 57
  %37 = ptrtoint ptr %back.i7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %back.i7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #21
  %39 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %data, ptr %p.i, align 4
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef nonnull @i40e_gstrings_priv_flags) #21
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef getelementptr inbounds ([12 x %struct.i40e_priv_flags], ptr @i40e_gstrings_priv_flags, i32 0, i32 1)) #21
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef getelementptr inbounds ([12 x %struct.i40e_priv_flags], ptr @i40e_gstrings_priv_flags, i32 0, i32 2)) #21
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef getelementptr inbounds ([12 x %struct.i40e_priv_flags], ptr @i40e_gstrings_priv_flags, i32 0, i32 3)) #21
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef getelementptr inbounds ([12 x %struct.i40e_priv_flags], ptr @i40e_gstrings_priv_flags, i32 0, i32 4)) #21
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef getelementptr inbounds ([12 x %struct.i40e_priv_flags], ptr @i40e_gstrings_priv_flags, i32 0, i32 5)) #21
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef getelementptr inbounds ([12 x %struct.i40e_priv_flags], ptr @i40e_gstrings_priv_flags, i32 0, i32 6)) #21
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef getelementptr inbounds ([12 x %struct.i40e_priv_flags], ptr @i40e_gstrings_priv_flags, i32 0, i32 7)) #21
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef getelementptr inbounds ([12 x %struct.i40e_priv_flags], ptr @i40e_gstrings_priv_flags, i32 0, i32 8)) #21
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef getelementptr inbounds ([12 x %struct.i40e_priv_flags], ptr @i40e_gstrings_priv_flags, i32 0, i32 9)) #21
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef getelementptr inbounds ([12 x %struct.i40e_priv_flags], ptr @i40e_gstrings_priv_flags, i32 0, i32 10)) #21
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef getelementptr inbounds ([12 x %struct.i40e_priv_flags], ptr @i40e_gstrings_priv_flags, i32 0, i32 11)) #21
  %pf_id.i = getelementptr inbounds %struct.i40e_pf, ptr %38, i32 0, i32 1, i32 17
  %40 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pf_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp2.not.i = icmp eq i8 %41, 0
  br i1 %cmp2.not.i, label %for.body7.i, label %sw.bb2.i40e_get_priv_flag_strings.exit_crit_edge

sw.bb2.i40e_get_priv_flag_strings.exit_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_priv_flag_strings.exit

for.body7.i:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p.i, ptr noundef nonnull @i40e_gl_gstrings_priv_flags) #21
  br label %i40e_get_priv_flag_strings.exit

i40e_get_priv_flag_strings.exit:                  ; preds = %for.body7.i, %sw.bb2.i40e_get_priv_flag_strings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %i40e_get_priv_flag_strings.exit, %i40e_get_stat_strings.exit, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_phys_id(ptr nocapture noundef readonly %netdev, i32 noundef %state) #4 align 64 {
entry:
  %temp_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp_status) #21
  %4 = ptrtoint ptr %temp_status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %temp_status, align 2, !annotation !320
  %5 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %state, label %entry.sw.epilog.thread_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb20
    i32 0, label %sw.bb30
  ]

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %entry
  %hw_features = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 53
  %6 = ptrtoint ptr %hw_features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_features, align 4
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  %call2 = tail call i32 @i40e_led_get(ptr noundef %hw1) #21
  %led_status = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 64
  %8 = ptrtoint ptr %led_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %led_status, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 35
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %flags, align 8
  %and3 = and i64 %10, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  %call6 = tail call i32 @i40e_aq_set_phy_debug(ptr noundef %hw1, i8 noundef zeroext 48, ptr noundef null) #21
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else.if.end_crit_edge
  %phy_led_val = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 122
  %call7 = call i32 @i40e_led_get_phy(ptr noundef %hw1, ptr noundef nonnull %temp_status, ptr noundef %phy_led_val) #21
  %11 = ptrtoint ptr %temp_status to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %temp_status, align 2
  %conv = zext i16 %12 to i32
  %led_status8 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 64
  %13 = ptrtoint ptr %led_status8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %led_status8, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %hw_features11 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 53
  %14 = ptrtoint ptr %hw_features11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_features11, align 4
  %and12 = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %sw.bb10.sw.epilog.thread.sink.split_crit_edge, label %if.else15

sw.bb10.sw.epilog.thread.sink.split_crit_edge:    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.thread.sink.split

if.else15:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #23
  %led_status16 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 64
  %16 = ptrtoint ptr %led_status16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %led_status16, align 4
  %conv17 = trunc i32 %17 to i16
  %call18 = tail call i32 @i40e_led_set_phy(ptr noundef %hw1, i1 noundef zeroext true, i16 noundef zeroext %conv17, i32 noundef 0) #21
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %hw_features21 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 53
  %18 = ptrtoint ptr %hw_features21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_features21, align 4
  %and22 = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %sw.bb20.sw.epilog.thread.sink.split_crit_edge, label %if.else25

sw.bb20.sw.epilog.thread.sink.split_crit_edge:    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.thread.sink.split

if.else25:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #23
  %led_status26 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 64
  %20 = ptrtoint ptr %led_status26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %led_status26, align 4
  %conv27 = trunc i32 %21 to i16
  %call28 = tail call i32 @i40e_led_set_phy(ptr noundef %hw1, i1 noundef zeroext false, i16 noundef zeroext %conv27, i32 noundef 0) #21
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %hw_features31 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 53
  %22 = ptrtoint ptr %hw_features31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_features31, align 4
  %and32 = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %led_status35 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 64
  %24 = ptrtoint ptr %led_status35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %led_status35, align 4
  br i1 %tobool33.not, label %sw.bb30.sw.epilog.thread.sink.split_crit_edge, label %if.else36

sw.bb30.sw.epilog.thread.sink.split_crit_edge:    ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.thread.sink.split

if.else36:                                        ; preds = %sw.bb30
  %conv38 = trunc i32 %25 to i16
  %phy_led_val39 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 122
  %26 = ptrtoint ptr %phy_led_val39 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %phy_led_val39, align 4
  %conv40 = zext i16 %27 to i32
  %or = or i32 %conv40, -2147483648
  %call41 = tail call i32 @i40e_led_set_phy(ptr noundef %hw1, i1 noundef zeroext false, i16 noundef zeroext %conv38, i32 noundef %or) #21
  %flags42 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 35
  %28 = ptrtoint ptr %flags42 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %flags42, align 8
  %and43 = and i64 %29, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and43)
  %tobool44.not = icmp eq i64 %and43, 0
  br i1 %tobool44.not, label %if.then45, label %if.else36.sw.epilog_crit_edge

if.else36.sw.epilog_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then45:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #23
  %call46 = tail call i32 @i40e_aq_set_phy_debug(ptr noundef %hw1, i8 noundef zeroext 0, ptr noundef null) #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then45, %if.else36.sw.epilog_crit_edge, %if.else25, %if.else15
  %ret.0 = phi i32 [ %call41, %if.else36.sw.epilog_crit_edge ], [ %call41, %if.then45 ], [ %call28, %if.else25 ], [ %call18, %if.else15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool49.not = icmp eq i32 %ret.0, 0
  br i1 %tobool49.not, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.thread

sw.epilog.thread.sink.split:                      ; preds = %sw.bb30.sw.epilog.thread.sink.split_crit_edge, %sw.bb20.sw.epilog.thread.sink.split_crit_edge, %sw.bb10.sw.epilog.thread.sink.split_crit_edge
  %.sink = phi i32 [ 15, %sw.bb10.sw.epilog.thread.sink.split_crit_edge ], [ 0, %sw.bb20.sw.epilog.thread.sink.split_crit_edge ], [ %25, %sw.bb30.sw.epilog.thread.sink.split_crit_edge ]
  tail call void @i40e_led_set(ptr noundef %hw1, i32 noundef %.sink, i1 noundef zeroext false) #21
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.thread.sink.split, %sw.epilog.sw.epilog.thread_crit_edge, %entry.sw.epilog.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.thread, %sw.epilog.cleanup_crit_edge, %if.end, %if.then
  %retval.0 = phi i32 [ 2, %if.end ], [ 2, %if.then ], [ 0, %sw.epilog.thread ], [ -2, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp_status) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_get_ethtool_stats(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readnone %stats, ptr noundef %data) #4 align 64 {
entry:
  %data.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  tail call void @i40e_update_stats(ptr noundef %1) #21
  %call2 = tail call ptr @i40e_get_vsi_stats_struct(ptr noundef %1) #21
  %tobool.not.i.i = icmp eq ptr %call2, null
  br label %for.body.i

for.body.i:                                       ; preds = %i40e_add_one_ethtool_stat.exit.i.for.body.i_crit_edge, %entry
  %incdec.ptr.i271 = phi ptr [ %data, %entry ], [ %incdec.ptr.i, %i40e_add_one_ethtool_stat.exit.i.for.body.i_crit_edge ]
  %i.04.i = phi i32 [ 0, %entry ], [ %inc.i, %i40e_add_one_ethtool_stat.exit.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i64, ptr %incdec.ptr.i271, i32 1
  %arrayidx.i = getelementptr %struct.i40e_stats, ptr @i40e_gstrings_net_stats, i32 %i.04.i
  br i1 %tobool.not.i.i, label %for.body.i.i40e_add_one_ethtool_stat.exit.i_crit_edge, label %if.end.i.i

for.body.i.i40e_add_one_ethtool_stat.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_add_one_ethtool_stat.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %stat_offset.i.i = getelementptr %struct.i40e_stats, ptr @i40e_gstrings_net_stats, i32 %i.04.i, i32 2
  %4 = ptrtoint ptr %stat_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call2, i32 %5
  %sizeof_stat.i.i = getelementptr %struct.i40e_stats, ptr @i40e_gstrings_net_stats, i32 %i.04.i, i32 1
  %6 = ptrtoint ptr %sizeof_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizeof_stat.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %7, label %land.end.i.i [
    i32 8, label %sw.bb.i.i
    i32 4, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
    i32 1, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.i.i, align 8
  br label %i40e_add_one_ethtool_stat.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 4
  %conv.i.i = zext i32 %12 to i64
  br label %i40e_add_one_ethtool_stat.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i, align 2
  %conv3.i.i = zext i16 %14 to i64
  br label %i40e_add_one_ethtool_stat.exit.i

sw.bb4.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i.i, align 1
  %conv5.i.i = zext i8 %16 to i64
  br label %i40e_add_one_ethtool_stat.exit.i

land.end.i.i:                                     ; preds = %if.end.i.i
  %.b55.i.i = load i1, ptr @i40e_add_one_ethtool_stat.__already_done, align 1
  br i1 %.b55.i.i, label %land.end.i.i.i40e_add_one_ethtool_stat.exit.i_crit_edge, label %if.then12.i.i, !prof !325

land.end.i.i.i40e_add_one_ethtool_stat.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_add_one_ethtool_stat.exit.i

if.then12.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @i40e_add_one_ethtool_stat.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef %arrayidx.i) #21
  br label %i40e_add_one_ethtool_stat.exit.i

i40e_add_one_ethtool_stat.exit.i:                 ; preds = %if.then12.i.i, %land.end.i.i.i40e_add_one_ethtool_stat.exit.i_crit_edge, %sw.bb4.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i, %for.body.i.i40e_add_one_ethtool_stat.exit.i_crit_edge
  %.sink.i.i = phi i64 [ %10, %sw.bb.i.i ], [ %conv.i.i, %sw.bb1.i.i ], [ %conv3.i.i, %sw.bb2.i.i ], [ %conv5.i.i, %sw.bb4.i.i ], [ 0, %for.body.i.i40e_add_one_ethtool_stat.exit.i_crit_edge ], [ 0, %if.then12.i.i ], [ 0, %land.end.i.i.i40e_add_one_ethtool_stat.exit.i_crit_edge ]
  %17 = ptrtoint ptr %incdec.ptr.i271 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %.sink.i.i, ptr %incdec.ptr.i271, align 8
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %__i40e_add_ethtool_stats.exit, label %i40e_add_one_ethtool_stat.exit.i.for.body.i_crit_edge

i40e_add_one_ethtool_stat.exit.i.for.body.i_crit_edge: ; preds = %i40e_add_one_ethtool_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

__i40e_add_ethtool_stats.exit:                    ; preds = %i40e_add_one_ethtool_stat.exit.i
  %tobool.not.i.i127 = icmp eq ptr %1, null
  br label %for.body.i131

for.body.i131:                                    ; preds = %i40e_add_one_ethtool_stat.exit.i149.for.body.i131_crit_edge, %__i40e_add_ethtool_stats.exit
  %incdec.ptr.i129273 = phi ptr [ %incdec.ptr.i, %__i40e_add_ethtool_stats.exit ], [ %incdec.ptr.i129, %i40e_add_one_ethtool_stat.exit.i149.for.body.i131_crit_edge ]
  %i.04.i128 = phi i32 [ 0, %__i40e_add_ethtool_stats.exit ], [ %inc.i147, %i40e_add_one_ethtool_stat.exit.i149.for.body.i131_crit_edge ]
  %incdec.ptr.i129 = getelementptr i64, ptr %incdec.ptr.i129273, i32 1
  %arrayidx.i130 = getelementptr %struct.i40e_stats, ptr @i40e_gstrings_misc_stats, i32 %i.04.i128
  br i1 %tobool.not.i.i127, label %for.body.i131.i40e_add_one_ethtool_stat.exit.i149_crit_edge, label %if.end.i.i135

for.body.i131.i40e_add_one_ethtool_stat.exit.i149_crit_edge: ; preds = %for.body.i131
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_add_one_ethtool_stat.exit.i149

if.end.i.i135:                                    ; preds = %for.body.i131
  %stat_offset.i.i132 = getelementptr %struct.i40e_stats, ptr @i40e_gstrings_misc_stats, i32 %i.04.i128, i32 2
  %18 = ptrtoint ptr %stat_offset.i.i132 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stat_offset.i.i132, align 4
  %add.ptr.i.i133 = getelementptr i8, ptr %1, i32 %19
  %sizeof_stat.i.i134 = getelementptr %struct.i40e_stats, ptr @i40e_gstrings_misc_stats, i32 %i.04.i128, i32 1
  %20 = ptrtoint ptr %sizeof_stat.i.i134 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sizeof_stat.i.i134, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %21, label %land.end.i.i144 [
    i32 8, label %sw.bb.i.i136
    i32 4, label %sw.bb1.i.i138
    i32 2, label %sw.bb2.i.i140
    i32 1, label %sw.bb4.i.i142
  ]

sw.bb.i.i136:                                     ; preds = %if.end.i.i135
  call void @__sanitizer_cov_trace_pc() #23
  %23 = ptrtoint ptr %add.ptr.i.i133 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr.i.i133, align 8
  br label %i40e_add_one_ethtool_stat.exit.i149

sw.bb1.i.i138:                                    ; preds = %if.end.i.i135
  call void @__sanitizer_cov_trace_pc() #23
  %25 = ptrtoint ptr %add.ptr.i.i133 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i133, align 4
  %conv.i.i137 = zext i32 %26 to i64
  br label %i40e_add_one_ethtool_stat.exit.i149

sw.bb2.i.i140:                                    ; preds = %if.end.i.i135
  call void @__sanitizer_cov_trace_pc() #23
  %27 = ptrtoint ptr %add.ptr.i.i133 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i133, align 2
  %conv3.i.i139 = zext i16 %28 to i64
  br label %i40e_add_one_ethtool_stat.exit.i149

sw.bb4.i.i142:                                    ; preds = %if.end.i.i135
  call void @__sanitizer_cov_trace_pc() #23
  %29 = ptrtoint ptr %add.ptr.i.i133 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.i133, align 1
  %conv5.i.i141 = zext i8 %30 to i64
  br label %i40e_add_one_ethtool_stat.exit.i149

land.end.i.i144:                                  ; preds = %if.end.i.i135
  %.b55.i.i143 = load i1, ptr @i40e_add_one_ethtool_stat.__already_done, align 1
  br i1 %.b55.i.i143, label %land.end.i.i144.i40e_add_one_ethtool_stat.exit.i149_crit_edge, label %if.then12.i.i145, !prof !325

land.end.i.i144.i40e_add_one_ethtool_stat.exit.i149_crit_edge: ; preds = %land.end.i.i144
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_add_one_ethtool_stat.exit.i149

if.then12.i.i145:                                 ; preds = %land.end.i.i144
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @i40e_add_one_ethtool_stat.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef %arrayidx.i130) #21
  br label %i40e_add_one_ethtool_stat.exit.i149

i40e_add_one_ethtool_stat.exit.i149:              ; preds = %if.then12.i.i145, %land.end.i.i144.i40e_add_one_ethtool_stat.exit.i149_crit_edge, %sw.bb4.i.i142, %sw.bb2.i.i140, %sw.bb1.i.i138, %sw.bb.i.i136, %for.body.i131.i40e_add_one_ethtool_stat.exit.i149_crit_edge
  %.sink.i.i146 = phi i64 [ %24, %sw.bb.i.i136 ], [ %conv.i.i137, %sw.bb1.i.i138 ], [ %conv3.i.i139, %sw.bb2.i.i140 ], [ %conv5.i.i141, %sw.bb4.i.i142 ], [ 0, %for.body.i131.i40e_add_one_ethtool_stat.exit.i149_crit_edge ], [ 0, %if.then12.i.i145 ], [ 0, %land.end.i.i144.i40e_add_one_ethtool_stat.exit.i149_crit_edge ]
  %31 = ptrtoint ptr %incdec.ptr.i129273 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %.sink.i.i146, ptr %incdec.ptr.i129273, align 8
  %inc.i147 = add nuw nsw i32 %i.04.i128, 1
  %exitcond.not.i148 = icmp eq i32 %inc.i147, 12
  br i1 %exitcond.not.i148, label %__i40e_add_ethtool_stats.exit150, label %i40e_add_one_ethtool_stat.exit.i149.for.body.i131_crit_edge

i40e_add_one_ethtool_stat.exit.i149.for.body.i131_crit_edge: ; preds = %i40e_add_one_ethtool_stat.exit.i149
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i131

__i40e_add_ethtool_stats.exit150:                 ; preds = %i40e_add_one_ethtool_stat.exit.i149
  %32 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %incdec.ptr.i129, ptr %data.addr, align 4
  %33 = tail call i32 @llvm.read_register.i32(metadata !308) #21
  %and.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !326
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #21
  %call.i = tail call zeroext i1 @rcu_is_watching() #21
  br i1 %call.i, label %__i40e_add_ethtool_stats.exit150.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

__i40e_add_ethtool_stats.exit150.rcu_read_lock.exit_crit_edge: ; preds = %__i40e_add_ethtool_stats.exit150
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %__i40e_add_ethtool_stats.exit150
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 696, ptr noundef nonnull @.str.59) #21
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %__i40e_add_ethtool_stats.exit150.rcu_read_lock.exit_crit_edge
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %37 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp274.not = icmp eq i32 %38, 0
  br i1 %cmp274.not, label %rcu_read_lock.exit.for.end_crit_edge, label %do.end.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

do.end.lr.ph:                                     ; preds = %rcu_read_lock.exit
  %tx_rings = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 21
  %rx_rings = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 20
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.end.lr.ph
  %i.0275 = phi i32 [ 0, %do.end.lr.ph ], [ %inc, %do.end.do.end_crit_edge ]
  %39 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_rings, align 4
  %arrayidx = getelementptr ptr, ptr %40, i32 %i.0275
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %arrayidx, align 4
  call fastcc void @i40e_add_queue_stats(ptr noundef nonnull %data.addr, ptr noundef %42)
  %43 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_rings, align 8
  %arrayidx7 = getelementptr ptr, ptr %44, i32 %i.0275
  %45 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %arrayidx7, align 4
  call fastcc void @i40e_add_queue_stats(ptr noundef nonnull %data.addr, ptr noundef %46)
  %inc = add nuw i32 %i.0275, 1
  %47 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %48
  br i1 %cmp, label %do.end.do.end_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i151 = tail call zeroext i1 @rcu_is_watching() #21
  br i1 %call.i151, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i154

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_unlock.exit

land.lhs.true.i154:                               ; preds = %for.end
  %call1.i152 = tail call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i152)
  %tobool.not.i153 = icmp eq i32 %call1.i152, 0
  br i1 %tobool.not.i153, label %land.lhs.true.i154.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i156

land.lhs.true.i154.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i154
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_unlock.exit

land.lhs.true2.i156:                              ; preds = %land.lhs.true.i154
  %.b4.i155 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i155, label %land.lhs.true2.i156.rcu_read_unlock.exit_crit_edge, label %if.then.i157

land.lhs.true2.i156.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i156
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_unlock.exit

if.then.i157:                                     ; preds = %land.lhs.true2.i156
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 724, ptr noundef nonnull @.str.60) #21
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i157, %land.lhs.true2.i156.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i154.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !327
  %49 = tail call i32 @llvm.read_register.i32(metadata !308) #21
  %and.i.i.i.i.i158 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i158 to ptr
  %preempt_count.i.i.i.i159 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i159, align 4
  %sub.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i159, align 4
  tail call void @rcu_read_unlock_strict() #21
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #21
  %vsi8 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 74
  %53 = ptrtoint ptr %vsi8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vsi8, align 8
  %lan_vsi = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 71
  %55 = ptrtoint ptr %lan_vsi to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %lan_vsi, align 8
  %idxprom = zext i16 %56 to i32
  %arrayidx9 = getelementptr ptr, ptr %54, i32 %idxprom
  %57 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx9, align 4
  %cmp10.not = icmp eq ptr %1, %58
  br i1 %cmp10.not, label %lor.lhs.false, label %rcu_read_unlock.exit.check_data_pointer_crit_edge

rcu_read_unlock.exit.check_data_pointer_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %check_data_pointer

lor.lhs.false:                                    ; preds = %rcu_read_unlock.exit
  %partition_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 19
  %59 = ptrtoint ptr %partition_id to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %partition_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %60)
  %cmp11.not = icmp eq i16 %60, 1
  br i1 %cmp11.not, label %if.end, label %lor.lhs.false.check_data_pointer_crit_edge

lor.lhs.false.check_data_pointer_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %check_data_pointer

if.end:                                           ; preds = %lor.lhs.false
  %lan_veb = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 72
  %61 = ptrtoint ptr %lan_veb to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %lan_veb, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %62)
  %cmp18 = icmp ult i16 %62, 16
  br i1 %cmp18, label %land.end, label %if.end.if.end26.thread_crit_edge

if.end.if.end26.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end26.thread

land.end:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 54
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 8
  %and = and i32 %64, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.end.if.end26.thread_crit_edge, label %65

land.end.if.end26.thread_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end26.thread

65:                                               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #23
  %idxprom24 = zext i16 %62 to i32
  %arrayidx25 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 75, i32 %idxprom24
  %66 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx25, align 4
  tail call void @i40e_update_veb_stats(ptr noundef %67) #21
  br label %if.end26.thread

if.end26.thread:                                  ; preds = %65, %land.end.if.end26.thread_crit_edge, %if.end.if.end26.thread_crit_edge
  %veb.0270 = phi ptr [ %67, %65 ], [ null, %land.end.if.end26.thread_crit_edge ], [ null, %if.end.if.end26.thread_crit_edge ]
  %68 = phi i1 [ true, %65 ], [ false, %land.end.if.end26.thread_crit_edge ], [ false, %if.end.if.end26.thread_crit_edge ]
  %tobool.not.i.i160 = icmp eq ptr %veb.0270, null
  %69 = ptrtoint ptr %data.addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %data.addr.promoted276 = load ptr, ptr %data.addr, align 4
  br label %for.body.i164

for.body.i164:                                    ; preds = %i40e_add_one_ethtool_stat.exit.i182.for.body.i164_crit_edge, %if.end26.thread
  %incdec.ptr.i162277 = phi ptr [ %data.addr.promoted276, %if.end26.thread ], [ %incdec.ptr.i162, %i40e_add_one_ethtool_stat.exit.i182.for.body.i164_crit_edge ]
  %i.04.i161 = phi i32 [ 0, %if.end26.thread ], [ %inc.i180, %i40e_add_one_ethtool_stat.exit.i182.for.body.i164_crit_edge ]
  %incdec.ptr.i162 = getelementptr i64, ptr %incdec.ptr.i162277, i32 1
  %arrayidx.i163 = getelementptr %struct.i40e_stats, ptr @i40e_gstrings_veb_stats, i32 %i.04.i161
  br i1 %tobool.not.i.i160, label %for.body.i164.i40e_add_one_ethtool_stat.exit.i182_crit_edge, label %if.end.i.i168

for.body.i164.i40e_add_one_ethtool_stat.exit.i182_crit_edge: ; preds = %for.body.i164
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_add_one_ethtool_stat.exit.i182

if.end.i.i168:                                    ; preds = %for.body.i164
  %stat_offset.i.i165 = getelementptr %struct.i40e_stats, ptr @i40e_gstrings_veb_stats, i32 %i.04.i161, i32 2
  %70 = ptrtoint ptr %stat_offset.i.i165 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %stat_offset.i.i165, align 4
  %add.ptr.i.i166 = getelementptr i8, ptr %veb.0270, i32 %71
  %sizeof_stat.i.i167 = getelementptr %struct.i40e_stats, ptr @i40e_gstrings_veb_stats, i32 %i.04.i161, i32 1
  %72 = ptrtoint ptr %sizeof_stat.i.i167 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sizeof_stat.i.i167, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %73, label %land.end.i.i177 [
    i32 8, label %sw.bb.i.i169
    i32 4, label %sw.bb1.i.i171
    i32 2, label %sw.bb2.i.i173
    i32 1, label %sw.bb4.i.i175
  ]

sw.bb.i.i169:                                     ; preds = %if.end.i.i168
  call void @__sanitizer_cov_trace_pc() #23
  %75 = ptrtoint ptr %add.ptr.i.i166 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %add.ptr.i.i166, align 8
  br label %i40e_add_one_ethtool_stat.exit.i182

sw.bb1.i.i171:                                    ; preds = %if.end.i.i168
  call void @__sanitizer_cov_trace_pc() #23
  %77 = ptrtoint ptr %add.ptr.i.i166 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i.i166, align 4
  %conv.i.i170 = zext i32 %78 to i64
  br label %i40e_add_one_ethtool_stat.exit.i182

sw.bb2.i.i173:                                    ; preds = %if.end.i.i168
  call void @__sanitizer_cov_trace_pc() #23
  %79 = ptrtoint ptr %add.ptr.i.i166 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add.ptr.i.i166, align 2
  %conv3.i.i172 = zext i16 %80 to i64
  br label %i40e_add_one_ethtool_stat.exit.i182

sw.bb4.i.i175:                                    ; preds = %if.end.i.i168
  call void @__sanitizer_cov_trace_pc() #23
  %81 = ptrtoint ptr %add.ptr.i.i166 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr.i.i166, align 1
  %conv5.i.i174 = zext i8 %82 to i64
  br label %i40e_add_one_ethtool_stat.exit.i182

land.end.i.i177:                                  ; preds = %if.end.i.i168
  %.b55.i.i176 = load i1, ptr @i40e_add_one_ethtool_stat.__already_done, align 1
  br i1 %.b55.i.i176, label %land.end.i.i177.i40e_add_one_ethtool_stat.exit.i182_crit_edge, label %if.then12.i.i178, !prof !325

land.end.i.i177.i40e_add_one_ethtool_stat.exit.i182_crit_edge: ; preds = %land.end.i.i177
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_add_one_ethtool_stat.exit.i182

if.then12.i.i178:                                 ; preds = %land.end.i.i177
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @i40e_add_one_ethtool_stat.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef %arrayidx.i163) #21
  br label %i40e_add_one_ethtool_stat.exit.i182

i40e_add_one_ethtool_stat.exit.i182:              ; preds = %if.then12.i.i178, %land.end.i.i177.i40e_add_one_ethtool_stat.exit.i182_crit_edge, %sw.bb4.i.i175, %sw.bb2.i.i173, %sw.bb1.i.i171, %sw.bb.i.i169, %for.body.i164.i40e_add_one_ethtool_stat.exit.i182_crit_edge
  %.sink.i.i179 = phi i64 [ %76, %sw.bb.i.i169 ], [ %conv.i.i170, %sw.bb1.i.i171 ], [ %conv3.i.i172, %sw.bb2.i.i173 ], [ %conv5.i.i174, %sw.bb4.i.i175 ], [ 0, %for.body.i164.i40e_add_one_ethtool_stat.exit.i182_crit_edge ], [ 0, %if.then12.i.i178 ], [ 0, %land.end.i.i177.i40e_add_one_ethtool_stat.exit.i182_crit_edge ]
  %83 = ptrtoint ptr %incdec.ptr.i162277 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %.sink.i.i179, ptr %incdec.ptr.i162277, align 8
  %inc.i180 = add nuw nsw i32 %i.04.i161, 1
  %exitcond.not.i181 = icmp eq i32 %inc.i180, 12
  br i1 %exitcond.not.i181, label %for.cond29.preheader, label %i40e_add_one_ethtool_stat.exit.i182.for.body.i164_crit_edge

i40e_add_one_ethtool_stat.exit.i182.for.body.i164_crit_edge: ; preds = %i40e_add_one_ethtool_stat.exit.i182
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i164

for.cond29.preheader:                             ; preds = %i40e_add_one_ethtool_stat.exit.i182
  %84 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %incdec.ptr.i162, ptr %data.addr, align 4
  %tc_stats = getelementptr inbounds %struct.i40e_veb, ptr %veb.0270, i32 0, i32 19
  br label %for.body32

for.body32:                                       ; preds = %for.inc36.for.body32_crit_edge, %for.cond29.preheader
  %i.1286 = phi i32 [ 0, %for.cond29.preheader ], [ %inc37, %for.inc36.for.body32_crit_edge ]
  %incdec.ptr.i186.lcssa283285 = phi ptr [ %incdec.ptr.i162, %for.cond29.preheader ], [ %incdec.ptr.i186.lcssa284, %for.inc36.for.body32_crit_edge ]
  br i1 %68, label %i40e_add_one_ethtool_stat.exit.i206.3, label %for.body.i211.preheader

for.body.i211.preheader:                          ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #23
  %85 = call ptr @memset(ptr %incdec.ptr.i186.lcssa283285, i32 0, i32 32)
  %uglygep = getelementptr i8, ptr %incdec.ptr.i186.lcssa283285, i32 32
  br label %for.inc36

i40e_add_one_ethtool_stat.exit.i206.3:            ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx.i184 = getelementptr [8 x i64], ptr %tc_stats, i32 0, i32 %i.1286
  %86 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx.i184, align 8, !noalias !328
  %veb_tc.sroa.0.sroa.0.0.extract.shift = lshr i64 %87, 32
  %veb_tc.sroa.0.sroa.0.sroa.0.0.extract.shift526 = lshr i64 %87, 48
  %veb_tc.sroa.0.sroa.0.sroa.8.0.extract.trunc = trunc i64 %veb_tc.sroa.0.sroa.0.0.extract.shift to i32
  %arrayidx3.i = getelementptr %struct.i40e_veb, ptr %veb.0270, i32 0, i32 19, i32 1, i32 %i.1286
  %88 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx3.i, align 8, !noalias !328
  %veb_tc.sroa.8.sroa.0.0.extract.shift = lshr i64 %89, 32
  %veb_tc.sroa.8.sroa.0.sroa.0.0.extract.shift528 = lshr i64 %89, 48
  %veb_tc.sroa.8.sroa.0.sroa.8.0.extract.trunc = trunc i64 %veb_tc.sroa.8.sroa.0.0.extract.shift to i32
  %arrayidx7.i = getelementptr %struct.i40e_veb, ptr %veb.0270, i32 0, i32 19, i32 3, i32 %i.1286
  %90 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %arrayidx7.i, align 8, !noalias !328
  %incdec.ptr.i186 = getelementptr i64, ptr %incdec.ptr.i186.lcssa283285, i32 1
  %arrayidx5.i = getelementptr %struct.i40e_veb, ptr %veb.0270, i32 0, i32 19, i32 2, i32 %i.1286
  %92 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx5.i, align 8, !noalias !328
  %veb_tc.sroa.14.sroa.0.0.extract.shift = lshr i64 %93, 32
  %veb_tc.sroa.14.sroa.0.sroa.8.0.extract.trunc = trunc i64 %veb_tc.sroa.14.sroa.0.0.extract.shift to i32
  %veb_tc.sroa.14.sroa.0.sroa.0.0.extract.shift530 = lshr i64 %93, 48
  %94 = trunc i64 %veb_tc.sroa.14.sroa.0.sroa.0.0.extract.shift530 to i32
  %veb_tc.sroa.14.sroa.0.sroa.0.sroa.8.0.insert.ext459 = and i32 %94, 255
  %sh.diff532 = lshr i64 %93, 48
  %tr.sh.diff533 = trunc i64 %sh.diff532 to i32
  %veb_tc.sroa.14.sroa.0.sroa.0.sroa.0.0.insert.shift453 = and i32 %tr.sh.diff533, 65280
  %veb_tc.sroa.14.sroa.0.sroa.0.sroa.0.0.insert.insert455 = or i32 %veb_tc.sroa.14.sroa.0.sroa.0.sroa.8.0.insert.ext459, %veb_tc.sroa.14.sroa.0.sroa.0.sroa.0.0.insert.shift453
  %veb_tc.sroa.14.sroa.0.sroa.8.0.insert.ext444 = and i32 %veb_tc.sroa.14.sroa.0.sroa.8.0.extract.trunc, 65535
  %veb_tc.sroa.14.sroa.0.sroa.0.0.insert.shift441 = shl nuw i32 %veb_tc.sroa.14.sroa.0.sroa.0.sroa.0.0.insert.insert455, 16
  %veb_tc.sroa.14.sroa.0.sroa.0.0.insert.insert443 = or i32 %veb_tc.sroa.14.sroa.0.sroa.8.0.insert.ext444, %veb_tc.sroa.14.sroa.0.sroa.0.0.insert.shift441
  %veb_tc.sroa.14.sroa.8.0.insert.ext = and i64 %93, 4294967295
  %veb_tc.sroa.14.sroa.0.0.insert.ext = zext i32 %veb_tc.sroa.14.sroa.0.sroa.0.0.insert.insert443 to i64
  %veb_tc.sroa.14.sroa.0.0.insert.shift = shl nuw i64 %veb_tc.sroa.14.sroa.0.0.insert.ext, 32
  %veb_tc.sroa.14.sroa.0.0.insert.insert = or i64 %veb_tc.sroa.14.sroa.8.0.insert.ext, %veb_tc.sroa.14.sroa.0.0.insert.shift
  %95 = ptrtoint ptr %incdec.ptr.i186.lcssa283285 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %veb_tc.sroa.14.sroa.0.0.insert.insert, ptr %incdec.ptr.i186.lcssa283285, align 8
  %incdec.ptr.i186.1 = getelementptr i64, ptr %incdec.ptr.i186.lcssa283285, i32 2
  %96 = ptrtoint ptr %incdec.ptr.i186 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %91, ptr %incdec.ptr.i186, align 8
  %incdec.ptr.i186.2 = getelementptr i64, ptr %incdec.ptr.i186.lcssa283285, i32 3
  %97 = trunc i64 %veb_tc.sroa.0.sroa.0.sroa.0.0.extract.shift526 to i32
  %veb_tc.sroa.0.sroa.0.sroa.0.sroa.8.0.insert.ext507 = and i32 %97, 255
  %sh.diff534 = lshr i64 %87, 48
  %tr.sh.diff535 = trunc i64 %sh.diff534 to i32
  %veb_tc.sroa.0.sroa.0.sroa.0.sroa.0.0.insert.shift501 = and i32 %tr.sh.diff535, 65280
  %veb_tc.sroa.0.sroa.0.sroa.0.sroa.0.0.insert.insert503 = or i32 %veb_tc.sroa.0.sroa.0.sroa.0.sroa.8.0.insert.ext507, %veb_tc.sroa.0.sroa.0.sroa.0.sroa.0.0.insert.shift501
  %veb_tc.sroa.0.sroa.0.sroa.8.0.insert.ext492 = and i32 %veb_tc.sroa.0.sroa.0.sroa.8.0.extract.trunc, 65535
  %veb_tc.sroa.0.sroa.0.sroa.0.0.insert.shift489 = shl nuw i32 %veb_tc.sroa.0.sroa.0.sroa.0.sroa.0.0.insert.insert503, 16
  %veb_tc.sroa.0.sroa.0.sroa.0.0.insert.insert491 = or i32 %veb_tc.sroa.0.sroa.0.sroa.8.0.insert.ext492, %veb_tc.sroa.0.sroa.0.sroa.0.0.insert.shift489
  %veb_tc.sroa.0.sroa.8.0.insert.ext = and i64 %87, 4294967295
  %veb_tc.sroa.0.sroa.0.0.insert.ext = zext i32 %veb_tc.sroa.0.sroa.0.sroa.0.0.insert.insert491 to i64
  %veb_tc.sroa.0.sroa.0.0.insert.shift = shl nuw i64 %veb_tc.sroa.0.sroa.0.0.insert.ext, 32
  %veb_tc.sroa.0.sroa.0.0.insert.insert = or i64 %veb_tc.sroa.0.sroa.8.0.insert.ext, %veb_tc.sroa.0.sroa.0.0.insert.shift
  %98 = ptrtoint ptr %incdec.ptr.i186.1 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %veb_tc.sroa.0.sroa.0.0.insert.insert, ptr %incdec.ptr.i186.1, align 8
  %incdec.ptr.i186.3 = getelementptr i64, ptr %incdec.ptr.i186.lcssa283285, i32 4
  %99 = trunc i64 %veb_tc.sroa.8.sroa.0.sroa.0.0.extract.shift528 to i32
  %veb_tc.sroa.8.sroa.0.sroa.0.sroa.8.0.insert.ext483 = and i32 %99, 255
  %sh.diff536 = lshr i64 %89, 48
  %tr.sh.diff537 = trunc i64 %sh.diff536 to i32
  %veb_tc.sroa.8.sroa.0.sroa.0.sroa.0.0.insert.shift477 = and i32 %tr.sh.diff537, 65280
  %veb_tc.sroa.8.sroa.0.sroa.0.sroa.0.0.insert.insert479 = or i32 %veb_tc.sroa.8.sroa.0.sroa.0.sroa.8.0.insert.ext483, %veb_tc.sroa.8.sroa.0.sroa.0.sroa.0.0.insert.shift477
  %veb_tc.sroa.8.sroa.0.sroa.8.0.insert.ext468 = and i32 %veb_tc.sroa.8.sroa.0.sroa.8.0.extract.trunc, 65535
  %veb_tc.sroa.8.sroa.0.sroa.0.0.insert.shift465 = shl nuw i32 %veb_tc.sroa.8.sroa.0.sroa.0.sroa.0.0.insert.insert479, 16
  %veb_tc.sroa.8.sroa.0.sroa.0.0.insert.insert467 = or i32 %veb_tc.sroa.8.sroa.0.sroa.8.0.insert.ext468, %veb_tc.sroa.8.sroa.0.sroa.0.0.insert.shift465
  %veb_tc.sroa.8.sroa.8.0.insert.ext = and i64 %89, 4294967295
  %veb_tc.sroa.8.sroa.0.0.insert.ext = zext i32 %veb_tc.sroa.8.sroa.0.sroa.0.0.insert.insert467 to i64
  %veb_tc.sroa.8.sroa.0.0.insert.shift = shl nuw i64 %veb_tc.sroa.8.sroa.0.0.insert.ext, 32
  %veb_tc.sroa.8.sroa.0.0.insert.insert = or i64 %veb_tc.sroa.8.sroa.8.0.insert.ext, %veb_tc.sroa.8.sroa.0.0.insert.shift
  %100 = ptrtoint ptr %incdec.ptr.i186.2 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %veb_tc.sroa.8.sroa.0.0.insert.insert, ptr %incdec.ptr.i186.2, align 8
  br label %for.inc36

for.inc36:                                        ; preds = %i40e_add_one_ethtool_stat.exit.i206.3, %for.body.i211.preheader
  %incdec.ptr.i186.lcssa284 = phi ptr [ %incdec.ptr.i186.3, %i40e_add_one_ethtool_stat.exit.i206.3 ], [ %uglygep, %for.body.i211.preheader ]
  %inc37 = add nuw nsw i32 %i.1286, 1
  %exitcond.not = icmp eq i32 %inc37, 8
  br i1 %exitcond.not, label %for.end38, label %for.inc36.for.body32_crit_edge

for.inc36.for.body32_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body32

for.end38:                                        ; preds = %for.inc36
  %tobool.not.i.i217 = icmp eq ptr %3, null
  br label %for.body.i221

for.body.i221:                                    ; preds = %i40e_add_one_ethtool_stat.exit.i239.for.body.i221_crit_edge, %for.end38
  %incdec.ptr.i219289 = phi ptr [ %incdec.ptr.i186.lcssa284, %for.end38 ], [ %incdec.ptr.i219, %i40e_add_one_ethtool_stat.exit.i239.for.body.i221_crit_edge ]
  %i.04.i218 = phi i32 [ 0, %for.end38 ], [ %inc.i237, %i40e_add_one_ethtool_stat.exit.i239.for.body.i221_crit_edge ]
  %incdec.ptr.i219 = getelementptr i64, ptr %incdec.ptr.i219289, i32 1
  %arrayidx.i220 = getelementptr %struct.i40e_stats, ptr @i40e_gstrings_stats, i32 %i.04.i218
  br i1 %tobool.not.i.i217, label %for.body.i221.i40e_add_one_ethtool_stat.exit.i239_crit_edge, label %if.end.i.i225

for.body.i221.i40e_add_one_ethtool_stat.exit.i239_crit_edge: ; preds = %for.body.i221
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_add_one_ethtool_stat.exit.i239

if.end.i.i225:                                    ; preds = %for.body.i221
  %stat_offset.i.i222 = getelementptr %struct.i40e_stats, ptr @i40e_gstrings_stats, i32 %i.04.i218, i32 2
  %101 = ptrtoint ptr %stat_offset.i.i222 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %stat_offset.i.i222, align 4
  %add.ptr.i.i223 = getelementptr i8, ptr %3, i32 %102
  %sizeof_stat.i.i224 = getelementptr %struct.i40e_stats, ptr @i40e_gstrings_stats, i32 %i.04.i218, i32 1
  %103 = ptrtoint ptr %sizeof_stat.i.i224 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sizeof_stat.i.i224, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %104, label %land.end.i.i234 [
    i32 8, label %sw.bb.i.i226
    i32 4, label %sw.bb1.i.i228
    i32 2, label %sw.bb2.i.i230
    i32 1, label %sw.bb4.i.i232
  ]

sw.bb.i.i226:                                     ; preds = %if.end.i.i225
  call void @__sanitizer_cov_trace_pc() #23
  %106 = ptrtoint ptr %add.ptr.i.i223 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %add.ptr.i.i223, align 8
  br label %i40e_add_one_ethtool_stat.exit.i239

sw.bb1.i.i228:                                    ; preds = %if.end.i.i225
  call void @__sanitizer_cov_trace_pc() #23
  %108 = ptrtoint ptr %add.ptr.i.i223 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr.i.i223, align 4
  %conv.i.i227 = zext i32 %109 to i64
  br label %i40e_add_one_ethtool_stat.exit.i239

sw.bb2.i.i230:                                    ; preds = %if.end.i.i225
  call void @__sanitizer_cov_trace_pc() #23
  %110 = ptrtoint ptr %add.ptr.i.i223 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %add.ptr.i.i223, align 2
  %conv3.i.i229 = zext i16 %111 to i64
  br label %i40e_add_one_ethtool_stat.exit.i239

sw.bb4.i.i232:                                    ; preds = %if.end.i.i225
  call void @__sanitizer_cov_trace_pc() #23
  %112 = ptrtoint ptr %add.ptr.i.i223 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %add.ptr.i.i223, align 1
  %conv5.i.i231 = zext i8 %113 to i64
  br label %i40e_add_one_ethtool_stat.exit.i239

land.end.i.i234:                                  ; preds = %if.end.i.i225
  %.b55.i.i233 = load i1, ptr @i40e_add_one_ethtool_stat.__already_done, align 1
  br i1 %.b55.i.i233, label %land.end.i.i234.i40e_add_one_ethtool_stat.exit.i239_crit_edge, label %if.then12.i.i235, !prof !325

land.end.i.i234.i40e_add_one_ethtool_stat.exit.i239_crit_edge: ; preds = %land.end.i.i234
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_add_one_ethtool_stat.exit.i239

if.then12.i.i235:                                 ; preds = %land.end.i.i234
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @i40e_add_one_ethtool_stat.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef %arrayidx.i220) #21
  br label %i40e_add_one_ethtool_stat.exit.i239

i40e_add_one_ethtool_stat.exit.i239:              ; preds = %if.then12.i.i235, %land.end.i.i234.i40e_add_one_ethtool_stat.exit.i239_crit_edge, %sw.bb4.i.i232, %sw.bb2.i.i230, %sw.bb1.i.i228, %sw.bb.i.i226, %for.body.i221.i40e_add_one_ethtool_stat.exit.i239_crit_edge
  %.sink.i.i236 = phi i64 [ %107, %sw.bb.i.i226 ], [ %conv.i.i227, %sw.bb1.i.i228 ], [ %conv3.i.i229, %sw.bb2.i.i230 ], [ %conv5.i.i231, %sw.bb4.i.i232 ], [ 0, %for.body.i221.i40e_add_one_ethtool_stat.exit.i239_crit_edge ], [ 0, %if.then12.i.i235 ], [ 0, %land.end.i.i234.i40e_add_one_ethtool_stat.exit.i239_crit_edge ]
  %114 = ptrtoint ptr %incdec.ptr.i219289 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %.sink.i.i236, ptr %incdec.ptr.i219289, align 8
  %inc.i237 = add nuw nsw i32 %i.04.i218, 1
  %exitcond.not.i238 = icmp eq i32 %inc.i237, 55
  br i1 %exitcond.not.i238, label %i40e_add_one_ethtool_stat.exit.i239.i40e_add_one_ethtool_stat.exit.i264.4_crit_edge, label %i40e_add_one_ethtool_stat.exit.i239.for.body.i221_crit_edge

i40e_add_one_ethtool_stat.exit.i239.for.body.i221_crit_edge: ; preds = %i40e_add_one_ethtool_stat.exit.i239
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i221

i40e_add_one_ethtool_stat.exit.i239.i40e_add_one_ethtool_stat.exit.i264.4_crit_edge: ; preds = %i40e_add_one_ethtool_stat.exit.i239
  br label %i40e_add_one_ethtool_stat.exit.i264.4

i40e_add_one_ethtool_stat.exit.i264.4:            ; preds = %i40e_add_one_ethtool_stat.exit.i264.4.i40e_add_one_ethtool_stat.exit.i264.4_crit_edge, %i40e_add_one_ethtool_stat.exit.i239.i40e_add_one_ethtool_stat.exit.i264.4_crit_edge
  %i.2295 = phi i32 [ %inc44, %i40e_add_one_ethtool_stat.exit.i264.4.i40e_add_one_ethtool_stat.exit.i264.4_crit_edge ], [ 0, %i40e_add_one_ethtool_stat.exit.i239.i40e_add_one_ethtool_stat.exit.i264.4_crit_edge ]
  %incdec.ptr.i244.lcssa293294 = phi ptr [ %incdec.ptr.i244.4, %i40e_add_one_ethtool_stat.exit.i264.4.i40e_add_one_ethtool_stat.exit.i264.4_crit_edge ], [ %incdec.ptr.i219, %i40e_add_one_ethtool_stat.exit.i239.i40e_add_one_ethtool_stat.exit.i264.4_crit_edge ]
  %arrayidx.i241 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 10, i32 %i.2295
  %115 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx.i241, align 8, !noalias !331
  %pfc.sroa.0.sroa.0.0.extract.shift = lshr i64 %116, 32
  %pfc.sroa.0.sroa.0.sroa.0.0.extract.shift512 = lshr i64 %116, 48
  %pfc.sroa.0.sroa.0.sroa.9.0.extract.trunc = trunc i64 %pfc.sroa.0.sroa.0.0.extract.shift to i32
  %arrayidx4.i = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 11, i32 %i.2295
  %117 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx4.i, align 8, !noalias !331
  %pfc.sroa.9.sroa.0.0.extract.shift = lshr i64 %118, 32
  %pfc.sroa.9.sroa.0.sroa.0.0.extract.shift514 = lshr i64 %118, 48
  %pfc.sroa.9.sroa.0.sroa.9.0.extract.trunc = trunc i64 %pfc.sroa.9.sroa.0.0.extract.shift to i32
  %arrayidx10.i = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 15, i32 %i.2295
  %119 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx10.i, align 8, !noalias !331
  %pfc.sroa.21.sroa.0.0.extract.shift = lshr i64 %120, 32
  %pfc.sroa.21.sroa.0.sroa.0.0.extract.shift518 = lshr i64 %120, 48
  %pfc.sroa.21.sroa.0.sroa.9.0.extract.trunc = trunc i64 %pfc.sroa.21.sroa.0.0.extract.shift to i32
  %arrayidx13.i = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 16, i32 %i.2295
  %121 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx13.i, align 8, !noalias !331
  %incdec.ptr.i244 = getelementptr i64, ptr %incdec.ptr.i244.lcssa293294, i32 1
  %arrayidx7.i242 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 14, i32 %i.2295
  %123 = ptrtoint ptr %arrayidx7.i242 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx7.i242, align 8, !noalias !331
  %pfc.sroa.15.sroa.0.0.extract.shift = lshr i64 %124, 32
  %pfc.sroa.15.sroa.0.sroa.9.0.extract.trunc = trunc i64 %pfc.sroa.15.sroa.0.0.extract.shift to i32
  %pfc.sroa.15.sroa.0.sroa.0.0.extract.shift516 = lshr i64 %124, 48
  %125 = trunc i64 %pfc.sroa.15.sroa.0.sroa.0.0.extract.shift516 to i32
  %pfc.sroa.15.sroa.0.sroa.0.sroa.9.0.insert.ext362 = and i32 %125, 255
  %sh.diff = lshr i64 %124, 48
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %pfc.sroa.15.sroa.0.sroa.0.sroa.0.0.insert.shift356 = and i32 %tr.sh.diff, 65280
  %pfc.sroa.15.sroa.0.sroa.0.sroa.0.0.insert.insert358 = or i32 %pfc.sroa.15.sroa.0.sroa.0.sroa.9.0.insert.ext362, %pfc.sroa.15.sroa.0.sroa.0.sroa.0.0.insert.shift356
  %pfc.sroa.15.sroa.0.sroa.9.0.insert.ext347 = and i32 %pfc.sroa.15.sroa.0.sroa.9.0.extract.trunc, 65535
  %pfc.sroa.15.sroa.0.sroa.0.0.insert.shift344 = shl nuw i32 %pfc.sroa.15.sroa.0.sroa.0.sroa.0.0.insert.insert358, 16
  %pfc.sroa.15.sroa.0.sroa.0.0.insert.insert346 = or i32 %pfc.sroa.15.sroa.0.sroa.9.0.insert.ext347, %pfc.sroa.15.sroa.0.sroa.0.0.insert.shift344
  %pfc.sroa.15.sroa.9.0.insert.ext = and i64 %124, 4294967295
  %pfc.sroa.15.sroa.0.0.insert.ext = zext i32 %pfc.sroa.15.sroa.0.sroa.0.0.insert.insert346 to i64
  %pfc.sroa.15.sroa.0.0.insert.shift = shl nuw i64 %pfc.sroa.15.sroa.0.0.insert.ext, 32
  %pfc.sroa.15.sroa.0.0.insert.insert = or i64 %pfc.sroa.15.sroa.9.0.insert.ext, %pfc.sroa.15.sroa.0.0.insert.shift
  %126 = ptrtoint ptr %incdec.ptr.i244.lcssa293294 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %pfc.sroa.15.sroa.0.0.insert.insert, ptr %incdec.ptr.i244.lcssa293294, align 8
  %incdec.ptr.i244.1 = getelementptr i64, ptr %incdec.ptr.i244.lcssa293294, i32 2
  %127 = trunc i64 %pfc.sroa.21.sroa.0.sroa.0.0.extract.shift518 to i32
  %pfc.sroa.21.sroa.0.sroa.0.sroa.9.0.insert.ext335 = and i32 %127, 255
  %sh.diff520 = lshr i64 %120, 48
  %tr.sh.diff521 = trunc i64 %sh.diff520 to i32
  %pfc.sroa.21.sroa.0.sroa.0.sroa.0.0.insert.shift329 = and i32 %tr.sh.diff521, 65280
  %pfc.sroa.21.sroa.0.sroa.0.sroa.0.0.insert.insert331 = or i32 %pfc.sroa.21.sroa.0.sroa.0.sroa.9.0.insert.ext335, %pfc.sroa.21.sroa.0.sroa.0.sroa.0.0.insert.shift329
  %pfc.sroa.21.sroa.0.sroa.9.0.insert.ext320 = and i32 %pfc.sroa.21.sroa.0.sroa.9.0.extract.trunc, 65535
  %pfc.sroa.21.sroa.0.sroa.0.0.insert.shift317 = shl nuw i32 %pfc.sroa.21.sroa.0.sroa.0.sroa.0.0.insert.insert331, 16
  %pfc.sroa.21.sroa.0.sroa.0.0.insert.insert319 = or i32 %pfc.sroa.21.sroa.0.sroa.9.0.insert.ext320, %pfc.sroa.21.sroa.0.sroa.0.0.insert.shift317
  %pfc.sroa.21.sroa.9.0.insert.ext = and i64 %120, 4294967295
  %pfc.sroa.21.sroa.0.0.insert.ext = zext i32 %pfc.sroa.21.sroa.0.sroa.0.0.insert.insert319 to i64
  %pfc.sroa.21.sroa.0.0.insert.shift = shl nuw i64 %pfc.sroa.21.sroa.0.0.insert.ext, 32
  %pfc.sroa.21.sroa.0.0.insert.insert = or i64 %pfc.sroa.21.sroa.9.0.insert.ext, %pfc.sroa.21.sroa.0.0.insert.shift
  %128 = ptrtoint ptr %incdec.ptr.i244 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %pfc.sroa.21.sroa.0.0.insert.insert, ptr %incdec.ptr.i244, align 8
  %incdec.ptr.i244.2 = getelementptr i64, ptr %incdec.ptr.i244.lcssa293294, i32 3
  %129 = trunc i64 %pfc.sroa.0.sroa.0.sroa.0.0.extract.shift512 to i32
  %pfc.sroa.0.sroa.0.sroa.0.sroa.9.0.insert.ext416 = and i32 %129, 255
  %sh.diff522 = lshr i64 %116, 48
  %tr.sh.diff523 = trunc i64 %sh.diff522 to i32
  %pfc.sroa.0.sroa.0.sroa.0.sroa.0.0.insert.shift410 = and i32 %tr.sh.diff523, 65280
  %pfc.sroa.0.sroa.0.sroa.0.sroa.0.0.insert.insert412 = or i32 %pfc.sroa.0.sroa.0.sroa.0.sroa.9.0.insert.ext416, %pfc.sroa.0.sroa.0.sroa.0.sroa.0.0.insert.shift410
  %pfc.sroa.0.sroa.0.sroa.9.0.insert.ext401 = and i32 %pfc.sroa.0.sroa.0.sroa.9.0.extract.trunc, 65535
  %pfc.sroa.0.sroa.0.sroa.0.0.insert.shift398 = shl nuw i32 %pfc.sroa.0.sroa.0.sroa.0.sroa.0.0.insert.insert412, 16
  %pfc.sroa.0.sroa.0.sroa.0.0.insert.insert400 = or i32 %pfc.sroa.0.sroa.0.sroa.9.0.insert.ext401, %pfc.sroa.0.sroa.0.sroa.0.0.insert.shift398
  %pfc.sroa.0.sroa.9.0.insert.ext = and i64 %116, 4294967295
  %pfc.sroa.0.sroa.0.0.insert.ext = zext i32 %pfc.sroa.0.sroa.0.sroa.0.0.insert.insert400 to i64
  %pfc.sroa.0.sroa.0.0.insert.shift = shl nuw i64 %pfc.sroa.0.sroa.0.0.insert.ext, 32
  %pfc.sroa.0.sroa.0.0.insert.insert = or i64 %pfc.sroa.0.sroa.9.0.insert.ext, %pfc.sroa.0.sroa.0.0.insert.shift
  %130 = ptrtoint ptr %incdec.ptr.i244.1 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %pfc.sroa.0.sroa.0.0.insert.insert, ptr %incdec.ptr.i244.1, align 8
  %incdec.ptr.i244.3 = getelementptr i64, ptr %incdec.ptr.i244.lcssa293294, i32 4
  %131 = trunc i64 %pfc.sroa.9.sroa.0.sroa.0.0.extract.shift514 to i32
  %pfc.sroa.9.sroa.0.sroa.0.sroa.9.0.insert.ext389 = and i32 %131, 255
  %sh.diff524 = lshr i64 %118, 48
  %tr.sh.diff525 = trunc i64 %sh.diff524 to i32
  %pfc.sroa.9.sroa.0.sroa.0.sroa.0.0.insert.shift383 = and i32 %tr.sh.diff525, 65280
  %pfc.sroa.9.sroa.0.sroa.0.sroa.0.0.insert.insert385 = or i32 %pfc.sroa.9.sroa.0.sroa.0.sroa.9.0.insert.ext389, %pfc.sroa.9.sroa.0.sroa.0.sroa.0.0.insert.shift383
  %pfc.sroa.9.sroa.0.sroa.9.0.insert.ext374 = and i32 %pfc.sroa.9.sroa.0.sroa.9.0.extract.trunc, 65535
  %pfc.sroa.9.sroa.0.sroa.0.0.insert.shift371 = shl nuw i32 %pfc.sroa.9.sroa.0.sroa.0.sroa.0.0.insert.insert385, 16
  %pfc.sroa.9.sroa.0.sroa.0.0.insert.insert373 = or i32 %pfc.sroa.9.sroa.0.sroa.9.0.insert.ext374, %pfc.sroa.9.sroa.0.sroa.0.0.insert.shift371
  %pfc.sroa.9.sroa.9.0.insert.ext = and i64 %118, 4294967295
  %pfc.sroa.9.sroa.0.0.insert.ext = zext i32 %pfc.sroa.9.sroa.0.sroa.0.0.insert.insert373 to i64
  %pfc.sroa.9.sroa.0.0.insert.shift = shl nuw i64 %pfc.sroa.9.sroa.0.0.insert.ext, 32
  %pfc.sroa.9.sroa.0.0.insert.insert = or i64 %pfc.sroa.9.sroa.9.0.insert.ext, %pfc.sroa.9.sroa.0.0.insert.shift
  %132 = ptrtoint ptr %incdec.ptr.i244.2 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %pfc.sroa.9.sroa.0.0.insert.insert, ptr %incdec.ptr.i244.2, align 8
  %incdec.ptr.i244.4 = getelementptr i64, ptr %incdec.ptr.i244.lcssa293294, i32 5
  %133 = ptrtoint ptr %incdec.ptr.i244.3 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %122, ptr %incdec.ptr.i244.3, align 8
  %inc44 = add nuw nsw i32 %i.2295, 1
  %exitcond296.not = icmp eq i32 %inc44, 8
  br i1 %exitcond296.not, label %check_data_pointer.loopexit, label %i40e_add_one_ethtool_stat.exit.i264.4.i40e_add_one_ethtool_stat.exit.i264.4_crit_edge

i40e_add_one_ethtool_stat.exit.i264.4.i40e_add_one_ethtool_stat.exit.i264.4_crit_edge: ; preds = %i40e_add_one_ethtool_stat.exit.i264.4
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_add_one_ethtool_stat.exit.i264.4

check_data_pointer.loopexit:                      ; preds = %i40e_add_one_ethtool_stat.exit.i264.4
  call void @__sanitizer_cov_trace_pc() #23
  %134 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %incdec.ptr.i244.4, ptr %data.addr, align 4
  br label %check_data_pointer

check_data_pointer:                               ; preds = %check_data_pointer.loopexit, %lor.lhs.false.check_data_pointer_crit_edge, %rcu_read_unlock.exit.check_data_pointer_crit_edge
  %135 = ptrtoint ptr %data.addr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %136 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  %137 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %138, i32 0, i32 57
  %139 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %back.i, align 8
  %vsi2.i = getelementptr inbounds %struct.i40e_pf, ptr %140, i32 0, i32 74
  %141 = ptrtoint ptr %vsi2.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %vsi2.i, align 8
  %lan_vsi.i = getelementptr inbounds %struct.i40e_pf, ptr %140, i32 0, i32 71
  %143 = ptrtoint ptr %lan_vsi.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %lan_vsi.i, align 8
  %idxprom.i = zext i16 %144 to i32
  %arrayidx.i267 = getelementptr ptr, ptr %142, i32 %idxprom.i
  %145 = ptrtoint ptr %arrayidx.i267 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i267, align 4
  %cmp.i = icmp eq ptr %138, %146
  br i1 %cmp.i, label %land.lhs.true.i268, label %check_data_pointer.if.else.i_crit_edge

check_data_pointer.if.else.i_crit_edge:           ; preds = %check_data_pointer
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else.i

land.lhs.true.i268:                               ; preds = %check_data_pointer
  %partition_id.i = getelementptr inbounds %struct.i40e_pf, ptr %140, i32 0, i32 1, i32 19
  %147 = ptrtoint ptr %partition_id.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %partition_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %148)
  %cmp3.i = icmp eq i16 %148, 1
  br i1 %cmp3.i, label %land.lhs.true.i268.i40e_get_stats_count.exit_crit_edge, label %land.lhs.true.i268.if.else.i_crit_edge

land.lhs.true.i268.if.else.i_crit_edge:           ; preds = %land.lhs.true.i268
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else.i

land.lhs.true.i268.i40e_get_stats_count.exit_crit_edge: ; preds = %land.lhs.true.i268
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_stats_count.exit

if.else.i:                                        ; preds = %land.lhs.true.i268.if.else.i_crit_edge, %check_data_pointer.if.else.i_crit_edge
  br label %i40e_get_stats_count.exit

i40e_get_stats_count.exit:                        ; preds = %if.else.i, %land.lhs.true.i268.i40e_get_stats_count.exit_crit_edge
  %stats_len.0.i = phi i32 [ 23, %if.else.i ], [ 162, %land.lhs.true.i268.i40e_get_stats_count.exit_crit_edge ]
  %149 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %num_tx_queues, align 4
  %mul.i = shl i32 %150, 2
  %add.i = add i32 %mul.i, %stats_len.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div, i32 %add.i)
  %cmp47.not = icmp eq i32 %sub.ptr.div, %add.i
  br i1 %cmp47.not, label %i40e_get_stats_count.exit.if.end86_crit_edge, label %land.rhs53

i40e_get_stats_count.exit.if.end86_crit_edge:     ; preds = %i40e_get_stats_count.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end86

land.rhs53:                                       ; preds = %i40e_get_stats_count.exit
  %.b126 = load i1, ptr @i40e_get_ethtool_stats.__already_done, align 1
  br i1 %.b126, label %land.rhs53.if.end86_crit_edge, label %if.then60, !prof !325

land.rhs53.if.end86_crit_edge:                    ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end86

if.then60:                                        ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @i40e_get_ethtool_stats.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2361, i32 noundef 9, ptr noundef nonnull @.str.56) #21
  br label %if.end86

if.end86:                                         ; preds = %if.then60, %land.rhs53.if.end86_crit_edge, %i40e_get_stats_count.exit.if.end86_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_priv_flags(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = lshr i32 %5, 10
  %and.lobit = and i32 %and, 1
  %and.1 = lshr i32 %5, 26
  %6 = and i32 %and.1, 2
  %ret_flags.1.1 = or i32 %6, %and.lobit
  %and.2 = lshr i32 %5, 12
  %7 = and i32 %and.2, 4
  %ret_flags.1.2 = or i32 %7, %ret_flags.1.1
  %and.3 = lshr i32 %5, 6
  %8 = and i32 %and.3, 8
  %ret_flags.1.3 = or i32 %8, %ret_flags.1.2
  %and.4 = lshr i32 %5, 9
  %9 = and i32 %and.4, 16
  %ret_flags.1.4 = or i32 %9, %ret_flags.1.3
  %and.5 = lshr i32 %5, 6
  %10 = and i32 %and.5, 32
  %ret_flags.1.5 = or i32 %10, %ret_flags.1.4
  %and.6 = lshr i32 %5, 13
  %11 = and i32 %and.6, 64
  %ret_flags.1.6 = or i32 %11, %ret_flags.1.5
  %and.7 = lshr i32 %5, 9
  %12 = and i32 %and.7, 128
  %ret_flags.1.7 = or i32 %12, %ret_flags.1.6
  %and.8 = lshr i32 %5, 12
  %13 = and i32 %and.8, 256
  %ret_flags.1.8 = or i32 %13, %ret_flags.1.7
  %and.9 = lshr i32 %5, 15
  %14 = and i32 %and.9, 512
  %ret_flags.1.9 = or i32 %14, %ret_flags.1.8
  %and.10 = lshr i32 %5, 15
  %15 = and i32 %and.10, 1024
  %ret_flags.1.10 = or i32 %15, %ret_flags.1.9
  %16 = lshr i32 %5, 15
  %17 = and i32 %16, 2048
  %ret_flags.1.11 = or i32 %17, %ret_flags.1.10
  %pf_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 17
  %18 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pf_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp3.not = icmp eq i8 %19, 0
  br i1 %cmp3.not, label %for.cond7.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.cond7.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %22 = lshr i32 %21, 3
  %23 = and i32 %22, 4096
  %ret_flags.3 = or i32 %23, %ret_flags.1.11
  br label %cleanup

cleanup:                                          ; preds = %for.cond7.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_flags.1.11, %entry.cleanup_crit_edge ], [ %ret_flags.3, %for.cond7.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_priv_flags(ptr noundef %dev, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %flags2 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags2, align 8
  %conv = zext i32 %5 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %entry
  %i.0393 = phi i32 [ 0, %entry ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  %new_flags.0392 = phi i64 [ %conv, %entry ], [ %new_flags.1, %for.inc.critedge.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0393
  %and = and i32 %shl, %flags
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %flag4 = getelementptr [12 x %struct.i40e_priv_flags], ptr @i40e_gstrings_priv_flags, i32 0, i32 %i.0393, i32 1
  %6 = ptrtoint ptr %flag4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flag4, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %or = or i64 %7, %new_flags.0392
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %neg = xor i64 %7, -1
  %and5 = and i64 %new_flags.0392, %neg
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %new_flags.1 = phi i64 [ %or, %if.then ], [ %and5, %if.else ]
  %8 = and i32 %i.0393, 268435454
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %land.lhs.true, label %if.end.for.inc.critedge_crit_edge

if.end.for.inc.critedge_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.critedge

land.lhs.true:                                    ; preds = %if.end
  %xor = xor i64 %new_flags.1, %conv
  %neg9 = xor i32 %shl, -1
  %conv10 = zext i32 %neg9 to i64
  %and11 = and i64 %xor, %conv10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true.for.inc.critedge_crit_edge, label %land.lhs.true.cleanup280_crit_edge

land.lhs.true.cleanup280_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup280

land.lhs.true.for.inc.critedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.critedge

for.inc.critedge:                                 ; preds = %land.lhs.true.for.inc.critedge_crit_edge, %if.end.for.inc.critedge_crit_edge
  %inc = add nuw nsw i32 %i.0393, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.end:                                          ; preds = %for.inc.critedge
  %hw = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %pf_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 17
  %9 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pf_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp16.not = icmp eq i8 %10, 0
  br i1 %cmp16.not, label %for.cond20.preheader, label %for.end.flags_complete_crit_edge

for.end.flags_complete_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %flags_complete

for.cond20.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  %and27 = shl i32 %flags, 3
  %11 = and i32 %and27, 32768
  %12 = zext i32 %11 to i64
  %and35 = and i64 %new_flags.1, -32769
  %new_flags.3 = or i64 %and35, %12
  br label %flags_complete

flags_complete:                                   ; preds = %for.cond20.preheader, %for.end.flags_complete_crit_edge
  %new_flags.4 = phi i64 [ %new_flags.1, %for.end.flags_complete_crit_edge ], [ %new_flags.3, %for.cond20.preheader ]
  %xor55 = xor i64 %new_flags.4, %conv
  %and56 = and i64 %xor55, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and56)
  %tobool57.not = icmp eq i64 %and56, 0
  %13 = lshr exact i64 %and56, 10
  %14 = trunc i64 %13 to i32
  %and60 = and i64 %xor55, 1122304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and60)
  %tobool61.not = icmp eq i64 %and60, 0
  %reset_needed.1 = select i1 %tobool61.not, i32 %14, i32 8192
  %and64 = and i64 %new_flags.4, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and64)
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %flags_complete.if.end70_crit_edge, label %land.lhs.true66

flags_complete.if.end70_crit_edge:                ; preds = %flags_complete
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end70

land.lhs.true66:                                  ; preds = %flags_complete
  %hw_features = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 53
  %15 = ptrtoint ptr %hw_features to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_features, align 4
  %and67 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %land.lhs.true66.cleanup280_crit_edge, label %land.lhs.true66.if.end70_crit_edge

land.lhs.true66.if.end70_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end70

land.lhs.true66.cleanup280_crit_edge:             ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup280

if.end70:                                         ; preds = %land.lhs.true66.if.end70_crit_edge, %flags_complete.if.end70_crit_edge
  br i1 %tobool57.not, label %if.end70.if.end84_crit_edge, label %if.then73

if.end70.if.end84_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end84

if.then73:                                        ; preds = %if.end70
  %flags75 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 35
  %17 = ptrtoint ptr %flags75 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %flags75, align 8
  %and76 = and i64 %18, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and76)
  %tobool77.not = icmp eq i64 %and76, 0
  br i1 %tobool77.not, label %do.end81, label %if.then73.if.end84_crit_edge

if.then73.if.end84_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end84

do.end81:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #23
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev82, ptr noundef nonnull @.str.61) #24
  br label %cleanup280

if.end84:                                         ; preds = %if.then73.if.end84_crit_edge, %if.end70.if.end84_crit_edge
  %and85 = and i64 %xor55, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and85)
  %tobool86.not = icmp eq i64 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end104_crit_edge, label %land.lhs.true87

if.end84.if.end104_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end104

land.lhs.true87:                                  ; preds = %if.end84
  %device_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 7
  %21 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device_id, align 8
  %23 = and i16 %22, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5514, i16 %23)
  %switch = icmp eq i16 %23, 5514
  br i1 %switch, label %land.lhs.true87.if.end104_crit_edge, label %do.end101

land.lhs.true87.if.end104_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end104

do.end101:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #23
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 8
  %dev103 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev103, ptr noundef nonnull @.str.64) #24
  br label %cleanup280

if.end104:                                        ; preds = %land.lhs.true87.if.end104_crit_edge, %if.end84.if.end104_crit_edge
  %and105 = and i64 %xor55, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and105)
  %tobool106.not = icmp eq i64 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end131_crit_edge, label %land.lhs.true107

if.end104.if.end131_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end131

land.lhs.true107:                                 ; preds = %if.end104
  %device_id109 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 7
  %26 = ptrtoint ptr %device_id109 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device_id109, align 8
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.161)
  switch i16 %27, label %do.end128 [
    i16 5515, label %land.lhs.true107.if.end131_crit_edge
    i16 5514, label %land.lhs.true107.if.end131_crit_edge402
    i16 14286, label %land.lhs.true107.if.end131_crit_edge403
  ]

land.lhs.true107.if.end131_crit_edge403:          ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end131

land.lhs.true107.if.end131_crit_edge402:          ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end131

land.lhs.true107.if.end131_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end131

do.end128:                                        ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #23
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 8
  %dev130 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev130, ptr noundef nonnull @.str.64) #24
  br label %cleanup280

if.end131:                                        ; preds = %land.lhs.true107.if.end131_crit_edge, %land.lhs.true107.if.end131_crit_edge402, %land.lhs.true107.if.end131_crit_edge403, %if.end104.if.end131_crit_edge
  %and132 = and i64 %xor55, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and132)
  %tobool133.not = icmp ne i64 %and132, 0
  %and135 = and i64 %new_flags.4, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and135)
  %tobool136.not = icmp eq i64 %and135, 0
  %or.cond = select i1 %tobool133.not, i1 %tobool136.not, i1 false
  br i1 %or.cond, label %if.then137, label %if.end131.if.end140_crit_edge

if.end131.if.end140_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end140

if.then137:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #23
  %state = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 23, ptr noundef %state) #21
  tail call void @_set_bit(i32 noundef 22, ptr noundef %state) #21
  br label %if.end140

if.end140:                                        ; preds = %if.then137, %if.end131.if.end140_crit_edge
  %and141 = and i64 %xor55, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and141)
  %tobool142.not = icmp eq i64 %and141, 0
  br i1 %tobool142.not, label %if.end140.if.end169_crit_edge, label %if.then143

if.end140.if.end169_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end169

if.then143:                                       ; preds = %if.end140
  %31 = trunc i64 %new_flags.4 to i16
  %32 = xor i16 %31, -1
  %33 = lshr i16 %32, 15
  %call149 = tail call i32 @i40e_aq_set_switch_config(ptr noundef %hw, i16 noundef zeroext %33, i16 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then143.if.end169_crit_edge, label %land.lhs.true151

if.then143.if.end169_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end169

land.lhs.true151:                                 ; preds = %if.then143
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %34 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp153.not = icmp eq i32 %35, 3
  br i1 %cmp153.not, label %land.lhs.true151.if.end169_crit_edge, label %do.end158

land.lhs.true151.if.end169_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end169

do.end158:                                        ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #23
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 8
  %dev160 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %call162 = tail call ptr @i40e_stat_str(ptr noundef %hw, i32 noundef %call149) #21
  %38 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %asq_last_status, align 8
  %call167 = tail call ptr @i40e_aq_str(ptr noundef %hw, i32 noundef %39) #21
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev160, ptr noundef nonnull @.str.69, ptr noundef %call162, ptr noundef %call167) #24
  br label %if.end169

if.end169:                                        ; preds = %do.end158, %land.lhs.true151.if.end169_crit_edge, %if.then143.if.end169_crit_edge, %if.end140.if.end169_crit_edge
  %40 = and i64 %xor55, 100663296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %.not388 = icmp eq i64 %40, 0
  br i1 %.not388, label %if.end169.if.end201_crit_edge, label %if.then174

if.end169.if.end201_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end201

if.then174:                                       ; preds = %if.end169
  %and175 = and i64 %new_flags.4, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and175)
  %tobool176.not.not = icmp eq i64 %and175, 0
  %and178 = and i64 %new_flags.4, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and178)
  %tobool179.not = icmp eq i64 %and178, 0
  %41 = and i64 %new_flags.4, 100663296
  call void @__sanitizer_cov_trace_const_cmp8(i64 100663296, i64 %41)
  %.not389 = icmp eq i64 %41, 100663296
  %.mux = select i1 %.not389, i8 16, i8 10
  %spec.select381 = select i1 %tobool179.not, i8 0, i8 5
  %fec_cfg.0 = select i1 %tobool176.not.not, i8 %spec.select381, i8 %.mux
  %call192 = tail call fastcc i32 @i40e_set_fec_cfg(ptr noundef %dev, i8 noundef zeroext %fec_cfg.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.then174.if.end201_crit_edge, label %do.end197

if.then174.if.end201_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end201

do.end197:                                        ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #23
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 8
  %dev199 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev199, ptr noundef nonnull @.str.72) #24
  br label %if.end201

if.end201:                                        ; preds = %do.end197, %if.then174.if.end201_crit_edge, %if.end169.if.end201_crit_edge
  %and202 = and i64 %xor55, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and202)
  %tobool203.not = icmp eq i64 %and202, 0
  %and205 = and i64 %conv, 134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and205)
  %tobool206.not = icmp eq i64 %and205, 0
  %or.cond382 = select i1 %tobool203.not, i1 true, i1 %tobool206.not
  br i1 %or.cond382, label %if.end213, label %do.end210

do.end210:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #23
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 8
  %dev212 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev212, ptr noundef nonnull @.str.75) #24
  br label %cleanup280

if.end213:                                        ; preds = %if.end201
  %and215 = and i64 %and202, %new_flags.4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and215)
  %tobool216.not = icmp eq i64 %and215, 0
  %and218 = and i64 %new_flags.4, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and218)
  %tobool219.not = icmp eq i64 %and218, 0
  %or.cond383 = or i1 %tobool216.not, %tobool219.not
  br i1 %or.cond383, label %if.end213.if.end226_crit_edge, label %do.end223

if.end213.if.end226_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end226

do.end223:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #23
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 8
  %dev225 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev225, ptr noundef nonnull @.str.79) #24
  br label %if.end226

if.end226:                                        ; preds = %do.end223, %if.end213.if.end226_crit_edge
  br i1 %tobool57.not, label %if.end226.if.end274_crit_edge, label %if.then229

if.end226.if.end274_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end274

if.then229:                                       ; preds = %if.end226
  %and230 = and i64 %new_flags.4, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and230)
  %tobool231.not = icmp eq i64 %and230, 0
  br i1 %tobool231.not, label %if.else238, label %if.then232

if.then232:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #23
  %call233 = tail call i32 @i40e_dcb_sw_default_config(ptr noundef %3) #21
  %call235 = tail call i32 @i40e_aq_cfg_lldp_mib_change_event(ptr noundef %hw, i1 noundef zeroext false, ptr noundef null) #21
  %call237 = tail call i32 @i40e_aq_stop_lldp(ptr noundef %hw, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef null) #21
  br label %if.end274

if.else238:                                       ; preds = %if.then229
  %call240 = tail call i32 @i40e_aq_start_lldp(ptr noundef %hw, i1 noundef zeroext false, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.else238.if.end274_crit_edge, label %if.then242

if.else238.if.end274_crit_edge:                   ; preds = %if.else238
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end274

if.then242:                                       ; preds = %if.else238
  %asq_last_status245 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %48 = ptrtoint ptr %asq_last_status245 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %asq_last_status245, align 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %49, label %do.end265 [
    i32 13, label %if.end274.thread
    i32 1, label %do.end254
    i32 8, label %do.end260
  ]

if.end274.thread:                                 ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #23
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %3, align 8
  %dev250 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev250, ptr noundef nonnull @.str.82) #24
  %conv275386 = trunc i64 %new_flags.4 to i32
  %53 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv275386, ptr %flags2, align 8
  br label %cleanup280

do.end254:                                        ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #23
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 8
  %dev256 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev256, ptr noundef nonnull @.str.85) #24
  br label %cleanup280

do.end260:                                        ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #23
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 8
  %dev262 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev262, ptr noundef nonnull @.str.88) #24
  br label %cleanup280

do.end265:                                        ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #23
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 8
  %dev267 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %call269 = tail call ptr @i40e_stat_str(ptr noundef %hw, i32 noundef %call240) #21
  %call271 = tail call ptr @i40e_aq_str(ptr noundef %hw, i32 noundef %49) #21
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev267, ptr noundef nonnull @.str.91, ptr noundef %call269, ptr noundef %call271) #24
  br label %cleanup280

if.end274:                                        ; preds = %if.else238.if.end274_crit_edge, %if.then232, %if.end226.if.end274_crit_edge
  %conv275 = trunc i64 %new_flags.4 to i32
  %60 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv275, ptr %flags2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset_needed.1)
  %tobool277.not = icmp eq i32 %reset_needed.1, 0
  br i1 %tobool277.not, label %if.end274.cleanup280_crit_edge, label %if.then278

if.end274.cleanup280_crit_edge:                   ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup280

if.then278:                                       ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @i40e_do_reset(ptr noundef %3, i32 noundef %reset_needed.1, i1 noundef zeroext true) #21
  br label %cleanup280

cleanup280:                                       ; preds = %if.then278, %if.end274.cleanup280_crit_edge, %do.end265, %do.end260, %do.end254, %if.end274.thread, %do.end210, %do.end128, %do.end101, %do.end81, %land.lhs.true66.cleanup280_crit_edge, %land.lhs.true.cleanup280_crit_edge
  %retval.4 = phi i32 [ -95, %do.end101 ], [ -95, %do.end128 ], [ -95, %do.end210 ], [ -22, %do.end265 ], [ -16, %do.end260 ], [ -22, %do.end254 ], [ -95, %do.end81 ], [ -95, %land.lhs.true66.cleanup280_crit_edge ], [ 0, %if.then278 ], [ 0, %if.end274.cleanup280_crit_edge ], [ 0, %if.end274.thread ], [ -95, %land.lhs.true.cleanup280_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i40e_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %sset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %sset, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %2, i32 0, i32 57
  %3 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back.i, align 8
  %vsi2.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 74
  %5 = ptrtoint ptr %vsi2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vsi2.i, align 8
  %lan_vsi.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 71
  %7 = ptrtoint ptr %lan_vsi.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %lan_vsi.i, align 8
  %idxprom.i = zext i16 %8 to i32
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %2, %10
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb2.if.else.i_crit_edge

sw.bb2.if.else.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb2
  %partition_id.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 1, i32 19
  %11 = ptrtoint ptr %partition_id.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %partition_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp3.i = icmp eq i16 %12, 1
  br i1 %cmp3.i, label %land.lhs.true.i.i40e_get_stats_count.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else.i

land.lhs.true.i.i40e_get_stats_count.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_stats_count.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb2.if.else.i_crit_edge
  br label %i40e_get_stats_count.exit

i40e_get_stats_count.exit:                        ; preds = %if.else.i, %land.lhs.true.i.i40e_get_stats_count.exit_crit_edge
  %stats_len.0.i = phi i32 [ 23, %if.else.i ], [ 162, %land.lhs.true.i.i40e_get_stats_count.exit_crit_edge ]
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %13 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_tx_queues.i, align 4
  %mul.i = shl i32 %14, 2
  %add.i = add i32 %mul.i, %stats_len.0.i
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %16, i32 0, i32 57
  %17 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %back, align 8
  %pf_id = getelementptr inbounds %struct.i40e_pf, ptr %18, i32 0, i32 1, i32 17
  %19 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pf_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  %add = select i1 %cmp, i32 13, i32 12
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb4, %i40e_get_stats_count.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ %add, %sw.bb4 ], [ %add.i, %i40e_get_stats_count.exit ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_rxnfc(ptr nocapture noundef readonly %netdev, ptr noundef %cmd, ptr nocapture noundef writeonly %rule_locs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 41, label %sw.bb3
    i32 46, label %sw.bb5
    i32 47, label %sw.bb10
    i32 48, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %rss_size = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rss_size, align 2
  %conv = zext i16 %8 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %data, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %hw1.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %data.i, align 8
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flow_type.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %12, label %sw.bb3.sw.epilog_crit_edge [
    i32 1, label %sw.bb3.if.end.i_crit_edge
    i32 2, label %sw.bb2.i
    i32 5, label %sw.bb3.i
    i32 6, label %sw.bb4.i
    i32 3, label %sw.bb3.cleanup.sink.split.i_crit_edge
    i32 4, label %sw.bb3.cleanup.sink.split.i_crit_edge57
    i32 9, label %sw.bb3.cleanup.sink.split.i_crit_edge58
    i32 10, label %sw.bb3.cleanup.sink.split.i_crit_edge59
    i32 16, label %sw.bb3.cleanup.sink.split.i_crit_edge60
    i32 7, label %sw.bb3.cleanup.sink.split.i_crit_edge61
    i32 8, label %sw.bb3.cleanup.sink.split.i_crit_edge62
    i32 11, label %sw.bb3.cleanup.sink.split.i_crit_edge63
    i32 12, label %sw.bb3.cleanup.sink.split.i_crit_edge64
    i32 17, label %sw.bb3.cleanup.sink.split.i_crit_edge65
  ]

sw.bb3.cleanup.sink.split.i_crit_edge65:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb3.cleanup.sink.split.i_crit_edge64:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb3.cleanup.sink.split.i_crit_edge63:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb3.cleanup.sink.split.i_crit_edge62:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb3.cleanup.sink.split.i_crit_edge61:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb3.cleanup.sink.split.i_crit_edge60:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb3.cleanup.sink.split.i_crit_edge59:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb3.cleanup.sink.split.i_crit_edge58:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb3.cleanup.sink.split.i_crit_edge57:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb3.cleanup.sink.split.i_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb3.if.end.i_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

sw.bb3.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

sw.bb4.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb3.if.end.i_crit_edge
  %flow_pctype.0.ph.i = phi i32 [ 264, %sw.bb3.if.end.i_crit_edge ], [ 248, %sw.bb2.i ], [ 344, %sw.bb3.i ], [ 328, %sw.bb4.i ]
  %add7.i = or i32 %flow_pctype.0.ph.i, 2520576
  %call.i = tail call i32 @i40e_read_rx_ctl(ptr noundef %hw1.i, i32 noundef %add7.i) #21
  %conv8.i = zext i32 %call.i to i64
  %add12.i = or i32 %flow_pctype.0.ph.i, 2520580
  %call13.i = tail call i32 @i40e_read_rx_ctl(ptr noundef %hw1.i, i32 noundef %add12.i) #21
  %conv14.i = zext i32 %call13.i to i64
  %shl.i = shl nuw i64 %conv14.i, 32
  %or15.i = or i64 %shl.i, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or15.i)
  %tobool16.not.i = icmp eq i64 %or15.i, 0
  br i1 %tobool16.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.then17.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then17.i:                                      ; preds = %if.end.i
  %14 = and i64 %conv14.i, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool18.not.i = icmp eq i64 %14, 0
  br i1 %tobool18.not.i, label %if.then17.i.if.end22.i_crit_edge, label %if.then19.i

if.then17.i.if.end22.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #23
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %data.i, align 8
  %or21.i = or i64 %16, 64
  store i64 %or21.i, ptr %data.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.then17.i.if.end22.i_crit_edge
  %17 = and i64 %conv14.i, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool24.not.i = icmp eq i64 %17, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end28.i_crit_edge, label %if.then25.i

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #23
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %data.i, align 8
  %or27.i = or i64 %19, 128
  store i64 %or27.i, ptr %data.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end28.i_crit_edge
  %20 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flow_type.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %21, label %if.end28.i.sw.epilog_crit_edge [
    i32 1, label %if.end28.i.if.then34.i_crit_edge
    i32 2, label %if.end28.i.if.then34.i_crit_edge66
    i32 5, label %if.end28.i.if.then54.i_crit_edge
    i32 6, label %if.end28.i.if.then54.i_crit_edge67
  ]

if.end28.i.if.then54.i_crit_edge67:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then54.i

if.end28.i.if.then54.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then54.i

if.end28.i.if.then34.i_crit_edge66:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then34.i

if.end28.i.if.then34.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then34.i

if.end28.i.sw.epilog_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then34.i:                                      ; preds = %if.end28.i.if.then34.i_crit_edge, %if.end28.i.if.then34.i_crit_edge66
  %23 = and i64 %conv14.i, 98304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool36.not.i = icmp eq i64 %23, 0
  br i1 %tobool36.not.i, label %if.then34.i.if.end40.i_crit_edge, label %if.then37.i

if.then34.i.if.end40.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end40.i

if.then37.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #23
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data.i, align 8
  %or39.i = or i64 %25, 16
  store i64 %or39.i, ptr %data.i, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %if.then34.i.if.end40.i_crit_edge
  %26 = and i64 %conv14.i, 24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool42.not.i = icmp eq i64 %26, 0
  br i1 %tobool42.not.i, label %if.end40.i.sw.epilog_crit_edge, label %if.end40.i.cleanup.sink.split.sink.split.i_crit_edge

if.end40.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.sink.split.i

if.end40.i.sw.epilog_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then54.i:                                      ; preds = %if.end28.i.if.then54.i_crit_edge, %if.end28.i.if.then54.i_crit_edge67
  %27 = and i64 %conv14.i, 522240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool56.not.i = icmp eq i64 %27, 0
  br i1 %tobool56.not.i, label %if.then54.i.if.end60.i_crit_edge, label %if.then57.i

if.then54.i.if.end60.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end60.i

if.then57.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #23
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %data.i, align 8
  %or59.i = or i64 %29, 16
  store i64 %or59.i, ptr %data.i, align 8
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then57.i, %if.then54.i.if.end60.i_crit_edge
  %30 = and i64 %conv14.i, 2040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool62.not.i = icmp eq i64 %30, 0
  br i1 %tobool62.not.i, label %if.end60.i.sw.epilog_crit_edge, label %if.end60.i.cleanup.sink.split.sink.split.i_crit_edge

if.end60.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.sink.split.i

if.end60.i.sw.epilog_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

cleanup.sink.split.sink.split.i:                  ; preds = %if.end60.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end40.i.cleanup.sink.split.sink.split.i_crit_edge
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %data.i, align 8
  %or45.i = or i64 %32, 32
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %sw.bb3.cleanup.sink.split.i_crit_edge, %sw.bb3.cleanup.sink.split.i_crit_edge57, %sw.bb3.cleanup.sink.split.i_crit_edge58, %sw.bb3.cleanup.sink.split.i_crit_edge59, %sw.bb3.cleanup.sink.split.i_crit_edge60, %sw.bb3.cleanup.sink.split.i_crit_edge61, %sw.bb3.cleanup.sink.split.i_crit_edge62, %sw.bb3.cleanup.sink.split.i_crit_edge63, %sw.bb3.cleanup.sink.split.i_crit_edge64, %sw.bb3.cleanup.sink.split.i_crit_edge65
  %.sink.i = phi i64 [ 48, %sw.bb3.cleanup.sink.split.i_crit_edge ], [ 48, %sw.bb3.cleanup.sink.split.i_crit_edge57 ], [ 48, %sw.bb3.cleanup.sink.split.i_crit_edge58 ], [ 48, %sw.bb3.cleanup.sink.split.i_crit_edge59 ], [ 48, %sw.bb3.cleanup.sink.split.i_crit_edge60 ], [ 48, %sw.bb3.cleanup.sink.split.i_crit_edge61 ], [ 48, %sw.bb3.cleanup.sink.split.i_crit_edge62 ], [ 48, %sw.bb3.cleanup.sink.split.i_crit_edge63 ], [ 48, %sw.bb3.cleanup.sink.split.i_crit_edge64 ], [ 48, %sw.bb3.cleanup.sink.split.i_crit_edge65 ], [ %or45.i, %cleanup.sink.split.sink.split.i ]
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %.sink.i, ptr %data.i, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %fdir_pf_active_filters = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 24
  %34 = ptrtoint ptr %fdir_pf_active_filters to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %fdir_pf_active_filters, align 4
  %conv6 = zext i16 %35 to i32
  %36 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv6, ptr %36, align 8
  %fdir_shared_filter_count.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 16
  %38 = ptrtoint ptr %fdir_shared_filter_count.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fdir_shared_filter_count.i, align 8
  %conv.i = zext i16 %39 to i32
  %fdir_pf_filter_count.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 19
  %40 = ptrtoint ptr %fdir_pf_filter_count.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %fdir_pf_filter_count.i, align 8
  %conv1.i = zext i16 %41 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  %42 = zext i32 %add.i to i64
  %data9 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %43 = ptrtoint ptr %data9 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %data9, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %fdir_filter_list.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 23
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %sw.bb10
  %rule.0.in.i = phi ptr [ %fdir_filter_list.i, %sw.bb10 ], [ %rule.0.i, %land.rhs.i.for.cond.i_crit_edge ]
  %44 = ptrtoint ptr %rule.0.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %rule.0.i = load ptr, ptr %rule.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %rule.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.sw.epilog_crit_edge, label %land.rhs.i

for.cond.i.sw.epilog_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

land.rhs.i:                                       ; preds = %for.cond.i
  %45 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %location.i, align 8
  %fd_id.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 22
  %47 = ptrtoint ptr %fd_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fd_id.i, align 4
  %cmp.not.i = icmp ugt i32 %46, %48
  br i1 %cmp.not.i, label %land.rhs.i.for.cond.i_crit_edge, label %lor.lhs.false.critedge.i

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

lor.lhs.false.critedge.i:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp18.not.i = icmp eq i32 %46, %48
  br i1 %cmp18.not.i, label %if.end20.i, label %lor.lhs.false.critedge.i.sw.epilog_crit_edge

lor.lhs.false.critedge.i.sw.epilog_crit_edge:     ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end20.i:                                       ; preds = %lor.lhs.false.critedge.i
  %flow_type.i25 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 1
  %49 = ptrtoint ptr %flow_type.i25 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flow_type.i25, align 4
  %conv.i26 = zext i8 %50 to i32
  %51 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv.i26, ptr %fs.i, align 8
  %52 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.167)
  switch i8 %50, label %if.end20.i.if.else.i_crit_edge [
    i8 13, label %if.end28.thread.i
    i8 14, label %if.end20.i.if.then44.i_crit_edge
    i8 6, label %if.end20.i.if.then44.i_crit_edge68
    i8 5, label %if.end20.i.if.then44.i_crit_edge69
    i8 7, label %if.end20.i.if.then44.i_crit_edge70
  ]

if.end20.i.if.then44.i_crit_edge70:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then44.i

if.end20.i.if.then44.i_crit_edge69:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then44.i

if.end20.i.if.then44.i_crit_edge68:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then44.i

if.end20.i.if.then44.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then44.i

if.end20.i.if.else.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else.i

if.end28.thread.i:                                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #23
  %h_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %ip_ver.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 4
  %53 = ptrtoint ptr %ip_ver.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %ip_ver.i, align 1
  %proto.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 5
  %54 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %proto.i, align 2
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %proto27.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i, i32 0, i32 5
  %55 = ptrtoint ptr %proto27.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %proto27.i, align 2
  br label %if.else.i

if.then44.i:                                      ; preds = %if.end20.i.if.then44.i_crit_edge, %if.end20.i.if.then44.i_crit_edge68, %if.end20.i.if.then44.i_crit_edge69, %if.end20.i.if.then44.i_crit_edge70
  %dst_port.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 8
  %56 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %dst_port.i, align 2
  %h_u45.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %58 = ptrtoint ptr %psrc.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %psrc.i, align 4
  %src_port.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 7
  %59 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %src_port.i, align 4
  %pdst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 3
  %61 = ptrtoint ptr %pdst.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %pdst.i, align 2
  %ip6dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %src_ip6.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 6
  %62 = call ptr @memcpy(ptr %ip6dst.i, ptr %src_ip6.i, i32 16)
  %dst_ip6.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 5
  %63 = call ptr @memcpy(ptr %h_u45.i, ptr %dst_ip6.i, i32 16)
  br label %if.end60.i27

if.else.i:                                        ; preds = %if.end28.thread.i, %if.end20.i.if.else.i_crit_edge
  %dst_port52.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 8
  %64 = ptrtoint ptr %dst_port52.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %dst_port52.i, align 2
  %h_u53.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %psrc54.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %66 = ptrtoint ptr %psrc54.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %psrc54.i, align 4
  %src_port55.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 7
  %67 = ptrtoint ptr %src_port55.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %src_port55.i, align 4
  %pdst57.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u53.i, i32 0, i32 3
  %69 = ptrtoint ptr %pdst57.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %pdst57.i, align 2
  %dst_ip.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 3
  %70 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dst_ip.i, align 4
  %72 = ptrtoint ptr %h_u53.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %h_u53.i, align 4
  %src_ip.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 4
  %73 = ptrtoint ptr %src_ip.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %src_ip.i, align 4
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %75 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %ip4dst.i, align 4
  br label %if.end60.i27

if.end60.i27:                                     ; preds = %if.else.i, %if.then44.i
  %76 = ptrtoint ptr %flow_type.i25 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %flow_type.i25, align 4
  %switch.tableidx = add i8 %77, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %switch.tableidx)
  %78 = icmp ult i8 %switch.tableidx, 14
  br i1 %78, label %switch.hole_check, label %if.end60.i27.no_input_set.thread.i_crit_edge

if.end60.i27.no_input_set.thread.i_crit_edge:     ; preds = %if.end60.i27
  call void @__sanitizer_cov_trace_pc() #23
  br label %no_input_set.thread.i

no_input_set.thread.i:                            ; preds = %switch.hole_check.no_input_set.thread.i_crit_edge, %if.end60.i27.no_input_set.thread.i_crit_edge
  %conv62.i = zext i8 %77 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 3329, i32 noundef 9, ptr noundef nonnull @.str.97, i32 noundef %conv62.i) #21
  br label %if.then91.i

switch.hole_check:                                ; preds = %if.end60.i27
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 12407, %switch.maskindex
  %79 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %switch.lobit.not = icmp eq i16 %79, 0
  br i1 %switch.lobit.not, label %switch.hole_check.no_input_set.thread.i_crit_edge, label %switch.lookup

switch.hole_check.no_input_set.thread.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #23
  br label %no_input_set.thread.i

switch.lookup:                                    ; preds = %switch.hole_check
  %80 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.i40e_get_rxnfc, i32 0, i32 %80
  %81 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %81)
  %switch.load = load i32, ptr %switch.gep, align 4
  %hw.i.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %add1.i.i = or i32 %switch.load, 2424864
  %call.i.i = tail call i32 @i40e_read_rx_ctl(ptr noundef %hw.i.i, i32 noundef %add1.i.i) #21
  %conv2.i.i = zext i32 %call.i.i to i64
  %shl.i.i = shl nuw i64 %conv2.i.i, 32
  %add7.i.i = or i32 %switch.load, 2424832
  %call8.i.i = tail call i32 @i40e_read_rx_ctl(ptr noundef %hw.i.i, i32 noundef %add7.i.i) #21
  %82 = and i64 %conv2.i.i, 522240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %tobool90.not.i = icmp eq i64 %82, 0
  br i1 %tobool90.not.i, label %switch.lookup.if.end103.i_crit_edge, label %switch.lookup.if.then91.i_crit_edge

switch.lookup.if.then91.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then91.i

switch.lookup.if.end103.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end103.i

if.then91.i:                                      ; preds = %switch.lookup.if.then91.i_crit_edge, %no_input_set.thread.i
  %input_set.0281.i = phi i64 [ -1, %no_input_set.thread.i ], [ %shl.i.i, %switch.lookup.if.then91.i_crit_edge ]
  %m_u92.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %83 = call ptr @memset(ptr %m_u92.i, i32 255, i32 16)
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then91.i, %switch.lookup.if.end103.i_crit_edge
  %input_set.0282.i = phi i64 [ %input_set.0281.i, %if.then91.i ], [ %shl.i.i, %switch.lookup.if.end103.i_crit_edge ]
  %and104.i = and i64 %input_set.0282.i, 8761733283840
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and104.i)
  %tobool105.not.i = icmp eq i64 %and104.i, 0
  br i1 %tobool105.not.i, label %if.end103.i.if.end119.i_crit_edge, label %if.then106.i

if.end103.i.if.end119.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end119.i

if.then106.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #23
  %ip6dst108.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %84 = call ptr @memset(ptr %ip6dst108.i, i32 255, i32 16)
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then106.i, %if.end103.i.if.end119.i_crit_edge
  %and120.i = and i64 %input_set.0282.i, 422212465065984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and120.i)
  %tobool121.not.i = icmp eq i64 %and120.i, 0
  br i1 %tobool121.not.i, label %if.end119.i.if.end125.i_crit_edge, label %if.then122.i

if.end119.i.if.end125.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end125.i

if.then122.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #23
  %m_u123.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %85 = ptrtoint ptr %m_u123.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %m_u123.i, align 4
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then122.i, %if.end119.i.if.end125.i_crit_edge
  %and126.i = and i64 %input_set.0282.i, 103079215104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and126.i)
  %tobool127.not.i = icmp eq i64 %and126.i, 0
  br i1 %tobool127.not.i, label %if.end125.i.if.end131.i_crit_edge, label %if.then128.i

if.end125.i.if.end131.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end131.i

if.then128.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #23
  %ip4dst130.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %86 = ptrtoint ptr %ip4dst130.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %ip4dst130.i, align 4
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.then128.i, %if.end125.i.if.end131.i_crit_edge
  %and132.i = and i64 %input_set.0282.i, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and132.i)
  %tobool133.not.i = icmp eq i64 %and132.i, 0
  br i1 %tobool133.not.i, label %if.end131.i.if.end137.i_crit_edge, label %if.then134.i

if.end131.i.if.end137.i_crit_edge:                ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end137.i

if.then134.i:                                     ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #23
  %psrc136.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %87 = ptrtoint ptr %psrc136.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -1, ptr %psrc136.i, align 4
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then134.i, %if.end131.i.if.end137.i_crit_edge
  %and138.i = and i64 %input_set.0282.i, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and138.i)
  %tobool139.not.i = icmp eq i64 %and138.i, 0
  br i1 %tobool139.not.i, label %if.end137.i.if.end143.i_crit_edge, label %if.then140.i

if.end137.i.if.end143.i_crit_edge:                ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end143.i

if.then140.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #23
  %m_u141.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %pdst142.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u141.i, i32 0, i32 3
  %88 = ptrtoint ptr %pdst142.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -1, ptr %pdst142.i, align 2
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then140.i, %if.end137.i.if.end143.i_crit_edge
  %dest_ctl.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 19
  %89 = ptrtoint ptr %dest_ctl.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %dest_ctl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp145.i = icmp eq i8 %90, 0
  br i1 %cmp145.i, label %if.end143.i.if.end151.i_crit_edge, label %if.else148.i

if.end143.i.if.end151.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end151.i

if.else148.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #23
  %q_index.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 15
  %91 = ptrtoint ptr %q_index.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %q_index.i, align 2
  %conv149.i = zext i16 %92 to i64
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.else148.i, %if.end143.i.if.end151.i_crit_edge
  %conv149.sink.i = phi i64 [ %conv149.i, %if.else148.i ], [ -1, %if.end143.i.if.end151.i_crit_edge ]
  %93 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv149.sink.i, ptr %93, align 8
  %vlan_tag.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 11
  %95 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %vlan_tag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool152.not.i = icmp eq i16 %96, 0
  br i1 %tobool152.not.i, label %if.end151.i.if.end161.i_crit_edge, label %if.then153.i

if.end151.i.if.end161.i_crit_edge:                ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end161.i

if.then153.i:                                     ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #23
  %vlan_etype.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 10
  %97 = ptrtoint ptr %vlan_etype.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %vlan_etype.i, align 4
  %vlan_etype154.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 2
  %99 = ptrtoint ptr %vlan_etype154.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %vlan_etype154.i, align 8
  %vlan_etype155.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 2
  %100 = ptrtoint ptr %vlan_etype155.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 -1, ptr %vlan_etype155.i, align 8
  %101 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %vlan_tag.i, align 2
  %vlan_tci.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %103 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %vlan_tci.i, align 2
  %vlan_tci159.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %104 = ptrtoint ptr %vlan_tci159.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -1, ptr %vlan_tci159.i, align 2
  %105 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fs.i, align 8
  %or.i = or i32 %106, -2147483648
  store i32 %or.i, ptr %fs.i, align 8
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then153.i, %if.end151.i.if.end161.i_crit_edge
  %dest_vsi.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 18
  %107 = ptrtoint ptr %dest_vsi.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %dest_vsi.i, align 2
  %vsi.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 74
  %109 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %vsi.i, align 8
  %lan_vsi.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 71
  %111 = ptrtoint ptr %lan_vsi.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %lan_vsi.i, align 8
  %idxprom.i = zext i16 %112 to i32
  %arrayidx163.i = getelementptr ptr, ptr %110, i32 %idxprom.i
  %113 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx163.i, align 4
  %id.i = getelementptr inbounds %struct.i40e_vsi, ptr %114, i32 0, i32 39
  %115 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %108, i16 %116)
  %cmp165.not.i = icmp eq i16 %108, %116
  br i1 %cmp165.not.i, label %if.end161.i.if.end180.i_crit_edge, label %if.then167.i

if.end161.i.if.end180.i_crit_edge:                ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end180.i

if.then167.i:                                     ; preds = %if.end161.i
  %call170.i = tail call ptr @i40e_find_vsi_from_id(ptr noundef %3, i16 noundef zeroext %108) #21
  %tobool171.not.i = icmp eq ptr %call170.i, null
  br i1 %tobool171.not.i, label %if.then167.i.if.end180.i_crit_edge, label %land.lhs.true.i

if.then167.i.if.end180.i_crit_edge:               ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end180.i

land.lhs.true.i:                                  ; preds = %if.then167.i
  %type.i = getelementptr inbounds %struct.i40e_vsi, ptr %call170.i, i32 0, i32 47
  %117 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %118)
  %cmp172.i = icmp eq i32 %118, 6
  br i1 %cmp172.i, label %if.then174.i, label %land.lhs.true.i.if.end180.i_crit_edge

land.lhs.true.i.if.end180.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end180.i

if.then174.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  %vf_id.i = getelementptr inbounds %struct.i40e_vsi, ptr %call170.i, i32 0, i32 48
  %119 = ptrtoint ptr %vf_id.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %vf_id.i, align 8
  %conv175.i = sext i16 %120 to i32
  %add.i28 = add nsw i32 %conv175.i, 1
  %conv176273.i = zext i32 %add.i28 to i64
  %shl.i29 = shl nuw i64 %conv176273.i, 32
  %121 = ptrtoint ptr %93 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %93, align 8
  %or178.i = or i64 %shl.i29, %122
  store i64 %or178.i, ptr %93, align 8
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.then174.i, %land.lhs.true.i.if.end180.i_crit_edge, %if.then167.i.if.end180.i_crit_edge, %if.end161.i.if.end180.i_crit_edge
  %flex_filter.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 14
  %123 = ptrtoint ptr %flex_filter.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %flex_filter.i, align 4, !range !321
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool181.not.i = icmp eq i8 %124, 0
  br i1 %tobool181.not.i, label %if.end180.i.i40e_fill_rx_flow_user_data.exit.i_crit_edge, label %if.end.thread.i.i

if.end180.i.i40e_fill_rx_flow_user_data.exit.i_crit_edge: ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_fill_rx_flow_user_data.exit.i

if.end.thread.i.i:                                ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #23
  %flex_word.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 12
  %125 = ptrtoint ptr %flex_word.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %flex_word.i, align 4
  %flex_offset.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 13
  %127 = ptrtoint ptr %flex_offset.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %flex_offset.i, align 2
  %conv.i275.i = zext i16 %126 to i64
  %conv1.i.i = zext i16 %128 to i64
  %shl.i276.i = shl nuw nsw i64 %conv1.i.i, 16
  %or2.i.i = or i64 %shl.i276.i, %conv.i275.i
  %129 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %fs.i, align 8
  %or7.i.i = or i32 %130, -2147483648
  store i32 %or7.i.i, ptr %fs.i, align 8
  br label %i40e_fill_rx_flow_user_data.exit.i

i40e_fill_rx_flow_user_data.exit.i:               ; preds = %if.end.thread.i.i, %if.end180.i.i40e_fill_rx_flow_user_data.exit.i_crit_edge
  %mask.029.i.i = phi i64 [ 4294967295, %if.end.thread.i.i ], [ 0, %if.end180.i.i40e_fill_rx_flow_user_data.exit.i_crit_edge ]
  %value.027.i.i = phi i64 [ %or2.i.i, %if.end.thread.i.i ], [ 0, %if.end180.i.i40e_fill_rx_flow_user_data.exit.i_crit_edge ]
  %data9.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 4
  %131 = ptrtoint ptr %data9.i.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 %value.027.i.i, ptr %data9.i.i, align 4
  %data10.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4
  %132 = ptrtoint ptr %data10.i.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 8)
  store i64 %mask.029.i.i, ptr %data10.i.i, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %fdir_shared_filter_count.i.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 16
  %133 = ptrtoint ptr %fdir_shared_filter_count.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %fdir_shared_filter_count.i.i, align 8
  %conv.i.i = zext i16 %134 to i32
  %fdir_pf_filter_count.i.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 19
  %135 = ptrtoint ptr %fdir_pf_filter_count.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %fdir_pf_filter_count.i.i, align 8
  %conv1.i.i31 = zext i16 %136 to i32
  %add.i.i = add nuw nsw i32 %conv1.i.i31, %conv.i.i
  %137 = zext i32 %add.i.i to i64
  %data.i32 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %138 = ptrtoint ptr %data.i32 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %data.i32, align 8
  %fdir_filter_list.i33 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 23
  %139 = ptrtoint ptr %fdir_filter_list.i33 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fdir_filter_list.i33, align 8
  %tobool2.not31.i = icmp eq ptr %140, null
  br i1 %tobool2.not31.i, label %sw.bb12.for.end.i_crit_edge, label %land.rhs.lr.ph.i

sw.bb12.for.end.i_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %sw.bb12
  %141 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  br label %land.rhs.i34

land.rhs.i34:                                     ; preds = %if.end.i37.land.rhs.i34_crit_edge, %land.rhs.lr.ph.i
  %rule.033.i = phi ptr [ %140, %land.rhs.lr.ph.i ], [ %145, %if.end.i37.land.rhs.i34_crit_edge ]
  %cnt.032.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %if.end.i37.land.rhs.i34_crit_edge ]
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.032.i, i32 %143)
  %cmp.i = icmp eq i32 %cnt.032.i, %143
  br i1 %cmp.i, label %land.rhs.i34.sw.epilog_crit_edge, label %if.end.i37

land.rhs.i34.sw.epilog_crit_edge:                 ; preds = %land.rhs.i34
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end.i37:                                       ; preds = %land.rhs.i34
  %144 = ptrtoint ptr %rule.033.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rule.033.i, align 4
  %fd_id.i35 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.033.i, i32 0, i32 22
  %146 = ptrtoint ptr %fd_id.i35 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %fd_id.i35, align 4
  %arrayidx.i = getelementptr i32, ptr %rule_locs, i32 %cnt.032.i
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx.i, align 4
  %inc.i = add i32 %cnt.032.i, 1
  %tobool2.not.i36 = icmp eq ptr %145, null
  br i1 %tobool2.not.i36, label %if.end.i37.for.end.i_crit_edge, label %if.end.i37.land.rhs.i34_crit_edge

if.end.i37.land.rhs.i34_crit_edge:                ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.rhs.i34

if.end.i37.for.end.i_crit_edge:                   ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i37.for.end.i_crit_edge, %sw.bb12.for.end.i_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %sw.bb12.for.end.i_crit_edge ], [ %inc.i, %if.end.i37.for.end.i_crit_edge ]
  %149 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %cnt.0.lcssa.i, ptr %149, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.i, %land.rhs.i34.sw.epilog_crit_edge, %i40e_fill_rx_flow_user_data.exit.i, %lor.lhs.false.critedge.i.sw.epilog_crit_edge, %for.cond.i.sw.epilog_crit_edge, %sw.bb5, %cleanup.sink.split.i, %if.end60.i.sw.epilog_crit_edge, %if.end40.i.sw.epilog_crit_edge, %if.end28.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %sw.bb3.sw.epilog_crit_edge ], [ 0, %if.end28.i.sw.epilog_crit_edge ], [ 0, %if.end40.i.sw.epilog_crit_edge ], [ 0, %if.end60.i.sw.epilog_crit_edge ], [ 0, %if.end.i.sw.epilog_crit_edge ], [ 0, %cleanup.sink.split.i ], [ 0, %i40e_fill_rx_flow_user_data.exit.i ], [ -22, %lor.lhs.false.critedge.i.sw.epilog_crit_edge ], [ 0, %for.end.i ], [ -22, %for.cond.i.sw.epilog_crit_edge ], [ -90, %land.rhs.i34.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_rxnfc(ptr nocapture noundef readonly %netdev, ptr noundef readonly %cmd) #4 align 64 {
entry:
  %available_index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 42, label %sw.bb
    i32 50, label %sw.bb4
    i32 49, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 8
  %hw1.i = getelementptr inbounds %struct.i40e_pf, ptr %6, i32 0, i32 1
  %call.i = tail call i32 @i40e_read_rx_ctl(ptr noundef %hw1.i, i32 noundef 2382080) #21
  %conv.i = zext i32 %call.i to i64
  %call2.i = tail call i32 @i40e_read_rx_ctl(ptr noundef %hw1.i, i32 noundef 2382208) #21
  %conv3.i = zext i32 %call2.i to i64
  %shl.i = shl nuw i64 %conv3.i, 32
  %or.i = or i64 %shl.i, %conv.i
  %flags.i = getelementptr inbounds %struct.i40e_pf, ptr %6, i32 0, i32 54
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.98) #24
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %data.i, align 8
  %and4.i = and i64 %12, -241
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4.i)
  %tobool5.not.i = icmp eq i64 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end7.i:                                        ; preds = %if.end.i
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flow_type.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %14, label %if.end7.i.sw.epilog_crit_edge [
    i32 1, label %sw.bb.i
    i32 5, label %sw.bb13.i
    i32 2, label %sw.bb26.i
    i32 6, label %sw.bb34.i
    i32 4, label %if.end7.i.sw.bb42.i_crit_edge
    i32 9, label %if.end7.i.sw.bb42.i_crit_edge217
    i32 10, label %if.end7.i.sw.bb42.i_crit_edge218
    i32 3, label %if.end7.i.sw.bb42.i_crit_edge219
    i32 8, label %if.end7.i.sw.bb52.i_crit_edge
    i32 11, label %if.end7.i.sw.bb52.i_crit_edge220
    i32 12, label %if.end7.i.sw.bb52.i_crit_edge221
    i32 7, label %if.end7.i.sw.bb52.i_crit_edge222
    i32 16, label %sw.bb63.i
    i32 17, label %sw.bb65.i
  ]

if.end7.i.sw.bb52.i_crit_edge222:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb52.i

if.end7.i.sw.bb52.i_crit_edge221:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb52.i

if.end7.i.sw.bb52.i_crit_edge220:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb52.i

if.end7.i.sw.bb52.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb52.i

if.end7.i.sw.bb42.i_crit_edge219:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb42.i

if.end7.i.sw.bb42.i_crit_edge218:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb42.i

if.end7.i.sw.bb42.i_crit_edge217:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb42.i

if.end7.i.sw.bb42.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb42.i

if.end7.i.sw.epilog_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  %hw_features.i = getelementptr inbounds %struct.i40e_pf, ptr %6, i32 0, i32 53
  %16 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_features.i, align 4
  %and8.i = and i32 %17, 16
  %18 = zext i32 %and8.i to i64
  %19 = shl nuw nsw i64 %18, 28
  %20 = or i64 %19, %or.i
  br label %if.then68.i

sw.bb13.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  %hw_features14.i = getelementptr inbounds %struct.i40e_pf, ptr %6, i32 0, i32 53
  %21 = ptrtoint ptr %hw_features14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw_features14.i, align 4
  %and15.i = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %or24.i = or i64 %or.i, 4402341478400
  %spec.select153.i = select i1 %tobool16.not.i, i64 %or.i, i64 %or24.i
  br label %if.then68.i

sw.bb26.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  %hw_features27.i = getelementptr inbounds %struct.i40e_pf, ptr %6, i32 0, i32 53
  %23 = ptrtoint ptr %hw_features27.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_features27.i, align 4
  %and28.i = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %or31.i = or i64 %or.i, 1610612736
  %spec.select150.i = select i1 %tobool29.not.i, i64 %or.i, i64 %or31.i
  %or33.i = or i64 %spec.select150.i, 68719476736
  br label %if.then68.i

sw.bb34.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  %hw_features35.i = getelementptr inbounds %struct.i40e_pf, ptr %6, i32 0, i32 53
  %25 = ptrtoint ptr %hw_features35.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_features35.i, align 4
  %and36.i = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %or39.i = or i64 %or.i, 1649267441664
  %spec.select151.i = select i1 %tobool37.not.i, i64 %or.i, i64 %or39.i
  %or41.i = or i64 %spec.select151.i, 70368744177664
  br label %if.then68.i

sw.bb42.i:                                        ; preds = %if.end7.i.sw.bb42.i_crit_edge, %if.end7.i.sw.bb42.i_crit_edge217, %if.end7.i.sw.bb42.i_crit_edge218, %if.end7.i.sw.bb42.i_crit_edge219
  %27 = and i64 %12, 192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %if.end50.i, label %sw.bb42.i.sw.epilog_crit_edge

sw.bb42.i.sw.epilog_crit_edge:                    ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end50.i:                                       ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #23
  %extract164.i = or i32 %call2.i, 8
  br label %if.end95.i

sw.bb52.i:                                        ; preds = %if.end7.i.sw.bb52.i_crit_edge, %if.end7.i.sw.bb52.i_crit_edge220, %if.end7.i.sw.bb52.i_crit_edge221, %if.end7.i.sw.bb52.i_crit_edge222
  %29 = and i64 %12, 192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %if.end61.i, label %sw.bb52.i.sw.epilog_crit_edge

sw.bb52.i.sw.epilog_crit_edge:                    ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end61.i:                                       ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #23
  %extract166.i = or i32 %call2.i, 8192
  br label %if.end95.i

sw.bb63.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  %extract168.i = or i32 %call2.i, 24
  br label %if.end95.i

sw.bb65.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  %extract170.i = or i32 %call2.i, 24576
  br label %if.end95.i

if.then68.i:                                      ; preds = %sw.bb34.i, %sw.bb26.i, %sw.bb13.i, %sw.bb.i
  %flow_pctype.0.i = phi i32 [ 41, %sw.bb34.i ], [ 31, %sw.bb26.i ], [ 33, %sw.bb.i ], [ 43, %sw.bb13.i ]
  %hena.3.i = phi i64 [ %or41.i, %sw.bb34.i ], [ %or33.i, %sw.bb26.i ], [ %20, %sw.bb.i ], [ %spec.select153.i, %sw.bb13.i ]
  %mul.i = shl nuw nsw i32 %flow_pctype.0.i, 3
  %add70.i = or i32 %mul.i, 2520576
  %call71.i = tail call i32 @i40e_read_rx_ctl(ptr noundef %hw1.i, i32 noundef %add70.i) #21
  %conv72.i = zext i32 %call71.i to i64
  %add76.i = or i32 %mul.i, 2520580
  %call77.i = tail call i32 @i40e_read_rx_ctl(ptr noundef %hw1.i, i32 noundef %add76.i) #21
  %conv78.i = zext i32 %call77.i to i64
  %shl79.i = shl nuw i64 %conv78.i, 32
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %data.i, align 8
  %shl79.masked.i = and i64 %shl79.i, -30064771072
  %and1.i.i = or i64 %shl79.masked.i, %conv72.i
  %and.i.i = shl i64 %32, 28
  %33 = and i64 %and.i.i, 17179869184
  %i_set.0.i.i = or i64 %and1.i.i, %33
  %and3.i.i = shl i64 %32, 26
  %34 = and i64 %and3.i.i, 8589934592
  %i_set.1.i.i = or i64 %i_set.0.i.i, %34
  %35 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flow_type.i, align 4
  %extract175.i = lshr i64 %i_set.1.i.i, 32
  %extract.t176.i = trunc i64 %extract175.i to i32
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %36, label %if.then68.i.i40e_get_rss_hash_bits.exit.i_crit_edge [
    i32 5, label %if.then68.i.if.end22.i.i_crit_edge
    i32 6, label %if.then68.i.if.end22.i.i_crit_edge223
    i32 1, label %if.then68.i.if.then19.i.i_crit_edge
    i32 2, label %if.then68.i.if.then19.i.i_crit_edge224
  ]

if.then68.i.if.then19.i.i_crit_edge224:           ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then19.i.i

if.then68.i.if.then19.i.i_crit_edge:              ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then19.i.i

if.then68.i.if.end22.i.i_crit_edge223:            ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end22.i.i

if.then68.i.if.end22.i.i_crit_edge:               ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end22.i.i

if.then68.i.i40e_get_rss_hash_bits.exit.i_crit_edge: ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_rss_hash_bits.exit.i

if.then19.i.i:                                    ; preds = %if.then68.i.if.then19.i.i_crit_edge, %if.then68.i.if.then19.i.i_crit_edge224
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then19.i.i, %if.then68.i.if.end22.i.i_crit_edge, %if.then68.i.if.end22.i.i_crit_edge223
  %src_l3.0.i.i = phi i64 [ 422212465065984, %if.then19.i.i ], [ 2243003720663040, %if.then68.i.if.end22.i.i_crit_edge ], [ 2243003720663040, %if.then68.i.if.end22.i.i_crit_edge223 ]
  %dst_l3.0.i.i = phi i64 [ 103079215104, %if.then19.i.i ], [ 8761733283840, %if.then68.i.if.end22.i.i_crit_edge ], [ 8761733283840, %if.then68.i.if.end22.i.i_crit_edge223 ]
  %and24.i.i = and i64 %32, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24.i.i)
  %tobool25.not.i.i = icmp eq i64 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.else28.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %or27.i.i = or i64 %src_l3.0.i.i, %i_set.1.i.i
  br label %if.end30.i.i

if.else28.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %neg.i.i = xor i64 %src_l3.0.i.i, -1
  %and29.i.i = and i64 %i_set.1.i.i, %neg.i.i
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.else28.i.i, %if.then26.i.i
  %i_set.2.i.i = phi i64 [ %or27.i.i, %if.then26.i.i ], [ %and29.i.i, %if.else28.i.i ]
  %and32.i.i = and i64 %32, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32.i.i)
  %tobool33.not.i.i = icmp eq i64 %and32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.else36.i.i, label %if.then34.i.i

if.then34.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %or35.i.i = or i64 %i_set.2.i.i, %dst_l3.0.i.i
  %extract.t173.i = trunc i64 %i_set.2.i.i to i32
  %extract177.i = lshr i64 %or35.i.i, 32
  %extract.t178.i = trunc i64 %extract177.i to i32
  br label %i40e_get_rss_hash_bits.exit.i

if.else36.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %neg37.i.i = xor i64 %dst_l3.0.i.i, -1
  %and38.i.i = and i64 %i_set.2.i.i, %neg37.i.i
  %extract.t174.i = trunc i64 %i_set.2.i.i to i32
  %extract179.i = lshr i64 %and38.i.i, 32
  %extract.t180.i = trunc i64 %extract179.i to i32
  br label %i40e_get_rss_hash_bits.exit.i

i40e_get_rss_hash_bits.exit.i:                    ; preds = %if.else36.i.i, %if.then34.i.i, %if.then68.i.i40e_get_rss_hash_bits.exit.i_crit_edge
  %retval.0.i.off0.i = phi i32 [ %call71.i, %if.then68.i.i40e_get_rss_hash_bits.exit.i_crit_edge ], [ %extract.t173.i, %if.then34.i.i ], [ %extract.t174.i, %if.else36.i.i ]
  %retval.0.i.off32.i = phi i32 [ %extract.t176.i, %if.then68.i.i40e_get_rss_hash_bits.exit.i_crit_edge ], [ %extract.t178.i, %if.then34.i.i ], [ %extract.t180.i, %if.else36.i.i ]
  tail call void @i40e_write_rx_ctl(ptr noundef %hw1.i, i32 noundef %add70.i, i32 noundef %retval.0.i.off0.i) #21
  tail call void @i40e_write_rx_ctl(ptr noundef %hw1.i, i32 noundef %add76.i, i32 noundef %retval.0.i.off32.i) #21
  %sh_prom.i = zext i32 %flow_pctype.0.i to i64
  %shl93.i = shl nuw nsw i64 1, %sh_prom.i
  %or94.i = or i64 %shl93.i, %hena.3.i
  %extract.t.i = trunc i64 %or94.i to i32
  %extract.i = lshr i64 %or94.i, 32
  %extract.t146.i = trunc i64 %extract.i to i32
  br label %if.end95.i

if.end95.i:                                       ; preds = %i40e_get_rss_hash_bits.exit.i, %sw.bb65.i, %sw.bb63.i, %if.end61.i, %if.end50.i
  %hena.4.off0.i = phi i32 [ %extract.t.i, %i40e_get_rss_hash_bits.exit.i ], [ %call.i, %sw.bb65.i ], [ %call.i, %sw.bb63.i ], [ %call.i, %if.end61.i ], [ %call.i, %if.end50.i ]
  %hena.4.off32.i = phi i32 [ %extract.t146.i, %i40e_get_rss_hash_bits.exit.i ], [ %extract170.i, %sw.bb65.i ], [ %extract168.i, %sw.bb63.i ], [ %extract166.i, %if.end61.i ], [ %extract164.i, %if.end50.i ]
  tail call void @i40e_write_rx_ctl(ptr noundef %hw1.i, i32 noundef 2382080, i32 noundef %hena.4.off0.i) #21
  tail call void @i40e_write_rx_ctl(ptr noundef %hw1.i, i32 noundef 2382208, i32 noundef %hena.4.off32.i) #21
  %38 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw1.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %39, i32 745772
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #21, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #21, !srcloc !334
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %tobool.not.i14 = icmp eq ptr %1, null
  br i1 %tobool.not.i14, label %sw.bb4.sw.epilog_crit_edge, label %if.end.i17

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end.i17:                                       ; preds = %sw.bb4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %41 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %back.i, align 8
  %flags.i15 = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 54
  %43 = ptrtoint ptr %flags.i15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i15, align 8
  %and.i16 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool1.not.i = icmp eq i32 %and.i16, 0
  br i1 %tobool1.not.i, label %if.end.i17.sw.epilog_crit_edge, label %if.end3.i

if.end.i17.sw.epilog_crit_edge:                   ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end3.i:                                        ; preds = %if.end.i17
  %state.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %state.i, align 4
  %47 = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool4.not.i = icmp eq i32 %47, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end3.i.sw.epilog_crit_edge

if.end3.i.sw.epilog_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.end3.i
  %48 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %state.i, align 4
  %50 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool10.not.i = icmp eq i32 %50, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i, label %if.end6.i.sw.epilog_crit_edge

if.end6.i.sw.epilog_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %51 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i, align 4
  %53 = and i32 %52, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool14.not.i = icmp eq i32 %53, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %lor.lhs.false.i.sw.epilog_crit_edge

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end16.i:                                       ; preds = %lor.lhs.false.i
  %54 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %state.i, align 4
  %56 = and i32 %55, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool20.not.i = icmp eq i32 %56, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end16.i.sw.epilog_crit_edge

if.end16.i.sw.epilog_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end22.i:                                       ; preds = %if.end16.i
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %57 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %tobool.not.i.i = icmp sgt i32 %58, -1
  br i1 %tobool.not.i.i, label %if.end22.i.if.end26.i_crit_edge, label %if.end.i.i

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end26.i

if.end.i.i:                                       ; preds = %if.end22.i
  %data1.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 4
  %59 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %data1.i.i, align 4
  %data2.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4
  %61 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %data2.i.i, align 4
  %trunc.i.i = trunc i64 %62 to i32
  %63 = zext i32 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %trunc.i.i, label %if.end.i.i.sw.epilog_crit_edge [
    i32 -1, label %if.end.i.i.if.else.i.i_crit_edge
    i32 0, label %if.end.i.i.if.else.i.i_crit_edge225
  ]

if.end.i.i.if.else.i.i_crit_edge225:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else.i.i

if.end.i.i.if.else.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else.i.i

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.else.i.i:                                      ; preds = %if.end.i.i.if.else.i.i_crit_edge, %if.end.i.i.if.else.i.i_crit_edge225
  %and.i.i.i = and i64 %62, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %switch.selectcmp.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %switch.selectcmp.i.not.i.i, label %if.else.i.i.if.end26.i_crit_edge, label %if.then6.i.i

if.else.i.i.if.end26.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end26.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv.i.i = trunc i64 %60 to i16
  %and8.i.i = lshr i64 %60, 16
  %conv9.i.i = trunc i64 %and8.i.i to i16
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then6.i.i, %if.else.i.i.if.end26.i_crit_edge, %if.end22.i.if.end26.i_crit_edge
  %tobool236.not.i = phi i1 [ false, %if.then6.i.i ], [ true, %if.else.i.i.if.end26.i_crit_edge ], [ true, %if.end22.i.if.end26.i_crit_edge ]
  %userdef.i.sroa.6145.0 = phi i16 [ %conv.i.i, %if.then6.i.i ], [ 0, %if.else.i.i.if.end26.i_crit_edge ], [ 0, %if.end22.i.if.end26.i_crit_edge ]
  %userdef.i.sroa.8.0 = phi i16 [ %conv9.i.i, %if.then6.i.i ], [ 0, %if.else.i.i.if.end26.i_crit_edge ], [ 0, %if.end22.i.if.end26.i_crit_edge ]
  %and27.i = and i32 %58, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.sw.epilog_crit_edge

if.end26.i.sw.epilog_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end30.i:                                       ; preds = %if.end26.i
  %and.i64 = and i32 %58, 2147483647
  %64 = zext i32 %and.i64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %and.i64, label %if.end30.i.sw.epilog_crit_edge [
    i32 3, label %sw.bb.i65
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 7, label %sw.bb3.i
    i32 5, label %sw.bb4.i
    i32 6, label %sw.bb5.i
    i32 13, label %sw.bb6.i
    i32 14, label %sw.bb7.i
  ]

if.end30.i.sw.epilog_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb.i65:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #23
  %fd_sctp4_filter_cnt.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 31
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #23
  %fd_tcp4_filter_cnt.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 29
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #23
  %fd_udp4_filter_cnt.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 30
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #23
  %fd_sctp6_filter_cnt.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 35
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #23
  %fd_tcp6_filter_cnt.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 33
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #23
  %fd_udp6_filter_cnt.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 34
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #23
  %fd_ip4_filter_cnt.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 32
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #23
  %fd_ip6_filter_cnt.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 36
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i65
  %flex_l3.0.off0.i = phi i1 [ true, %sw.bb7.i ], [ true, %sw.bb6.i ], [ false, %sw.bb5.i ], [ false, %sw.bb4.i ], [ false, %sw.bb3.i ], [ false, %sw.bb2.i ], [ false, %sw.bb1.i ], [ false, %sw.bb.i65 ]
  %fdir_filter_count.0.i = phi ptr [ %fd_ip6_filter_cnt.i, %sw.bb7.i ], [ %fd_ip4_filter_cnt.i, %sw.bb6.i ], [ %fd_udp6_filter_cnt.i, %sw.bb5.i ], [ %fd_tcp6_filter_cnt.i, %sw.bb4.i ], [ %fd_sctp6_filter_cnt.i, %sw.bb3.i ], [ %fd_udp4_filter_cnt.i, %sw.bb2.i ], [ %fd_tcp4_filter_cnt.i, %sw.bb1.i ], [ %fd_sctp4_filter_cnt.i, %sw.bb.i65 ]
  %cmp352.i = phi i1 [ false, %sw.bb7.i ], [ true, %sw.bb6.i ], [ false, %sw.bb5.i ], [ false, %sw.bb4.i ], [ false, %sw.bb3.i ], [ false, %sw.bb2.i ], [ false, %sw.bb1.i ], [ false, %sw.bb.i65 ]
  %index.0.i = phi i32 [ 2880, %sw.bb7.i ], [ 2240, %sw.bb6.i ], [ 2624, %sw.bb5.i ], [ 2752, %sw.bb4.i ], [ 2816, %sw.bb3.i ], [ 1984, %sw.bb2.i ], [ 2112, %sw.bb1.i ], [ 2176, %sw.bb.i65 ]
  %hw.i.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 1
  %add1.i.i = or i32 %index.0.i, 2424864
  %call.i.i66 = tail call i32 @i40e_read_rx_ctl(ptr noundef %hw.i.i, i32 noundef %add1.i.i) #21
  %conv2.i.i = zext i32 %call.i.i66 to i64
  %shl.i.i = shl nuw i64 %conv2.i.i, 32
  %add7.i.i = or i32 %index.0.i, 2424832
  %call8.i.i = tail call i32 @i40e_read_rx_ctl(ptr noundef %hw.i.i, i32 noundef %add7.i.i) #21
  %conv9.i.i67 = zext i32 %call8.i.i to i64
  %add10.i.i = or i64 %shl.i.i, %conv9.i.i67
  %65 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fs.i, align 8
  %and9.i = and i32 %66, 2147483647
  %67 = zext i32 %and9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %and9.i, label %sw.epilog.i.sw.epilog_crit_edge [
    i32 3, label %sw.bb10.i
    i32 1, label %sw.epilog.i.sw.bb12.i_crit_edge
    i32 2, label %sw.epilog.i.sw.bb12.i_crit_edge226
    i32 7, label %sw.bb57.i
    i32 5, label %sw.epilog.i.sw.bb59.i_crit_edge
    i32 6, label %sw.epilog.i.sw.bb59.i_crit_edge227
    i32 13, label %sw.bb114.i
    i32 14, label %sw.bb164.i
  ]

sw.epilog.i.sw.bb59.i_crit_edge227:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb59.i

sw.epilog.i.sw.bb59.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb59.i

sw.epilog.i.sw.bb12.i_crit_edge226:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb12.i

sw.epilog.i.sw.epilog_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb10.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  %and11.i = and i64 %add10.i.i, -6442450945
  br label %sw.bb12.i

sw.bb12.i:                                        ; preds = %sw.bb10.i, %sw.epilog.i.sw.bb12.i_crit_edge, %sw.epilog.i.sw.bb12.i_crit_edge226
  %new_mask.0.i = phi i64 [ %add10.i.i, %sw.epilog.i.sw.bb12.i_crit_edge ], [ %add10.i.i, %sw.epilog.i.sw.bb12.i_crit_edge226 ], [ %and11.i, %sw.bb10.i ]
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %68 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %m_u.i, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %69, label %sw.bb12.i.sw.epilog_crit_edge [
    i32 -1, label %if.then.i
    i32 0, label %if.then14.i
  ]

sw.bb12.i.sw.epilog_crit_edge:                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #23
  %or.i68 = or i64 %new_mask.0.i, 422212465065984
  br label %if.end17.i

if.then14.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #23
  %and15.i69 = and i64 %new_mask.0.i, -422212465065985
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.then.i
  %new_mask.1.i = phi i64 [ %or.i68, %if.then.i ], [ %and15.i69, %if.then14.i ]
  %ip4dst.i70 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %ip4dst.i70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ip4dst.i70, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %72, label %if.end17.i.sw.epilog_crit_edge [
    i32 -1, label %if.then19.i
    i32 0, label %if.then24.i
  ]

if.end17.i.sw.epilog_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #23
  %or20.i = or i64 %new_mask.1.i, 103079215104
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #23
  %and25.i = and i64 %new_mask.1.i, -103079215105
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %if.then19.i
  %new_mask.2.i = phi i64 [ %or20.i, %if.then19.i ], [ %and25.i, %if.then24.i ]
  %psrc.i71 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %74 = ptrtoint ptr %psrc.i71 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %psrc.i71, align 4
  %76 = zext i16 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.176)
  switch i16 %75, label %if.end28.i.sw.epilog_crit_edge [
    i16 -1, label %if.then31.i
    i16 0, label %if.then36.i
  ]

if.end28.i.sw.epilog_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #23
  %or32.i = or i64 %new_mask.2.i, 17179869184
  br label %if.end40.i

if.then36.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #23
  %and37.i = and i64 %new_mask.2.i, -17179869185
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then36.i, %if.then31.i
  %new_mask.3.i = phi i64 [ %or32.i, %if.then31.i ], [ %and37.i, %if.then36.i ]
  %pdst.i72 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i, i32 0, i32 3
  %77 = ptrtoint ptr %pdst.i72 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %pdst.i72, align 2
  %79 = zext i16 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.177)
  switch i16 %78, label %if.end40.i.sw.epilog_crit_edge [
    i16 -1, label %if.then44.i
    i16 0, label %if.then49.i
  ]

if.end40.i.sw.epilog_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then44.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #23
  %or45.i = or i64 %new_mask.3.i, 8589934592
  br label %if.end53.i

if.then49.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #23
  %and50.i = and i64 %new_mask.3.i, -8589934593
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then49.i, %if.then44.i
  %new_mask.4.i = phi i64 [ %or45.i, %if.then44.i ], [ %and50.i, %if.then49.i ]
  %tos.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %80 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %tos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool54.not.i = icmp eq i8 %81, 0
  br i1 %tobool54.not.i, label %if.end53.i.sw.epilog211.i_crit_edge, label %if.end53.i.sw.epilog_crit_edge

if.end53.i.sw.epilog_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end53.i.sw.epilog211.i_crit_edge:              ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog211.i

sw.bb57.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  %and58.i = and i64 %add10.i.i, -6442450945
  br label %sw.bb59.i

sw.bb59.i:                                        ; preds = %sw.bb57.i, %sw.epilog.i.sw.bb59.i_crit_edge, %sw.epilog.i.sw.bb59.i_crit_edge227
  %new_mask.5.i = phi i64 [ %add10.i.i, %sw.epilog.i.sw.bb59.i_crit_edge ], [ %add10.i.i, %sw.epilog.i.sw.bb59.i_crit_edge227 ], [ %and58.i, %sw.bb57.i ]
  %m_u60.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %82 = ptrtoint ptr %m_u60.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %m_u60.i, align 4
  %arrayidx4.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx4.i.i, align 4
  %or.demorgan.i.i = and i32 %85, %83
  %arrayidx9.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %86 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx9.i.i, align 4
  %or13.demorgan.i.i = and i32 %or.demorgan.i.i, %87
  %arrayidx15.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %88 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx15.i.i, align 4
  %or19.demorgan.i.i = and i32 %or13.demorgan.i.i, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or19.demorgan.i.i)
  %cmp.i.i = icmp eq i32 %or19.demorgan.i.i, -1
  br i1 %cmp.i.i, label %if.then62.i, label %if.else64.i

if.then62.i:                                      ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #23
  %or63.i = or i64 %new_mask.5.i, 2243003720663040
  br label %if.end71.i

if.else64.i:                                      ; preds = %sw.bb59.i
  %or.i.i = or i32 %85, %83
  %or5.i.i = or i32 %or.i.i, %87
  %or8.i.i = or i32 %or5.i.i, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i529.i = icmp eq i32 %or8.i.i, 0
  br i1 %cmp.i529.i, label %if.then67.i, label %if.else64.i.sw.epilog_crit_edge

if.else64.i.sw.epilog_crit_edge:                  ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then67.i:                                      ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #23
  %and68.i = and i64 %new_mask.5.i, -2243003720663041
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then67.i, %if.then62.i
  %new_mask.6.i = phi i64 [ %or63.i, %if.then62.i ], [ %and68.i, %if.then67.i ]
  %ip6dst.i73 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %90 = ptrtoint ptr %ip6dst.i73 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ip6dst.i73, align 4
  %arrayidx4.i530.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %arrayidx4.i530.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx4.i530.i, align 4
  %or.demorgan.i531.i = and i32 %93, %91
  %arrayidx9.i532.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 2
  %94 = ptrtoint ptr %arrayidx9.i532.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx9.i532.i, align 4
  %or13.demorgan.i533.i = and i32 %or.demorgan.i531.i, %95
  %arrayidx15.i534.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 3
  %96 = ptrtoint ptr %arrayidx15.i534.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx15.i534.i, align 4
  %or19.demorgan.i535.i = and i32 %or13.demorgan.i533.i, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or19.demorgan.i535.i)
  %cmp.i536.i = icmp eq i32 %or19.demorgan.i535.i, -1
  br i1 %cmp.i536.i, label %if.then73.i, label %if.else75.i

if.then73.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #23
  %or74.i = or i64 %new_mask.6.i, 8761733283840
  br label %if.end82.i

if.else75.i:                                      ; preds = %if.end71.i
  %or.i538.i = or i32 %93, %91
  %or5.i540.i = or i32 %or.i538.i, %95
  %or8.i542.i = or i32 %or5.i540.i, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i542.i)
  %cmp.i543.i = icmp eq i32 %or8.i542.i, 0
  br i1 %cmp.i543.i, label %if.then78.i, label %if.else75.i.sw.epilog_crit_edge

if.else75.i.sw.epilog_crit_edge:                  ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then78.i:                                      ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #23
  %and79.i = and i64 %new_mask.6.i, -8761733283841
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then78.i, %if.then73.i
  %new_mask.7.i = phi i64 [ %or74.i, %if.then73.i ], [ %and79.i, %if.then78.i ]
  %psrc83.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %98 = ptrtoint ptr %psrc83.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %psrc83.i, align 4
  %100 = zext i16 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.178)
  switch i16 %99, label %if.end82.i.sw.epilog_crit_edge [
    i16 -1, label %if.then87.i
    i16 0, label %if.then92.i
  ]

if.end82.i.sw.epilog_crit_edge:                   ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then87.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #23
  %or88.i = or i64 %new_mask.7.i, 17179869184
  br label %if.end96.i

if.then92.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #23
  %and93.i = and i64 %new_mask.7.i, -17179869185
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then92.i, %if.then87.i
  %new_mask.8.i = phi i64 [ %or88.i, %if.then87.i ], [ %and93.i, %if.then92.i ]
  %pdst97.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 3
  %101 = ptrtoint ptr %pdst97.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %pdst97.i, align 2
  %103 = zext i16 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.179)
  switch i16 %102, label %if.end96.i.sw.epilog_crit_edge [
    i16 -1, label %if.then101.i
    i16 0, label %if.then106.i
  ]

if.end96.i.sw.epilog_crit_edge:                   ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then101.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #23
  %or102.i = or i64 %new_mask.8.i, 8589934592
  br label %if.end110.i74

if.then106.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #23
  %and107.i = and i64 %new_mask.8.i, -8589934593
  br label %if.end110.i74

if.end110.i74:                                    ; preds = %if.then106.i, %if.then101.i
  %new_mask.9.i = phi i64 [ %or102.i, %if.then101.i ], [ %and107.i, %if.then106.i ]
  %tclass.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %104 = ptrtoint ptr %tclass.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %tclass.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool111.not.i = icmp eq i8 %105, 0
  br i1 %tobool111.not.i, label %if.end110.i74.sw.epilog211.i_crit_edge, label %if.end110.i74.sw.epilog_crit_edge

if.end110.i74.sw.epilog_crit_edge:                ; preds = %if.end110.i74
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end110.i74.sw.epilog211.i_crit_edge:           ; preds = %if.end110.i74
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog211.i

sw.bb114.i:                                       ; preds = %sw.epilog.i
  %m_u115.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %106 = ptrtoint ptr %m_u115.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %m_u115.i, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %107, label %sw.bb114.i.sw.epilog_crit_edge [
    i32 -1, label %if.then119.i
    i32 0, label %if.then124.i
  ]

sw.bb114.i.sw.epilog_crit_edge:                   ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then119.i:                                     ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #23
  %or120.i = or i64 %add10.i.i, 422212465065984
  br label %if.end128.i

if.then124.i:                                     ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #23
  %and125.i = and i64 %add10.i.i, -422212465065985
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then124.i, %if.then119.i
  %new_mask.10.i = phi i64 [ %or120.i, %if.then119.i ], [ %and125.i, %if.then124.i ]
  %ip4dst129.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %109 = ptrtoint ptr %ip4dst129.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ip4dst129.i, align 4
  %111 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %110, label %if.end128.i.sw.epilog_crit_edge [
    i32 -1, label %if.then132.i
    i32 0, label %if.then137.i
  ]

if.end128.i.sw.epilog_crit_edge:                  ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then132.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #23
  %or133.i = or i64 %new_mask.10.i, 103079215104
  br label %if.end141.i

if.then137.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #23
  %and138.i = and i64 %new_mask.10.i, -103079215105
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then137.i, %if.then132.i
  %new_mask.11.i = phi i64 [ %or133.i, %if.then132.i ], [ %and138.i, %if.then137.i ]
  %l4_4_bytes.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %112 = ptrtoint ptr %l4_4_bytes.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %l4_4_bytes.i, align 4
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %113, label %if.end141.i.sw.epilog_crit_edge [
    i32 -1, label %if.then144.i
    i32 0, label %if.then149.i
  ]

if.end141.i.sw.epilog_crit_edge:                  ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then144.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #23
  %or145.i = or i64 %new_mask.11.i, 25769803776
  br label %if.end153.i

if.then149.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #23
  %and150.i = and i64 %new_mask.11.i, -25769803777
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.then149.i, %if.then144.i
  %new_mask.12.i = phi i64 [ %or145.i, %if.then144.i ], [ %and150.i, %if.then149.i ]
  %tos154.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %115 = ptrtoint ptr %tos154.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %tos154.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool155.not.i = icmp eq i8 %116, 0
  br i1 %tobool155.not.i, label %if.end157.i, label %if.end153.i.sw.epilog_crit_edge

if.end153.i.sw.epilog_crit_edge:                  ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end157.i:                                      ; preds = %if.end153.i
  %ip_ver.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u115.i, i32 0, i32 4
  %117 = ptrtoint ptr %ip_ver.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %ip_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool158.not.i = icmp eq i8 %118, 0
  br i1 %tobool158.not.i, label %if.end160.i, label %if.end157.i.sw.epilog_crit_edge

if.end157.i.sw.epilog_crit_edge:                  ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end160.i:                                      ; preds = %if.end157.i
  %proto.i75 = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u115.i, i32 0, i32 5
  %119 = ptrtoint ptr %proto.i75 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %proto.i75, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool161.not.i = icmp eq i8 %120, 0
  br i1 %tobool161.not.i, label %if.end160.i.sw.epilog211.i_crit_edge, label %if.end160.i.sw.epilog_crit_edge

if.end160.i.sw.epilog_crit_edge:                  ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end160.i.sw.epilog211.i_crit_edge:             ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog211.i

sw.bb164.i:                                       ; preds = %sw.epilog.i
  %m_u165.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %121 = ptrtoint ptr %m_u165.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %m_u165.i, align 4
  %arrayidx4.i544.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %123 = ptrtoint ptr %arrayidx4.i544.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx4.i544.i, align 4
  %or.demorgan.i545.i = and i32 %124, %122
  %arrayidx9.i546.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %125 = ptrtoint ptr %arrayidx9.i546.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx9.i546.i, align 4
  %or13.demorgan.i547.i = and i32 %or.demorgan.i545.i, %126
  %arrayidx15.i548.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %127 = ptrtoint ptr %arrayidx15.i548.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx15.i548.i, align 4
  %or19.demorgan.i549.i = and i32 %or13.demorgan.i547.i, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or19.demorgan.i549.i)
  %cmp.i550.i = icmp eq i32 %or19.demorgan.i549.i, -1
  br i1 %cmp.i550.i, label %if.then168.i, label %if.else170.i

if.then168.i:                                     ; preds = %sw.bb164.i
  call void @__sanitizer_cov_trace_pc() #23
  %or169.i = or i64 %add10.i.i, 2243003720663040
  br label %if.end177.i

if.else170.i:                                     ; preds = %sw.bb164.i
  %or.i552.i = or i32 %124, %122
  %or5.i554.i = or i32 %or.i552.i, %126
  %or8.i556.i = or i32 %or5.i554.i, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i556.i)
  %cmp.i557.i = icmp eq i32 %or8.i556.i, 0
  br i1 %cmp.i557.i, label %if.then173.i, label %if.else170.i.sw.epilog_crit_edge

if.else170.i.sw.epilog_crit_edge:                 ; preds = %if.else170.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then173.i:                                     ; preds = %if.else170.i
  call void @__sanitizer_cov_trace_pc() #23
  %and174.i = and i64 %add10.i.i, -2243003720663041
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.then173.i, %if.then168.i
  %new_mask.13.i = phi i64 [ %or169.i, %if.then168.i ], [ %and174.i, %if.then173.i ]
  %ip6dst178.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %129 = ptrtoint ptr %ip6dst178.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ip6dst178.i, align 4
  %arrayidx4.i558.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 1
  %131 = ptrtoint ptr %arrayidx4.i558.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx4.i558.i, align 4
  %or.demorgan.i559.i = and i32 %132, %130
  %arrayidx9.i560.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 2
  %133 = ptrtoint ptr %arrayidx9.i560.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx9.i560.i, align 4
  %or13.demorgan.i561.i = and i32 %or.demorgan.i559.i, %134
  %arrayidx15.i562.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 3
  %135 = ptrtoint ptr %arrayidx15.i562.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx15.i562.i, align 4
  %or19.demorgan.i563.i = and i32 %or13.demorgan.i561.i, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or19.demorgan.i563.i)
  %cmp.i564.i = icmp eq i32 %or19.demorgan.i563.i, -1
  br i1 %cmp.i564.i, label %if.then180.i, label %if.else182.i

if.then180.i:                                     ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #23
  %or181.i = or i64 %new_mask.13.i, 8761733283840
  br label %if.end189.i

if.else182.i:                                     ; preds = %if.end177.i
  %or.i566.i = or i32 %124, %122
  %or5.i568.i = or i32 %or.i566.i, %126
  %or8.i570.i = or i32 %or5.i568.i, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i570.i)
  %cmp.i571.i = icmp eq i32 %or8.i570.i, 0
  br i1 %cmp.i571.i, label %if.then185.i, label %if.else182.i.sw.epilog_crit_edge

if.else182.i.sw.epilog_crit_edge:                 ; preds = %if.else182.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then185.i:                                     ; preds = %if.else182.i
  call void @__sanitizer_cov_trace_pc() #23
  %and186.i = and i64 %new_mask.13.i, -8761733283841
  br label %if.end189.i

if.end189.i:                                      ; preds = %if.then185.i, %if.then180.i
  %new_mask.14.i = phi i64 [ %or181.i, %if.then180.i ], [ %and186.i, %if.then185.i ]
  %l4_4_bytes190.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %137 = ptrtoint ptr %l4_4_bytes190.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %l4_4_bytes190.i, align 4
  %139 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %138, label %if.end189.i.sw.epilog_crit_edge [
    i32 -1, label %if.then193.i
    i32 0, label %if.then198.i
  ]

if.end189.i.sw.epilog_crit_edge:                  ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then193.i:                                     ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #23
  %or194.i = or i64 %new_mask.14.i, 25769803776
  br label %if.end202.i

if.then198.i:                                     ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #23
  %and199.i = and i64 %new_mask.14.i, -25769803777
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.then198.i, %if.then193.i
  %new_mask.15.i = phi i64 [ %or194.i, %if.then193.i ], [ %and199.i, %if.then198.i ]
  %tclass203.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %140 = ptrtoint ptr %tclass203.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %tclass203.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool204.not.i = icmp eq i8 %141, 0
  br i1 %tobool204.not.i, label %if.end206.i, label %if.end202.i.sw.epilog_crit_edge

if.end202.i.sw.epilog_crit_edge:                  ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end206.i:                                      ; preds = %if.end202.i
  %l4_proto.i76 = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %m_u165.i, i32 0, i32 4
  %142 = ptrtoint ptr %l4_proto.i76 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %l4_proto.i76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool207.not.i = icmp eq i8 %143, 0
  br i1 %tobool207.not.i, label %if.end206.i.sw.epilog211.i_crit_edge, label %if.end206.i.sw.epilog_crit_edge

if.end206.i.sw.epilog_crit_edge:                  ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end206.i.sw.epilog211.i_crit_edge:             ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog211.i

sw.epilog211.i:                                   ; preds = %if.end206.i.sw.epilog211.i_crit_edge, %if.end160.i.sw.epilog211.i_crit_edge, %if.end110.i74.sw.epilog211.i_crit_edge, %if.end53.i.sw.epilog211.i_crit_edge
  %new_mask.16.i = phi i64 [ %new_mask.15.i, %if.end206.i.sw.epilog211.i_crit_edge ], [ %new_mask.12.i, %if.end160.i.sw.epilog211.i_crit_edge ], [ %new_mask.9.i, %if.end110.i74.sw.epilog211.i_crit_edge ], [ %new_mask.4.i, %if.end53.i.sw.epilog211.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %tobool214.not.i = icmp sgt i32 %66, -1
  br i1 %tobool214.not.i, label %sw.epilog211.i.if.end234.i_crit_edge, label %if.then215.i

sw.epilog211.i.if.end234.i_crit_edge:             ; preds = %sw.epilog211.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end234.i

if.then215.i:                                     ; preds = %sw.epilog211.i
  %vlan_etype.i77 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 2
  %144 = ptrtoint ptr %vlan_etype.i77 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %vlan_etype.i77, align 8
  %146 = zext i16 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.184)
  switch i16 %145, label %if.then215.i.sw.epilog_crit_edge [
    i16 -32512, label %if.then215.i.if.end225.i_crit_edge
    i16 0, label %if.then215.i.if.end225.i_crit_edge228
  ]

if.then215.i.if.end225.i_crit_edge228:            ; preds = %if.then215.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end225.i

if.then215.i.if.end225.i_crit_edge:               ; preds = %if.then215.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end225.i

if.then215.i.sw.epilog_crit_edge:                 ; preds = %if.then215.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end225.i:                                      ; preds = %if.then215.i.if.end225.i_crit_edge, %if.then215.i.if.end225.i_crit_edge228
  %vlan_tci.i78 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %147 = ptrtoint ptr %vlan_tci.i78 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %vlan_tci.i78, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %148)
  %cmp227.i = icmp eq i16 %148, -1
  br i1 %cmp227.i, label %if.then229.i, label %if.else231.i

if.then229.i:                                     ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #23
  %or230.i = or i64 %new_mask.16.i, 36028797018963968
  br label %if.end234.i

if.else231.i:                                     ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #23
  %and232.i = and i64 %new_mask.16.i, -36028797018963969
  br label %if.end234.i

if.end234.i:                                      ; preds = %if.else231.i, %if.then229.i, %sw.epilog211.i.if.end234.i_crit_edge
  %new_mask.17.i = phi i64 [ %or230.i, %if.then229.i ], [ %and232.i, %if.else231.i ], [ %new_mask.16.i, %sw.epilog211.i.if.end234.i_crit_edge ]
  %and235.i = and i64 %new_mask.17.i, -16321
  br i1 %tobool236.not.i, label %if.end234.i.if.end295.i_crit_edge, label %if.then237.i

if.end234.i.if.end295.i_crit_edge:                ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end295.i

if.then237.i:                                     ; preds = %if.end234.i
  %149 = and i16 %userdef.i.sroa.8.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool240.not.i = icmp eq i16 %149, 0
  br i1 %tobool240.not.i, label %if.end242.i, label %do.end.i81

do.end.i81:                                       ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #23
  %150 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %42, align 8
  %dev.i80 = getelementptr inbounds %struct.pci_dev, ptr %151, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i80, ptr noundef nonnull @.str.100) #24
  br label %sw.epilog

if.end242.i:                                      ; preds = %if.then237.i
  %152 = lshr i16 %userdef.i.sroa.8.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %userdef.i.sroa.8.0)
  %cmp247.i = icmp ugt i16 %userdef.i.sroa.8.0, 63
  br i1 %cmp247.i, label %do.end252.i, label %if.end255.i

do.end252.i:                                      ; preds = %if.end242.i
  call void @__sanitizer_cov_trace_pc() #23
  %153 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %42, align 8
  %dev254.i = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev254.i, ptr noundef nonnull @.str.103) #24
  br label %sw.epilog

if.end255.i:                                      ; preds = %if.end242.i
  %l4_flex_pit_list.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 38
  %155 = ptrtoint ptr %l4_flex_pit_list.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %entry1.023.i.i = load ptr, ptr %l4_flex_pit_list.i, align 4
  %cmp.not24.i.i = icmp eq ptr %entry1.023.i.i, %l4_flex_pit_list.i
  br i1 %cmp.not24.i.i, label %if.end255.i.if.end260.i_crit_edge, label %if.end255.i.for.body.i.i82_crit_edge

if.end255.i.for.body.i.i82_crit_edge:             ; preds = %if.end255.i
  br label %for.body.i.i82

if.end255.i.if.end260.i_crit_edge:                ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end260.i

for.body.i.i82:                                   ; preds = %for.inc.i.i84.for.body.i.i82_crit_edge, %if.end255.i.for.body.i.i82_crit_edge
  %entry1.026.i.i = phi ptr [ %entry1.0.i.i, %for.inc.i.i84.for.body.i.i82_crit_edge ], [ %entry1.023.i.i, %if.end255.i.for.body.i.i82_crit_edge ]
  %size.025.i.i = phi i32 [ %inc.i.i, %for.inc.i.i84.for.body.i.i82_crit_edge ], [ 0, %if.end255.i.for.body.i.i82_crit_edge ]
  %src_offset2.i.i = getelementptr inbounds %struct.i40e_flex_pit, ptr %entry1.026.i.i, i32 0, i32 1
  %156 = ptrtoint ptr %src_offset2.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %src_offset2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %157, i16 %152)
  %cmp4.i.i = icmp eq i16 %157, %152
  br i1 %cmp4.i.i, label %i40e_find_flex_offset.exit.i, label %for.inc.i.i84

for.inc.i.i84:                                    ; preds = %for.body.i.i82
  %inc.i.i = add i32 %size.025.i.i, 1
  %158 = ptrtoint ptr %entry1.026.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %entry1.0.i.i = load ptr, ptr %entry1.026.i.i, align 4
  %cmp.not.i.i83 = icmp eq ptr %entry1.0.i.i, %l4_flex_pit_list.i
  br i1 %cmp.not.i.i83, label %for.end.loopexit.i.i, label %for.inc.i.i84.for.body.i.i82_crit_edge

for.inc.i.i84.for.body.i.i82_crit_edge:           ; preds = %for.inc.i.i84
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i.i82

for.end.loopexit.i.i:                             ; preds = %for.inc.i.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i.i)
  %phi.cmp.i.i = icmp sgt i32 %inc.i.i, 2
  br i1 %phi.cmp.i.i, label %for.end.loopexit.i.i.sw.epilog_crit_edge, label %for.end.loopexit.i.i.if.end260.i_crit_edge

for.end.loopexit.i.i.if.end260.i_crit_edge:       ; preds = %for.end.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end260.i

for.end.loopexit.i.i.sw.epilog_crit_edge:         ; preds = %for.end.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

i40e_find_flex_offset.exit.i:                     ; preds = %for.body.i.i82
  %cmp.i572.i = icmp ugt ptr %entry1.026.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i572.i, label %i40e_find_flex_offset.exit.i.i40e_check_fdir_input_set.exit_crit_edge, label %i40e_find_flex_offset.exit.i.if.end260.i_crit_edge

i40e_find_flex_offset.exit.i.if.end260.i_crit_edge: ; preds = %i40e_find_flex_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end260.i

i40e_find_flex_offset.exit.i.i40e_check_fdir_input_set.exit_crit_edge: ; preds = %i40e_find_flex_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_check_fdir_input_set.exit

if.end260.i:                                      ; preds = %i40e_find_flex_offset.exit.i.if.end260.i_crit_edge, %for.end.loopexit.i.i.if.end260.i_crit_edge, %if.end255.i.if.end260.i_crit_edge
  %retval.0.i593.i = phi ptr [ %entry1.026.i.i, %i40e_find_flex_offset.exit.i.if.end260.i_crit_edge ], [ null, %if.end255.i.if.end260.i_crit_edge ], [ null, %for.end.loopexit.i.i.if.end260.i_crit_edge ]
  br i1 %flex_l3.0.off0.i, label %if.then262.i, label %if.end260.i.if.end284.i_crit_edge

if.end260.i.if.end284.i_crit_edge:                ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end284.i

if.then262.i:                                     ; preds = %if.end260.i
  %l3_flex_pit_list.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 37
  %159 = ptrtoint ptr %l3_flex_pit_list.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %entry1.023.i573.i = load ptr, ptr %l3_flex_pit_list.i, align 4
  %cmp.not24.i574.i = icmp eq ptr %entry1.023.i573.i, %l3_flex_pit_list.i
  br i1 %cmp.not24.i574.i, label %if.then262.i.if.end267.thread.i_crit_edge, label %if.then262.i.for.body.i579.i_crit_edge

if.then262.i.for.body.i579.i_crit_edge:           ; preds = %if.then262.i
  br label %for.body.i579.i

if.then262.i.if.end267.thread.i_crit_edge:        ; preds = %if.then262.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end267.thread.i

for.body.i579.i:                                  ; preds = %for.inc.i583.i.for.body.i579.i_crit_edge, %if.then262.i.for.body.i579.i_crit_edge
  %entry1.026.i575.i = phi ptr [ %entry1.0.i581.i, %for.inc.i583.i.for.body.i579.i_crit_edge ], [ %entry1.023.i573.i, %if.then262.i.for.body.i579.i_crit_edge ]
  %size.025.i576.i = phi i32 [ %inc.i580.i, %for.inc.i583.i.for.body.i579.i_crit_edge ], [ 0, %if.then262.i.for.body.i579.i_crit_edge ]
  %src_offset2.i577.i = getelementptr inbounds %struct.i40e_flex_pit, ptr %entry1.026.i575.i, i32 0, i32 1
  %160 = ptrtoint ptr %src_offset2.i577.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %src_offset2.i577.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %161, i16 %152)
  %cmp4.i578.i = icmp eq i16 %161, %152
  br i1 %cmp4.i578.i, label %i40e_find_flex_offset.exit588.i, label %for.inc.i583.i

for.inc.i583.i:                                   ; preds = %for.body.i579.i
  %inc.i580.i = add i32 %size.025.i576.i, 1
  %162 = ptrtoint ptr %entry1.026.i575.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %entry1.0.i581.i = load ptr, ptr %entry1.026.i575.i, align 4
  %cmp.not.i582.i = icmp eq ptr %entry1.0.i581.i, %l3_flex_pit_list.i
  br i1 %cmp.not.i582.i, label %for.end.loopexit.i586.i, label %for.inc.i583.i.for.body.i579.i_crit_edge

for.inc.i583.i.for.body.i579.i_crit_edge:         ; preds = %for.inc.i583.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i579.i

for.end.loopexit.i586.i:                          ; preds = %for.inc.i583.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i580.i)
  %phi.cmp.i584.i = icmp sgt i32 %inc.i580.i, 2
  br i1 %phi.cmp.i584.i, label %for.end.loopexit.i586.i.sw.epilog_crit_edge, label %for.end.loopexit.i586.i.if.end267.thread.i_crit_edge

for.end.loopexit.i586.i.if.end267.thread.i_crit_edge: ; preds = %for.end.loopexit.i586.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end267.thread.i

for.end.loopexit.i586.i.sw.epilog_crit_edge:      ; preds = %for.end.loopexit.i586.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

i40e_find_flex_offset.exit588.i:                  ; preds = %for.body.i579.i
  %cmp.i589.i = icmp ugt ptr %entry1.026.i575.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i589.i, label %i40e_find_flex_offset.exit588.i.i40e_check_fdir_input_set.exit_crit_edge, label %if.end267.i

i40e_find_flex_offset.exit588.i.i40e_check_fdir_input_set.exit_crit_edge: ; preds = %i40e_find_flex_offset.exit588.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_check_fdir_input_set.exit

if.end267.i:                                      ; preds = %i40e_find_flex_offset.exit588.i
  %tobool268.not.i = icmp eq ptr %retval.0.i593.i, null
  br i1 %tobool268.not.i, label %if.end267.i.if.end284.i_crit_edge, label %if.then269.i

if.end267.i.if.end284.i_crit_edge:                ; preds = %if.end267.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end284.i

if.end267.thread.i:                               ; preds = %for.end.loopexit.i586.i.if.end267.thread.i_crit_edge, %if.then262.i.if.end267.thread.i_crit_edge
  %tobool268.not607.i = icmp eq ptr %retval.0.i593.i, null
  br i1 %tobool268.not607.i, label %if.end267.thread.i.if.then286.i_crit_edge, label %if.end267.thread.i.if.else288.i_crit_edge

if.end267.thread.i.if.else288.i_crit_edge:        ; preds = %if.end267.thread.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else288.i

if.end267.thread.i.if.then286.i_crit_edge:        ; preds = %if.end267.thread.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then286.i

if.then269.i:                                     ; preds = %if.end267.i
  %tobool270.not.i = icmp eq ptr %entry1.026.i575.i, null
  br i1 %tobool270.not.i, label %if.then269.i.if.else288.i_crit_edge, label %if.then271.i

if.then269.i.if.else288.i_crit_edge:              ; preds = %if.then269.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else288.i

if.then271.i:                                     ; preds = %if.then269.i
  %pit_index272.i = getelementptr inbounds %struct.i40e_flex_pit, ptr %entry1.026.i575.i, i32 0, i32 2
  %163 = ptrtoint ptr %pit_index272.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %pit_index272.i, align 2
  %pit_index274.i = getelementptr inbounds %struct.i40e_flex_pit, ptr %retval.0.i593.i, i32 0, i32 2
  %165 = ptrtoint ptr %pit_index274.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %pit_index274.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %164, i8 %166)
  %cmp276.not.i = icmp eq i8 %164, %166
  br i1 %cmp276.not.i, label %if.then271.i.if.else288.i_crit_edge, label %if.then271.i.sw.epilog_crit_edge

if.then271.i.sw.epilog_crit_edge:                 ; preds = %if.then271.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then271.i.if.else288.i_crit_edge:              ; preds = %if.then271.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else288.i

if.end284.i:                                      ; preds = %if.end267.i.if.end284.i_crit_edge, %if.end260.i.if.end284.i_crit_edge
  %flex_pit.0.i = phi ptr [ %retval.0.i593.i, %if.end260.i.if.end284.i_crit_edge ], [ %entry1.026.i575.i, %if.end267.i.if.end284.i_crit_edge ]
  %tobool285.not.i = icmp eq ptr %flex_pit.0.i, null
  br i1 %tobool285.not.i, label %if.end284.i.if.then286.i_crit_edge, label %if.end284.i.if.else288.i_crit_edge

if.end284.i.if.else288.i_crit_edge:               ; preds = %if.end284.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else288.i

if.end284.i.if.then286.i_crit_edge:               ; preds = %if.end284.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then286.i

if.then286.i:                                     ; preds = %if.end284.i.if.then286.i_crit_edge, %if.end267.thread.i.if.then286.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %available_index.i) #21
  %167 = ptrtoint ptr %available_index.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 255, ptr %available_index.i, align 4
  br i1 %cmp.not24.i.i, label %if.then286.i.for.end.i_crit_edge, label %if.then286.i.for.body.i141_crit_edge

if.then286.i.for.body.i141_crit_edge:             ; preds = %if.then286.i
  br label %for.body.i141

if.then286.i.for.end.i_crit_edge:                 ; preds = %if.then286.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

for.body.i141:                                    ; preds = %for.body.i141.for.body.i141_crit_edge, %if.then286.i.for.body.i141_crit_edge
  %entry1.039.i = phi ptr [ %entry1.0.i, %for.body.i141.for.body.i141_crit_edge ], [ %entry1.023.i.i, %if.then286.i.for.body.i141_crit_edge ]
  %pit_index.i = getelementptr inbounds %struct.i40e_flex_pit, ptr %entry1.039.i, i32 0, i32 2
  %168 = ptrtoint ptr %pit_index.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %pit_index.i, align 2
  %conv.i139 = zext i8 %169 to i32
  call void @_clear_bit(i32 noundef %conv.i139, ptr noundef nonnull %available_index.i) #21
  %170 = ptrtoint ptr %entry1.039.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %entry1.0.i = load ptr, ptr %entry1.039.i, align 4
  %cmp.not.i140 = icmp eq ptr %entry1.0.i, %l4_flex_pit_list.i
  br i1 %cmp.not.i140, label %for.body.i141.for.end.i_crit_edge, label %for.body.i141.for.body.i141_crit_edge

for.body.i141.for.body.i141_crit_edge:            ; preds = %for.body.i141
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i141

for.body.i141.for.end.i_crit_edge:                ; preds = %for.body.i141
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i141.for.end.i_crit_edge, %if.then286.i.for.end.i_crit_edge
  %l3_flex_pit_list.i142 = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 37
  %171 = ptrtoint ptr %l3_flex_pit_list.i142 to i32
  call void @__asan_load4_noabort(i32 %171)
  %entry1.140.i = load ptr, ptr %l3_flex_pit_list.i142, align 4
  %cmp15.not41.i = icmp eq ptr %entry1.140.i, %l3_flex_pit_list.i142
  br i1 %cmp15.not41.i, label %for.end.i.i40e_unused_pit_index.exit_crit_edge, label %for.end.i.for.body18.i_crit_edge

for.end.i.for.body18.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body18.i

for.end.i.i40e_unused_pit_index.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_unused_pit_index.exit

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.end.i.for.body18.i_crit_edge
  %entry1.142.i = phi ptr [ %entry1.1.i, %for.body18.i.for.body18.i_crit_edge ], [ %entry1.140.i, %for.end.i.for.body18.i_crit_edge ]
  %pit_index19.i = getelementptr inbounds %struct.i40e_flex_pit, ptr %entry1.142.i, i32 0, i32 2
  %172 = ptrtoint ptr %pit_index19.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %pit_index19.i, align 2
  %conv20.i = zext i8 %173 to i32
  call void @_clear_bit(i32 noundef %conv20.i, ptr noundef nonnull %available_index.i) #21
  %174 = ptrtoint ptr %entry1.142.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %entry1.1.i = load ptr, ptr %entry1.142.i, align 4
  %cmp15.not.i = icmp eq ptr %entry1.1.i, %l3_flex_pit_list.i142
  br i1 %cmp15.not.i, label %for.body18.i.i40e_unused_pit_index.exit_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body18.i

for.body18.i.i40e_unused_pit_index.exit_crit_edge: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_unused_pit_index.exit

i40e_unused_pit_index.exit:                       ; preds = %for.body18.i.i40e_unused_pit_index.exit_crit_edge, %for.end.i.i40e_unused_pit_index.exit_crit_edge
  %call.i143 = call i32 @_find_first_bit_be(ptr noundef nonnull %available_index.i, i32 noundef 8) #21
  %conv28.i = trunc i32 %call.i143 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %available_index.i) #21
  br label %if.end290.i

if.else288.i:                                     ; preds = %if.end284.i.if.else288.i_crit_edge, %if.then271.i.if.else288.i_crit_edge, %if.then269.i.if.else288.i_crit_edge, %if.end267.thread.i.if.else288.i_crit_edge
  %flex_pit.0615.i = phi ptr [ %flex_pit.0.i, %if.end284.i.if.else288.i_crit_edge ], [ %retval.0.i593.i, %if.then271.i.if.else288.i_crit_edge ], [ %retval.0.i593.i, %if.then269.i.if.else288.i_crit_edge ], [ %retval.0.i593.i, %if.end267.thread.i.if.else288.i_crit_edge ]
  %new_flex_offset.0614.i = phi i1 [ false, %if.end284.i.if.else288.i_crit_edge ], [ false, %if.then271.i.if.else288.i_crit_edge ], [ true, %if.then269.i.if.else288.i_crit_edge ], [ true, %if.end267.thread.i.if.else288.i_crit_edge ]
  %pit_index289.i = getelementptr inbounds %struct.i40e_flex_pit, ptr %flex_pit.0615.i, i32 0, i32 2
  %175 = ptrtoint ptr %pit_index289.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %pit_index289.i, align 2
  br label %if.end290.i

if.end290.i:                                      ; preds = %if.else288.i, %i40e_unused_pit_index.exit
  %new_flex_offset.1.i = phi i1 [ %new_flex_offset.0614.i, %if.else288.i ], [ true, %i40e_unused_pit_index.exit ]
  %pit_index.0.i = phi i8 [ %176, %if.else288.i ], [ %conv28.i, %i40e_unused_pit_index.exit ]
  %177 = zext i8 %pit_index.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.185)
  switch i8 %pit_index.0.i, label %sw.default.i.i [
    i8 0, label %if.end290.i.cleanup.i85_crit_edge
    i8 1, label %sw.bb1.i.i
    i8 2, label %sw.bb2.i.i
    i8 3, label %sw.bb3.i.i
    i8 4, label %sw.bb4.i.i
    i8 5, label %sw.bb5.i.i
    i8 6, label %sw.bb6.i.i
    i8 7, label %sw.bb7.i.i
  ]

if.end290.i.cleanup.i85_crit_edge:                ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.i85

sw.bb1.i.i:                                       ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.i85

sw.bb2.i.i:                                       ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.i85

sw.bb3.i.i:                                       ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.i85

sw.bb4.i.i:                                       ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.i85

sw.bb5.i.i:                                       ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.i85

sw.bb6.i.i:                                       ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.i85

sw.bb7.i.i:                                       ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.i85

sw.default.i.i:                                   ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.i85

cleanup.i85:                                      ; preds = %sw.default.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end290.i.cleanup.i85_crit_edge
  %retval.0.i590.i = phi i64 [ 0, %sw.default.i.i ], [ 64, %sw.bb7.i.i ], [ 128, %sw.bb6.i.i ], [ 256, %sw.bb5.i.i ], [ 512, %sw.bb4.i.i ], [ 1024, %sw.bb3.i.i ], [ 2048, %sw.bb2.i.i ], [ 4096, %sw.bb1.i.i ], [ 8192, %if.end290.i.cleanup.i85_crit_edge ]
  %or293.i = or i64 %retval.0.i590.i, %and235.i
  br label %if.end295.i

if.end295.i:                                      ; preds = %cleanup.i85, %if.end234.i.if.end295.i_crit_edge
  %new_mask.19.i = phi i64 [ %or293.i, %cleanup.i85 ], [ %and235.i, %if.end234.i.if.end295.i_crit_edge ]
  %new_flex_offset.3.off0.i = phi i1 [ %new_flex_offset.1.i, %cleanup.i85 ], [ false, %if.end234.i.if.end295.i_crit_edge ]
  %src_offset.1.i = phi i16 [ %152, %cleanup.i85 ], [ 0, %if.end234.i.if.end295.i_crit_edge ]
  %pit_index.2.i = phi i8 [ %pit_index.0.i, %cleanup.i85 ], [ 0, %if.end234.i.if.end295.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %new_mask.19.i, i64 %add10.i.i)
  %cmp296.i = icmp ne i64 %new_mask.19.i, %add10.i.i
  %brmerge.i = or i1 %cmp296.i, %new_flex_offset.3.off0.i
  br i1 %brmerge.i, label %do.body302.i, label %if.end295.i.if.end34.i_crit_edge

if.end295.i.if.end34.i_crit_edge:                 ; preds = %if.end295.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end34.i

do.body302.i:                                     ; preds = %if.end295.i
  %msg_enable.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 46
  %178 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %msg_enable.i, align 8
  %and303.i = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and303.i)
  %tobool304.not.i = icmp eq i32 %and303.i, 0
  br i1 %tobool304.not.i, label %do.body302.i.do.end309.i_crit_edge, label %if.then305.i

do.body302.i.do.end309.i_crit_edge:               ; preds = %do.body302.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end309.i

if.then305.i:                                     ; preds = %do.body302.i
  %180 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %1, align 128
  %182 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %fs.i, align 8
  %and.i127 = and i32 %183, 2147483647
  %switch.tableidx = add nsw i32 %and.i127, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %184 = icmp ult i32 %switch.tableidx, 14
  br i1 %184, label %switch.lookup, label %if.then305.i.i40e_flow_str.exit137_crit_edge

if.then305.i.i40e_flow_str.exit137_crit_edge:     ; preds = %if.then305.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_flow_str.exit137

switch.lookup:                                    ; preds = %if.then305.i
  call void @__sanitizer_cov_trace_pc() #23
  %switch.gep = getelementptr inbounds [14 x ptr], ptr @switch.table.i40e_set_rxnfc, i32 0, i32 %switch.tableidx
  %185 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %185)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %i40e_flow_str.exit137

i40e_flow_str.exit137:                            ; preds = %switch.lookup, %if.then305.i.i40e_flow_str.exit137_crit_edge
  %retval.0.i136 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.117, %if.then305.i.i40e_flow_str.exit137_crit_edge ]
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %181, ptr noundef nonnull @.str.105, ptr noundef nonnull %retval.0.i136) #24
  br label %do.end309.i

do.end309.i:                                      ; preds = %i40e_flow_str.exit137, %do.body302.i.do.end309.i_crit_edge
  %186 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %back.i, align 8
  %188 = and i64 %conv2.i.i, 98304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %188)
  %tobool.i = icmp ne i64 %188, 0
  %and2.i = and i64 %new_mask.19.i, 422212465065984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.i = icmp ne i64 %and2.i, 0
  %189 = xor i1 %tobool.i, %tobool3.i
  br i1 %189, label %do.body.i, label %do.end309.i.if.end19.i_crit_edge

do.end309.i.if.end19.i_crit_edge:                 ; preds = %do.end309.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19.i

do.body.i:                                        ; preds = %do.end309.i
  %msg_enable.i108 = getelementptr inbounds %struct.i40e_pf, ptr %187, i32 0, i32 46
  %190 = ptrtoint ptr %msg_enable.i108 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %msg_enable.i108, align 8
  %and11.i109 = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i109)
  %tobool12.not.i = icmp eq i32 %and11.i109, 0
  br i1 %tobool12.not.i, label %do.body.i.if.end19.i_crit_edge, label %if.then13.i

do.body.i.if.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19.i

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  %192 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %1, align 128
  %cond.i = select i1 %tobool.i, ptr @.str.119, ptr @.str.120
  %cond18.i = select i1 %tobool3.i, ptr @.str.119, ptr @.str.120
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %193, ptr noundef nonnull @.str.118, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond18.i) #24
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then13.i, %do.body.i.if.end19.i_crit_edge, %do.end309.i.if.end19.i_crit_edge
  %194 = and i64 %conv2.i.i, 24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %194)
  %tobool21.i = icmp ne i64 %194, 0
  %and25.i110 = and i64 %new_mask.19.i, 103079215104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25.i110)
  %tobool26.i = icmp ne i64 %and25.i110, 0
  %195 = xor i1 %tobool21.i, %tobool26.i
  br i1 %195, label %do.body37.i, label %if.end19.i.if.end52.i113_crit_edge

if.end19.i.if.end52.i113_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end52.i113

do.body37.i:                                      ; preds = %if.end19.i
  %msg_enable38.i = getelementptr inbounds %struct.i40e_pf, ptr %187, i32 0, i32 46
  %196 = ptrtoint ptr %msg_enable38.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %msg_enable38.i, align 8
  %and39.i = and i32 %197, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %do.body37.i.if.end52.i113_crit_edge, label %if.then41.i

do.body37.i.if.end52.i113_crit_edge:              ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end52.i113

if.then41.i:                                      ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #23
  %198 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %1, align 128
  %cond45.i = select i1 %tobool21.i, ptr @.str.119, ptr @.str.120
  %cond48.i = select i1 %tobool26.i, ptr @.str.119, ptr @.str.120
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %199, ptr noundef nonnull @.str.121, ptr noundef nonnull %cond45.i, ptr noundef nonnull %cond48.i) #24
  br label %if.end52.i113

if.end52.i113:                                    ; preds = %if.then41.i, %do.body37.i.if.end52.i113_crit_edge, %if.end19.i.if.end52.i113_crit_edge
  %and53.i = and i64 %shl.i.i, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and53.i)
  %tobool54.not.i111 = icmp eq i64 %and53.i, 0
  %and58.i112 = and i64 %new_mask.19.i, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and58.i112)
  %tobool59.not.i = icmp eq i64 %and58.i112, 0
  %and53.lobit.i = lshr exact i64 %and53.i, 34
  %200 = trunc i64 %and53.lobit.i to i32
  %and58.lobit.i = lshr exact i64 %and58.i112, 34
  %201 = trunc i64 %and58.lobit.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %201)
  %cmp67.not.i = icmp eq i32 %200, %201
  br i1 %cmp67.not.i, label %if.end52.i113.if.end85.i_crit_edge, label %do.body70.i

if.end52.i113.if.end85.i_crit_edge:               ; preds = %if.end52.i113
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end85.i

do.body70.i:                                      ; preds = %if.end52.i113
  %msg_enable71.i = getelementptr inbounds %struct.i40e_pf, ptr %187, i32 0, i32 46
  %202 = ptrtoint ptr %msg_enable71.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %msg_enable71.i, align 8
  %and72.i = and i32 %203, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %do.body70.i.if.end85.i_crit_edge, label %if.then74.i

do.body70.i.if.end85.i_crit_edge:                 ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end85.i

if.then74.i:                                      ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #23
  %204 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %1, align 128
  %cond78.i = select i1 %tobool54.not.i111, ptr @.str.120, ptr @.str.119
  %cond81.i = select i1 %tobool59.not.i, ptr @.str.120, ptr @.str.119
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %205, ptr noundef nonnull @.str.122, ptr noundef nonnull %cond78.i, ptr noundef nonnull %cond81.i) #24
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then74.i, %do.body70.i.if.end85.i_crit_edge, %if.end52.i113.if.end85.i_crit_edge
  %and86.i = and i64 %shl.i.i, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and86.i)
  %tobool87.not.i = icmp eq i64 %and86.i, 0
  %and91.i = and i64 %new_mask.19.i, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and91.i)
  %tobool92.not.i114 = icmp eq i64 %and91.i, 0
  %and86.lobit.i = lshr exact i64 %and86.i, 33
  %206 = trunc i64 %and86.lobit.i to i32
  %and91.lobit.i = lshr exact i64 %and91.i, 33
  %207 = trunc i64 %and91.lobit.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %207)
  %cmp100.not.i = icmp eq i32 %206, %207
  br i1 %cmp100.not.i, label %if.end85.i.if.end118.i_crit_edge, label %do.body103.i

if.end85.i.if.end118.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end118.i

do.body103.i:                                     ; preds = %if.end85.i
  %msg_enable104.i = getelementptr inbounds %struct.i40e_pf, ptr %187, i32 0, i32 46
  %208 = ptrtoint ptr %msg_enable104.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %msg_enable104.i, align 8
  %and105.i = and i32 %209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i115 = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i115, label %do.body103.i.if.end118.i_crit_edge, label %if.then107.i116

do.body103.i.if.end118.i_crit_edge:               ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end118.i

if.then107.i116:                                  ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #23
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %1, align 128
  %cond111.i = select i1 %tobool87.not.i, ptr @.str.120, ptr @.str.119
  %cond114.i = select i1 %tobool92.not.i114, ptr @.str.120, ptr @.str.119
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %211, ptr noundef nonnull @.str.123, ptr noundef nonnull %cond111.i, ptr noundef nonnull %cond114.i) #24
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then107.i116, %do.body103.i.if.end118.i_crit_edge, %if.end85.i.if.end118.i_crit_edge
  %and119.i = and i64 %add10.i.i, 6442450944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and119.i)
  %tobool120.i = icmp ne i64 %and119.i, 0
  %and124.i = and i64 %new_mask.19.i, 6442450944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and124.i)
  %tobool125.i = icmp ne i64 %and124.i, 0
  %212 = xor i1 %tobool120.i, %tobool125.i
  br i1 %212, label %do.body136.i, label %if.end118.i.if.end151.i_crit_edge

if.end118.i.if.end151.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end151.i

do.body136.i:                                     ; preds = %if.end118.i
  %msg_enable137.i = getelementptr inbounds %struct.i40e_pf, ptr %187, i32 0, i32 46
  %213 = ptrtoint ptr %msg_enable137.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %msg_enable137.i, align 8
  %and138.i117 = and i32 %214, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i117)
  %tobool139.not.i = icmp eq i32 %and138.i117, 0
  br i1 %tobool139.not.i, label %do.body136.i.if.end151.i_crit_edge, label %if.then140.i

do.body136.i.if.end151.i_crit_edge:               ; preds = %do.body136.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end151.i

if.then140.i:                                     ; preds = %do.body136.i
  call void @__sanitizer_cov_trace_pc() #23
  %215 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %1, align 128
  %cond144.i = select i1 %tobool120.i, ptr @.str.119, ptr @.str.120
  %cond147.i = select i1 %tobool125.i, ptr @.str.119, ptr @.str.120
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %216, ptr noundef nonnull @.str.124, ptr noundef nonnull %cond144.i, ptr noundef nonnull %cond147.i) #24
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then140.i, %do.body136.i.if.end151.i_crit_edge, %if.end118.i.if.end151.i_crit_edge
  %msg_enable172.i = getelementptr inbounds %struct.i40e_pf, ptr %187, i32 0, i32 46
  br label %for.body.i

for.body.i:                                       ; preds = %if.end186.i.for.body.i_crit_edge, %if.end151.i
  %i.0258.i = phi i32 [ 0, %if.end151.i ], [ %inc.i126, %if.end186.i.for.body.i_crit_edge ]
  %217 = zext i32 %i.0258.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %i.0258.i, label %sw.default.i.i125 [
    i32 0, label %for.body.i.i40e_pit_index_to_mask.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i118
    i32 2, label %sw.bb2.i.i119
    i32 3, label %sw.bb3.i.i120
    i32 4, label %sw.bb4.i.i121
    i32 5, label %sw.bb5.i.i122
    i32 6, label %sw.bb6.i.i123
    i32 7, label %sw.bb7.i.i124
  ]

for.body.i.i40e_pit_index_to_mask.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_pit_index_to_mask.exit.i

sw.bb1.i.i118:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_pit_index_to_mask.exit.i

sw.bb2.i.i119:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_pit_index_to_mask.exit.i

sw.bb3.i.i120:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_pit_index_to_mask.exit.i

sw.bb4.i.i121:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_pit_index_to_mask.exit.i

sw.bb5.i.i122:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_pit_index_to_mask.exit.i

sw.bb6.i.i123:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_pit_index_to_mask.exit.i

sw.bb7.i.i124:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_pit_index_to_mask.exit.i

sw.default.i.i125:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_pit_index_to_mask.exit.i

i40e_pit_index_to_mask.exit.i:                    ; preds = %sw.default.i.i125, %sw.bb7.i.i124, %sw.bb6.i.i123, %sw.bb5.i.i122, %sw.bb4.i.i121, %sw.bb3.i.i120, %sw.bb2.i.i119, %sw.bb1.i.i118, %for.body.i.i40e_pit_index_to_mask.exit.i_crit_edge
  %retval.0.i.i = phi i64 [ 0, %sw.default.i.i125 ], [ 64, %sw.bb7.i.i124 ], [ 128, %sw.bb6.i.i123 ], [ 256, %sw.bb5.i.i122 ], [ 512, %sw.bb4.i.i121 ], [ 1024, %sw.bb3.i.i120 ], [ 2048, %sw.bb2.i.i119 ], [ 4096, %sw.bb1.i.i118 ], [ 8192, %for.body.i.i40e_pit_index_to_mask.exit.i_crit_edge ]
  %and154.i = and i64 %retval.0.i.i, %add10.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and154.i)
  %tobool155.i = icmp ne i64 %and154.i, 0
  %and159.i = and i64 %retval.0.i.i, %new_mask.19.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and159.i)
  %tobool160.i = icmp ne i64 %and159.i, 0
  %218 = xor i1 %tobool155.i, %tobool160.i
  br i1 %218, label %do.body171.i, label %i40e_pit_index_to_mask.exit.i.if.end186.i_crit_edge

i40e_pit_index_to_mask.exit.i.if.end186.i_crit_edge: ; preds = %i40e_pit_index_to_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end186.i

do.body171.i:                                     ; preds = %i40e_pit_index_to_mask.exit.i
  %219 = ptrtoint ptr %msg_enable172.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %msg_enable172.i, align 8
  %and173.i = and i32 %220, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173.i)
  %tobool174.not.i = icmp eq i32 %and173.i, 0
  br i1 %tobool174.not.i, label %do.body171.i.if.end186.i_crit_edge, label %if.then175.i

do.body171.i.if.end186.i_crit_edge:               ; preds = %do.body171.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end186.i

if.then175.i:                                     ; preds = %do.body171.i
  call void @__sanitizer_cov_trace_pc() #23
  %221 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %1, align 128
  %cond179.i = select i1 %tobool155.i, ptr @.str.119, ptr @.str.120
  %cond182.i = select i1 %tobool160.i, ptr @.str.119, ptr @.str.120
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %222, ptr noundef nonnull @.str.125, i32 noundef %i.0258.i, ptr noundef nonnull %cond179.i, ptr noundef nonnull %cond182.i) #24
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.then175.i, %do.body171.i.if.end186.i_crit_edge, %i40e_pit_index_to_mask.exit.i.if.end186.i_crit_edge
  %inc.i126 = add nuw nsw i32 %i.0258.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i126, 8
  br i1 %exitcond.not.i, label %do.body187.i, label %if.end186.i.for.body.i_crit_edge

if.end186.i.for.body.i_crit_edge:                 ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

do.body187.i:                                     ; preds = %if.end186.i
  %223 = ptrtoint ptr %msg_enable172.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %msg_enable172.i, align 8
  %and189.i = and i32 %224, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189.i)
  %tobool190.not.i = icmp eq i32 %and189.i, 0
  br i1 %tobool190.not.i, label %do.body187.i.do.body196.i_crit_edge, label %if.then191.i

do.body187.i.do.body196.i_crit_edge:              ; preds = %do.body187.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body196.i

if.then191.i:                                     ; preds = %do.body187.i
  call void @__sanitizer_cov_trace_pc() #23
  %225 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %226, ptr noundef nonnull @.str.126, i64 noundef %add10.i.i) #24
  br label %do.body196.i

do.body196.i:                                     ; preds = %if.then191.i, %do.body187.i.do.body196.i_crit_edge
  %227 = ptrtoint ptr %msg_enable172.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %msg_enable172.i, align 8
  %and198.i = and i32 %228, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198.i)
  %tobool199.not.i = icmp eq i32 %and198.i, 0
  br i1 %tobool199.not.i, label %do.body196.i.i40e_print_input_set.exit_crit_edge, label %if.then200.i

do.body196.i.i40e_print_input_set.exit_crit_edge: ; preds = %do.body196.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_print_input_set.exit

if.then200.i:                                     ; preds = %do.body196.i
  call void @__sanitizer_cov_trace_pc() #23
  %229 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %230, ptr noundef nonnull @.str.127, i64 noundef %new_mask.19.i) #24
  br label %i40e_print_input_set.exit

i40e_print_input_set.exit:                        ; preds = %if.then200.i, %do.body196.i.i40e_print_input_set.exit_crit_edge
  br i1 %new_flex_offset.3.off0.i, label %do.body312.i, label %i40e_print_input_set.exit.if.end323.i_crit_edge

i40e_print_input_set.exit.if.end323.i_crit_edge:  ; preds = %i40e_print_input_set.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end323.i

do.body312.i:                                     ; preds = %i40e_print_input_set.exit
  %231 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %msg_enable.i, align 8
  %and314.i = and i32 %232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.i)
  %tobool315.not.i = icmp eq i32 %and314.i, 0
  br i1 %tobool315.not.i, label %do.body312.i.if.end323.i_crit_edge, label %if.then316.i

do.body312.i.if.end323.i_crit_edge:               ; preds = %do.body312.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end323.i

if.then316.i:                                     ; preds = %do.body312.i
  call void @__sanitizer_cov_trace_pc() #23
  %233 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %1, align 128
  %conv318.i = zext i8 %pit_index.2.i to i32
  %conv319.i = zext i16 %src_offset.1.i to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %234, ptr noundef nonnull @.str.106, i32 noundef %conv318.i, i32 noundef %conv319.i) #24
  br label %if.end323.i

if.end323.i:                                      ; preds = %if.then316.i, %do.body312.i.if.end323.i_crit_edge, %i40e_print_input_set.exit.if.end323.i_crit_edge
  %235 = ptrtoint ptr %flags.i15 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %flags.i15, align 8
  %and324.i = and i32 %236, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324.i)
  %tobool325.not.i = icmp eq i32 %and324.i, 0
  br i1 %tobool325.not.i, label %if.end336.i, label %do.body327.i

do.body327.i:                                     ; preds = %if.end323.i
  %237 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %msg_enable.i, align 8
  %and329.i = and i32 %238, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329.i)
  %tobool330.not.i = icmp eq i32 %and329.i, 0
  br i1 %tobool330.not.i, label %do.body327.i.sw.epilog_crit_edge, label %if.then331.i

do.body327.i.sw.epilog_crit_edge:                 ; preds = %do.body327.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then331.i:                                     ; preds = %do.body327.i
  call void @__sanitizer_cov_trace_pc() #23
  %239 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %240, ptr noundef nonnull @.str.107) #24
  br label %sw.epilog

if.end336.i:                                      ; preds = %if.end323.i
  %241 = ptrtoint ptr %fdir_filter_count.0.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %fdir_filter_count.0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %242)
  %tobool337.not.i = icmp eq i16 %242, 0
  br i1 %tobool337.not.i, label %if.end350.i, label %do.body339.i

do.body339.i:                                     ; preds = %if.end336.i
  %243 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %msg_enable.i, align 8
  %and341.i = and i32 %244, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and341.i)
  %tobool342.not.i = icmp eq i32 %and341.i, 0
  br i1 %tobool342.not.i, label %do.body339.i.sw.epilog_crit_edge, label %if.then343.i

do.body339.i.sw.epilog_crit_edge:                 ; preds = %do.body339.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then343.i:                                     ; preds = %do.body339.i
  %245 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %1, align 128
  %247 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %fs.i, align 8
  %and.i97 = and i32 %248, 2147483647
  %switch.tableidx196 = add nsw i32 %and.i97, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx196)
  %249 = icmp ult i32 %switch.tableidx196, 14
  br i1 %249, label %switch.lookup195, label %if.then343.i.i40e_flow_str.exit_crit_edge

if.then343.i.i40e_flow_str.exit_crit_edge:        ; preds = %if.then343.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_flow_str.exit

switch.lookup195:                                 ; preds = %if.then343.i
  call void @__sanitizer_cov_trace_pc() #23
  %switch.gep197 = getelementptr inbounds [14 x ptr], ptr @switch.table.i40e_set_rxnfc.152, i32 0, i32 %switch.tableidx196
  %250 = ptrtoint ptr %switch.gep197 to i32
  call void @__asan_load4_noabort(i32 %250)
  %switch.load198 = load ptr, ptr %switch.gep197, align 4
  br label %i40e_flow_str.exit

i40e_flow_str.exit:                               ; preds = %switch.lookup195, %if.then343.i.i40e_flow_str.exit_crit_edge
  %retval.0.i105 = phi ptr [ %switch.load198, %switch.lookup195 ], [ @.str.117, %if.then343.i.i40e_flow_str.exit_crit_edge ]
  %conv346.i = zext i16 %242 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %246, ptr noundef nonnull @.str.108, ptr noundef nonnull %retval.0.i105, i32 noundef %conv346.i) #24
  br label %sw.epilog

if.end350.i:                                      ; preds = %if.end336.i
  %shr.i94 = lshr i64 %new_mask.19.i, 32
  %conv2.i95 = trunc i64 %shr.i94 to i32
  call void @i40e_write_rx_ctl(ptr noundef %hw.i.i, i32 noundef %add1.i.i, i32 noundef %conv2.i95) #21
  %conv8.i96 = trunc i64 %new_mask.19.i to i32
  call void @i40e_write_rx_ctl(ptr noundef %hw.i.i, i32 noundef %add7.i.i, i32 noundef %conv8.i96) #21
  br i1 %cmp352.i, label %if.then354.i, label %if.end350.i.if.end355.i_crit_edge

if.end350.i.if.end355.i_crit_edge:                ; preds = %if.end350.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end355.i

if.then354.i:                                     ; preds = %if.end350.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @i40e_write_rx_ctl(ptr noundef %hw.i.i, i32 noundef 2427168, i32 noundef %conv2.i95) #21
  call void @i40e_write_rx_ctl(ptr noundef %hw.i.i, i32 noundef 2427136, i32 noundef %conv8.i96) #21
  br label %if.end355.i

if.end355.i:                                      ; preds = %if.then354.i, %if.end350.i.if.end355.i_crit_edge
  br i1 %new_flex_offset.3.off0.i, label %if.then357.i, label %if.end355.i.if.end34.i_crit_edge

if.end355.i.if.end34.i_crit_edge:                 ; preds = %if.end355.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end34.i

if.then357.i:                                     ; preds = %if.end355.i
  %l4_flex_pit_list358.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 38
  %call359.i = call fastcc i32 @i40e_add_flex_offset(ptr noundef %l4_flex_pit_list358.i, i16 noundef zeroext %src_offset.1.i, i8 noundef zeroext %pit_index.2.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call359.i)
  %tobool360.not.i = icmp eq i32 %call359.i, 0
  br i1 %tobool360.not.i, label %if.end362.i, label %if.then357.i.sw.epilog_crit_edge

if.then357.i.sw.epilog_crit_edge:                 ; preds = %if.then357.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end362.i:                                      ; preds = %if.then357.i
  br i1 %flex_l3.0.off0.i, label %if.then364.i, label %if.end362.i.if.end370.i_crit_edge

if.end362.i.if.end370.i_crit_edge:                ; preds = %if.end362.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end370.i

if.then364.i:                                     ; preds = %if.end362.i
  %l3_flex_pit_list365.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 37
  %call366.i = call fastcc i32 @i40e_add_flex_offset(ptr noundef %l3_flex_pit_list365.i, i16 noundef zeroext %src_offset.1.i, i8 noundef zeroext %pit_index.2.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call366.i)
  %tobool367.not.i = icmp eq i32 %call366.i, 0
  br i1 %tobool367.not.i, label %if.then364.i.if.end370.i_crit_edge, label %if.then364.i.sw.epilog_crit_edge

if.then364.i.sw.epilog_crit_edge:                 ; preds = %if.then364.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then364.i.if.end370.i_crit_edge:               ; preds = %if.then364.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end370.i

if.end370.i:                                      ; preds = %if.then364.i.if.end370.i_crit_edge, %if.end362.i.if.end370.i_crit_edge
  %l3_flex_pit_list.i88 = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 37
  call fastcc void @__i40e_reprogram_flex_pit(ptr noundef %42, ptr noundef %l3_flex_pit_list.i88, i32 noundef 3) #21
  call fastcc void @__i40e_reprogram_flex_pit(ptr noundef %42, ptr noundef %l4_flex_pit_list358.i, i32 noundef 6) #21
  call void @i40e_write_rx_ctl(ptr noundef %hw.i.i, i32 noundef 2525576, i32 noundef 227) #21
  call void @i40e_write_rx_ctl(ptr noundef %hw.i.i, i32 noundef 2525580, i32 noundef 230) #21
  br label %if.end34.i

i40e_check_fdir_input_set.exit:                   ; preds = %i40e_find_flex_offset.exit588.i.i40e_check_fdir_input_set.exit_crit_edge, %i40e_find_flex_offset.exit.i.i40e_check_fdir_input_set.exit_crit_edge
  %retval.1.i87.in = phi ptr [ %entry1.026.i.i, %i40e_find_flex_offset.exit.i.i40e_check_fdir_input_set.exit_crit_edge ], [ %entry1.026.i575.i, %i40e_find_flex_offset.exit588.i.i40e_check_fdir_input_set.exit_crit_edge ]
  %retval.1.i87 = ptrtoint ptr %retval.1.i87.in to i32
  %tobool32.not.i = icmp eq ptr %retval.1.i87.in, null
  br i1 %tobool32.not.i, label %i40e_check_fdir_input_set.exit.if.end34.i_crit_edge, label %i40e_check_fdir_input_set.exit.sw.epilog_crit_edge

i40e_check_fdir_input_set.exit.sw.epilog_crit_edge: ; preds = %i40e_check_fdir_input_set.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

i40e_check_fdir_input_set.exit.if.end34.i_crit_edge: ; preds = %i40e_check_fdir_input_set.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end34.i

if.end34.i:                                       ; preds = %i40e_check_fdir_input_set.exit.if.end34.i_crit_edge, %if.end370.i, %if.end355.i.if.end34.i_crit_edge, %if.end295.i.if.end34.i_crit_edge
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %251 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %location.i, align 8
  %fd_filters_best_effort.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 1, i32 15, i32 24
  %253 = ptrtoint ptr %fd_filters_best_effort.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %fd_filters_best_effort.i, align 8
  %fd_filters_guaranteed.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 1, i32 15, i32 23
  %255 = ptrtoint ptr %fd_filters_guaranteed.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %fd_filters_guaranteed.i, align 4
  %add.i = add i32 %256, %254
  call void @__sanitizer_cov_trace_cmp4(i32 %252, i32 %add.i)
  %cmp.not.i = icmp ult i32 %252, %add.i
  br i1 %cmp.not.i, label %if.end38.i, label %if.end34.i.sw.epilog_crit_edge

if.end34.i.sw.epilog_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end38.i:                                       ; preds = %if.end34.i
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %257 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %ring_cookie.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %258)
  %cmp39.i = icmp eq i64 %258, -1
  br i1 %cmp39.i, label %if.end38.i.if.end72.i_crit_edge, label %if.else.i

if.end38.i.if.end72.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end72.i

if.else.i:                                        ; preds = %if.end38.i
  %conv.i18 = trunc i64 %258 to i32
  %and.i277.i = lshr i64 %258, 32
  %conv45.i = trunc i64 %and.i277.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv45.i)
  %tobool46.not.i = icmp eq i8 %conv45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.else53.i

if.then47.i:                                      ; preds = %if.else.i
  %num_queue_pairs.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 44
  %259 = ptrtoint ptr %num_queue_pairs.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %num_queue_pairs.i, align 2
  %conv48.i = zext i16 %260 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i18, i32 %conv48.i)
  %cmp49.not.i = icmp ult i32 %conv.i18, %conv48.i
  br i1 %cmp49.not.i, label %if.end52.i, label %if.then47.i.sw.epilog_crit_edge

if.then47.i.sw.epilog_crit_edge:                  ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end52.i:                                       ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #23
  %id.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 39
  br label %cleanup.i

if.else53.i:                                      ; preds = %if.else.i
  %dec.i = add i8 %conv45.i, -1
  %conv54.i = zext i8 %dec.i to i32
  %num_alloc_vfs.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 86
  %261 = ptrtoint ptr %num_alloc_vfs.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %num_alloc_vfs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %262, i32 %conv54.i)
  %cmp55.not.i = icmp sgt i32 %262, %conv54.i
  br i1 %cmp55.not.i, label %if.end58.i, label %if.else53.i.sw.epilog_crit_edge

if.else53.i.sw.epilog_crit_edge:                  ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end58.i:                                       ; preds = %if.else53.i
  %vf59.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 85
  %263 = ptrtoint ptr %vf59.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %vf59.i, align 8
  %num_queue_pairs60.i = getelementptr %struct.i40e_vf, ptr %264, i32 %conv54.i, i32 12
  %265 = ptrtoint ptr %num_queue_pairs60.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %num_queue_pairs60.i, align 2
  %conv61.i = zext i8 %266 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i18, i32 %conv61.i)
  %cmp62.not.i = icmp ult i32 %conv.i18, %conv61.i
  br i1 %cmp62.not.i, label %if.end65.i, label %if.end58.i.sw.epilog_crit_edge

if.end58.i.sw.epilog_crit_edge:                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end65.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #23
  %lan_vsi_id.i = getelementptr %struct.i40e_vf, ptr %264, i32 %conv54.i, i32 11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end65.i, %if.end52.i
  %dest_vsi.0.in.i = phi ptr [ %lan_vsi_id.i, %if.end65.i ], [ %id.i, %if.end52.i ]
  %267 = ptrtoint ptr %dest_vsi.0.in.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %dest_vsi.0.i = load i16, ptr %dest_vsi.0.in.i, align 4
  %conv70.i = trunc i64 %258 to i16
  br label %if.end72.i

if.end72.i:                                       ; preds = %cleanup.i, %if.end38.i.if.end72.i_crit_edge
  %dest_vsi.2.i = phi i16 [ %dest_vsi.0.i, %cleanup.i ], [ 0, %if.end38.i.if.end72.i_crit_edge ]
  %q_index.1.i = phi i16 [ %conv70.i, %cleanup.i ], [ 0, %if.end38.i.if.end72.i_crit_edge ]
  %dest_ctl.1.i = phi i8 [ 1, %cleanup.i ], [ 0, %if.end38.i.if.end72.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %268 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %268, i32 noundef 3520, i32 noundef 84) #26
  %tobool74.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool74.not.i, label %if.end72.i.sw.epilog_crit_edge, label %if.end76.i

if.end72.i.sw.epilog_crit_edge:                   ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end76.i:                                       ; preds = %if.end72.i
  %269 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %location.i, align 8
  %fd_id.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 22
  %271 = ptrtoint ptr %fd_id.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %fd_id.i, align 8
  %q_index78.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 15
  %272 = ptrtoint ptr %q_index78.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %q_index.1.i, ptr %q_index78.i, align 2
  %dest_vsi79.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 18
  %273 = ptrtoint ptr %dest_vsi79.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %dest_vsi.2.i, ptr %dest_vsi79.i, align 2
  %dest_ctl80.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 19
  %274 = ptrtoint ptr %dest_ctl80.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %dest_ctl.1.i, ptr %dest_ctl80.i, align 4
  %fd_status.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 20
  %275 = ptrtoint ptr %fd_status.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 1, ptr %fd_status.i, align 1
  %pf_id.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 1, i32 17
  %276 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %pf_id.i, align 2
  %conv82.i = zext i8 %277 to i16
  %mul.i19 = mul nuw nsw i16 %conv82.i, 3
  %add83.i = add nuw nsw i16 %mul.i19, 1
  %cnt_index.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 21
  %278 = ptrtoint ptr %cnt_index.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %add83.i, ptr %cnt_index.i, align 2
  %h_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %279 = ptrtoint ptr %h_u.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %h_u.i, align 4
  %dst_ip.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 3
  %281 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %dst_ip.i, align 4
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %282 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %ip4dst.i, align 4
  %src_ip.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 4
  %284 = ptrtoint ptr %src_ip.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %283, ptr %src_ip.i, align 8
  %285 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %fs.i, align 8
  %conv88.i = trunc i32 %286 to i8
  %flow_type89.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 1
  %287 = ptrtoint ptr %flow_type89.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %conv88.i, ptr %flow_type89.i, align 8
  %vlan_etype.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 2
  %288 = ptrtoint ptr %vlan_etype.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %vlan_etype.i, align 8
  %vlan_etype90.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 10
  %290 = ptrtoint ptr %vlan_etype90.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 %289, ptr %vlan_etype90.i, align 4
  %vlan_etype91.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 2
  %291 = ptrtoint ptr %vlan_etype91.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %vlan_etype91.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %292)
  %tobool92.not.i = icmp eq i16 %292, 0
  br i1 %tobool92.not.i, label %land.lhs.true.i, label %if.end76.i.if.end98.i_crit_edge

if.end76.i.if.end98.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end98.i

land.lhs.true.i:                                  ; preds = %if.end76.i
  %vlan_tci.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %293 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %vlan_tci.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %294)
  %tobool95.not.i = icmp eq i16 %294, 0
  br i1 %tobool95.not.i, label %land.lhs.true.i.if.end98.i_crit_edge, label %if.then96.i

land.lhs.true.i.if.end98.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end98.i

if.then96.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  %295 = ptrtoint ptr %vlan_etype90.i to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 -32512, ptr %vlan_etype90.i, align 4
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then96.i, %land.lhs.true.i.if.end98.i_crit_edge, %if.end76.i.if.end98.i_crit_edge
  %vlan_tci100.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %296 = ptrtoint ptr %vlan_tci100.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %vlan_tci100.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %297)
  %tobool102.not.i = icmp eq i16 %297, 0
  br i1 %tobool102.not.i, label %if.end98.i.if.end110.i_crit_edge, label %land.lhs.true103.i

if.end98.i.if.end110.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end110.i

land.lhs.true103.i:                               ; preds = %if.end98.i
  %298 = ptrtoint ptr %vlan_etype90.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %vlan_etype90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %299)
  %tobool106.not.i = icmp eq i16 %299, 0
  br i1 %tobool106.not.i, label %land.lhs.true103.i.if.end110.i_crit_edge, label %if.then107.i

land.lhs.true103.i.if.end110.i_crit_edge:         ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end110.i

if.then107.i:                                     ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #23
  %vlan_tci109.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %300 = ptrtoint ptr %vlan_tci109.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %vlan_tci109.i, align 2
  %vlan_tag.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 11
  %302 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %301, ptr %vlan_tag.i, align 2
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then107.i, %land.lhs.true103.i.if.end110.i_crit_edge, %if.end98.i.if.end110.i_crit_edge
  %303 = ptrtoint ptr %flow_type89.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %flow_type89.i, align 8
  %305 = zext i8 %304 to i64
  call void @__sanitizer_cov_trace_switch(i64 %305, ptr @__sancov_gen_cov_switch_values.187)
  switch i8 %304, label %if.else140.i [
    i8 14, label %if.end110.i.if.then130.i_crit_edge
    i8 6, label %if.end110.i.if.then130.i_crit_edge229
    i8 5, label %if.end110.i.if.then130.i_crit_edge230
    i8 7, label %if.end110.i.if.then130.i_crit_edge231
  ]

if.end110.i.if.then130.i_crit_edge231:            ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then130.i

if.end110.i.if.then130.i_crit_edge230:            ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then130.i

if.end110.i.if.then130.i_crit_edge229:            ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then130.i

if.end110.i.if.then130.i_crit_edge:               ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then130.i

if.then130.i:                                     ; preds = %if.end110.i.if.then130.i_crit_edge, %if.end110.i.if.then130.i_crit_edge229, %if.end110.i.if.then130.i_crit_edge230, %if.end110.i.if.then130.i_crit_edge231
  %l4_proto.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %h_u.i, i32 0, i32 4
  %306 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %l4_proto.i, align 1
  %ipl4_proto.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 2
  %308 = ptrtoint ptr %ipl4_proto.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %307, ptr %ipl4_proto.i, align 1
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %309 = ptrtoint ptr %psrc.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %psrc.i, align 4
  %dst_port.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 8
  %311 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %310, ptr %dst_port.i, align 2
  %pdst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 3
  %312 = ptrtoint ptr %pdst.i to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %pdst.i, align 2
  %src_port.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 7
  %314 = ptrtoint ptr %src_port.i to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 %313, ptr %src_port.i, align 4
  %dst_ip6.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 5
  %315 = call ptr @memcpy(ptr %dst_ip6.i, ptr %h_u.i, i32 16)
  %src_ip6.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 6
  %ip6dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %316 = call ptr @memcpy(ptr %src_ip6.i, ptr %ip6dst.i, i32 16)
  br label %if.end155.i

if.else140.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #23
  %proto.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i, i32 0, i32 5
  %317 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %proto.i, align 2
  %ipl4_proto142.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 2
  %319 = ptrtoint ptr %ipl4_proto142.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %318, ptr %ipl4_proto142.i, align 1
  %psrc144.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %320 = ptrtoint ptr %psrc144.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %psrc144.i, align 4
  %dst_port145.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 8
  %322 = ptrtoint ptr %dst_port145.i to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 %321, ptr %dst_port145.i, align 2
  %pdst147.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i, i32 0, i32 3
  %323 = ptrtoint ptr %pdst147.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %pdst147.i, align 2
  %src_port148.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 7
  %325 = ptrtoint ptr %src_port148.i to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 %324, ptr %src_port148.i, align 4
  %326 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %280, ptr %dst_ip.i, align 4
  %327 = ptrtoint ptr %src_ip.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %283, ptr %src_ip.i, align 8
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.else140.i, %if.then130.i
  br i1 %tobool236.not.i, label %if.end155.i.if.end161.i_crit_edge, label %if.then157.i

if.end155.i.if.end161.i_crit_edge:                ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end161.i

if.then157.i:                                     ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #23
  %flex_filter158.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 14
  %328 = ptrtoint ptr %flex_filter158.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 1, ptr %flex_filter158.i, align 4
  %flex_word159.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 12
  %329 = ptrtoint ptr %flex_word159.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 %userdef.i.sroa.6145.0, ptr %flex_word159.i, align 8
  %flex_offset160.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 13
  %330 = ptrtoint ptr %flex_offset160.i to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 %userdef.i.sroa.8.0, ptr %flex_offset160.i, align 2
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then157.i, %if.end155.i.if.end161.i_crit_edge
  %331 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %back.i, align 8
  %fdir_filter_list.i52 = getelementptr inbounds %struct.i40e_pf, ptr %332, i32 0, i32 23
  %333 = ptrtoint ptr %fdir_filter_list.i52 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %fdir_filter_list.i52, align 8
  %tobool2.not32.i = icmp eq ptr %334, null
  br i1 %tobool2.not32.i, label %if.end161.i.if.end165.i_crit_edge, label %land.rhs.lr.ph.i

if.end161.i.if.end165.i_crit_edge:                ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end165.i

land.rhs.lr.ph.i:                                 ; preds = %if.end161.i
  %335 = ptrtoint ptr %fd_id.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %fd_id.i, align 8
  %dst_port5.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 8
  %src_port11.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 7
  %ipl4_proto23.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 2
  %vlan_tag29.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %call7.i.i.i, i32 0, i32 11
  br label %land.rhs.i54

land.rhs.i54:                                     ; preds = %for.inc.i.land.rhs.i54_crit_edge, %land.rhs.lr.ph.i
  %rule.033.i = phi ptr [ %334, %land.rhs.lr.ph.i ], [ %338, %for.inc.i.land.rhs.i54_crit_edge ]
  %337 = ptrtoint ptr %rule.033.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %rule.033.i, align 4
  %fd_id.i53 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.033.i, i32 0, i32 22
  %339 = ptrtoint ptr %fd_id.i53 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %fd_id.i53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %340, i32 %336)
  %cmp.i = icmp eq i32 %340, %336
  br i1 %cmp.i, label %land.rhs.i54.for.inc.i_crit_edge, label %if.end.i56

land.rhs.i54.for.inc.i_crit_edge:                 ; preds = %land.rhs.i54
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

if.end.i56:                                       ; preds = %land.rhs.i54
  %dst_ip.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.033.i, i32 0, i32 3
  %341 = ptrtoint ptr %dst_ip.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %dst_ip.i.i, align 4
  %343 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %dst_ip.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %342, i32 %344)
  %cmp.not.i.i55 = icmp eq i32 %342, %344
  br i1 %cmp.not.i.i55, label %lor.lhs.false.i.i, label %if.end.i56.for.inc.i_crit_edge

if.end.i56.for.inc.i_crit_edge:                   ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

lor.lhs.false.i.i:                                ; preds = %if.end.i56
  %src_ip.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.033.i, i32 0, i32 4
  %345 = ptrtoint ptr %src_ip.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %src_ip.i.i, align 4
  %347 = ptrtoint ptr %src_ip.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %src_ip.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %346, i32 %348)
  %cmp3.not.i.i = icmp eq i32 %346, %348
  br i1 %cmp3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %dst_port.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.033.i, i32 0, i32 8
  %349 = ptrtoint ptr %dst_port.i.i to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %dst_port.i.i, align 2
  %351 = ptrtoint ptr %dst_port5.i.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %dst_port5.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %350, i16 %352)
  %cmp7.not.i.i = icmp eq i16 %350, %352
  br i1 %cmp7.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false4.i.i.for.inc.i_crit_edge

lor.lhs.false4.i.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false4.i.i
  %src_port.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.033.i, i32 0, i32 7
  %353 = ptrtoint ptr %src_port.i.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %src_port.i.i, align 4
  %355 = ptrtoint ptr %src_port11.i.i to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %src_port11.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %354, i16 %356)
  %cmp13.not.i.i = icmp eq i16 %354, %356
  br i1 %cmp13.not.i.i, label %lor.lhs.false15.i.i, label %lor.lhs.false9.i.i.for.inc.i_crit_edge

lor.lhs.false9.i.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

lor.lhs.false15.i.i:                              ; preds = %lor.lhs.false9.i.i
  %flow_type.i.i57 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.033.i, i32 0, i32 1
  %357 = ptrtoint ptr %flow_type.i.i57 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %flow_type.i.i57, align 4
  %359 = ptrtoint ptr %flow_type89.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %flow_type89.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %358, i8 %360)
  %cmp19.not.i.i = icmp eq i8 %358, %360
  br i1 %cmp19.not.i.i, label %lor.lhs.false21.i.i, label %lor.lhs.false15.i.i.for.inc.i_crit_edge

lor.lhs.false15.i.i.for.inc.i_crit_edge:          ; preds = %lor.lhs.false15.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

lor.lhs.false21.i.i:                              ; preds = %lor.lhs.false15.i.i
  %ipl4_proto.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.033.i, i32 0, i32 2
  %361 = ptrtoint ptr %ipl4_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %ipl4_proto.i.i, align 1
  %363 = ptrtoint ptr %ipl4_proto23.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %ipl4_proto23.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %362, i8 %364)
  %cmp25.not.i.i = icmp eq i8 %362, %364
  br i1 %cmp25.not.i.i, label %lor.lhs.false27.i.i, label %lor.lhs.false21.i.i.for.inc.i_crit_edge

lor.lhs.false21.i.i.for.inc.i_crit_edge:          ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

lor.lhs.false27.i.i:                              ; preds = %lor.lhs.false21.i.i
  %vlan_tag.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.033.i, i32 0, i32 11
  %365 = ptrtoint ptr %vlan_tag.i.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %vlan_tag.i.i, align 2
  %367 = ptrtoint ptr %vlan_tag29.i.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %vlan_tag29.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %366, i16 %368)
  %cmp31.not.i.i = icmp eq i16 %366, %368
  br i1 %cmp31.not.i.i, label %i40e_match_fdir_filter.exit.i, label %lor.lhs.false27.i.i.for.inc.i_crit_edge

lor.lhs.false27.i.i.for.inc.i_crit_edge:          ; preds = %lor.lhs.false27.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

i40e_match_fdir_filter.exit.i:                    ; preds = %lor.lhs.false27.i.i
  %vlan_etype.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.033.i, i32 0, i32 10
  %369 = ptrtoint ptr %vlan_etype.i.i to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %vlan_etype.i.i, align 4
  %371 = ptrtoint ptr %vlan_etype90.i to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %vlan_etype90.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %370, i16 %372)
  %cmp37.not.i.i = icmp eq i16 %370, %372
  br i1 %cmp37.not.i.i, label %i40e_disallow_matching_filters.exit, label %i40e_match_fdir_filter.exit.i.for.inc.i_crit_edge

i40e_match_fdir_filter.exit.i.for.inc.i_crit_edge: ; preds = %i40e_match_fdir_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

for.inc.i:                                        ; preds = %i40e_match_fdir_filter.exit.i.for.inc.i_crit_edge, %lor.lhs.false27.i.i.for.inc.i_crit_edge, %lor.lhs.false21.i.i.for.inc.i_crit_edge, %lor.lhs.false15.i.i.for.inc.i_crit_edge, %lor.lhs.false9.i.i.for.inc.i_crit_edge, %lor.lhs.false4.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge, %if.end.i56.for.inc.i_crit_edge, %land.rhs.i54.for.inc.i_crit_edge
  %tobool2.not.i60 = icmp eq ptr %338, null
  br i1 %tobool2.not.i60, label %for.inc.i.if.end165.i_crit_edge, label %for.inc.i.land.rhs.i54_crit_edge

for.inc.i.land.rhs.i54_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.rhs.i54

for.inc.i.if.end165.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end165.i

i40e_disallow_matching_filters.exit:              ; preds = %i40e_match_fdir_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  %373 = ptrtoint ptr %332 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %332, align 8
  %dev.i58 = getelementptr inbounds %struct.pci_dev, ptr %374, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i58, ptr noundef nonnull @.str.128, i32 noundef %340) #24
  br label %free_filter_memory.i

if.end165.i:                                      ; preds = %for.inc.i.if.end165.i_crit_edge, %if.end161.i.if.end165.i_crit_edge
  %375 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %location.i, align 8
  %377 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %back.i, align 8
  %fdir_filter_list.i = getelementptr inbounds %struct.i40e_pf, ptr %378, i32 0, i32 23
  %conv.i33 = and i32 %376, 65535
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %if.end165.i
  %parent.0.i = phi ptr [ null, %if.end165.i ], [ %rule.0.i, %land.rhs.i.for.cond.i_crit_edge ]
  %rule.0.in.i = phi ptr [ %fdir_filter_list.i, %if.end165.i ], [ %rule.0.i, %land.rhs.i.for.cond.i_crit_edge ]
  %379 = ptrtoint ptr %rule.0.in.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %rule.0.i = load ptr, ptr %rule.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %rule.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.if.end26.i45_crit_edge, label %land.rhs.i

for.cond.i.if.end26.i45_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end26.i45

land.rhs.i:                                       ; preds = %for.cond.i
  %fd_id.i34 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i, i32 0, i32 22
  %380 = ptrtoint ptr %fd_id.i34 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %fd_id.i34, align 4
  %cmp.not.i35 = icmp ult i32 %381, %conv.i33
  br i1 %cmp.not.i35, label %land.rhs.i.for.cond.i_crit_edge, label %land.lhs.true.critedge.i

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

land.lhs.true.critedge.i:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp4(i32 %381, i32 %conv.i33)
  %cmp19.i = icmp eq i32 %381, %conv.i33
  br i1 %cmp19.i, label %if.then21.i, label %land.lhs.true.critedge.i.if.end26.i45_crit_edge

land.lhs.true.critedge.i.if.end26.i45_crit_edge:  ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end26.i45

if.then21.i:                                      ; preds = %land.lhs.true.critedge.i
  %call.i36 = call i32 @i40e_add_del_fdir(ptr noundef nonnull %1, ptr noundef nonnull %rule.0.i, i1 noundef zeroext false) #21
  %382 = ptrtoint ptr %rule.0.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %rule.0.i, align 4
  %pprev2.i.i.i37 = getelementptr inbounds %struct.hlist_node, ptr %rule.0.i, i32 0, i32 1
  %384 = ptrtoint ptr %pprev2.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %pprev2.i.i.i37, align 4
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_store4_noabort(i32 %386)
  store volatile ptr %383, ptr %385, align 4
  %tobool.not.i.i.i38 = icmp eq ptr %383, null
  br i1 %tobool.not.i.i.i38, label %if.then21.i.hlist_del.exit.i43_crit_edge, label %do.body13.i.i.i40

if.then21.i.hlist_del.exit.i43_crit_edge:         ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %hlist_del.exit.i43

do.body13.i.i.i40:                                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #23
  %pprev14.i.i.i39 = getelementptr inbounds %struct.hlist_node, ptr %383, i32 0, i32 1
  %387 = ptrtoint ptr %pprev14.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %387)
  store volatile ptr %385, ptr %pprev14.i.i.i39, align 4
  br label %hlist_del.exit.i43

hlist_del.exit.i43:                               ; preds = %do.body13.i.i.i40, %if.then21.i.hlist_del.exit.i43_crit_edge
  %388 = ptrtoint ptr %rule.0.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.0.i, align 4
  %389 = ptrtoint ptr %pprev2.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i37, align 4
  call void @kfree(ptr noundef nonnull %rule.0.i) #21
  %fdir_pf_active_filters.i41 = getelementptr inbounds %struct.i40e_pf, ptr %378, i32 0, i32 24
  %390 = ptrtoint ptr %fdir_pf_active_filters.i41 to i32
  call void @__asan_load2_noabort(i32 %390)
  %391 = load i16, ptr %fdir_pf_active_filters.i41, align 4
  %dec.i42 = add i16 %391, -1
  store i16 %dec.i42, ptr %fdir_pf_active_filters.i41, align 4
  br label %if.end26.i45

if.end26.i45:                                     ; preds = %hlist_del.exit.i43, %land.lhs.true.critedge.i.if.end26.i45_crit_edge, %for.cond.i.if.end26.i45_crit_edge
  %392 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr null, ptr %call7.i.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %393 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr null, ptr %pprev.i.i, align 4
  %tobool28.not.i44 = icmp eq ptr %parent.0.i, null
  br i1 %tobool28.not.i44, label %if.else.i47, label %if.then29.i

if.then29.i:                                      ; preds = %if.end26.i45
  %394 = ptrtoint ptr %parent.0.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %parent.0.i, align 4
  %396 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store volatile ptr %395, ptr %call7.i.i.i, align 8
  store volatile ptr %call7.i.i.i, ptr %parent.0.i, align 4
  %397 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store volatile ptr %parent.0.i, ptr %pprev.i.i, align 4
  %398 = load ptr, ptr %call7.i.i.i, align 8
  %tobool.not.i.i46 = icmp eq ptr %398, null
  br i1 %tobool.not.i.i46, label %if.then29.i.i40e_update_ethtool_fdir_entry.exit_crit_edge, label %do.body24.i.i

if.then29.i.i40e_update_ethtool_fdir_entry.exit_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_update_ethtool_fdir_entry.exit

do.body24.i.i:                                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #23
  %pprev27.i.i = getelementptr inbounds %struct.hlist_node, ptr %398, i32 0, i32 1
  %399 = ptrtoint ptr %pprev27.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store volatile ptr %call7.i.i.i, ptr %pprev27.i.i, align 4
  br label %i40e_update_ethtool_fdir_entry.exit

if.else.i47:                                      ; preds = %if.end26.i45
  %400 = ptrtoint ptr %fdir_filter_list.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %fdir_filter_list.i, align 4
  %402 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store volatile ptr %401, ptr %call7.i.i.i, align 8
  %tobool.not.i3.i = icmp eq ptr %401, null
  br i1 %tobool.not.i3.i, label %if.else.i47.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.else.i47.hlist_add_head.exit.i_crit_edge:      ; preds = %if.else.i47
  call void @__sanitizer_cov_trace_pc() #23
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.else.i47
  call void @__sanitizer_cov_trace_pc() #23
  %pprev.i4.i = getelementptr inbounds %struct.hlist_node, ptr %401, i32 0, i32 1
  %403 = ptrtoint ptr %pprev.i4.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store volatile ptr %call7.i.i.i, ptr %pprev.i4.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.else.i47.hlist_add_head.exit.i_crit_edge
  %404 = ptrtoint ptr %fdir_filter_list.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store volatile ptr %call7.i.i.i, ptr %fdir_filter_list.i, align 4
  %405 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store volatile ptr %fdir_filter_list.i, ptr %pprev.i.i, align 4
  br label %i40e_update_ethtool_fdir_entry.exit

i40e_update_ethtool_fdir_entry.exit:              ; preds = %hlist_add_head.exit.i, %do.body24.i.i, %if.then29.i.i40e_update_ethtool_fdir_entry.exit_crit_edge
  %fdir_pf_active_filters35.i = getelementptr inbounds %struct.i40e_pf, ptr %378, i32 0, i32 24
  %406 = ptrtoint ptr %fdir_pf_active_filters35.i to i32
  call void @__asan_load2_noabort(i32 %406)
  %407 = load i16, ptr %fdir_pf_active_filters35.i, align 4
  %inc.i = add i16 %407, 1
  store i16 %inc.i, ptr %fdir_pf_active_filters35.i, align 4
  %call169.i = call i32 @i40e_add_del_fdir(ptr noundef nonnull %1, ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext true) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169.i)
  %tobool170.not.i = icmp eq i32 %call169.i, 0
  br i1 %tobool170.not.i, label %i40e_update_ethtool_fdir_entry.exit.sw.epilog_crit_edge, label %remove_sw_rule.i

i40e_update_ethtool_fdir_entry.exit.sw.epilog_crit_edge: ; preds = %i40e_update_ethtool_fdir_entry.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

remove_sw_rule.i:                                 ; preds = %i40e_update_ethtool_fdir_entry.exit
  %408 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %call7.i.i.i, align 8
  %410 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %pprev.i.i, align 4
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_store4_noabort(i32 %412)
  store volatile ptr %409, ptr %411, align 4
  %tobool.not.i.i.i = icmp eq ptr %409, null
  br i1 %tobool.not.i.i.i, label %remove_sw_rule.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

remove_sw_rule.i.hlist_del.exit.i_crit_edge:      ; preds = %remove_sw_rule.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %remove_sw_rule.i
  call void @__sanitizer_cov_trace_pc() #23
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %409, i32 0, i32 1
  %413 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store volatile ptr %411, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %remove_sw_rule.i.hlist_del.exit.i_crit_edge
  %414 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i, align 8
  %415 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i, align 4
  %fdir_pf_active_filters.i = getelementptr inbounds %struct.i40e_pf, ptr %42, i32 0, i32 24
  %416 = ptrtoint ptr %fdir_pf_active_filters.i to i32
  call void @__asan_load2_noabort(i32 %416)
  %417 = load i16, ptr %fdir_pf_active_filters.i, align 4
  %dec173.i = add i16 %417, -1
  store i16 %dec173.i, ptr %fdir_pf_active_filters.i, align 4
  br label %free_filter_memory.i

free_filter_memory.i:                             ; preds = %hlist_del.exit.i, %i40e_disallow_matching_filters.exit
  %ret.0.i = phi i32 [ -22, %i40e_disallow_matching_filters.exit ], [ %call169.i, %hlist_del.exit.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #21
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %back.i20 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %418 = ptrtoint ptr %back.i20 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %back.i20, align 8
  %state.i21 = getelementptr inbounds %struct.i40e_pf, ptr %419, i32 0, i32 2
  %420 = ptrtoint ptr %state.i21 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load volatile i32, ptr %state.i21, align 4
  %422 = and i32 %421, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %422)
  %tobool.not.i22 = icmp eq i32 %422, 0
  br i1 %tobool.not.i22, label %lor.lhs.false.i24, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

lor.lhs.false.i24:                                ; preds = %sw.bb6
  %423 = ptrtoint ptr %state.i21 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load volatile i32, ptr %state.i21, align 4
  %425 = and i32 %424, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %425)
  %tobool4.not.i23 = icmp eq i32 %425, 0
  br i1 %tobool4.not.i23, label %if.end.i25, label %lor.lhs.false.i24.sw.epilog_crit_edge

lor.lhs.false.i24.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end.i25:                                       ; preds = %lor.lhs.false.i24
  %426 = ptrtoint ptr %state.i21 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load volatile i32, ptr %state.i21, align 4
  %428 = and i32 %427, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %428)
  %tobool8.not.i = icmp eq i32 %428, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i25.sw.epilog_crit_edge

if.end.i25.sw.epilog_crit_edge:                   ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end10.i:                                       ; preds = %if.end.i25
  %location.i26 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %429 = ptrtoint ptr %location.i26 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %location.i26, align 8
  %fdir_filter_list.i.i = getelementptr inbounds %struct.i40e_pf, ptr %419, i32 0, i32 23
  %conv.i.i27 = and i32 %430, 65535
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.rhs.i.i.for.cond.i.i_crit_edge, %if.end10.i
  %rule.0.in.i.i = phi ptr [ %fdir_filter_list.i.i, %if.end10.i ], [ %rule.0.i.i, %land.rhs.i.i.for.cond.i.i_crit_edge ]
  %431 = ptrtoint ptr %rule.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %rule.0.i.i = load ptr, ptr %rule.0.in.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %rule.0.i.i, null
  br i1 %tobool2.not.i.i, label %for.cond.i.i.i40e_update_ethtool_fdir_entry.exit.i_crit_edge, label %land.rhs.i.i

for.cond.i.i.i40e_update_ethtool_fdir_entry.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_update_ethtool_fdir_entry.exit.i

land.rhs.i.i:                                     ; preds = %for.cond.i.i
  %fd_id.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0.i.i, i32 0, i32 22
  %432 = ptrtoint ptr %fd_id.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %fd_id.i.i, align 4
  %cmp.not.i.i = icmp ult i32 %433, %conv.i.i27
  br i1 %cmp.not.i.i, label %land.rhs.i.i.for.cond.i.i_crit_edge, label %land.lhs.true.critedge.i.i

land.rhs.i.i.for.cond.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i.i

land.lhs.true.critedge.i.i:                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %433, i32 %conv.i.i27)
  %cmp19.i.i = icmp eq i32 %433, %conv.i.i27
  br i1 %cmp19.i.i, label %if.then21.i.i, label %land.lhs.true.critedge.i.i.i40e_update_ethtool_fdir_entry.exit.i_crit_edge

land.lhs.true.critedge.i.i.i40e_update_ethtool_fdir_entry.exit.i_crit_edge: ; preds = %land.lhs.true.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_update_ethtool_fdir_entry.exit.i

if.then21.i.i:                                    ; preds = %land.lhs.true.critedge.i.i
  %call.i.i = tail call i32 @i40e_add_del_fdir(ptr noundef %1, ptr noundef nonnull %rule.0.i.i, i1 noundef zeroext false) #21
  %434 = ptrtoint ptr %rule.0.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %rule.0.i.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %rule.0.i.i, i32 0, i32 1
  %436 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_store4_noabort(i32 %438)
  store volatile ptr %435, ptr %437, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %435, null
  br i1 %tobool.not.i.i.i.i, label %if.then21.i.i.hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.then21.i.i.hlist_del.exit.i.i_crit_edge:       ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %hlist_del.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %435, i32 0, i32 1
  %439 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store volatile ptr %437, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del.exit.i.i

hlist_del.exit.i.i:                               ; preds = %do.body13.i.i.i.i, %if.then21.i.i.hlist_del.exit.i.i_crit_edge
  %440 = ptrtoint ptr %rule.0.i.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.0.i.i, align 4
  %441 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %rule.0.i.i) #21
  %fdir_pf_active_filters.i.i = getelementptr inbounds %struct.i40e_pf, ptr %419, i32 0, i32 24
  %442 = ptrtoint ptr %fdir_pf_active_filters.i.i to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %fdir_pf_active_filters.i.i, align 4
  %dec.i.i = add i16 %443, -1
  store i16 %dec.i.i, ptr %fdir_pf_active_filters.i.i, align 4
  br label %i40e_update_ethtool_fdir_entry.exit.i

i40e_update_ethtool_fdir_entry.exit.i:            ; preds = %hlist_del.exit.i.i, %land.lhs.true.critedge.i.i.i40e_update_ethtool_fdir_entry.exit.i_crit_edge, %for.cond.i.i.i40e_update_ethtool_fdir_entry.exit.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %hlist_del.exit.i.i ], [ -22, %land.lhs.true.critedge.i.i.i40e_update_ethtool_fdir_entry.exit.i_crit_edge ], [ -22, %for.cond.i.i.i40e_update_ethtool_fdir_entry.exit.i_crit_edge ]
  %l3_flex_pit_list.i.i = getelementptr inbounds %struct.i40e_pf, ptr %419, i32 0, i32 37
  %444 = ptrtoint ptr %l3_flex_pit_list.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %l3_flex_pit_list.i.i, align 8
  %cmp.not169.i.i = icmp eq ptr %445, %l3_flex_pit_list.i.i
  br i1 %cmp.not169.i.i, label %i40e_update_ethtool_fdir_entry.exit.i.for.end47.i.i_crit_edge, label %i40e_update_ethtool_fdir_entry.exit.i.for.body.i.i_crit_edge

i40e_update_ethtool_fdir_entry.exit.i.for.body.i.i_crit_edge: ; preds = %i40e_update_ethtool_fdir_entry.exit.i
  br label %for.body.i.i

i40e_update_ethtool_fdir_entry.exit.i.for.end47.i.i_crit_edge: ; preds = %i40e_update_ethtool_fdir_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end47.i.i

for.body.i.i:                                     ; preds = %if.end40.i.i.for.body.i.i_crit_edge, %i40e_update_ethtool_fdir_entry.exit.i.for.body.i.i_crit_edge
  %entry1.0170.i.i = phi ptr [ %tmp.0172.i.i, %if.end40.i.i.for.body.i.i_crit_edge ], [ %445, %i40e_update_ethtool_fdir_entry.exit.i.for.body.i.i_crit_edge ]
  %446 = ptrtoint ptr %entry1.0170.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %tmp.0172.i.i = load ptr, ptr %entry1.0170.i.i, align 4
  %447 = ptrtoint ptr %fdir_filter_list.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %rule.0165.i.i = load ptr, ptr %fdir_filter_list.i.i, align 4
  %tobool14.not166.i.i = icmp eq ptr %rule.0165.i.i, null
  br i1 %tobool14.not166.i.i, label %for.body.i.i.if.then38.critedge.i.i_crit_edge, label %for.body15.lr.ph.i.i

for.body.i.i.if.then38.critedge.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then38.critedge.i.i

for.body15.lr.ph.i.i:                             ; preds = %for.body.i.i
  %src_offset.i.i = getelementptr inbounds %struct.i40e_flex_pit, ptr %entry1.0170.i.i, i32 0, i32 1
  br label %for.body15.i.i

for.body15.i.i:                                   ; preds = %for.inc.i.i.for.body15.i.i_crit_edge, %for.body15.lr.ph.i.i
  %rule.0167.i.i = phi ptr [ %rule.0165.i.i, %for.body15.lr.ph.i.i ], [ %rule.0.i25.i, %for.inc.i.i.for.body15.i.i_crit_edge ]
  %flow_type.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0167.i.i, i32 0, i32 1
  %448 = ptrtoint ptr %flow_type.i.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %flow_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %449)
  %cmp16.not.i.i = icmp eq i8 %449, 13
  br i1 %cmp16.not.i.i, label %if.end.i.i28, label %for.body15.i.i.for.inc.i.i_crit_edge

for.body15.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

if.end.i.i28:                                     ; preds = %for.body15.i.i
  %flex_filter.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0167.i.i, i32 0, i32 14
  %450 = ptrtoint ptr %flex_filter.i.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %flex_filter.i.i, align 4, !range !321
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %451)
  %tobool18.not.i.i = icmp eq i8 %451, 0
  br i1 %tobool18.not.i.i, label %if.end.i.i28.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i28.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i28
  %flex_offset.i.i29 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.0167.i.i, i32 0, i32 13
  %452 = ptrtoint ptr %flex_offset.i.i29 to i32
  call void @__asan_load2_noabort(i32 %452)
  %453 = load i16, ptr %flex_offset.i.i29, align 2
  %454 = ptrtoint ptr %src_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %454)
  %455 = load i16, ptr %src_offset.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %453, i16 %455)
  %cmp22.i.i = icmp eq i16 %453, %455
  br i1 %cmp22.i.i, label %land.lhs.true.i.i.if.end40.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

land.lhs.true.i.i.if.end40.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end40.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end.i.i28.for.inc.i.i_crit_edge, %for.body15.i.i.for.inc.i.i_crit_edge
  %456 = ptrtoint ptr %rule.0167.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %rule.0.i25.i = load ptr, ptr %rule.0167.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %rule.0.i25.i, null
  br i1 %tobool14.not.i.i, label %for.inc.i.i.if.then38.critedge.i.i_crit_edge, label %for.inc.i.i.for.body15.i.i_crit_edge

for.inc.i.i.for.body15.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body15.i.i

for.inc.i.i.if.then38.critedge.i.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then38.critedge.i.i

if.then38.critedge.i.i:                           ; preds = %for.inc.i.i.if.then38.critedge.i.i_crit_edge, %for.body.i.i.if.then38.critedge.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0170.i.i) #21
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then38.critedge.i.i.list_del.exit.i.i_crit_edge

if.then38.critedge.i.i.list_del.exit.i.i_crit_edge: ; preds = %if.then38.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then38.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0170.i.i, i32 0, i32 1
  %457 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %prev.i.i.i.i, align 4
  %459 = ptrtoint ptr %entry1.0170.i.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %entry1.0170.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %460, i32 0, i32 1
  %461 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr %458, ptr %prev1.i.i.i.i.i, align 4
  %462 = ptrtoint ptr %458 to i32
  call void @__asan_store4_noabort(i32 %462)
  store volatile ptr %460, ptr %458, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then38.critedge.i.i.list_del.exit.i.i_crit_edge
  %463 = ptrtoint ptr %entry1.0170.i.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0170.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0170.i.i, i32 0, i32 1
  %464 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %464)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %entry1.0170.i.i) #21
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %list_del.exit.i.i, %land.lhs.true.i.i.if.end40.i.i_crit_edge
  %cmp.not.i26.i = icmp eq ptr %tmp.0172.i.i, %l3_flex_pit_list.i.i
  br i1 %cmp.not.i26.i, label %if.end40.i.i.for.end47.i.i_crit_edge, label %if.end40.i.i.for.body.i.i_crit_edge

if.end40.i.i.for.body.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i.i

if.end40.i.i.for.end47.i.i_crit_edge:             ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end47.i.i

for.end47.i.i:                                    ; preds = %if.end40.i.i.for.end47.i.i_crit_edge, %i40e_update_ethtool_fdir_entry.exit.i.for.end47.i.i_crit_edge
  %l4_flex_pit_list.i.i = getelementptr inbounds %struct.i40e_pf, ptr %419, i32 0, i32 38
  %465 = ptrtoint ptr %l4_flex_pit_list.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %l4_flex_pit_list.i.i, align 8
  %cmp60.not177.i.i = icmp eq ptr %466, %l4_flex_pit_list.i.i
  br i1 %cmp60.not177.i.i, label %for.end47.i.i.i40e_prune_flex_pit_list.exit.i_crit_edge, label %for.end47.i.i.for.body63.i.i_crit_edge

for.end47.i.i.for.body63.i.i_crit_edge:           ; preds = %for.end47.i.i
  br label %for.body63.i.i

for.end47.i.i.i40e_prune_flex_pit_list.exit.i_crit_edge: ; preds = %for.end47.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_prune_flex_pit_list.exit.i

for.body63.i.i:                                   ; preds = %if.end115.i.i.for.body63.i.i_crit_edge, %for.end47.i.i.for.body63.i.i_crit_edge
  %entry1.1178.i.i = phi ptr [ %tmp.1180.i.i, %if.end115.i.i.for.body63.i.i_crit_edge ], [ %466, %for.end47.i.i.for.body63.i.i_crit_edge ]
  %467 = ptrtoint ptr %entry1.1178.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %tmp.1180.i.i = load ptr, ptr %entry1.1178.i.i, align 4
  %468 = ptrtoint ptr %fdir_filter_list.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %rule.1173.i.i = load ptr, ptr %fdir_filter_list.i.i, align 4
  %tobool78.not174.i.i = icmp eq ptr %rule.1173.i.i, null
  br i1 %tobool78.not174.i.i, label %for.body63.i.i.if.then113.critedge.i.i_crit_edge, label %for.body79.lr.ph.i.i

for.body63.i.i.if.then113.critedge.i.i_crit_edge: ; preds = %for.body63.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then113.critedge.i.i

for.body79.lr.ph.i.i:                             ; preds = %for.body63.i.i
  %src_offset92.i.i = getelementptr inbounds %struct.i40e_flex_pit, ptr %entry1.1178.i.i, i32 0, i32 1
  br label %for.body79.i.i

for.body79.i.i:                                   ; preds = %for.inc98.i.i.for.body79.i.i_crit_edge, %for.body79.lr.ph.i.i
  %rule.1175.i.i = phi ptr [ %rule.1173.i.i, %for.body79.lr.ph.i.i ], [ %rule.1.i.i, %for.inc98.i.i.for.body79.i.i_crit_edge ]
  %flow_type80.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.1175.i.i, i32 0, i32 1
  %469 = ptrtoint ptr %flow_type80.i.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %flow_type80.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %470)
  %cmp82.i.i = icmp eq i8 %470, 13
  br i1 %cmp82.i.i, label %for.body79.i.i.for.inc98.i.i_crit_edge, label %if.end85.i.i

for.body79.i.i.for.inc98.i.i_crit_edge:           ; preds = %for.body79.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc98.i.i

if.end85.i.i:                                     ; preds = %for.body79.i.i
  %flex_filter86.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.1175.i.i, i32 0, i32 14
  %471 = ptrtoint ptr %flex_filter86.i.i to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %flex_filter86.i.i, align 4, !range !321
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %472)
  %tobool87.not.i.i = icmp eq i8 %472, 0
  br i1 %tobool87.not.i.i, label %if.end85.i.i.for.inc98.i.i_crit_edge, label %land.lhs.true89.i.i

if.end85.i.i.for.inc98.i.i_crit_edge:             ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc98.i.i

land.lhs.true89.i.i:                              ; preds = %if.end85.i.i
  %flex_offset90.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.1175.i.i, i32 0, i32 13
  %473 = ptrtoint ptr %flex_offset90.i.i to i32
  call void @__asan_load2_noabort(i32 %473)
  %474 = load i16, ptr %flex_offset90.i.i, align 2
  %475 = ptrtoint ptr %src_offset92.i.i to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %src_offset92.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %474, i16 %476)
  %cmp94.i.i = icmp eq i16 %474, %476
  br i1 %cmp94.i.i, label %land.lhs.true89.i.i.if.end115.i.i_crit_edge, label %land.lhs.true89.i.i.for.inc98.i.i_crit_edge

land.lhs.true89.i.i.for.inc98.i.i_crit_edge:      ; preds = %land.lhs.true89.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc98.i.i

land.lhs.true89.i.i.if.end115.i.i_crit_edge:      ; preds = %land.lhs.true89.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end115.i.i

for.inc98.i.i:                                    ; preds = %land.lhs.true89.i.i.for.inc98.i.i_crit_edge, %if.end85.i.i.for.inc98.i.i_crit_edge, %for.body79.i.i.for.inc98.i.i_crit_edge
  %477 = ptrtoint ptr %rule.1175.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %rule.1.i.i = load ptr, ptr %rule.1175.i.i, align 4
  %tobool78.not.i.i = icmp eq ptr %rule.1.i.i, null
  br i1 %tobool78.not.i.i, label %for.inc98.i.i.if.then113.critedge.i.i_crit_edge, label %for.inc98.i.i.for.body79.i.i_crit_edge

for.inc98.i.i.for.body79.i.i_crit_edge:           ; preds = %for.inc98.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body79.i.i

for.inc98.i.i.if.then113.critedge.i.i_crit_edge:  ; preds = %for.inc98.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then113.critedge.i.i

if.then113.critedge.i.i:                          ; preds = %for.inc98.i.i.if.then113.critedge.i.i_crit_edge, %for.body63.i.i.if.then113.critedge.i.i_crit_edge
  %call.i.i159.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.1178.i.i) #21
  br i1 %call.i.i159.i.i, label %if.end.i.i162.i.i, label %if.then113.critedge.i.i.list_del.exit164.i.i_crit_edge

if.then113.critedge.i.i.list_del.exit164.i.i_crit_edge: ; preds = %if.then113.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit164.i.i

if.end.i.i162.i.i:                                ; preds = %if.then113.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i160.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.1178.i.i, i32 0, i32 1
  %478 = ptrtoint ptr %prev.i.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %prev.i.i160.i.i, align 4
  %480 = ptrtoint ptr %entry1.1178.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %entry1.1178.i.i, align 4
  %prev1.i.i.i161.i.i = getelementptr inbounds %struct.list_head, ptr %481, i32 0, i32 1
  %482 = ptrtoint ptr %prev1.i.i.i161.i.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store ptr %479, ptr %prev1.i.i.i161.i.i, align 4
  %483 = ptrtoint ptr %479 to i32
  call void @__asan_store4_noabort(i32 %483)
  store volatile ptr %481, ptr %479, align 4
  br label %list_del.exit164.i.i

list_del.exit164.i.i:                             ; preds = %if.end.i.i162.i.i, %if.then113.critedge.i.i.list_del.exit164.i.i_crit_edge
  %484 = ptrtoint ptr %entry1.1178.i.i to i32
  call void @__asan_store4_noabort(i32 %484)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.1178.i.i, align 4
  %prev.i163.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.1178.i.i, i32 0, i32 1
  %485 = ptrtoint ptr %prev.i163.i.i to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i163.i.i, align 4
  tail call void @kfree(ptr noundef %entry1.1178.i.i) #21
  br label %if.end115.i.i

if.end115.i.i:                                    ; preds = %list_del.exit164.i.i, %land.lhs.true89.i.i.if.end115.i.i_crit_edge
  %cmp60.not.i.i = icmp eq ptr %tmp.1180.i.i, %l4_flex_pit_list.i.i
  br i1 %cmp60.not.i.i, label %if.end115.i.i.i40e_prune_flex_pit_list.exit.i_crit_edge, label %if.end115.i.i.for.body63.i.i_crit_edge

if.end115.i.i.for.body63.i.i_crit_edge:           ; preds = %if.end115.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body63.i.i

if.end115.i.i.i40e_prune_flex_pit_list.exit.i_crit_edge: ; preds = %if.end115.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_prune_flex_pit_list.exit.i

i40e_prune_flex_pit_list.exit.i:                  ; preds = %if.end115.i.i.i40e_prune_flex_pit_list.exit.i_crit_edge, %for.end47.i.i.i40e_prune_flex_pit_list.exit.i_crit_edge
  tail call void @i40e_fdir_check_and_reenable(ptr noundef %419) #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %i40e_prune_flex_pit_list.exit.i, %if.end.i25.sw.epilog_crit_edge, %lor.lhs.false.i24.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %free_filter_memory.i, %i40e_update_ethtool_fdir_entry.exit.sw.epilog_crit_edge, %if.end72.i.sw.epilog_crit_edge, %if.end58.i.sw.epilog_crit_edge, %if.else53.i.sw.epilog_crit_edge, %if.then47.i.sw.epilog_crit_edge, %if.end34.i.sw.epilog_crit_edge, %i40e_check_fdir_input_set.exit.sw.epilog_crit_edge, %if.then364.i.sw.epilog_crit_edge, %if.then357.i.sw.epilog_crit_edge, %i40e_flow_str.exit, %do.body339.i.sw.epilog_crit_edge, %if.then331.i, %do.body327.i.sw.epilog_crit_edge, %if.then271.i.sw.epilog_crit_edge, %for.end.loopexit.i586.i.sw.epilog_crit_edge, %for.end.loopexit.i.i.sw.epilog_crit_edge, %do.end252.i, %do.end.i81, %if.then215.i.sw.epilog_crit_edge, %if.end206.i.sw.epilog_crit_edge, %if.end202.i.sw.epilog_crit_edge, %if.end189.i.sw.epilog_crit_edge, %if.else182.i.sw.epilog_crit_edge, %if.else170.i.sw.epilog_crit_edge, %if.end160.i.sw.epilog_crit_edge, %if.end157.i.sw.epilog_crit_edge, %if.end153.i.sw.epilog_crit_edge, %if.end141.i.sw.epilog_crit_edge, %if.end128.i.sw.epilog_crit_edge, %sw.bb114.i.sw.epilog_crit_edge, %if.end110.i74.sw.epilog_crit_edge, %if.end96.i.sw.epilog_crit_edge, %if.end82.i.sw.epilog_crit_edge, %if.else75.i.sw.epilog_crit_edge, %if.else64.i.sw.epilog_crit_edge, %if.end53.i.sw.epilog_crit_edge, %if.end40.i.sw.epilog_crit_edge, %if.end28.i.sw.epilog_crit_edge, %if.end17.i.sw.epilog_crit_edge, %sw.bb12.i.sw.epilog_crit_edge, %sw.epilog.i.sw.epilog_crit_edge, %if.end30.i.sw.epilog_crit_edge, %if.end26.i.sw.epilog_crit_edge, %if.end.i.i.sw.epilog_crit_edge, %if.end16.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %if.end6.i.sw.epilog_crit_edge, %if.end3.i.sw.epilog_crit_edge, %if.end.i17.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %if.end95.i, %sw.bb52.i.sw.epilog_crit_edge, %sw.bb42.i.sw.epilog_crit_edge, %if.end7.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %do.end.i, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ -95, %do.end.i ], [ 0, %if.end95.i ], [ -22, %if.end.i.sw.epilog_crit_edge ], [ -22, %sw.bb42.i.sw.epilog_crit_edge ], [ -22, %sw.bb52.i.sw.epilog_crit_edge ], [ -22, %if.end7.i.sw.epilog_crit_edge ], [ %err.0.i.i, %i40e_prune_flex_pit_list.exit.i ], [ -16, %lor.lhs.false.i24.sw.epilog_crit_edge ], [ -16, %sw.bb6.sw.epilog_crit_edge ], [ -16, %if.end.i25.sw.epilog_crit_edge ], [ %ret.0.i, %free_filter_memory.i ], [ -22, %sw.bb4.sw.epilog_crit_edge ], [ -95, %if.end.i17.sw.epilog_crit_edge ], [ -28, %if.end3.i.sw.epilog_crit_edge ], [ -16, %lor.lhs.false.i.sw.epilog_crit_edge ], [ -16, %if.end6.i.sw.epilog_crit_edge ], [ -16, %if.end16.i.sw.epilog_crit_edge ], [ -22, %if.end26.i.sw.epilog_crit_edge ], [ %retval.1.i87, %i40e_check_fdir_input_set.exit.sw.epilog_crit_edge ], [ -22, %if.end34.i.sw.epilog_crit_edge ], [ -12, %if.end72.i.sw.epilog_crit_edge ], [ 0, %i40e_update_ethtool_fdir_entry.exit.sw.epilog_crit_edge ], [ -22, %if.end.i.i.sw.epilog_crit_edge ], [ -22, %if.then47.i.sw.epilog_crit_edge ], [ -22, %if.else53.i.sw.epilog_crit_edge ], [ -22, %if.end58.i.sw.epilog_crit_edge ], [ -22, %do.end.i81 ], [ -22, %do.end252.i ], [ -22, %if.then271.i.sw.epilog_crit_edge ], [ %call366.i, %if.then364.i.sw.epilog_crit_edge ], [ %call359.i, %if.then357.i.sw.epilog_crit_edge ], [ -95, %do.body339.i.sw.epilog_crit_edge ], [ -95, %i40e_flow_str.exit ], [ -95, %do.body327.i.sw.epilog_crit_edge ], [ -95, %if.then331.i ], [ -95, %if.then215.i.sw.epilog_crit_edge ], [ -95, %sw.epilog.i.sw.epilog_crit_edge ], [ -22, %if.end206.i.sw.epilog_crit_edge ], [ -95, %if.end202.i.sw.epilog_crit_edge ], [ -95, %if.end189.i.sw.epilog_crit_edge ], [ -95, %if.else182.i.sw.epilog_crit_edge ], [ -95, %if.else170.i.sw.epilog_crit_edge ], [ -22, %if.end160.i.sw.epilog_crit_edge ], [ -22, %if.end157.i.sw.epilog_crit_edge ], [ -95, %if.end153.i.sw.epilog_crit_edge ], [ -95, %if.end141.i.sw.epilog_crit_edge ], [ -95, %if.end128.i.sw.epilog_crit_edge ], [ -95, %sw.bb114.i.sw.epilog_crit_edge ], [ -95, %if.end110.i74.sw.epilog_crit_edge ], [ -95, %if.end96.i.sw.epilog_crit_edge ], [ -95, %if.end82.i.sw.epilog_crit_edge ], [ -95, %if.else75.i.sw.epilog_crit_edge ], [ -95, %if.else64.i.sw.epilog_crit_edge ], [ -95, %if.end53.i.sw.epilog_crit_edge ], [ -95, %if.end40.i.sw.epilog_crit_edge ], [ -95, %if.end28.i.sw.epilog_crit_edge ], [ -95, %if.end17.i.sw.epilog_crit_edge ], [ -95, %sw.bb12.i.sw.epilog_crit_edge ], [ -95, %if.end30.i.sw.epilog_crit_edge ], [ -28, %for.end.loopexit.i.i.sw.epilog_crit_edge ], [ -28, %for.end.loopexit.i586.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_ddp_flash(ptr noundef, ptr noundef) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i40e_get_rxfh_key_size(ptr nocapture noundef readnone %netdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i40e_get_rxfh_indir_size(ptr nocapture noundef readnone %netdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 512
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_rxfh(ptr nocapture noundef readonly %netdev, ptr noundef writeonly %indir, ptr noundef %key, ptr noundef writeonly %hfunc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %2 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %indir, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 512) #26
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @i40e_get_rss(ptr noundef %1, ptr noundef %key, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 512) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.for.body_crit_edge, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %5 to i32
  %arrayidx16 = getelementptr i32, ptr %indir, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv14, ptr %arrayidx16, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 512
  br i1 %exitcond.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %if.end8.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #21
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %out ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_rxfh(ptr nocapture noundef readonly %netdev, ptr noundef readonly %indir, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then6

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end18

if.then6:                                         ; preds = %if.end
  %rss_hkey_user = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %rss_hkey_user to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rss_hkey_user, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.then8, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15

if.then8:                                         ; preds = %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 52) #26
  %7 = ptrtoint ptr %rss_hkey_user to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %rss_hkey_user, align 4
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.then8.cleanup_crit_edge, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.then6.if.end15_crit_edge
  %8 = ptrtoint ptr %rss_hkey_user to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rss_hkey_user, align 4
  %10 = call ptr @memcpy(ptr %9, ptr %key, i32 52)
  %11 = load ptr, ptr %rss_hkey_user, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end.if.end18_crit_edge
  %seed.0 = phi ptr [ %11, %if.end15 ], [ null, %if.end.if.end18_crit_edge ]
  %rss_lut_user = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %rss_lut_user to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rss_lut_user, align 8
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end27

if.then20:                                        ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 512) #26
  %15 = ptrtoint ptr %rss_lut_user to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i64, ptr %rss_lut_user, align 8
  %tobool24.not = icmp eq ptr %call7.i.i64, null
  br i1 %tobool24.not, label %if.then20.cleanup_crit_edge, label %if.then20.if.end27_crit_edge

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end27

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end27:                                         ; preds = %if.then20.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %tobool28.not = icmp eq ptr %indir, null
  br i1 %tobool28.not, label %if.else, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end27.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end27.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %indvars.iv
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %conv33 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %rss_lut_user to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rss_lut_user, align 8
  %arrayidx36 = getelementptr i8, ptr %19, i32 %indvars.iv
  %20 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv33, ptr %arrayidx36, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 512
  br i1 %exitcond.not, label %for.body.if.end38_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end38

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #23
  %21 = ptrtoint ptr %rss_lut_user to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rss_lut_user, align 8
  %rss_size = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 28
  %23 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rss_size, align 2
  tail call void @i40e_fill_rss_lut(ptr noundef %3, ptr noundef %22, i16 noundef zeroext 512, i16 noundef zeroext %24) #21
  br label %if.end38

if.end38:                                         ; preds = %if.else, %for.body.if.end38_crit_edge
  %25 = ptrtoint ptr %rss_lut_user to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rss_lut_user, align 8
  %call40 = tail call i32 @i40e_config_rss(ptr noundef %1, ptr noundef %seed.0, ptr noundef %26, i16 noundef zeroext 512) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then20.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end38 ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.then8.cleanup_crit_edge ], [ -12, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @i40e_get_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ch) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %alloc_queue_pairs.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 42
  %4 = ptrtoint ptr %alloc_queue_pairs.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %alloc_queue_pairs.i, align 2
  %conv.i = zext i16 %5 to i32
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %6 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i, ptr %max_combined, align 4
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 54
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = lshr i32 %8, 8
  %and.lobit = and i32 %and, 1
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %9 = ptrtoint ptr %other_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.lobit, ptr %other_count, align 4
  %max_other = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 3
  %10 = ptrtoint ptr %max_other to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.lobit, ptr %max_other, align 4
  %num_queue_pairs = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 44
  %11 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_queue_pairs, align 2
  %conv = zext i16 %12 to i32
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %13 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %combined_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %0 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %combined_count, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 8
  %type = getelementptr inbounds %struct.i40e_vsi, ptr %3, i32 0, i32 47
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 54
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %10 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %12 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false6
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %14 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %other_count, align 4
  %and11 = lshr i32 %9, 8
  %and11.lobit = and i32 %and11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %and11.lobit)
  %cmp13.not = icmp eq i32 %15, %and11.lobit
  br i1 %cmp13.not, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %alloc_queue_pairs.i = getelementptr inbounds %struct.i40e_vsi, ptr %3, i32 0, i32 42
  %16 = ptrtoint ptr %alloc_queue_pairs.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %alloc_queue_pairs.i, align 2
  %conv.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i)
  %cmp17 = icmp ugt i32 %1, %conv.i
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %fdir_filter_list = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 23
  %18 = ptrtoint ptr %fdir_filter_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fdir_filter_list, align 8
  %tobool23.not91 = icmp eq ptr %19, null
  br i1 %tobool23.not91, label %if.end19.if.end53_crit_edge, label %if.end19.land.rhs_crit_edge

if.end19.land.rhs_crit_edge:                      ; preds = %if.end19
  br label %land.rhs

if.end19.if.end53_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end53

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end19.land.rhs_crit_edge
  %rule.093 = phi ptr [ %21, %for.inc.land.rhs_crit_edge ], [ %19, %if.end19.land.rhs_crit_edge ]
  %err.092 = phi i32 [ %err.1, %for.inc.land.rhs_crit_edge ], [ 0, %if.end19.land.rhs_crit_edge ]
  %20 = ptrtoint ptr %rule.093 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rule.093, align 4
  %dest_ctl = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.093, i32 0, i32 19
  %22 = ptrtoint ptr %dest_ctl to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dest_ctl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp26.not = icmp eq i8 %23, 0
  br i1 %cmp26.not, label %land.rhs.for.inc_crit_edge, label %land.lhs.true

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

land.lhs.true:                                    ; preds = %land.rhs
  %q_index = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.093, i32 0, i32 15
  %24 = ptrtoint ptr %q_index to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %q_index, align 2
  %conv28 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv28)
  %cmp29.not = icmp ugt i32 %1, %conv28
  br i1 %cmp29.not, label %land.lhs.true.for.inc_crit_edge, label %do.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %fd_id = getelementptr inbounds %struct.i40e_fdir_filter, ptr %rule.093, i32 0, i32 22
  %28 = ptrtoint ptr %fd_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fd_id, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev32, ptr noundef nonnull @.str.130, i32 noundef %29, i32 noundef %conv28) #24
  br label %for.inc

for.inc:                                          ; preds = %do.end, %land.lhs.true.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %err.1 = phi i32 [ -22, %do.end ], [ %err.092, %land.lhs.true.for.inc_crit_edge ], [ %err.092, %land.rhs.for.inc_crit_edge ]
  %tobool23.not = icmp eq ptr %21, null
  br i1 %tobool23.not, label %for.end, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.rhs

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool46.not = icmp eq i32 %err.1, 0
  br i1 %tobool46.not, label %for.end.if.end53_crit_edge, label %do.end50

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end53

do.end50:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 8
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.133, i32 noundef %1) #24
  br label %cleanup

if.end53:                                         ; preds = %for.end.if.end53_crit_edge, %if.end19.if.end53_crit_edge
  %call54 = tail call i32 @i40e_reconfig_rss_queues(ptr noundef %5, i32 noundef %1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp sgt i32 %call54, 0
  %. = select i1 %cmp55, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end50, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %do.end50 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ %., %if.end53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_ts_info(ptr noundef %dev, ptr noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call1 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %dev, ptr noundef %info) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 95, ptr %so_timestamping, align 4
  %ptp_clock = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 93
  %7 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp_clock, align 8
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %call5 = tail call i32 @ptp_clock_index(ptr noundef nonnull %8) #21
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %call5.sink = phi i32 [ %call5, %if.then3 ], [ -1, %if.end.if.end7_crit_edge ]
  %9 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call5.sink, ptr %9, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %12 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3585, ptr %rx_filters, align 4
  %hw_features = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 53
  %13 = ptrtoint ptr %hw_features to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_features, align 4
  %and8 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.store.select = select i1 %tobool9.not, i32 3585, i32 32753
  %15 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select, ptr %rx_filters, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_module_info(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %modinfo) #4 align 64 {
entry:
  %sff8472_comp = alloca i32, align 4
  %sff8472_swap = alloca i32, align 4
  %sff8636_rev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw2 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sff8472_comp) #21
  %4 = ptrtoint ptr %sff8472_comp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sff8472_comp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sff8472_swap) #21
  %5 = ptrtoint ptr %sff8472_swap to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sff8472_swap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sff8636_rev) #21
  %6 = ptrtoint ptr %sff8636_rev to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sff8636_rev, align 4
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 35
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %flags, align 8
  %and = and i64 %8, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.135) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @i40e_update_link_info(ptr noundef %hw2) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %phy = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %12)
  %cmp = icmp eq i32 %12, 254
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.136) #24
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %module_type = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 13
  %15 = ptrtoint ptr %module_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %module_type, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.188)
  switch i8 %16, label %sw.default [
    i8 3, label %sw.bb
    i8 13, label %sw.bb43
    i8 17, label %sw.bb57
  ]

sw.bb:                                            ; preds = %if.end10
  %call13 = call i32 @i40e_aq_get_phy_register_ext(ptr noundef %hw2, i8 noundef zeroext 2, i8 noundef zeroext -96, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 0, i32 noundef 94, ptr noundef nonnull %sff8472_comp, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end16:                                         ; preds = %sw.bb
  %call17 = call i32 @i40e_aq_get_phy_register_ext(ptr noundef %hw2, i8 noundef zeroext 2, i8 noundef zeroext -96, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 0, i32 noundef 92, ptr noundef nonnull %sff8472_swap, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %18 = ptrtoint ptr %sff8472_swap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sff8472_swap, align 4
  %and21 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #23
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.137) #24
  %type25 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %22 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type25, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %23 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %eeprom_len, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end20
  %24 = ptrtoint ptr %sff8472_comp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sff8472_comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp26 = icmp eq i32 %25, 0
  br i1 %cmp26, label %if.then28, label %if.else31

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  %type29 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %26 = ptrtoint ptr %type29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type29, align 4
  %eeprom_len30 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %27 = ptrtoint ptr %eeprom_len30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 256, ptr %eeprom_len30, align 4
  br label %cleanup

if.else31:                                        ; preds = %if.else
  %and32 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %type35 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  br i1 %tobool33.not, label %if.then34, label %if.else37

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #23
  %28 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type35, align 4
  %eeprom_len36 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %29 = ptrtoint ptr %eeprom_len36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 256, ptr %eeprom_len36, align 4
  br label %cleanup

if.else37:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #23
  %30 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %type35, align 4
  %eeprom_len39 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %31 = ptrtoint ptr %eeprom_len39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 512, ptr %eeprom_len39, align 4
  br label %cleanup

sw.bb43:                                          ; preds = %if.end10
  %call44 = call i32 @i40e_aq_get_phy_register_ext(ptr noundef %hw2, i8 noundef zeroext 2, i8 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %sff8636_rev, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %sw.bb43.cleanup_crit_edge

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end47:                                         ; preds = %sw.bb43
  %32 = ptrtoint ptr %sff8636_rev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sff8636_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp48 = icmp ugt i32 %33, 2
  %type51 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  br i1 %cmp48, label %if.then50, label %if.else53

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #23
  %34 = ptrtoint ptr %type51 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %type51, align 4
  %eeprom_len52 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %35 = ptrtoint ptr %eeprom_len52 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 640, ptr %eeprom_len52, align 4
  br label %cleanup

if.else53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #23
  %36 = ptrtoint ptr %type51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %type51, align 4
  %eeprom_len55 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %37 = ptrtoint ptr %eeprom_len55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 640, ptr %eeprom_len55, align 4
  br label %cleanup

sw.bb57:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  %type58 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %38 = ptrtoint ptr %type58 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %type58, align 4
  %eeprom_len59 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %39 = ptrtoint ptr %eeprom_len59 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 640, ptr %eeprom_len59, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str.138) #24
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb57, %if.else53, %if.then50, %sw.bb43.cleanup_crit_edge, %if.else37, %if.then34, %if.then28, %if.then23, %if.end16.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then8 ], [ -22, %sw.default ], [ -22, %if.then ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %sw.bb.cleanup_crit_edge ], [ -5, %if.end16.cleanup_crit_edge ], [ -5, %sw.bb43.cleanup_crit_edge ], [ 0, %if.then50 ], [ 0, %if.else53 ], [ 0, %if.then23 ], [ 0, %if.then34 ], [ 0, %if.else37 ], [ 0, %if.then28 ], [ 0, %sw.bb57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sff8636_rev) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sff8472_swap) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sff8472_comp) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_module_eeprom(ptr nocapture noundef readonly %netdev, ptr noundef readonly %ee, ptr noundef writeonly %data) #4 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw2 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #21
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 4
  %tobool.not = icmp eq ptr %ee, null
  br i1 %tobool.not, label %entry.cleanup34_crit_edge, label %lor.lhs.false

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup34

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  %tobool5.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool5.not, %tobool3.not
  br i1 %or.cond, label %lor.lhs.false.cleanup34_crit_edge, label %if.end

lor.lhs.false.cleanup34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup34

if.end:                                           ; preds = %lor.lhs.false
  %module_type = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 13
  %7 = ptrtoint ptr %module_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %module_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp eq i8 %8, 3
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1062.not = icmp eq i32 %10, 0
  br i1 %cmp1062.not, label %if.end.cleanup34_crit_edge, label %for.body.lr.ph

if.end.cleanup34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup34

for.body.lr.ph:                                   ; preds = %if.end
  %offset12 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv66 = phi i32 [ -256, %for.body.lr.ph ], [ %indvars.iv.next67, %if.end29.for.body_crit_edge ]
  %indvars.iv = phi i32 [ -128, %for.body.lr.ph ], [ %indvars.iv.next, %if.end29.for.body_crit_edge ]
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %if.end29.for.body_crit_edge ]
  %11 = ptrtoint ptr %offset12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset12, align 4
  %add = add i32 %12, %i.063
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add)
  %cmp17 = icmp ugt i32 %add, 255
  br i1 %cmp, label %if.then16, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  br i1 %cmp17, label %while.body.preheader, label %while.cond.preheader.if.end24_crit_edge

while.cond.preheader.if.end24_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end24

while.body.preheader:                             ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  %13 = add i32 %12, %indvars.iv
  %14 = add i32 %12, %indvars.iv66
  %15 = lshr i32 %14, 7
  %16 = and i32 %14, -128
  %17 = sub i32 %13, %16
  %18 = add nuw nsw i32 %15, 1
  br label %if.end24

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %sub = add i32 %add, -256
  %spec.select = select i1 %cmp17, i32 %sub, i32 %add
  %spec.select57 = select i1 %cmp17, i32 162, i32 160
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %while.body.preheader, %while.cond.preheader.if.end24_crit_edge
  %offset.1 = phi i32 [ %spec.select, %if.then16 ], [ %add, %while.cond.preheader.if.end24_crit_edge ], [ %17, %while.body.preheader ]
  %addr.1 = phi i32 [ %spec.select57, %if.then16 ], [ 0, %while.cond.preheader.if.end24_crit_edge ], [ %18, %while.body.preheader ]
  %conv25 = trunc i32 %addr.1 to i8
  %call26 = call i32 @i40e_aq_get_phy_register_ext(ptr noundef %hw2, i8 noundef zeroext 2, i8 noundef zeroext %conv25, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 0, i32 noundef %offset.1, ptr noundef nonnull %value, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.cleanup34_crit_edge

if.end24.cleanup34_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup34

if.end29:                                         ; preds = %if.end24
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  %conv30 = trunc i32 %20 to i8
  %arrayidx31 = getelementptr i8, ptr %data, i32 %i.063
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv30, ptr %arrayidx31, align 1
  %inc33 = add nuw i32 %i.063, 1
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %cmp10 = icmp ult i32 %inc33, %23
  %indvars.iv.next = add i32 %indvars.iv, 1
  %indvars.iv.next67 = add i32 %indvars.iv66, 1
  br i1 %cmp10, label %if.end29.for.body_crit_edge, label %if.end29.cleanup34_crit_edge

if.end29.cleanup34_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup34

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

cleanup34:                                        ; preds = %if.end29.cleanup34_crit_edge, %if.end24.cleanup34_crit_edge, %if.end.cleanup34_crit_edge, %lor.lhs.false.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.2 = phi i32 [ -22, %lor.lhs.false.cleanup34_crit_edge ], [ -22, %entry.cleanup34_crit_edge ], [ 0, %if.end.cleanup34_crit_edge ], [ 0, %if.end29.cleanup34_crit_edge ], [ -5, %if.end24.cleanup34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #21
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_eee(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %edata) #4 align 64 {
entry:
  %phy_cfg = alloca %struct.i40e_aq_get_phy_abilities_resp, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %phy_cfg) #21
  %0 = call ptr @memset(ptr %phy_cfg, i32 255, i32 536)
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %2, i32 0, i32 57
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back, align 8
  %hw2 = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 1
  %call3 = call i32 @i40e_aq_get_phy_capabilities(ptr noundef %hw2, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull %phy_cfg, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %eee_capability = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %phy_cfg, i32 0, i32 3
  %5 = ptrtoint ptr %eee_capability to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %eee_capability, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %supported = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 1
  %7 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %supported, align 4
  %lp_advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 3
  %8 = ptrtoint ptr %lp_advertised to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %lp_advertised, align 4
  %call8 = call i32 @i40e_aq_get_phy_capabilities(ptr noundef %hw2, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %phy_cfg, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %eee_capability to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %eee_capability, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool14 = icmp ne i16 %10, 0
  %cond = select i1 %tobool14, i32 64, i32 0
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %11 = ptrtoint ptr %advertised to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %advertised, align 4
  %lnot.ext = zext i1 %tobool14 to i32
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %12 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %lnot.ext, ptr %eee_enabled, align 4
  %tx_lpi_status = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 57, i32 42
  %13 = ptrtoint ptr %tx_lpi_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_lpi_status, align 8
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %15 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tx_lpi_enabled, align 4
  %16 = load i32, ptr %tx_lpi_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool20.not = icmp eq i32 %16, 0
  br i1 %tobool20.not, label %if.end11.land.end_crit_edge, label %land.rhs

if.end11.land.end_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.end

land.rhs:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #23
  %rx_lpi_status = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 57, i32 43
  %17 = ptrtoint ptr %rx_lpi_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_lpi_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22 = icmp ne i32 %18, 0
  %phi.cast = zext i1 %tobool22 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end11.land.end_crit_edge
  %19 = phi i32 [ 0, %if.end11.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %eee_active = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %20 = ptrtoint ptr %eee_active to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %eee_active, align 4
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.end ], [ -11, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -11, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %phy_cfg) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_eee(ptr noundef %netdev, ptr nocapture noundef readonly %edata) #4 align 64 {
entry:
  %param.i = alloca [3 x %struct.i40e_ethtool_not_used], align 4
  %abilities = alloca %struct.i40e_aq_get_phy_abilities_resp, align 4
  %config = alloca %struct.i40e_aq_set_phy_config, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %abilities) #21
  %0 = call ptr @memset(ptr %abilities, i32 255, i32 536)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %config) #21
  %1 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 1
  %2 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 2
  %3 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 3
  %4 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 5
  %6 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 6
  %7 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 7
  %8 = getelementptr inbounds i8, ptr %config, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 12)
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %11, i32 0, i32 57
  %12 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %back, align 8
  %hw2 = getelementptr inbounds %struct.i40e_pf, ptr %13, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %param.i) #21
  %14 = getelementptr inbounds %struct.i40e_ethtool_not_used, ptr %param.i, i32 0, i32 1
  %15 = getelementptr inbounds [3 x %struct.i40e_ethtool_not_used], ptr %param.i, i32 0, i32 1
  %16 = getelementptr inbounds [3 x %struct.i40e_ethtool_not_used], ptr %param.i, i32 0, i32 1, i32 1
  %17 = getelementptr inbounds [3 x %struct.i40e_ethtool_not_used], ptr %param.i, i32 0, i32 2
  %18 = getelementptr inbounds [3 x %struct.i40e_ethtool_not_used], ptr %param.i, i32 0, i32 2, i32 1
  %advertised.i = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %19 = ptrtoint ptr %advertised.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %advertised.i, align 4
  %and.i = and i32 %20, -65
  %21 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i, ptr %param.i, align 4
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.139, ptr %14, align 4
  %tx_lpi_timer.i = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %23 = ptrtoint ptr %tx_lpi_timer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_lpi_timer.i, align 4
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %15, align 4
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.140, ptr %16, align 4
  %tx_lpi_enabled.i = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %27 = ptrtoint ptr %tx_lpi_enabled.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_lpi_enabled.i, align 4
  %tx_lpi_status.i = getelementptr inbounds %struct.i40e_pf, ptr %13, i32 0, i32 57, i32 42
  %29 = ptrtoint ptr %tx_lpi_status.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_lpi_status.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.i = icmp ne i32 %28, %30
  %conv.i = zext i1 %cmp.i to i32
  %31 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i, ptr %17, align 4
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.141, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %entry.i40e_is_eee_param_supported.exit_crit_edge

entry.i40e_is_eee_param_supported.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_is_eee_param_supported.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.1.i = icmp ne i32 %24, 0
  %brmerge = select i1 %tobool.not.1.i, i1 true, i1 %cmp.i
  %.mux = select i1 %tobool.not.1.i, i32 1, i32 2
  br i1 %brmerge, label %for.inc.i.i40e_is_eee_param_supported.exit_crit_edge, label %if.end

for.inc.i.i40e_is_eee_param_supported.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_is_eee_param_supported.exit

i40e_is_eee_param_supported.exit:                 ; preds = %for.inc.i.i40e_is_eee_param_supported.exit_crit_edge, %entry.i40e_is_eee_param_supported.exit_crit_edge
  %i.023.lcssa.i = phi i32 [ 0, %entry.i40e_is_eee_param_supported.exit_crit_edge ], [ %.mux, %for.inc.i.i40e_is_eee_param_supported.exit_crit_edge ]
  %name11.i = getelementptr [3 x %struct.i40e_ethtool_not_used], ptr %param.i, i32 0, i32 %i.023.lcssa.i, i32 1
  %33 = ptrtoint ptr %name11.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name11.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.142, ptr noundef %34) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %param.i) #21
  br label %cleanup

if.end:                                           ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %param.i) #21
  %call4 = call i32 @i40e_aq_get_phy_capabilities(ptr noundef %hw2, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull %abilities, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %eee_capability8 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 3
  %35 = ptrtoint ptr %eee_capability8 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %eee_capability8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp = icmp eq i16 %36, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call13 = call i32 @i40e_aq_get_phy_capabilities(ptr noundef %hw2, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %abilities, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %37 = ptrtoint ptr %abilities to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %abilities, align 4
  %39 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %config, align 4
  %phy_type_ext = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 6
  %40 = ptrtoint ptr %phy_type_ext to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %phy_type_ext, align 1
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %6, align 1
  %link_speed = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 1
  %43 = ptrtoint ptr %link_speed to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %link_speed, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %1, align 4
  %abilities20 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 2
  %46 = ptrtoint ptr %abilities20 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %abilities20, align 1
  %48 = or i8 %47, 32
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %2, align 1
  %eeer_val = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 4
  %50 = ptrtoint ptr %eeer_val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %eeer_val, align 4
  %d3_lpan = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 5
  %52 = ptrtoint ptr %d3_lpan to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %d3_lpan, align 4
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %5, align 4
  %fec_cfg_curr_mod_ext_info = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 7
  %55 = ptrtoint ptr %fec_cfg_curr_mod_ext_info to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %fec_cfg_curr_mod_ext_info, align 2
  %57 = and i8 %56, 31
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %7, align 2
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %59 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool26.not = icmp eq i32 %60, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %36, ptr %3, align 2
  %or30 = or i32 %51, 256
  br label %if.end34

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %3, align 2
  %and33 = and i32 %51, -257
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then27
  %storemerge = phi i32 [ %and33, %if.else ], [ %or30, %if.then27 ]
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %storemerge, ptr %4, align 4
  %call35 = call i32 @i40e_aq_set_phy_config(ptr noundef %hw2, ptr noundef nonnull %config, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  %. = select i1 %tobool36.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %i40e_is_eee_param_supported.exit
  %retval.0 = phi i32 [ -95, %i40e_is_eee_param_supported.exit ], [ -11, %if.end.cleanup_crit_edge ], [ -95, %if.end7.cleanup_crit_edge ], [ -11, %if.end11.cleanup_crit_edge ], [ %., %if.end34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %config) #21
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %abilities) #21
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i40e_get_per_queue_coalesce(ptr nocapture noundef readonly %netdev, i32 noundef %queue, ptr nocapture noundef writeonly %ec) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %work_limit.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %work_limit.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %work_limit.i, align 4
  %conv.i = zext i16 %3 to i32
  %tx_max_coalesced_frames_irq.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 8
  %4 = ptrtoint ptr %tx_max_coalesced_frames_irq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv.i, ptr %tx_max_coalesced_frames_irq.i, align 4
  %5 = load i16, ptr %work_limit.i, align 4
  %conv3.i = zext i16 %5 to i32
  %rx_max_coalesced_frames_irq.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 4
  %6 = ptrtoint ptr %rx_max_coalesced_frames_irq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv3.i, ptr %rx_max_coalesced_frames_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queue)
  %cmp.i = icmp slt i32 %queue, 0
  br i1 %cmp.i, label %entry.if.end9.i_crit_edge, label %if.else.i

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end9.i

if.else.i:                                        ; preds = %entry
  %num_queue_pairs.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 44
  %7 = ptrtoint ptr %num_queue_pairs.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_queue_pairs.i, align 2
  %conv5.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %queue)
  %cmp6.not.i = icmp ugt i32 %conv5.i, %queue
  br i1 %cmp6.not.i, label %if.else.i.if.end9.i_crit_edge, label %if.else.i.__i40e_get_coalesce.exit_crit_edge

if.else.i.__i40e_get_coalesce.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %__i40e_get_coalesce.exit

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i.if.end9.i_crit_edge, %entry.if.end9.i_crit_edge
  %queue.addr.0.i = phi i32 [ %queue, %if.else.i.if.end9.i_crit_edge ], [ 0, %entry.if.end9.i_crit_edge ]
  %rx_rings.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_rings.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %queue.addr.0.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tx_rings.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_rings.i, align 4
  %arrayidx10.i = getelementptr ptr, ptr %14, i32 %queue.addr.0.i
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx10.i, align 4
  %itr_setting.i = getelementptr inbounds %struct.i40e_ring, ptr %12, i32 0, i32 10
  %17 = ptrtoint ptr %itr_setting.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %itr_setting.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %tobool.not.i = icmp sgt i16 %18, -1
  br i1 %tobool.not.i, label %if.end9.i.if.end13.i_crit_edge, label %if.then12.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #23
  %use_adaptive_rx_coalesce.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %19 = ptrtoint ptr %use_adaptive_rx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %use_adaptive_rx_coalesce.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end13.i_crit_edge
  %itr_setting14.i = getelementptr inbounds %struct.i40e_ring, ptr %16, i32 0, i32 10
  %20 = ptrtoint ptr %itr_setting14.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %itr_setting14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %tobool17.not.i = icmp sgt i16 %21, -1
  br i1 %tobool17.not.i, label %if.end13.i.if.end19.i_crit_edge, label %if.then18.i

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #23
  %use_adaptive_tx_coalesce.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %22 = ptrtoint ptr %use_adaptive_tx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %use_adaptive_tx_coalesce.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end13.i.if.end19.i_crit_edge
  %23 = ptrtoint ptr %itr_setting.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %itr_setting.i, align 4
  %25 = and i16 %24, 32767
  %and22.i = zext i16 %25 to i32
  %rx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %26 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and22.i, ptr %rx_coalesce_usecs.i, align 4
  %27 = ptrtoint ptr %itr_setting14.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %itr_setting14.i, align 4
  %29 = and i16 %28, 32767
  %and25.i = zext i16 %29 to i32
  %tx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %30 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and25.i, ptr %tx_coalesce_usecs.i, align 4
  %int_rate_limit.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 26
  %31 = ptrtoint ptr %int_rate_limit.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %int_rate_limit.i, align 2
  %conv26.i = zext i16 %32 to i32
  %rx_coalesce_usecs_high.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 18
  %33 = ptrtoint ptr %rx_coalesce_usecs_high.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv26.i, ptr %rx_coalesce_usecs_high.i, align 4
  %34 = load i16, ptr %int_rate_limit.i, align 2
  %conv28.i = zext i16 %34 to i32
  %tx_coalesce_usecs_high.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 20
  %35 = ptrtoint ptr %tx_coalesce_usecs_high.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv28.i, ptr %tx_coalesce_usecs_high.i, align 4
  br label %__i40e_get_coalesce.exit

__i40e_get_coalesce.exit:                         ; preds = %if.end19.i, %if.else.i.__i40e_get_coalesce.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end19.i ], [ -22, %if.else.i.__i40e_get_coalesce.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_per_queue_coalesce(ptr noundef %netdev, i32 noundef %queue, ptr nocapture noundef %ec) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__i40e_set_coalesce(ptr noundef %netdev, ptr noundef %ec, i32 noundef %queue)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_link_ksettings(ptr noundef %netdev, ptr noundef %ks) #4 align 64 {
entry:
  %cap_ksettings.i = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %link_info2 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %link_info2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_info2, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %link_modes, i32 0, i32 24)
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %phy.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %cap_ksettings.i) #21
  %link_speed1.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %link_speed1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_speed1.i, align 4
  %10 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %11, label %sw.default.i [
    i32 24, label %if.then.sw.bb.i_crit_edge
    i32 10, label %if.then.sw.bb.i_crit_edge145
    i32 8, label %if.then.sw.bb10.i_crit_edge
    i32 9, label %if.then.sw.bb10.i_crit_edge146
    i32 13, label %if.then.sw.bb10.i_crit_edge147
    i32 25, label %sw.bb17.i
    i32 26, label %sw.bb24.i
    i32 33, label %if.then.sw.bb31.i_crit_edge
    i32 34, label %if.then.sw.bb31.i_crit_edge148
    i32 20, label %if.then.sw.bb31.i_crit_edge149
    i32 21, label %if.then.sw.bb31.i_crit_edge150
    i32 27, label %if.then.sw.bb31.i_crit_edge151
    i32 28, label %if.then.sw.bb31.i_crit_edge152
    i32 19, label %if.then.sw.bb90.i_crit_edge
    i32 49, label %if.then.sw.bb90.i_crit_edge153
    i32 48, label %if.then.sw.bb90.i_crit_edge154
    i32 18, label %if.then.sw.bb90.i_crit_edge155
    i32 17, label %if.then.sw.bb90.i_crit_edge156
    i32 29, label %sw.bb157.i
    i32 11, label %if.then.sw.bb170.i_crit_edge
    i32 23, label %if.then.sw.bb170.i_crit_edge157
    i32 5, label %if.then.sw.bb183.i_crit_edge
    i32 6, label %if.then.sw.bb183.i_crit_edge158
    i32 7, label %if.then.sw.bb183.i_crit_edge159
    i32 22, label %if.then.sw.bb183.i_crit_edge160
    i32 12, label %if.then.sw.bb183.i_crit_edge161
    i32 0, label %sw.bb197.i
    i32 4, label %if.then.sw.bb229.i_crit_edge
    i32 31, label %if.then.sw.bb229.i_crit_edge162
    i32 30, label %if.then.sw.bb229.i_crit_edge163
    i32 3, label %if.then.sw.bb229.i_crit_edge164
    i32 2, label %if.then.sw.bb229.i_crit_edge165
    i32 1, label %if.then.sw.bb229.i_crit_edge166
    i32 32, label %sw.bb273.i
    i32 35, label %if.then.sw.bb287.i_crit_edge
    i32 36, label %if.then.sw.bb287.i_crit_edge167
  ]

if.then.sw.bb287.i_crit_edge167:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb287.i

if.then.sw.bb287.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb287.i

if.then.sw.bb229.i_crit_edge166:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb229.i

if.then.sw.bb229.i_crit_edge165:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb229.i

if.then.sw.bb229.i_crit_edge164:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb229.i

if.then.sw.bb229.i_crit_edge163:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb229.i

if.then.sw.bb229.i_crit_edge162:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb229.i

if.then.sw.bb229.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb229.i

if.then.sw.bb183.i_crit_edge161:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb183.i

if.then.sw.bb183.i_crit_edge160:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb183.i

if.then.sw.bb183.i_crit_edge159:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb183.i

if.then.sw.bb183.i_crit_edge158:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb183.i

if.then.sw.bb183.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb183.i

if.then.sw.bb170.i_crit_edge157:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb170.i

if.then.sw.bb170.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb170.i

if.then.sw.bb90.i_crit_edge156:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb90.i

if.then.sw.bb90.i_crit_edge155:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb90.i

if.then.sw.bb90.i_crit_edge154:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb90.i

if.then.sw.bb90.i_crit_edge153:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb90.i

if.then.sw.bb90.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb90.i

if.then.sw.bb31.i_crit_edge152:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb31.i

if.then.sw.bb31.i_crit_edge151:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb31.i

if.then.sw.bb31.i_crit_edge150:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb31.i

if.then.sw.bb31.i_crit_edge149:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb31.i

if.then.sw.bb31.i_crit_edge148:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb31.i

if.then.sw.bb31.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb31.i

if.then.sw.bb10.i_crit_edge147:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb10.i

if.then.sw.bb10.i_crit_edge146:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb10.i

if.then.sw.bb10.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb10.i

if.then.sw.bb.i_crit_edge145:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge145
  %13 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %link_modes, align 4
  %or.i445.i = or i32 %14, 16777280
  store i32 %or.i445.i, ptr %link_modes, align 4
  %15 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %advertising, align 4
  %or.i447.i = or i32 %16, 16777280
  store i32 %or.i447.i, ptr %advertising, align 4
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.then.sw.bb10.i_crit_edge, %if.then.sw.bb10.i_crit_edge146, %if.then.sw.bb10.i_crit_edge147
  %17 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %link_modes, align 4
  %or.i448.i = or i32 %18, 16777216
  store i32 %or.i448.i, ptr %link_modes, align 4
  %19 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %advertising, align 4
  %or.i449.i = or i32 %20, 16777216
  store i32 %or.i449.i, ptr %advertising, align 4
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %21 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %link_modes, align 4
  %or.i450.i = or i32 %22, 33554432
  store i32 %or.i450.i, ptr %link_modes, align 4
  %23 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %advertising, align 4
  %or.i451.i = or i32 %24, 33554432
  store i32 %or.i451.i, ptr %advertising, align 4
  br label %sw.epilog.i

sw.bb24.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %25 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_modes, align 4
  %or.i452.i = or i32 %26, 67108864
  store i32 %or.i452.i, ptr %link_modes, align 4
  %27 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %advertising, align 4
  %or.i453.i = or i32 %28, 67108864
  store i32 %or.i453.i, ptr %advertising, align 4
  br label %sw.epilog.i

sw.bb31.i:                                        ; preds = %if.then.sw.bb31.i_crit_edge, %if.then.sw.bb31.i_crit_edge148, %if.then.sw.bb31.i_crit_edge149, %if.then.sw.bb31.i_crit_edge150, %if.then.sw.bb31.i_crit_edge151, %if.then.sw.bb31.i_crit_edge152
  %29 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %link_modes, align 4
  %or.i454.i = or i32 %30, 64
  store i32 %or.i454.i, ptr %link_modes, align 4
  %31 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %advertising, align 4
  %or.i455.i = or i32 %32, 64
  store i32 %or.i455.i, ptr %advertising, align 4
  %add.ptr.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i, align 4
  %or.i456.i = or i32 %34, 2
  store i32 %or.i456.i, ptr %add.ptr.i.i, align 4
  %add.ptr.i457.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %35 = ptrtoint ptr %add.ptr.i457.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i457.i, align 4
  %or.i458.i = or i32 %36, 2
  store i32 %or.i458.i, ptr %add.ptr.i457.i, align 4
  %req_fec_info.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 4
  %37 = ptrtoint ptr %req_fec_info.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %req_fec_info.i, align 2
  %conv.i.i = zext i8 %38 to i32
  %and8.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  %39 = and i32 %conv.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %39)
  %.not.i.i = icmp eq i32 %39, 12
  %and.i.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %. = select i1 %tobool9.not.i.i, i32 131074, i32 524290
  %spec.select = select i1 %tobool.not.i.i, i32 %., i32 262146
  %.sink = select i1 %.not.i.i, i32 917506, i32 %spec.select
  %or.i65.i.i = or i32 %36, %.sink
  %or.i468.i = or i32 %34, 924162
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i468.i, ptr %add.ptr.i.i, align 4
  %or.i470.i = or i32 %or.i65.i.i, 6656
  %41 = ptrtoint ptr %add.ptr.i457.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i470.i, ptr %add.ptr.i457.i, align 4
  %or.i471.i = or i32 %30, 4160
  %42 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i471.i, ptr %link_modes, align 4
  %arrayidx.i = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 13, i32 2
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i, align 1
  %45 = and i8 %44, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %sw.bb31.i.if.end80.i_crit_edge, label %if.then.i

sw.bb31.i.if.end80.i_crit_edge:                   ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end80.i

if.then.i:                                        ; preds = %sw.bb31.i
  %or.i472.i = or i32 %30, 4192
  %47 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i472.i, ptr %link_modes, align 4
  %requested_speeds.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 12
  %48 = ptrtoint ptr %requested_speeds.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %requested_speeds.i, align 4
  %50 = and i8 %49, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool75.not.i = icmp eq i8 %50, 0
  br i1 %tobool75.not.i, label %if.then.i.if.end80.i_crit_edge, label %if.then76.i

if.then.i.if.end80.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end80.i

if.then76.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %or.i473.i = or i32 %32, 96
  %51 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i473.i, ptr %advertising, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then76.i, %if.then.i.if.end80.i_crit_edge, %sw.bb31.i.if.end80.i_crit_edge
  %requested_speeds81.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 12
  %52 = ptrtoint ptr %requested_speeds81.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %requested_speeds81.i, align 4
  %54 = and i8 %53, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool84.not.i = icmp eq i8 %54, 0
  br i1 %tobool84.not.i, label %if.end80.i.sw.epilog.i_crit_edge, label %if.then85.i

if.end80.i.sw.epilog.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i

if.then85.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #23
  %55 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %advertising, align 4
  %or.i474.i = or i32 %56, 4096
  store i32 %or.i474.i, ptr %advertising, align 4
  br label %sw.epilog.i

sw.bb90.i:                                        ; preds = %if.then.sw.bb90.i_crit_edge, %if.then.sw.bb90.i_crit_edge153, %if.then.sw.bb90.i_crit_edge154, %if.then.sw.bb90.i_crit_edge155, %if.then.sw.bb90.i_crit_edge156
  %57 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %link_modes, align 4
  %add.ptr.i477.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %59 = ptrtoint ptr %add.ptr.i477.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i477.i, align 4
  %or.i480.i = or i32 %60, 98304
  store i32 %or.i480.i, ptr %add.ptr.i477.i, align 4
  %or.i482.i = or i32 %58, 4200
  store i32 %or.i482.i, ptr %link_modes, align 4
  %61 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %advertising, align 4
  %or.i483.i = or i32 %62, 64
  store i32 %or.i483.i, ptr %advertising, align 4
  %requested_speeds112.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 12
  %63 = ptrtoint ptr %requested_speeds112.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %requested_speeds112.i, align 4
  %65 = and i8 %64, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool115.not.i = icmp eq i8 %65, 0
  br i1 %tobool115.not.i, label %sw.bb90.i.if.end120.i_crit_edge, label %if.then116.i

sw.bb90.i.if.end120.i_crit_edge:                  ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end120.i

if.then116.i:                                     ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #23
  %or.i484.i = or i32 %62, 4160
  %66 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i484.i, ptr %advertising, align 4
  %67 = ptrtoint ptr %requested_speeds112.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %.pr.i = load i8, ptr %requested_speeds112.i, align 4
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then116.i, %sw.bb90.i.if.end120.i_crit_edge
  %68 = phi i8 [ %.pr.i, %if.then116.i ], [ %64, %sw.bb90.i.if.end120.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %tobool124.not.i = icmp sgt i8 %68, -1
  br i1 %tobool124.not.i, label %if.end120.i.if.end129.i_crit_edge, label %if.then125.i

if.end120.i.if.end129.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end129.i

if.then125.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i485.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %69 = ptrtoint ptr %add.ptr.i485.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i485.i, align 4
  %or.i486.i = or i32 %70, 65536
  store i32 %or.i486.i, ptr %add.ptr.i485.i, align 4
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then125.i, %if.end120.i.if.end129.i_crit_edge
  %71 = ptrtoint ptr %requested_speeds112.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %requested_speeds112.i, align 4
  %73 = and i8 %72, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool133.not.i = icmp eq i8 %73, 0
  br i1 %tobool133.not.i, label %if.end129.i.if.end138.i_crit_edge, label %if.then134.i

if.end129.i.if.end138.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end138.i

if.then134.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i487.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %74 = ptrtoint ptr %add.ptr.i487.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i487.i, align 4
  %or.i488.i = or i32 %75, 32768
  store i32 %or.i488.i, ptr %add.ptr.i487.i, align 4
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.then134.i, %if.end129.i.if.end138.i_crit_edge
  %76 = ptrtoint ptr %requested_speeds112.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %requested_speeds112.i, align 4
  %78 = and i8 %77, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool142.not.i = icmp eq i8 %78, 0
  br i1 %tobool142.not.i, label %if.end138.i.if.end147.i_crit_edge, label %if.then143.i

if.end138.i.if.end147.i_crit_edge:                ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end147.i

if.then143.i:                                     ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #23
  %79 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %advertising, align 4
  %or.i489.i = or i32 %80, 32
  store i32 %or.i489.i, ptr %advertising, align 4
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.then143.i, %if.end138.i.if.end147.i_crit_edge
  %81 = ptrtoint ptr %requested_speeds112.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %requested_speeds112.i, align 4
  %83 = and i8 %82, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool151.not.i = icmp eq i8 %83, 0
  br i1 %tobool151.not.i, label %if.end147.i.sw.epilog.i_crit_edge, label %if.then152.i

if.end147.i.sw.epilog.i_crit_edge:                ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i

if.then152.i:                                     ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #23
  %84 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %advertising, align 4
  %or.i490.i = or i32 %85, 8
  store i32 %or.i490.i, ptr %advertising, align 4
  br label %sw.epilog.i

sw.bb157.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %86 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %link_modes, align 4
  %or.i492.i = or i32 %87, 96
  store i32 %or.i492.i, ptr %link_modes, align 4
  %88 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %advertising, align 4
  %or.i494.i = or i32 %89, 96
  store i32 %or.i494.i, ptr %advertising, align 4
  br label %sw.epilog.i

sw.bb170.i:                                       ; preds = %if.then.sw.bb170.i_crit_edge, %if.then.sw.bb170.i_crit_edge157
  %90 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %link_modes, align 4
  %or.i496.i = or i32 %91, 4160
  store i32 %or.i496.i, ptr %link_modes, align 4
  %92 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %advertising, align 4
  %or.i498.i = or i32 %93, 4160
  store i32 %or.i498.i, ptr %advertising, align 4
  br label %sw.epilog.i

sw.bb183.i:                                       ; preds = %if.then.sw.bb183.i_crit_edge, %if.then.sw.bb183.i_crit_edge158, %if.then.sw.bb183.i_crit_edge159, %if.then.sw.bb183.i_crit_edge160, %if.then.sw.bb183.i_crit_edge161
  %94 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %link_modes, align 4
  %or.i499.i = or i32 %95, 4096
  store i32 %or.i499.i, ptr %link_modes, align 4
  %requested_speeds187.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 12
  %96 = ptrtoint ptr %requested_speeds187.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %requested_speeds187.i, align 4
  %98 = and i8 %97, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool190.not.i = icmp eq i8 %98, 0
  br i1 %tobool190.not.i, label %sw.bb183.i.if.end195.i_crit_edge, label %if.then191.i

sw.bb183.i.if.end195.i_crit_edge:                 ; preds = %sw.bb183.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end195.i

if.then191.i:                                     ; preds = %sw.bb183.i
  call void @__sanitizer_cov_trace_pc() #23
  %99 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %advertising, align 4
  %or.i500.i = or i32 %100, 4096
  store i32 %or.i500.i, ptr %advertising, align 4
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.then191.i, %sw.bb183.i.if.end195.i_crit_edge
  %req_fec_info196.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 4
  %101 = ptrtoint ptr %req_fec_info196.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %req_fec_info196.i, align 2
  %add.ptr.i.i534.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %103 = ptrtoint ptr %add.ptr.i.i534.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i.i534.i, align 4
  %or.i53.i535.i = or i32 %104, 917504
  store i32 %or.i53.i535.i, ptr %add.ptr.i.i534.i, align 4
  %conv.i536.i = zext i8 %102 to i32
  %and8.i537.i = and i32 %conv.i536.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i537.i)
  %tobool9.not.i538.i = icmp eq i32 %and8.i537.i, 0
  %105 = and i32 %conv.i536.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %105)
  %.not.i539.i = icmp eq i32 %105, 12
  br i1 %.not.i539.i, label %if.then.i542.i, label %if.else.i546.i

if.then.i542.i:                                   ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i54.i540.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %106 = ptrtoint ptr %add.ptr.i54.i540.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr.i54.i540.i, align 4
  %or.i59.i541.i = or i32 %107, 917504
  store i32 %or.i59.i541.i, ptr %add.ptr.i54.i540.i, align 4
  br label %sw.epilog.i

if.else.i546.i:                                   ; preds = %if.end195.i
  %and.i543.i = and i32 %conv.i536.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i543.i)
  %tobool.not.i544.i = icmp eq i32 %and.i543.i, 0
  %add.ptr.i64.i545.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %108 = ptrtoint ptr %add.ptr.i64.i545.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr.i64.i545.i, align 4
  br i1 %tobool.not.i544.i, label %if.else25.i549.i, label %if.then21.i548.i

if.then21.i548.i:                                 ; preds = %if.else.i546.i
  call void @__sanitizer_cov_trace_pc() #23
  %or.i61.i547.i = or i32 %109, 262144
  %110 = ptrtoint ptr %add.ptr.i64.i545.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or.i61.i547.i, ptr %add.ptr.i64.i545.i, align 4
  br label %sw.epilog.i

if.else25.i549.i:                                 ; preds = %if.else.i546.i
  br i1 %tobool9.not.i538.i, label %if.else33.i553.i, label %if.then29.i551.i

if.then29.i551.i:                                 ; preds = %if.else25.i549.i
  call void @__sanitizer_cov_trace_pc() #23
  %or.i63.i550.i = or i32 %109, 524288
  %111 = ptrtoint ptr %add.ptr.i64.i545.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or.i63.i550.i, ptr %add.ptr.i64.i545.i, align 4
  br label %sw.epilog.i

if.else33.i553.i:                                 ; preds = %if.else25.i549.i
  call void @__sanitizer_cov_trace_pc() #23
  %or.i65.i552.i = or i32 %109, 131072
  %112 = ptrtoint ptr %add.ptr.i64.i545.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or.i65.i552.i, ptr %add.ptr.i64.i545.i, align 4
  br label %sw.epilog.i

sw.bb197.i:                                       ; preds = %if.then
  %113 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %link_modes, align 4
  %or.i502.i = or i32 %114, 96
  store i32 %or.i502.i, ptr %link_modes, align 4
  %requested_speeds204.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 12
  %115 = ptrtoint ptr %requested_speeds204.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %requested_speeds204.i, align 4
  %117 = and i8 %116, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool207.not.i = icmp eq i8 %117, 0
  br i1 %tobool207.not.i, label %sw.bb197.i.if.end212.i_crit_edge, label %if.then208.i

sw.bb197.i.if.end212.i_crit_edge:                 ; preds = %sw.bb197.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end212.i

if.then208.i:                                     ; preds = %sw.bb197.i
  call void @__sanitizer_cov_trace_pc() #23
  %118 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %advertising, align 4
  %or.i503.i = or i32 %119, 32
  store i32 %or.i503.i, ptr %advertising, align 4
  br label %if.end212.i

if.end212.i:                                      ; preds = %if.then208.i, %sw.bb197.i.if.end212.i_crit_edge
  %hw_features.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 53
  %120 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %hw_features.i, align 4
  %and213.i = and i32 %121, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213.i)
  %tobool214.not.i = icmp eq i32 %and213.i, 0
  br i1 %tobool214.not.i, label %if.end212.i.sw.epilog.i_crit_edge, label %if.then215.i

if.end212.i.sw.epilog.i_crit_edge:                ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i

if.then215.i:                                     ; preds = %if.end212.i
  %or.i504.i = or i32 %114, 104
  %122 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or.i504.i, ptr %link_modes, align 4
  %123 = ptrtoint ptr %requested_speeds204.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %requested_speeds204.i, align 4
  %125 = and i8 %124, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool222.not.i = icmp eq i8 %125, 0
  br i1 %tobool222.not.i, label %if.then215.i.sw.epilog.i_crit_edge, label %if.then223.i

if.then215.i.sw.epilog.i_crit_edge:               ; preds = %if.then215.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i

if.then223.i:                                     ; preds = %if.then215.i
  call void @__sanitizer_cov_trace_pc() #23
  %126 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %advertising, align 4
  %or.i505.i = or i32 %127, 8
  store i32 %or.i505.i, ptr %advertising, align 4
  br label %sw.epilog.i

sw.bb229.i:                                       ; preds = %if.then.sw.bb229.i_crit_edge, %if.then.sw.bb229.i_crit_edge162, %if.then.sw.bb229.i_crit_edge163, %if.then.sw.bb229.i_crit_edge164, %if.then.sw.bb229.i_crit_edge165, %if.then.sw.bb229.i_crit_edge166
  %128 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %link_modes, align 4
  %add.ptr.i507.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %130 = ptrtoint ptr %add.ptr.i507.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr.i507.i, align 4
  %or.i508.i = or i32 %131, 1
  store i32 %or.i508.i, ptr %add.ptr.i507.i, align 4
  %or.i513.i = or i32 %129, 13500480
  store i32 %or.i513.i, ptr %link_modes, align 4
  %132 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %advertising, align 4
  %or.i514.i = or i32 %133, 8388608
  store i32 %or.i514.i, ptr %advertising, align 4
  %add.ptr.i515.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %134 = ptrtoint ptr %add.ptr.i515.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %add.ptr.i515.i, align 4
  %or.i516.i = or i32 %135, 1
  store i32 %or.i516.i, ptr %add.ptr.i515.i, align 4
  %req_fec_info257.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 4
  %136 = ptrtoint ptr %req_fec_info257.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %req_fec_info257.i, align 2
  %or.i53.i556.i = or i32 %131, 917505
  store i32 %or.i53.i556.i, ptr %add.ptr.i507.i, align 4
  %conv.i557.i = zext i8 %137 to i32
  %and8.i558.i = and i32 %conv.i557.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i558.i)
  %tobool9.not.i559.i = icmp eq i32 %and8.i558.i, 0
  %138 = and i32 %conv.i557.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %138)
  %.not.i560.i = icmp eq i32 %138, 12
  %and.i564.i = and i32 %conv.i557.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i564.i)
  %tobool.not.i565.i = icmp eq i32 %and.i564.i, 0
  %.137 = select i1 %tobool9.not.i559.i, i32 131073, i32 524289
  %spec.select142 = select i1 %tobool.not.i565.i, i32 %.137, i32 262145
  %.sink135 = select i1 %.not.i560.i, i32 917505, i32 %spec.select142
  %or.i65.i573.i = or i32 %135, %.sink135
  %139 = ptrtoint ptr %add.ptr.i515.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %or.i65.i573.i, ptr %add.ptr.i515.i, align 4
  %or.i521.i = or i32 %133, 13500480
  %140 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %or.i521.i, ptr %advertising, align 4
  br label %sw.epilog.i

sw.bb273.i:                                       ; preds = %if.then
  %141 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %link_modes, align 4
  %143 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %advertising, align 4
  %or.i524.i = or i32 %142, -2147483584
  store i32 %or.i524.i, ptr %link_modes, align 4
  %or.i525.i = or i32 %144, -2147483584
  store i32 %or.i525.i, ptr %advertising, align 4
  %req_fec_info286.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 4
  %145 = ptrtoint ptr %req_fec_info286.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %req_fec_info286.i, align 2
  %add.ptr.i.i576.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %147 = ptrtoint ptr %add.ptr.i.i576.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %add.ptr.i.i576.i, align 4
  %or.i53.i577.i = or i32 %148, 917504
  store i32 %or.i53.i577.i, ptr %add.ptr.i.i576.i, align 4
  %conv.i578.i = zext i8 %146 to i32
  %and8.i579.i = and i32 %conv.i578.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i579.i)
  %tobool9.not.i580.i = icmp eq i32 %and8.i579.i, 0
  %149 = and i32 %conv.i578.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %149)
  %.not.i581.i = icmp eq i32 %149, 12
  br i1 %.not.i581.i, label %if.then.i584.i, label %if.else.i588.i

if.then.i584.i:                                   ; preds = %sw.bb273.i
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i54.i582.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %150 = ptrtoint ptr %add.ptr.i54.i582.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %add.ptr.i54.i582.i, align 4
  %or.i59.i583.i = or i32 %151, 917504
  store i32 %or.i59.i583.i, ptr %add.ptr.i54.i582.i, align 4
  br label %sw.epilog.i

if.else.i588.i:                                   ; preds = %sw.bb273.i
  %and.i585.i = and i32 %conv.i578.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i585.i)
  %tobool.not.i586.i = icmp eq i32 %and.i585.i, 0
  %add.ptr.i64.i587.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %152 = ptrtoint ptr %add.ptr.i64.i587.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %add.ptr.i64.i587.i, align 4
  br i1 %tobool.not.i586.i, label %if.else25.i591.i, label %if.then21.i590.i

if.then21.i590.i:                                 ; preds = %if.else.i588.i
  call void @__sanitizer_cov_trace_pc() #23
  %or.i61.i589.i = or i32 %153, 262144
  %154 = ptrtoint ptr %add.ptr.i64.i587.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %or.i61.i589.i, ptr %add.ptr.i64.i587.i, align 4
  br label %sw.epilog.i

if.else25.i591.i:                                 ; preds = %if.else.i588.i
  br i1 %tobool9.not.i580.i, label %if.else33.i595.i, label %if.then29.i593.i

if.then29.i593.i:                                 ; preds = %if.else25.i591.i
  call void @__sanitizer_cov_trace_pc() #23
  %or.i63.i592.i = or i32 %153, 524288
  %155 = ptrtoint ptr %add.ptr.i64.i587.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or.i63.i592.i, ptr %add.ptr.i64.i587.i, align 4
  br label %sw.epilog.i

if.else33.i595.i:                                 ; preds = %if.else25.i591.i
  call void @__sanitizer_cov_trace_pc() #23
  %or.i65.i594.i = or i32 %153, 131072
  %156 = ptrtoint ptr %add.ptr.i64.i587.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or.i65.i594.i, ptr %add.ptr.i64.i587.i, align 4
  br label %sw.epilog.i

sw.bb287.i:                                       ; preds = %if.then.sw.bb287.i_crit_edge, %if.then.sw.bb287.i_crit_edge167
  %157 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %link_modes, align 4
  %159 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %advertising, align 4
  %or.i528.i = or i32 %158, -2147483584
  store i32 %or.i528.i, ptr %link_modes, align 4
  %or.i529.i = or i32 %160, -2147483584
  store i32 %or.i529.i, ptr %advertising, align 4
  %req_fec_info300.i = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 4
  %161 = ptrtoint ptr %req_fec_info300.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %req_fec_info300.i, align 2
  %add.ptr.i.i597.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %163 = ptrtoint ptr %add.ptr.i.i597.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr.i.i597.i, align 4
  %conv.i599.i = zext i8 %162 to i32
  %and8.i600.i = and i32 %conv.i599.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i600.i)
  %tobool9.not.i601.i = icmp eq i32 %and8.i600.i, 0
  %165 = and i32 %conv.i599.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %165)
  %.not.i602.i = icmp eq i32 %165, 12
  br i1 %.not.i602.i, label %if.then.i605.i, label %if.else.i609.i

if.then.i605.i:                                   ; preds = %sw.bb287.i
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i54.i603.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %166 = ptrtoint ptr %add.ptr.i54.i603.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr.i54.i603.i, align 4
  %or.i59.i604.i = or i32 %167, 917504
  store i32 %or.i59.i604.i, ptr %add.ptr.i54.i603.i, align 4
  br label %i40e_get_settings_link_up_fec.exit617.i

if.else.i609.i:                                   ; preds = %sw.bb287.i
  %and.i606.i = and i32 %conv.i599.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i606.i)
  %tobool.not.i607.i = icmp eq i32 %and.i606.i, 0
  %add.ptr.i64.i608.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %168 = ptrtoint ptr %add.ptr.i64.i608.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %add.ptr.i64.i608.i, align 4
  br i1 %tobool.not.i607.i, label %if.else25.i612.i, label %if.then21.i611.i

if.then21.i611.i:                                 ; preds = %if.else.i609.i
  call void @__sanitizer_cov_trace_pc() #23
  %or.i61.i610.i = or i32 %169, 262144
  %170 = ptrtoint ptr %add.ptr.i64.i608.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or.i61.i610.i, ptr %add.ptr.i64.i608.i, align 4
  br label %i40e_get_settings_link_up_fec.exit617.i

if.else25.i612.i:                                 ; preds = %if.else.i609.i
  br i1 %tobool9.not.i601.i, label %if.else33.i616.i, label %if.then29.i614.i

if.then29.i614.i:                                 ; preds = %if.else25.i612.i
  call void @__sanitizer_cov_trace_pc() #23
  %or.i63.i613.i = or i32 %169, 524288
  %171 = ptrtoint ptr %add.ptr.i64.i608.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %or.i63.i613.i, ptr %add.ptr.i64.i608.i, align 4
  br label %i40e_get_settings_link_up_fec.exit617.i

if.else33.i616.i:                                 ; preds = %if.else25.i612.i
  call void @__sanitizer_cov_trace_pc() #23
  %or.i65.i615.i = or i32 %169, 131072
  %172 = ptrtoint ptr %add.ptr.i64.i608.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %or.i65.i615.i, ptr %add.ptr.i64.i608.i, align 4
  br label %i40e_get_settings_link_up_fec.exit617.i

i40e_get_settings_link_up_fec.exit617.i:          ; preds = %if.else33.i616.i, %if.then29.i614.i, %if.then21.i611.i, %if.then.i605.i
  %or.i531.i = or i32 %164, 918528
  %173 = ptrtoint ptr %add.ptr.i.i597.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %or.i531.i, ptr %add.ptr.i.i597.i, align 4
  %add.ptr.i532.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %174 = ptrtoint ptr %add.ptr.i532.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %add.ptr.i532.i, align 4
  %or.i533.i = or i32 %175, 1024
  store i32 %or.i533.i, ptr %add.ptr.i532.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.143, i32 noundef %11) #24
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %i40e_get_settings_link_up_fec.exit617.i, %if.else33.i595.i, %if.then29.i593.i, %if.then21.i590.i, %if.then.i584.i, %sw.bb229.i, %if.then223.i, %if.then215.i.sw.epilog.i_crit_edge, %if.end212.i.sw.epilog.i_crit_edge, %if.else33.i553.i, %if.then29.i551.i, %if.then21.i548.i, %if.then.i542.i, %sw.bb170.i, %sw.bb157.i, %if.then152.i, %if.end147.i.sw.epilog.i_crit_edge, %if.then85.i, %if.end80.i.sw.epilog.i_crit_edge, %sw.bb24.i, %sw.bb17.i, %sw.bb10.i, %sw.bb.i
  %176 = call ptr @memset(ptr %cap_ksettings.i, i32 0, i32 88)
  call fastcc void @i40e_phy_type_to_ethtool(ptr noundef %3, ptr noundef nonnull %cap_ksettings.i) #21
  call void @ethtool_intersect_link_masks(ptr noundef %ks, ptr noundef nonnull %cap_ksettings.i) #21
  %177 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %9, label %sw.default330.i [
    i32 16, label %sw.epilog.i.i40e_get_settings_link_up.exit_crit_edge
    i32 64, label %sw.bb309.i
    i32 32, label %sw.bb312.i
    i32 8, label %sw.bb315.i
    i32 128, label %sw.bb318.i
    i32 1, label %sw.bb321.i
    i32 4, label %sw.bb324.i
    i32 2, label %sw.bb327.i
  ]

sw.epilog.i.i40e_get_settings_link_up.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_settings_link_up.exit

sw.bb309.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_settings_link_up.exit

sw.bb312.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_settings_link_up.exit

sw.bb315.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_settings_link_up.exit

sw.bb318.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_settings_link_up.exit

sw.bb321.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_settings_link_up.exit

sw.bb324.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_settings_link_up.exit

sw.bb327.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_settings_link_up.exit

sw.default330.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %i40e_get_settings_link_up.exit

i40e_get_settings_link_up.exit:                   ; preds = %sw.default330.i, %sw.bb327.i, %sw.bb324.i, %sw.bb321.i, %sw.bb318.i, %sw.bb315.i, %sw.bb312.i, %sw.bb309.i, %sw.epilog.i.i40e_get_settings_link_up.exit_crit_edge
  %.sink.i = phi i32 [ -1, %sw.default330.i ], [ 100, %sw.bb327.i ], [ 1000, %sw.bb324.i ], [ 2500, %sw.bb321.i ], [ 5000, %sw.bb318.i ], [ 10000, %sw.bb315.i ], [ 20000, %sw.bb312.i ], [ 25000, %sw.bb309.i ], [ 40000, %sw.epilog.i.i40e_get_settings_link_up.exit_crit_edge ]
  %speed332.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %178 = ptrtoint ptr %speed332.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %.sink.i, ptr %speed332.i, align 4
  %duplex.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 2
  %179 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 1, ptr %duplex.i, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cap_ksettings.i) #21
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call fastcc void @i40e_phy_type_to_ethtool(ptr noundef %3, ptr noundef %ks) #21
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %180 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 -1, ptr %speed.i, align 4
  %duplex.i134 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 2
  %181 = ptrtoint ptr %duplex.i134 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 -1, ptr %duplex.i134, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %i40e_get_settings_link_up.exit
  %an_info = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 3
  %182 = ptrtoint ptr %an_info to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %an_info, align 1
  %184 = and i8 %183, 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 5
  %185 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %autoneg, align 1
  %media_type = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 3
  %186 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %media_type, align 4
  %switch.tableidx = add i32 %187, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %188 = icmp ult i32 %switch.tableidx, 5
  br i1 %188, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.i40e_get_link_ksettings, i32 0, i32 %switch.tableidx
  %189 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %189)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep143 = getelementptr inbounds [5 x i8], ptr @switch.table.i40e_get_link_ksettings.153, i32 0, i32 %switch.tableidx
  %190 = ptrtoint ptr %switch.gep143 to i32
  call void @__asan_load1_noabort(i32 %190)
  %switch.load144 = load i8, ptr %switch.gep143, align 1
  %191 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %link_modes, align 4
  %or.i125 = or i32 %192, %switch.load
  store i32 %or.i125, ptr %link_modes, align 4
  %193 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %advertising, align 4
  %or.i126 = or i32 %194, %switch.load
  store i32 %or.i126, ptr %advertising, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %.sink136 = phi i8 [ -1, %if.end.sw.epilog_crit_edge ], [ %switch.load144, %switch.lookup ]
  %port53 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 3
  %195 = ptrtoint ptr %port53 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %.sink136, ptr %port53, align 1
  %196 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %link_modes, align 4
  %or.i128 = or i32 %197, 24576
  store i32 %or.i128, ptr %link_modes, align 4
  %requested_mode = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 6, i32 1
  %198 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %requested_mode, align 4
  %200 = zext i32 %199 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %199, label %sw.default75 [
    i32 3, label %sw.bb60
    i32 2, label %sw.bb64
    i32 1, label %sw.bb68
  ]

sw.bb60:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  %201 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %advertising, align 4
  %or.i129 = or i32 %202, 8192
  br label %sw.epilog82

sw.bb64:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  %203 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %advertising, align 4
  %or.i130 = or i32 %204, 16384
  br label %sw.epilog82

sw.bb68:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  %205 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %advertising, align 4
  %or.i132 = or i32 %206, 24576
  br label %sw.epilog82

sw.default75:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  %207 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %advertising, align 4
  %and.i133 = and i32 %208, -24577
  br label %sw.epilog82

sw.epilog82:                                      ; preds = %sw.default75, %sw.bb68, %sw.bb64, %sw.bb60
  %and.i133.sink = phi i32 [ %and.i133, %sw.default75 ], [ %or.i132, %sw.bb68 ], [ %or.i130, %sw.bb64 ], [ %or.i129, %sw.bb60 ]
  %209 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %and.i133.sink, ptr %advertising, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_link_ksettings(ptr noundef %netdev, ptr noundef %ks) #4 align 64 {
entry:
  %abilities = alloca %struct.i40e_aq_get_phy_abilities_resp, align 4
  %safe_ks = alloca %struct.ethtool_link_ksettings, align 4
  %copy_ks = alloca %struct.ethtool_link_ksettings, align 4
  %config = alloca %struct.i40e_aq_set_phy_config, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %abilities) #21
  %0 = call ptr @memset(ptr %abilities, i32 255, i32 536)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %safe_ks) #21
  %1 = call ptr @memset(ptr %safe_ks, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %copy_ks) #21
  %2 = call ptr @memset(ptr %copy_ks, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %config) #21
  %3 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 1
  %4 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 2
  %5 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 3
  %6 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 4
  %7 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 5
  %8 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 6
  %9 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 7
  %10 = call ptr @memset(ptr %config, i32 255, i32 16)
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %12, i32 0, i32 57
  %13 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %back, align 8
  %hw3 = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 1
  %partition_id = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 1, i32 19
  %15 = ptrtoint ptr %partition_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %partition_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp.not = icmp eq i16 %16, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.2) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %vsi5 = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 74
  %19 = ptrtoint ptr %vsi5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vsi5, align 8
  %lan_vsi = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 71
  %21 = ptrtoint ptr %lan_vsi to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %lan_vsi, align 8
  %idxprom = zext i16 %22 to i32
  %arrayidx = getelementptr ptr, ptr %20, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %cmp6.not = icmp eq ptr %12, %24
  br i1 %cmp6.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %media_type = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 1, i32 2, i32 3
  %25 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %media_type, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %26, label %land.lhs.true26 [
    i32 2, label %if.end9.if.end31_crit_edge
    i32 1, label %if.end9.if.end31_crit_edge501
    i32 3, label %if.end9.if.end31_crit_edge502
    i32 5, label %if.end9.if.end31_crit_edge503
  ]

if.end9.if.end31_crit_edge503:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31

if.end9.if.end31_crit_edge502:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31

if.end9.if.end31_crit_edge501:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31

if.end9.if.end31_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31

land.lhs.true26:                                  ; preds = %if.end9
  %link_info28 = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 1, i32 2, i32 0, i32 2
  %28 = ptrtoint ptr %link_info28 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %link_info28, align 8
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %land.lhs.true26.if.end31_crit_edge, label %land.lhs.true26.cleanup_crit_edge

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.lhs.true26.if.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true26.if.end31_crit_edge, %if.end9.if.end31_crit_edge, %if.end9.if.end31_crit_edge501, %if.end9.if.end31_crit_edge502, %if.end9.if.end31_crit_edge503
  %device_id = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 1, i32 7
  %31 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %device_id, align 8
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.193)
  switch i16 %32, label %if.end60 [
    i16 5504, label %if.end31.if.then59_crit_edge
    i16 5505, label %if.end31.if.then59_crit_edge504
    i16 5511, label %if.end31.if.then59_crit_edge505
    i16 5512, label %if.end31.if.then59_crit_edge506
    i16 5514, label %if.end31.if.then59_crit_edge507
    i16 14286, label %if.end31.if.then59_crit_edge508
  ]

if.end31.if.then59_crit_edge508:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then59

if.end31.if.then59_crit_edge507:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then59

if.end31.if.then59_crit_edge506:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then59

if.end31.if.then59_crit_edge505:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then59

if.end31.if.then59_crit_edge504:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then59

if.end31.if.then59_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then59

if.then59:                                        ; preds = %if.end31.if.then59_crit_edge, %if.end31.if.then59_crit_edge504, %if.end31.if.then59_crit_edge505, %if.end31.if.then59_crit_edge506, %if.end31.if.then59_crit_edge507, %if.end31.if.then59_crit_edge508
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.144) #24
  br label %cleanup

if.end60:                                         ; preds = %if.end31
  %34 = call ptr @memcpy(ptr %copy_ks, ptr %ks, i32 88)
  %autoneg61 = getelementptr inbounds %struct.ethtool_link_settings, ptr %copy_ks, i32 0, i32 5
  %35 = ptrtoint ptr %autoneg61 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %autoneg61, align 1
  %37 = getelementptr inbounds i8, ptr %safe_ks, i32 4
  %38 = call ptr @memset(ptr %37, i32 0, i32 84)
  %39 = ptrtoint ptr %copy_ks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %copy_ks, align 4
  %41 = ptrtoint ptr %safe_ks to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %safe_ks, align 4
  %link_mode_masks_nwords = getelementptr inbounds %struct.ethtool_link_settings, ptr %copy_ks, i32 0, i32 9
  %42 = ptrtoint ptr %link_mode_masks_nwords to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %link_mode_masks_nwords, align 1
  %link_mode_masks_nwords67 = getelementptr inbounds %struct.ethtool_link_settings, ptr %safe_ks, i32 0, i32 9
  %44 = ptrtoint ptr %link_mode_masks_nwords67 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %link_mode_masks_nwords67, align 1
  %call68 = call i32 @i40e_get_link_ksettings(ptr noundef %netdev, ptr noundef nonnull %safe_ks)
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %copy_ks, i32 0, i32 1, i32 1
  %link_modes69 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %safe_ks, i32 0, i32 1
  %call.i = call i32 @__bitmap_subset(ptr noundef %advertising, ptr noundef %link_modes69, i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool72.not = icmp eq i32 %call.i, 0
  br i1 %tobool72.not, label %if.end60.cleanup_crit_edge, label %if.end74

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end74:                                         ; preds = %if.end60
  %autoneg76 = getelementptr inbounds %struct.ethtool_link_settings, ptr %safe_ks, i32 0, i32 5
  %45 = ptrtoint ptr %autoneg76 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %autoneg76, align 1
  %47 = ptrtoint ptr %autoneg61 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %autoneg61, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %copy_ks, ptr noundef nonnull dereferenceable(48) %safe_ks, i32 48) #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool82.not = icmp eq i32 %bcmp, 0
  br i1 %tobool82.not, label %while.cond.preheader, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end74
  %state = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 2
  %call86497 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86497)
  %tobool87.not498 = icmp eq i32 %call86497, 0
  br i1 %tobool87.not498, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body:                                       ; preds = %if.end90.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %timeout.0499 = phi i32 [ %dec, %if.end90.while.body_crit_edge ], [ 50, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %timeout.0499, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool88.not = icmp eq i32 %dec, 0
  br i1 %tobool88.not, label %while.body.cleanup_crit_edge, label %if.end90

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end90:                                         ; preds = %while.body
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #21
  %call86 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #21
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end90.while.end_crit_edge, label %if.end90.while.body_crit_edge

if.end90.while.body_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

if.end90.while.end_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.end:                                        ; preds = %if.end90.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %call91 = call i32 @i40e_aq_get_phy_capabilities(ptr noundef %hw3, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %abilities, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %while.end.done_crit_edge

while.end.done_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %done

if.end94:                                         ; preds = %while.end
  %48 = call ptr @memset(ptr %config, i32 0, i32 16)
  %abilities95 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 2
  %49 = ptrtoint ptr %abilities95 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %abilities95, align 1
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp98 = icmp eq i8 %36, 1
  %an_info = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 1, i32 2, i32 0, i32 3
  %52 = ptrtoint ptr %an_info to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %an_info, align 1
  %54 = and i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool105.not = icmp eq i8 %54, 0
  br i1 %cmp98, label %if.then100, label %if.else

if.then100:                                       ; preds = %if.end94
  br i1 %tobool105.not, label %if.then106, label %if.then100.if.end144_crit_edge

if.then100.if.end144_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end144

if.then106:                                       ; preds = %if.then100
  %55 = ptrtoint ptr %link_modes69 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %link_modes69, align 4
  %57 = and i32 %56, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool111.not = icmp eq i32 %57, 0
  br i1 %tobool111.not, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.145) #24
  br label %done

if.end113:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #23
  %58 = or i8 %50, 16
  br label %if.end144.sink.split

if.else:                                          ; preds = %if.end94
  br i1 %tobool105.not, label %if.else.if.end144_crit_edge, label %if.then125

if.else.if.end144_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end144

if.then125:                                       ; preds = %if.else
  %59 = ptrtoint ptr %link_modes69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %link_modes69, align 4
  %61 = and i32 %60, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool130.not = icmp eq i32 %61, 0
  br i1 %tobool130.not, label %if.then125.if.end137_crit_edge, label %land.lhs.true131

if.then125.if.end137_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end137

land.lhs.true131:                                 ; preds = %if.then125
  %62 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp134.not = icmp eq i32 %63, 2
  br i1 %cmp134.not, label %land.lhs.true131.if.end137_crit_edge, label %if.then136

land.lhs.true131.if.end137_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end137

if.then136:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.146) #24
  br label %done

if.end137:                                        ; preds = %land.lhs.true131.if.end137_crit_edge, %if.then125.if.end137_crit_edge
  %64 = and i8 %50, -17
  br label %if.end144.sink.split

if.end144.sink.split:                             ; preds = %if.end137, %if.end113
  %.sink = phi i8 [ %64, %if.end137 ], [ %58, %if.end113 ]
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.sink, ptr %4, align 1
  br label %if.end144

if.end144:                                        ; preds = %if.end144.sink.split, %if.else.if.end144_crit_edge, %if.then100.if.end144_crit_edge
  %autoneg_changed.0.off0 = phi i1 [ false, %if.then100.if.end144_crit_edge ], [ false, %if.else.if.end144_crit_edge ], [ true, %if.end144.sink.split ]
  %advertising146 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %advertising146 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %advertising146, align 4
  %68 = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool149.not = icmp eq i32 %68, 0
  br i1 %tobool149.not, label %if.end144.if.end154_crit_edge, label %if.then150

if.end144.if.end154_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end154

if.then150:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #23
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %3, align 4
  %71 = or i8 %70, 2
  store i8 %71, ptr %3, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then150, %if.end144.if.end154_crit_edge
  %72 = ptrtoint ptr %advertising146 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %advertising146, align 4
  %74 = and i32 %73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool159.not = icmp eq i32 %74, 0
  br i1 %tobool159.not, label %lor.lhs.false160, label %if.end154.if.then172_crit_edge

if.end154.if.then172_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then172

lor.lhs.false160:                                 ; preds = %if.end154
  %arrayidx.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %arrayidx.i, align 4
  %77 = and i32 %76, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool165.not = icmp eq i32 %77, 0
  br i1 %tobool165.not, label %lor.lhs.false166, label %lor.lhs.false160.if.then172_crit_edge

lor.lhs.false160.if.then172_crit_edge:            ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then172

lor.lhs.false166:                                 ; preds = %lor.lhs.false160
  %78 = ptrtoint ptr %advertising146 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %advertising146, align 4
  %80 = and i32 %79, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool171.not = icmp eq i32 %80, 0
  br i1 %tobool171.not, label %lor.lhs.false166.if.end177_crit_edge, label %lor.lhs.false166.if.then172_crit_edge

lor.lhs.false166.if.then172_crit_edge:            ; preds = %lor.lhs.false166
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then172

lor.lhs.false166.if.end177_crit_edge:             ; preds = %lor.lhs.false166
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end177

if.then172:                                       ; preds = %lor.lhs.false166.if.then172_crit_edge, %lor.lhs.false160.if.then172_crit_edge, %if.end154.if.then172_crit_edge
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %3, align 4
  %83 = or i8 %82, 4
  store i8 %83, ptr %3, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.then172, %lor.lhs.false166.if.end177_crit_edge
  %84 = ptrtoint ptr %advertising146 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %advertising146, align 4
  %86 = and i32 %85, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool182.not = icmp eq i32 %86, 0
  br i1 %tobool182.not, label %lor.lhs.false183, label %if.end177.if.then213_crit_edge

if.end177.if.then213_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then213

lor.lhs.false183:                                 ; preds = %if.end177
  %87 = ptrtoint ptr %advertising146 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %advertising146, align 4
  %89 = and i32 %88, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool188.not = icmp eq i32 %89, 0
  br i1 %tobool188.not, label %lor.lhs.false189, label %lor.lhs.false183.if.then213_crit_edge

lor.lhs.false183.if.then213_crit_edge:            ; preds = %lor.lhs.false183
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then213

lor.lhs.false189:                                 ; preds = %lor.lhs.false183
  %90 = ptrtoint ptr %advertising146 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %advertising146, align 4
  %92 = and i32 %91, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool194.not = icmp eq i32 %92, 0
  br i1 %tobool194.not, label %lor.lhs.false195, label %lor.lhs.false189.if.then213_crit_edge

lor.lhs.false189.if.then213_crit_edge:            ; preds = %lor.lhs.false189
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then213

lor.lhs.false195:                                 ; preds = %lor.lhs.false189
  %arrayidx.i463 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %93 = ptrtoint ptr %arrayidx.i463 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %arrayidx.i463, align 4
  %95 = and i32 %94, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool200.not = icmp eq i32 %95, 0
  br i1 %tobool200.not, label %lor.lhs.false201, label %lor.lhs.false195.if.then213_crit_edge

lor.lhs.false195.if.then213_crit_edge:            ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then213

lor.lhs.false201:                                 ; preds = %lor.lhs.false195
  %96 = ptrtoint ptr %arrayidx.i463 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %arrayidx.i463, align 4
  %98 = and i32 %97, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool206.not = icmp eq i32 %98, 0
  br i1 %tobool206.not, label %lor.lhs.false207, label %lor.lhs.false201.if.then213_crit_edge

lor.lhs.false201.if.then213_crit_edge:            ; preds = %lor.lhs.false201
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then213

lor.lhs.false207:                                 ; preds = %lor.lhs.false201
  %99 = ptrtoint ptr %arrayidx.i463 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %arrayidx.i463, align 4
  %101 = and i32 %100, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool212.not = icmp eq i32 %101, 0
  br i1 %tobool212.not, label %lor.lhs.false207.if.end218_crit_edge, label %lor.lhs.false207.if.then213_crit_edge

lor.lhs.false207.if.then213_crit_edge:            ; preds = %lor.lhs.false207
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then213

lor.lhs.false207.if.end218_crit_edge:             ; preds = %lor.lhs.false207
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end218

if.then213:                                       ; preds = %lor.lhs.false207.if.then213_crit_edge, %lor.lhs.false201.if.then213_crit_edge, %lor.lhs.false195.if.then213_crit_edge, %lor.lhs.false189.if.then213_crit_edge, %lor.lhs.false183.if.then213_crit_edge, %if.end177.if.then213_crit_edge
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %3, align 4
  %104 = or i8 %103, 8
  store i8 %104, ptr %3, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then213, %lor.lhs.false207.if.end218_crit_edge
  %arrayidx.i472 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %105 = ptrtoint ptr %arrayidx.i472 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %arrayidx.i472, align 4
  %107 = and i32 %106, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool223.not = icmp eq i32 %107, 0
  br i1 %tobool223.not, label %if.end218.if.end229_crit_edge, label %if.then224

if.end218.if.end229_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end229

if.then224:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #23
  %108 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %3, align 4
  %110 = or i8 %109, 1
  store i8 %110, ptr %3, align 4
  br label %if.end229

if.end229:                                        ; preds = %if.then224, %if.end218.if.end229_crit_edge
  %111 = ptrtoint ptr %arrayidx.i472 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %arrayidx.i472, align 4
  %113 = and i32 %112, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool234.not = icmp eq i32 %113, 0
  br i1 %tobool234.not, label %if.end229.if.end240_crit_edge, label %if.then235

if.end229.if.end240_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end240

if.then235:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #23
  %114 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %3, align 4
  %116 = or i8 %115, -128
  store i8 %116, ptr %3, align 4
  br label %if.end240

if.end240:                                        ; preds = %if.then235, %if.end229.if.end240_crit_edge
  %117 = ptrtoint ptr %advertising146 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %advertising146, align 4
  %119 = and i32 %118, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool245.not = icmp eq i32 %119, 0
  br i1 %tobool245.not, label %if.end240.if.end251_crit_edge, label %if.then246

if.end240.if.end251_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end251

if.then246:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #23
  %120 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %3, align 4
  %122 = or i8 %121, 32
  store i8 %122, ptr %3, align 4
  br label %if.end251

if.end251:                                        ; preds = %if.then246, %if.end240.if.end251_crit_edge
  %123 = ptrtoint ptr %advertising146 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %advertising146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %tobool256.not = icmp sgt i32 %124, -1
  br i1 %tobool256.not, label %lor.lhs.false257, label %if.end251.if.then269_crit_edge

if.end251.if.then269_crit_edge:                   ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then269

lor.lhs.false257:                                 ; preds = %if.end251
  %125 = ptrtoint ptr %arrayidx.i472 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %arrayidx.i472, align 4
  %and1.i482 = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i482)
  %tobool262.not = icmp eq i32 %and1.i482, 0
  br i1 %tobool262.not, label %lor.lhs.false263, label %lor.lhs.false257.if.then269_crit_edge

lor.lhs.false257.if.then269_crit_edge:            ; preds = %lor.lhs.false257
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then269

lor.lhs.false263:                                 ; preds = %lor.lhs.false257
  %127 = ptrtoint ptr %arrayidx.i472 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %arrayidx.i472, align 4
  %129 = and i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool268.not = icmp eq i32 %129, 0
  br i1 %tobool268.not, label %lor.lhs.false263.if.end274_crit_edge, label %lor.lhs.false263.if.then269_crit_edge

lor.lhs.false263.if.then269_crit_edge:            ; preds = %lor.lhs.false263
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then269

lor.lhs.false263.if.end274_crit_edge:             ; preds = %lor.lhs.false263
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end274

if.then269:                                       ; preds = %lor.lhs.false263.if.then269_crit_edge, %lor.lhs.false257.if.then269_crit_edge, %if.end251.if.then269_crit_edge
  %130 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %3, align 4
  %132 = or i8 %131, 64
  store i8 %132, ptr %3, align 4
  br label %if.end274

if.end274:                                        ; preds = %if.then269, %lor.lhs.false263.if.end274_crit_edge
  %133 = ptrtoint ptr %advertising146 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %advertising146, align 4
  %135 = and i32 %134, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool279.not = icmp eq i32 %135, 0
  br i1 %tobool279.not, label %lor.lhs.false280, label %if.end274.if.end303.thread_crit_edge

if.end274.if.end303.thread_crit_edge:             ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end303.thread

lor.lhs.false280:                                 ; preds = %if.end274
  %136 = ptrtoint ptr %advertising146 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %advertising146, align 4
  %138 = and i32 %137, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool285.not = icmp eq i32 %138, 0
  br i1 %tobool285.not, label %lor.lhs.false286, label %lor.lhs.false280.if.end303.thread_crit_edge

lor.lhs.false280.if.end303.thread_crit_edge:      ; preds = %lor.lhs.false280
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end303.thread

lor.lhs.false286:                                 ; preds = %lor.lhs.false280
  %139 = ptrtoint ptr %advertising146 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %advertising146, align 4
  %141 = and i32 %140, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool291.not = icmp eq i32 %141, 0
  br i1 %tobool291.not, label %lor.lhs.false292, label %lor.lhs.false286.if.end303.thread_crit_edge

lor.lhs.false286.if.end303.thread_crit_edge:      ; preds = %lor.lhs.false286
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end303.thread

lor.lhs.false292:                                 ; preds = %lor.lhs.false286
  %142 = ptrtoint ptr %advertising146 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %advertising146, align 4
  %144 = and i32 %143, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool297.not = icmp eq i32 %144, 0
  br i1 %tobool297.not, label %if.end303, label %lor.lhs.false292.if.end303.thread_crit_edge

lor.lhs.false292.if.end303.thread_crit_edge:      ; preds = %lor.lhs.false292
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end303.thread

if.end303.thread:                                 ; preds = %lor.lhs.false292.if.end303.thread_crit_edge, %lor.lhs.false286.if.end303.thread_crit_edge, %lor.lhs.false280.if.end303.thread_crit_edge, %if.end274.if.end303.thread_crit_edge
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %3, align 4
  %147 = or i8 %146, 16
  br label %if.end309.sink.split

if.end303:                                        ; preds = %lor.lhs.false292
  %148 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %148)
  %.pr = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool305.not = icmp eq i8 %.pr, 0
  br i1 %tobool305.not, label %if.then306, label %if.end303.if.end309_crit_edge

if.end303.if.end309_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end309

if.then306:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #23
  %link_speed307 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 1
  %149 = ptrtoint ptr %link_speed307 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %link_speed307, align 4
  br label %if.end309.sink.split

if.end309.sink.split:                             ; preds = %if.then306, %if.end303.thread
  %.sink500 = phi i8 [ %147, %if.end303.thread ], [ %150, %if.then306 ]
  %151 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %.sink500, ptr %3, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.end309.sink.split, %if.end303.if.end309_crit_edge
  br i1 %autoneg_changed.0.off0, label %if.end309.if.then319_crit_edge, label %lor.lhs.false312

if.end309.if.then319_crit_edge:                   ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then319

lor.lhs.false312:                                 ; preds = %if.end309
  %link_speed313 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 1
  %152 = ptrtoint ptr %link_speed313 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %link_speed313, align 4
  %154 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %153, i8 %155)
  %cmp317.not = icmp eq i8 %153, %155
  br i1 %cmp317.not, label %if.else364, label %lor.lhs.false312.if.then319_crit_edge

lor.lhs.false312.if.then319_crit_edge:            ; preds = %lor.lhs.false312
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then319

if.then319:                                       ; preds = %lor.lhs.false312.if.then319_crit_edge, %if.end309.if.then319_crit_edge
  %156 = ptrtoint ptr %abilities to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %abilities, align 4
  %158 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %config, align 4
  %phy_type_ext = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 6
  %159 = ptrtoint ptr %phy_type_ext to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %phy_type_ext, align 1
  %161 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %8, align 1
  %eee_capability = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 3
  %162 = ptrtoint ptr %eee_capability to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %eee_capability, align 2
  %164 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %5, align 2
  %eeer_val = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 4
  %165 = ptrtoint ptr %eeer_val to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %eeer_val, align 4
  %167 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %6, align 4
  %d3_lpan = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 5
  %168 = ptrtoint ptr %d3_lpan to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %d3_lpan, align 4
  %170 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %7, align 4
  %fec_cfg_curr_mod_ext_info = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 7
  %171 = ptrtoint ptr %fec_cfg_curr_mod_ext_info to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %fec_cfg_curr_mod_ext_info, align 2
  %173 = and i8 %172, 31
  %174 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %9, align 2
  %175 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %3, align 4
  %requested_speeds = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 1, i32 2, i32 0, i32 12
  %177 = ptrtoint ptr %requested_speeds to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %requested_speeds, align 4
  %178 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %4, align 1
  %180 = or i8 %179, 32
  store i8 %180, ptr %4, align 1
  %link_info335 = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 1, i32 2, i32 0, i32 2
  %181 = ptrtoint ptr %link_info335 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %link_info335, align 8
  %183 = and i8 %182, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool338.not = icmp eq i8 %183, 0
  br i1 %tobool338.not, label %if.then319.if.end340_crit_edge, label %if.then339

if.then319.if.end340_crit_edge:                   ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end340

if.then339:                                       ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #23
  call void @i40e_print_link_message(ptr noundef %12, i1 noundef zeroext false) #21
  call void @netif_carrier_off(ptr noundef %netdev) #21
  call void @netif_tx_stop_all_queues(ptr noundef %netdev) #21
  br label %if.end340

if.end340:                                        ; preds = %if.then339, %if.then319.if.end340_crit_edge
  %call341 = call i32 @i40e_aq_set_phy_config(ptr noundef %hw3, ptr noundef nonnull %config, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %if.end346, label %if.then343

if.then343:                                       ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #23
  %call344 = call ptr @i40e_stat_str(ptr noundef %hw3, i32 noundef %call341) #21
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 1, i32 23, i32 14
  %184 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %asq_last_status, align 8
  %call345 = call ptr @i40e_aq_str(ptr noundef %hw3, i32 noundef %185) #21
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.93, ptr noundef %call344, ptr noundef %call345) #24
  br label %done

if.end346:                                        ; preds = %if.end340
  %call347 = call i32 @i40e_update_link_info(ptr noundef %hw3) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call347)
  %tobool348.not = icmp eq i32 %call347, 0
  br i1 %tobool348.not, label %if.end346.done_crit_edge, label %do.body350

if.end346.done_crit_edge:                         ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #23
  br label %done

do.body350:                                       ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_set_link_ksettings.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_set_link_ksettings, %if.then355)) #21
          to label %done [label %if.then355], !srcloc !335

if.then355:                                       ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #23
  %call356 = call ptr @i40e_stat_str(ptr noundef %hw3, i32 noundef %call347) #21
  %asq_last_status358 = getelementptr inbounds %struct.i40e_pf, ptr %14, i32 0, i32 1, i32 23, i32 14
  %186 = ptrtoint ptr %asq_last_status358 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %asq_last_status358, align 8
  %call359 = call ptr @i40e_aq_str(ptr noundef %hw3, i32 noundef %187) #21
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @i40e_set_link_ksettings.__UNIQUE_ID_ddebug676, ptr noundef %netdev, ptr noundef nonnull @.str.96, ptr noundef %call356, ptr noundef %call359) #21
  br label %done

if.else364:                                       ; preds = %lor.lhs.false312
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.148) #24
  br label %done

done:                                             ; preds = %if.else364, %if.then355, %do.body350, %if.end346.done_crit_edge, %if.then343, %if.then136, %if.then112, %while.end.done_crit_edge
  %err.0 = phi i32 [ -11, %if.then343 ], [ 0, %if.then355 ], [ 0, %if.end346.done_crit_edge ], [ 0, %if.else364 ], [ -22, %if.then112 ], [ -22, %if.then136 ], [ -11, %while.end.done_crit_edge ], [ 0, %do.body350 ]
  call void @_clear_bit(i32 noundef 1, ptr noundef %state) #21
  br label %cleanup

cleanup:                                          ; preds = %done, %while.body.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.then59, %land.lhs.true26.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -95, %if.then59 ], [ %err.0, %done ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %land.lhs.true26.cleanup_crit_edge ], [ -22, %if.end60.cleanup_crit_edge ], [ -95, %if.end74.cleanup_crit_edge ], [ -16, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %config) #21
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %copy_ks) #21
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %safe_ks) #21
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %abilities) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_get_fec_param(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %fecparam) #4 align 64 {
entry:
  %abilities = alloca %struct.i40e_aq_get_phy_abilities_resp, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %abilities) #21
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %4 = call ptr @memset(ptr %abilities, i32 0, i32 536)
  %call2 = call i32 @i40e_aq_get_phy_capabilities(ptr noundef %hw1, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %abilities, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %done

if.end:                                           ; preds = %entry
  %fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %5 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fec, align 4
  %fec_cfg_curr_mod_ext_info = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 7
  %6 = ptrtoint ptr %fec_cfg_curr_mod_ext_info to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fec_cfg_curr_mod_ext_info, align 2
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.end.if.end21.sink.split_crit_edge

if.end.if.end21.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.sink.split

if.else:                                          ; preds = %if.end
  %and7 = and i32 %conv, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else12, label %if.else.if.end21.sink.split_crit_edge

if.else.if.end21.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.sink.split

if.else12:                                        ; preds = %if.else
  %and14 = and i32 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else12.if.end21_crit_edge, label %if.else12.if.end21.sink.split_crit_edge

if.else12.if.end21.sink.split_crit_edge:          ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.sink.split

if.else12.if.end21_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21

if.end21.sink.split:                              ; preds = %if.else12.if.end21.sink.split_crit_edge, %if.else.if.end21.sink.split_crit_edge, %if.end.if.end21.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.end.if.end21.sink.split_crit_edge ], [ 8, %if.else.if.end21.sink.split_crit_edge ], [ 16, %if.else12.if.end21.sink.split_crit_edge ]
  %8 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %fec, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.else12.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.then24, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  %9 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fec, align 4
  %or26 = or i32 %10, 4
  store i32 %or26, ptr %fec, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %fec_info = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 5
  %11 = ptrtoint ptr %fec_info to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fec_info, align 1
  %conv28 = zext i8 %12 to i32
  %and29 = and i32 %conv28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else32, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #23
  %active_fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 1
  %13 = ptrtoint ptr %active_fec to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16, ptr %active_fec, align 4
  br label %done

if.else32:                                        ; preds = %if.end27
  %and37 = and i32 %conv28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %active_fec42 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 1
  br i1 %tobool38.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #23
  %14 = ptrtoint ptr %active_fec42 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %active_fec42, align 4
  br label %done

if.else41:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #23
  %15 = ptrtoint ptr %active_fec42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %active_fec42, align 4
  br label %done

done:                                             ; preds = %if.else41, %if.then39, %if.then31, %entry.done_crit_edge
  %err.0 = phi i32 [ 0, %if.then31 ], [ 0, %if.then39 ], [ 0, %if.else41 ], [ -11, %entry.done_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %abilities) #21
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_set_fec_param(ptr noundef %netdev, ptr nocapture noundef readonly %fecparam) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %device_id = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_id, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.194)
  switch i16 %5, label %entry.cleanup_crit_edge [
    i16 5515, label %entry.if.end_crit_edge
    i16 5514, label %entry.if.end_crit_edge33
    i16 14286, label %entry.if.end_crit_edge34
  ]

entry.if.end_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

entry.if.end_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge33, %entry.if.end_crit_edge34
  %mac = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp12 = icmp eq i32 %8, 3
  br i1 %cmp12, label %land.lhs.true14, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end16

land.lhs.true14:                                  ; preds = %if.end
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 35
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %flags, align 8
  %and = and i64 %10, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then15, label %land.lhs.true14.if.end16_crit_edge

land.lhs.true14.if.end16_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.149) #24
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true14.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %11 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fec, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %12, label %do.end [
    i32 2, label %if.end16.sw.epilog_crit_edge
    i32 8, label %sw.bb17
    i32 16, label %sw.bb18
    i32 4, label %if.end16.sw.bb19_crit_edge
    i32 1, label %if.end16.sw.bb19_crit_edge35
  ]

if.end16.sw.bb19_crit_edge35:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb19

if.end16.sw.bb19_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb19

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end16.sw.bb19_crit_edge, %if.end16.sw.bb19_crit_edge35
  br label %sw.epilog

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.150, i32 noundef %12) #24
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb18, %sw.bb17, %if.end16.sw.epilog_crit_edge
  %fec_cfg.0 = phi i8 [ 0, %sw.bb19 ], [ 5, %sw.bb18 ], [ 10, %sw.bb17 ], [ 16, %if.end16.sw.epilog_crit_edge ]
  %call21 = tail call fastcc i32 @i40e_set_fec_cfg(ptr noundef %netdev, i8 noundef zeroext %fec_cfg.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call21, %sw.epilog ], [ -95, %if.then15 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_read_nvm_word(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_set_link_restart_an(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i40e_stat_str(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i40e_aq_str(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_nvmupd_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_acquire_nvm(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_read_nvm(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_release_nvm(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__i40e_set_coalesce(ptr noundef %netdev, ptr nocapture noundef %ec, i32 noundef %queue) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %tx_max_coalesced_frames_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 8
  %4 = ptrtoint ptr %tx_max_coalesced_frames_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_max_coalesced_frames_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rx_max_coalesced_frames_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 4
  %6 = ptrtoint ptr %rx_max_coalesced_frames_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_max_coalesced_frames_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %conv = trunc i32 %5 to i16
  %work_limit = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %work_limit to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %work_limit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queue)
  %cmp = icmp slt i32 %queue, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %rx_rings = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_rings, align 8
  %tx_rings = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_rings, align 4
  br label %if.end25

if.else:                                          ; preds = %if.end
  %num_queue_pairs = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 44
  %13 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_queue_pairs, align 2
  %conv8 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %queue)
  %cmp9 = icmp ugt i32 %conv8, %queue
  br i1 %cmp9, label %if.then11, label %do.body

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  %rx_rings12 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %rx_rings12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_rings12, align 8
  %arrayidx13 = getelementptr ptr, ptr %16, i32 %queue
  %tx_rings15 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 21
  %17 = ptrtoint ptr %tx_rings15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_rings15, align 4
  %arrayidx16 = getelementptr ptr, ptr %18, i32 %queue
  br label %if.end25

do.body:                                          ; preds = %if.else
  %msg_enable = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 46
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 8
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body.cleanup_crit_edge, label %if.then20

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %sub = add nsw i32 %conv8, -1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.25, i32 noundef %sub) #24
  br label %cleanup

if.end25:                                         ; preds = %if.then11, %if.then5
  %.pn.in = phi ptr [ %10, %if.then5 ], [ %arrayidx13, %if.then11 ]
  %.pn222.in = phi ptr [ %12, %if.then5 ], [ %arrayidx16, %if.then11 ]
  %21 = ptrtoint ptr %.pn222.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn222 = load ptr, ptr %.pn222.in, align 4
  %cur_tx_itr.0.in = getelementptr inbounds %struct.i40e_ring, ptr %.pn222, i32 0, i32 10
  %22 = ptrtoint ptr %cur_tx_itr.0.in to i32
  call void @__asan_load2_noabort(i32 %22)
  %cur_tx_itr.0 = load i16, ptr %cur_tx_itr.0.in, align 4
  %23 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cur_rx_itr.0.in = getelementptr inbounds %struct.i40e_ring, ptr %.pn, i32 0, i32 10
  %24 = ptrtoint ptr %cur_rx_itr.0.in to i32
  call void @__asan_load2_noabort(i32 %24)
  %cur_rx_itr.0 = load i16, ptr %cur_rx_itr.0.in, align 4
  %25 = and i16 %cur_tx_itr.0, 32767
  %26 = and i16 %cur_rx_itr.0, 32767
  %tx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 20
  %27 = ptrtoint ptr %tx_coalesce_usecs_high to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_coalesce_usecs_high, align 4
  %int_rate_limit = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 26
  %29 = ptrtoint ptr %int_rate_limit to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %int_rate_limit, align 2
  %conv32 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv32)
  %cmp33.not = icmp eq i32 %28, %conv32
  br i1 %cmp33.not, label %if.end44, label %do.body36

do.body36:                                        ; preds = %if.end25
  %msg_enable37 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 46
  %31 = ptrtoint ptr %msg_enable37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable37, align 8
  %and38 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body36.cleanup_crit_edge, label %if.then40

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then40:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.26) #24
  br label %cleanup

if.end44:                                         ; preds = %if.end25
  %rx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 18
  %33 = ptrtoint ptr %rx_coalesce_usecs_high to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_coalesce_usecs_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 236, i32 %34)
  %cmp45 = icmp ugt i32 %34, 236
  br i1 %cmp45, label %do.body48, label %if.end56

do.body48:                                        ; preds = %if.end44
  %msg_enable49 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 46
  %35 = ptrtoint ptr %msg_enable49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable49, align 8
  %and50 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body48.cleanup_crit_edge, label %if.then52

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then52:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.27, i32 noundef 236) #24
  br label %cleanup

if.end56:                                         ; preds = %if.end44
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %37 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_coalesce_usecs, align 4
  %conv57 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv57)
  %cmp58.not = icmp eq i32 %38, %conv57
  br i1 %cmp58.not, label %if.end56.if.end70_crit_edge, label %land.lhs.true

if.end56.if.end70_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end56
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %39 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool60.not = icmp eq i32 %40, 0
  br i1 %tobool60.not, label %land.lhs.true.if.end70_crit_edge, label %do.body62

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end70

do.body62:                                        ; preds = %land.lhs.true
  %msg_enable63 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 46
  %41 = ptrtoint ptr %msg_enable63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable63, align 8
  %and64 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body62.cleanup_crit_edge, label %if.then66

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then66:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.28) #24
  br label %cleanup

if.end70:                                         ; preds = %land.lhs.true.if.end70_crit_edge, %if.end56.if.end70_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8160, i32 %38)
  %cmp72 = icmp ugt i32 %38, 8160
  br i1 %cmp72, label %do.body75, label %if.end83

do.body75:                                        ; preds = %if.end70
  %msg_enable76 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 46
  %43 = ptrtoint ptr %msg_enable76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable76, align 8
  %and77 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body75.cleanup_crit_edge, label %if.then79

do.body75.cleanup_crit_edge:                      ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then79:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.29) #24
  br label %cleanup

if.end83:                                         ; preds = %if.end70
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %45 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_coalesce_usecs, align 4
  %conv84 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv84)
  %cmp85.not = icmp eq i32 %46, %conv84
  br i1 %cmp85.not, label %if.end83.if.end98_crit_edge, label %land.lhs.true87

if.end83.if.end98_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end98

land.lhs.true87:                                  ; preds = %if.end83
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %47 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %use_adaptive_tx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool88.not = icmp eq i32 %48, 0
  br i1 %tobool88.not, label %land.lhs.true87.if.end98_crit_edge, label %do.body90

land.lhs.true87.if.end98_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end98

do.body90:                                        ; preds = %land.lhs.true87
  %msg_enable91 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 46
  %49 = ptrtoint ptr %msg_enable91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable91, align 8
  %and92 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %do.body90.cleanup_crit_edge, label %if.then94

do.body90.cleanup_crit_edge:                      ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then94:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.30) #24
  br label %cleanup

if.end98:                                         ; preds = %land.lhs.true87.if.end98_crit_edge, %if.end83.if.end98_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8160, i32 %46)
  %cmp100 = icmp ugt i32 %46, 8160
  br i1 %cmp100, label %do.body103, label %if.end111

do.body103:                                       ; preds = %if.end98
  %msg_enable104 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 46
  %51 = ptrtoint ptr %msg_enable104 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_enable104, align 8
  %and105 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %do.body103.cleanup_crit_edge, label %if.then107

do.body103.cleanup_crit_edge:                     ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then107:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.31) #24
  br label %cleanup

if.end111:                                        ; preds = %if.end98
  %use_adaptive_rx_coalesce112 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %53 = ptrtoint ptr %use_adaptive_rx_coalesce112 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %use_adaptive_rx_coalesce112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool113.not = icmp ne i32 %54, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool115.not = icmp eq i16 %26, 0
  %or.cond = select i1 %tobool113.not, i1 %tobool115.not, i1 false
  br i1 %or.cond, label %if.then116, label %if.end111.if.end118_crit_edge

if.end111.if.end118_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end118

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #23
  %55 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %rx_coalesce_usecs, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end111.if.end118_crit_edge
  %use_adaptive_tx_coalesce119 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %56 = ptrtoint ptr %use_adaptive_tx_coalesce119 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %use_adaptive_tx_coalesce119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool120.not = icmp ne i32 %57, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool122.not = icmp eq i16 %25, 0
  %or.cond223 = select i1 %tobool120.not, i1 %tobool122.not, i1 false
  br i1 %or.cond223, label %if.then123, label %if.end118.if.end125_crit_edge

if.end118.if.end125_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end125

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #23
  %58 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %tx_coalesce_usecs, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.end118.if.end125_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %tobool.not.i = icmp ult i32 %34, 4
  %59 = trunc i32 %34 to i16
  %.op = and i16 %59, -260
  %shl = select i1 %tobool.not.i, i16 0, i16 %.op
  %60 = ptrtoint ptr %int_rate_limit to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %shl, ptr %int_rate_limit, align 2
  %conv133 = zext i16 %shl to i32
  %61 = ptrtoint ptr %rx_coalesce_usecs_high to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_coalesce_usecs_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %conv133)
  %cmp135.not = icmp eq i32 %62, %conv133
  br i1 %cmp135.not, label %if.end125.if.end148_crit_edge, label %do.body138

if.end125.if.end148_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end148

do.body138:                                       ; preds = %if.end125
  %msg_enable139 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 46
  %63 = ptrtoint ptr %msg_enable139 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msg_enable139, align 8
  %and140 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body138.if.end148_crit_edge, label %if.then142

do.body138.if.end148_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end148

if.then142:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.32, i32 noundef %conv133) #24
  br label %if.end148

if.end148:                                        ; preds = %if.then142, %do.body138.if.end148_crit_edge, %if.end125.if.end148_crit_edge
  br i1 %cmp, label %for.cond.preheader, label %if.else156

for.cond.preheader:                               ; preds = %if.end148
  %num_queue_pairs152 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 44
  %65 = ptrtoint ptr %num_queue_pairs152 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %num_queue_pairs152, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp154227.not = icmp eq i16 %66, 0
  br i1 %cmp154227.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rx_rings.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 20
  %tx_rings.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0228 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %67 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx_rings.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %68, i32 %i.0228
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 4
  %71 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_rings.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %72, i32 %i.0228
  %73 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx1.i, align 4
  %75 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %back, align 8
  %77 = ptrtoint ptr %int_rate_limit to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %int_rate_limit, align 2
  %79 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_coalesce_usecs, align 4
  %81 = trunc i32 %80 to i16
  %82 = add i16 %81, 1
  %conv3.i = and i16 %82, 8190
  %itr_setting.i = getelementptr inbounds %struct.i40e_ring, ptr %70, i32 0, i32 10
  %83 = ptrtoint ptr %itr_setting.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv3.i, ptr %itr_setting.i, align 4
  %84 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_coalesce_usecs, align 4
  %86 = trunc i32 %85 to i16
  %87 = add i16 %86, 1
  %conv6.i = and i16 %87, 8190
  %itr_setting7.i = getelementptr inbounds %struct.i40e_ring, ptr %74, i32 0, i32 10
  %88 = ptrtoint ptr %itr_setting7.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv6.i, ptr %itr_setting7.i, align 4
  %89 = ptrtoint ptr %use_adaptive_rx_coalesce112 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %use_adaptive_rx_coalesce112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i224 = icmp eq i32 %90, 0
  %91 = ptrtoint ptr %itr_setting.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %itr_setting.i, align 4
  %93 = and i16 %92, 32767
  %masksel.i = select i1 %tobool.not.i224, i16 0, i16 -32768
  %storemerge.i = or i16 %93, %masksel.i
  store i16 %storemerge.i, ptr %itr_setting.i, align 4
  %94 = ptrtoint ptr %use_adaptive_tx_coalesce119 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %use_adaptive_tx_coalesce119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool15.not.i = icmp eq i32 %95, 0
  %96 = ptrtoint ptr %itr_setting7.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %itr_setting7.i, align 4
  %98 = and i16 %97, 32767
  %masksel64.i = select i1 %tobool15.not.i, i16 0, i16 -32768
  %storemerge63.i = or i16 %98, %masksel64.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %78)
  %tobool.not.i.i = icmp ult i16 %78, 4
  %99 = lshr i16 %78, 2
  %conv.i.i = or i16 %99, 64
  %retval.0.i.i = select i1 %tobool.not.i.i, i16 0, i16 %conv.i.i
  %100 = ptrtoint ptr %itr_setting7.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %storemerge63.i, ptr %itr_setting7.i, align 4
  %hw2.i = getelementptr inbounds %struct.i40e_pf, ptr %76, i32 0, i32 1
  %q_vector27.i = getelementptr inbounds %struct.i40e_ring, ptr %70, i32 0, i32 29
  %101 = ptrtoint ptr %q_vector27.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %q_vector27.i, align 4
  %103 = ptrtoint ptr %itr_setting.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %itr_setting.i, align 4
  %105 = and i16 %104, 32767
  %target_itr.i = getelementptr inbounds %struct.i40e_q_vector, ptr %102, i32 0, i32 4, i32 5
  %106 = ptrtoint ptr %target_itr.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %target_itr.i, align 2
  %q_vector32.i = getelementptr inbounds %struct.i40e_ring, ptr %74, i32 0, i32 29
  %107 = ptrtoint ptr %q_vector32.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %q_vector32.i, align 4
  %109 = load i16, ptr %itr_setting7.i, align 4
  %110 = and i16 %109, 32767
  %target_itr37.i = getelementptr inbounds %struct.i40e_q_vector, ptr %108, i32 0, i32 5, i32 5
  %111 = ptrtoint ptr %target_itr37.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %target_itr37.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #21, !srcloc !336
  tail call void @arm_heavy_mb() #21
  %conv38.i = zext i16 %retval.0.i.i to i32
  %112 = tail call i32 @llvm.bswap.i32(i32 %conv38.i) #21
  %113 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hw2.i, align 8
  %reg_idx.i = getelementptr inbounds %struct.i40e_q_vector, ptr %108, i32 0, i32 2
  %115 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %reg_idx.i, align 2
  %conv39.i = zext i16 %116 to i32
  %mul.i = shl nuw nsw i32 %conv39.i, 2
  %add40.i = add nuw nsw i32 %mul.i, 219136
  %add.ptr.i225 = getelementptr i8, ptr %114, i32 %add40.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 %112) #21, !srcloc !324
  %117 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw2.i, align 8
  %add.ptr42.i = getelementptr i8, ptr %118, i32 745772
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #21, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #21, !srcloc !337
  %inc = add nuw nsw i32 %i.0228, 1
  %120 = ptrtoint ptr %num_queue_pairs152 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %num_queue_pairs152, align 2
  %conv153 = zext i16 %121 to i32
  %cmp154 = icmp ult i32 %inc, %conv153
  br i1 %cmp154, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

if.else156:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #23
  tail call fastcc void @i40e_set_itr_per_queue(ptr noundef %1, ptr noundef %ec, i32 noundef %queue)
  br label %cleanup

cleanup:                                          ; preds = %if.else156, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then107, %do.body103.cleanup_crit_edge, %if.then94, %do.body90.cleanup_crit_edge, %if.then79, %do.body75.cleanup_crit_edge, %if.then66, %do.body62.cleanup_crit_edge, %if.then52, %do.body48.cleanup_crit_edge, %if.then40, %do.body36.cleanup_crit_edge, %if.then20, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then20 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then40 ], [ -22, %do.body36.cleanup_crit_edge ], [ -22, %if.then52 ], [ -22, %do.body48.cleanup_crit_edge ], [ -22, %if.then66 ], [ -22, %do.body62.cleanup_crit_edge ], [ -22, %if.then79 ], [ -22, %do.body75.cleanup_crit_edge ], [ -22, %if.then94 ], [ -22, %do.body90.cleanup_crit_edge ], [ -22, %if.then107 ], [ -22, %do.body103.cleanup_crit_edge ], [ 0, %if.else156 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i40e_set_itr_per_queue(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %ec, i32 noundef %queue) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_rings = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 20
  %0 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_rings, align 8
  %arrayidx = getelementptr ptr, ptr %1, i32 %queue
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tx_rings = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 21
  %4 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_rings, align 4
  %arrayidx1 = getelementptr ptr, ptr %5, i32 %queue
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  %8 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back, align 8
  %int_rate_limit = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 26
  %10 = ptrtoint ptr %int_rate_limit to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %int_rate_limit, align 2
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %12 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_coalesce_usecs, align 4
  %14 = trunc i32 %13 to i16
  %15 = add i16 %14, 1
  %conv3 = and i16 %15, 8190
  %itr_setting = getelementptr inbounds %struct.i40e_ring, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %itr_setting to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv3, ptr %itr_setting, align 4
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %17 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_coalesce_usecs, align 4
  %19 = trunc i32 %18 to i16
  %20 = add i16 %19, 1
  %conv6 = and i16 %20, 8190
  %itr_setting7 = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 10
  %21 = ptrtoint ptr %itr_setting7 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv6, ptr %itr_setting7, align 4
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %22 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  %24 = ptrtoint ptr %itr_setting to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %itr_setting, align 4
  %26 = and i16 %25, 32767
  %masksel = select i1 %tobool.not, i16 0, i16 -32768
  %storemerge = or i16 %26, %masksel
  store i16 %storemerge, ptr %itr_setting, align 4
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %27 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %use_adaptive_tx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool15.not = icmp eq i32 %28, 0
  %29 = ptrtoint ptr %itr_setting7 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %itr_setting7, align 4
  %31 = and i16 %30, 32767
  %masksel64 = select i1 %tobool15.not, i16 0, i16 -32768
  %storemerge63 = or i16 %31, %masksel64
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %tobool.not.i = icmp ult i16 %11, 4
  %32 = lshr i16 %11, 2
  %conv.i = or i16 %32, 64
  %retval.0.i = select i1 %tobool.not.i, i16 0, i16 %conv.i
  %33 = ptrtoint ptr %itr_setting7 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %storemerge63, ptr %itr_setting7, align 4
  %hw2 = getelementptr inbounds %struct.i40e_pf, ptr %9, i32 0, i32 1
  %q_vector27 = getelementptr inbounds %struct.i40e_ring, ptr %3, i32 0, i32 29
  %34 = ptrtoint ptr %q_vector27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %q_vector27, align 4
  %36 = ptrtoint ptr %itr_setting to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %itr_setting, align 4
  %38 = and i16 %37, 32767
  %target_itr = getelementptr inbounds %struct.i40e_q_vector, ptr %35, i32 0, i32 4, i32 5
  %39 = ptrtoint ptr %target_itr to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %target_itr, align 2
  %q_vector32 = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 29
  %40 = ptrtoint ptr %q_vector32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %q_vector32, align 4
  %42 = load i16, ptr %itr_setting7, align 4
  %43 = and i16 %42, 32767
  %target_itr37 = getelementptr inbounds %struct.i40e_q_vector, ptr %41, i32 0, i32 5, i32 5
  %44 = ptrtoint ptr %target_itr37 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %target_itr37, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #21, !srcloc !336
  tail call void @arm_heavy_mb() #21
  %conv38 = zext i16 %retval.0.i to i32
  %45 = tail call i32 @llvm.bswap.i32(i32 %conv38)
  %46 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw2, align 8
  %reg_idx = getelementptr inbounds %struct.i40e_q_vector, ptr %41, i32 0, i32 2
  %48 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %reg_idx, align 2
  %conv39 = zext i16 %49 to i32
  %mul = shl nuw nsw i32 %conv39, 2
  %add40 = add nuw nsw i32 %mul, 219136
  %add.ptr = getelementptr i8, ptr %47, i32 %add40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %45) #21, !srcloc !324
  %50 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw2, align 8
  %add.ptr42 = getelementptr i8, ptr %51, i32 745772
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #21, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #21, !srcloc !337
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @i40e_xsk_any_rx_ring_enabled(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_setup_tx_descriptors(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_free_tx_resources(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_setup_rx_descriptors(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_alloc_rx_bi(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @i40e_alloc_rx_buffers(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_free_rx_resources(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_down(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_up(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_print_link_message(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_set_fc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_close(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_do_reset(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_open(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_get_link_status(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_diag_eeprom_test(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_diag_reg_test(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__i40e_add_stat_strings(ptr nocapture noundef %p, ptr nocapture noundef readonly %stats, i32 noundef %size, ...) unnamed_addr #2 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp4.not = icmp eq i32 %size, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #21
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !320
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr %struct.i40e_stats, ptr %stats, i32 %i.05
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %2, i32 noundef 32, ptr noundef %arrayidx, [1 x i32] %.fca.0.insert)
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr, ptr %p, align 4
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #21
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_led_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_set_phy_debug(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_led_get_phy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_led_set(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_led_set_phy(ptr noundef, i1 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_update_stats(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i40e_get_vsi_stats_struct(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i40e_add_queue_stats(ptr nocapture noundef %data, ptr noundef %ring) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %syncp3 = getelementptr inbounds %struct.i40e_ring, ptr %ring, i32 0, i32 24
  %tobool.not = icmp eq ptr %ring, null
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring, i32 0, i32 24, i32 0, i32 1
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %entry.cond.false_crit_edge

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %entry.cond.false_crit_edge
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !338
  %and.i.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @trace_hardirqs_off() #21
  %1 = tail call ptr @llvm.returnaddress(i32 0) #21
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #21
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %2) #21
  tail call void @trace_hardirqs_on() #21
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #23
  %3 = tail call ptr @llvm.returnaddress(i32 0) #21
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #21
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %4) #21
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !339
  %and.i.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !340

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @warn_bogus_irq_restore() #21
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #21, !srcloc !341
  %6 = ptrtoint ptr %syncp3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp3, align 4
  %and18.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !342
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #21, !srcloc !343
  %8 = ptrtoint ptr %syncp3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp3, align 4
  %and.i.i = and i32 %9, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %9, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !344
  br label %cond.end

cond.end:                                         ; preds = %u64_stats_fetch_begin_irq.exit, %entry.cond.end_crit_edge
  %cond = phi i32 [ %.lcssa.i.i, %u64_stats_fetch_begin_irq.exit ], [ 0, %entry.cond.end_crit_edge ]
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  br i1 %tobool.not, label %i40e_add_one_ethtool_stat.exit.1.thread, label %land.rhs

i40e_add_one_ethtool_stat.exit.1.thread:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #23
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %11, align 8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %arrayidx.116 = getelementptr i64, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx.116 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %arrayidx.116, align 8
  br label %do.end

land.rhs:                                         ; preds = %cond.end
  %add.ptr.i = getelementptr i8, ptr %ring, i32 64
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.i, align 8
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %11, align 8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %arrayidx.1 = getelementptr i64, ptr %20, i32 1
  %add.ptr.i.1 = getelementptr i8, ptr %ring, i32 72
  %21 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.i.1, align 8
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx.1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !345
  %24 = ptrtoint ptr %syncp3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %syncp3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %cond)
  %cmp.i.i.i.i.not = icmp eq i32 %25, %cond
  br i1 %cmp.i.i.i.i.not, label %land.rhs.do.end_crit_edge, label %land.rhs.cond.false_crit_edge

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.false

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %i40e_add_one_ethtool_stat.exit.1.thread
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i64, ptr %27, i32 2
  store ptr %add.ptr, ptr %data, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_update_veb_stats(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_set_switch_config(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_set_fec_cfg(ptr noundef %netdev, i8 noundef zeroext %fec_cfg) unnamed_addr #4 align 64 {
entry:
  %abilities = alloca %struct.i40e_aq_get_phy_abilities_resp, align 4
  %flags = alloca i32, align 4
  %config = alloca %struct.i40e_aq_set_phy_config, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %abilities) #21
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #21
  %flags2 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags2, align 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %flags, align 4
  call void @i40e_set_fec_in_flags(i8 noundef zeroext %fec_cfg, ptr noundef nonnull %flags) #21
  %7 = call ptr @memset(ptr %abilities, i32 0, i32 536)
  %call3 = call i32 @i40e_aq_get_phy_capabilities(ptr noundef %hw1, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %abilities, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup46_crit_edge

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup46

if.end:                                           ; preds = %entry
  %fec_cfg_curr_mod_ext_info = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 7
  %8 = ptrtoint ptr %fec_cfg_curr_mod_ext_info to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fec_cfg_curr_mod_ext_info, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %fec_cfg)
  %cmp.not = icmp eq i8 %9, %fec_cfg
  br i1 %cmp.not, label %if.end.cleanup46_crit_edge, label %if.then6

if.end.cleanup46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup46

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %config) #21
  %10 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 1
  %11 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 2
  %12 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 3
  %13 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 4
  %14 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 5
  %15 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 6
  %16 = getelementptr inbounds %struct.i40e_aq_set_phy_config, ptr %config, i32 0, i32 7
  %17 = getelementptr inbounds i8, ptr %config, i32 12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %19 = ptrtoint ptr %abilities to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %abilities, align 4
  %21 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %config, align 4
  %abilities8 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 2
  %22 = ptrtoint ptr %abilities8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %abilities8, align 1
  %24 = or i8 %23, 32
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %11, align 1
  %phy_type_ext = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 6
  %26 = ptrtoint ptr %phy_type_ext to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %phy_type_ext, align 1
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %15, align 1
  %link_speed = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 1
  %29 = ptrtoint ptr %link_speed to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %link_speed, align 4
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %10, align 4
  %eee_capability = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 3
  %32 = ptrtoint ptr %eee_capability to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %eee_capability, align 2
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %12, align 2
  %eeer_val = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 4
  %35 = ptrtoint ptr %eeer_val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %eeer_val, align 4
  %37 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %13, align 4
  %d3_lpan = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 5
  %38 = ptrtoint ptr %d3_lpan to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %d3_lpan, align 4
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %14, align 4
  %41 = and i8 %fec_cfg, 31
  %42 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %16, align 2
  %call17 = call i32 @i40e_aq_set_phy_config(ptr noundef %hw1, ptr noundef nonnull %config, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #23
  %call20 = call ptr @i40e_stat_str(ptr noundef %hw1, i32 noundef %call17) #21
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %43 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %asq_last_status, align 8
  %call21 = call ptr @i40e_aq_str(ptr noundef %hw1, i32 noundef %44) #21
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.93, ptr noundef %call20, ptr noundef %call21) #24
  br label %cleanup

if.end22:                                         ; preds = %if.then6
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %47 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %flags2, align 8
  %call24 = call i32 @i40e_update_link_info(ptr noundef %hw1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %do.body28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.body28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_set_fec_cfg.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_set_fec_cfg, %if.then34)) #21
          to label %cleanup [label %if.then34], !srcloc !335

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #23
  %call35 = call ptr @i40e_stat_str(ptr noundef %hw1, i32 noundef %call24) #21
  %asq_last_status37 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %48 = ptrtoint ptr %asq_last_status37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %asq_last_status37, align 8
  %call38 = call ptr @i40e_aq_str(ptr noundef %hw1, i32 noundef %49) #21
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @i40e_set_fec_cfg.__UNIQUE_ID_ddebug678, ptr noundef %netdev, ptr noundef nonnull @.str.96, ptr noundef %call35, ptr noundef %call38) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body28, %if.end22.cleanup_crit_edge, %if.then19
  %err.0 = phi i32 [ -11, %if.then19 ], [ 0, %if.then34 ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %do.body28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %config) #21
  br label %cleanup46

cleanup46:                                        ; preds = %cleanup, %if.end.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %err.1 = phi i32 [ %err.0, %cleanup ], [ 0, %if.end.cleanup46_crit_edge ], [ -11, %entry.cleanup46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #21
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %abilities) #21
  ret i32 %err.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_dcb_sw_default_config(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_cfg_lldp_mib_change_event(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_stop_lldp(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_start_lldp(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_set_fec_in_flags(i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_get_phy_capabilities(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_set_phy_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_update_link_info(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_read_rx_ctl(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i40e_find_vsi_from_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_write_rx_ctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_add_del_fdir(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_add_flex_offset(ptr noundef %flex_pit_list, i16 noundef zeroext %src_offset, i8 noundef zeroext %pit_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #26
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_offset2 = getelementptr inbounds %struct.i40e_flex_pit, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %src_offset2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %src_offset, ptr %src_offset2, align 8
  %pit_index3 = getelementptr inbounds %struct.i40e_flex_pit, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %pit_index3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %pit_index, ptr %pit_index3, align 2
  br label %for.cond

for.cond:                                         ; preds = %if.end12.for.cond_crit_edge, %if.end
  %entry1.0.in = phi ptr [ %flex_pit_list, %if.end ], [ %entry1.0, %if.end12.for.cond_crit_edge ]
  %3 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, %flex_pit_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %src_offset5 = getelementptr inbounds %struct.i40e_flex_pit, ptr %entry1.0, i32 0, i32 1
  %4 = ptrtoint ptr %src_offset5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %src_offset5, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %src_offset)
  %cmp7 = icmp ugt i16 %5, %src_offset
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %for.body
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %7, ptr noundef %entry1.0) #21
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry1.0, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i, ptr %7, align 4
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %cmp17 = icmp eq i16 %5, %src_offset
  br i1 %cmp17, label %if.then19, label %if.end12.for.cond_crit_edge

if.end12.for.cond_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #23
  %pit_index22 = getelementptr inbounds %struct.i40e_flex_pit, ptr %entry1.0, i32 0, i32 2
  %12 = ptrtoint ptr %pit_index22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pit_index22, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %pit_index)
  %cmp24.not = icmp eq i8 %13, %pit_index
  %spec.select = select i1 %cmp24.not, i32 0, i32 -22
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #21
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %prev.i51 = getelementptr inbounds %struct.list_head, ptr %flex_pit_list, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i51, align 4
  %call.i.i52 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %15, ptr noundef %flex_pit_list) #21
  br i1 %call.i.i52, label %if.end.i.i54, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end.i.i54:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  %16 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %prev.i51, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %flex_pit_list, ptr %call7.i.i, align 8
  %prev3.i.i53 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i53, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i, ptr %15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i54, %for.end.cleanup_crit_edge, %if.then19, %if.end.i.i, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then19 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.i.i54 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__i40e_reprogram_flex_pit(ptr noundef %pf, ptr noundef %flex_pit_list, i32 noundef %flex_pit_start) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flex_pit_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.088 = load ptr, ptr %flex_pit_list, align 4
  %cmp.not89 = icmp eq ptr %entry1.088, %flex_pit_list
  br i1 %cmp.not89, label %entry.for.end35_crit_edge, label %for.cond2.preheader.lr.ph

entry.for.end35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end35

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %hw = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.end.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %entry1.091 = phi ptr [ %entry1.088, %for.cond2.preheader.lr.ph ], [ %entry1.0, %for.end.for.cond2.preheader_crit_edge ]
  %i.090 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc28.pre-phi, %for.end.for.cond2.preheader_crit_edge ]
  %j.084 = add i32 %i.090, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %j.084)
  %cmp385 = icmp slt i32 %j.084, 3
  br i1 %cmp385, label %for.body4.lr.ph, label %for.cond2.preheader.for.end_crit_edge

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %src_offset = getelementptr inbounds %struct.i40e_flex_pit, ptr %entry1.091, i32 0, i32 1
  br label %for.body4

for.body4:                                        ; preds = %if.end.for.body4_crit_edge, %for.body4.lr.ph
  %j.087 = phi i32 [ %j.084, %for.body4.lr.ph ], [ %j.0, %if.end.for.body4_crit_edge ]
  %i.186 = phi i32 [ %i.090, %for.body4.lr.ph ], [ %i.2, %if.end.for.body4_crit_edge ]
  %1 = ptrtoint ptr %src_offset to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %src_offset, align 4
  %3 = trunc i32 %j.087 to i16
  %conv6 = add i16 %2, %3
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %conv6)
  %cmp10 = icmp ugt i16 %conv6, 31
  br i1 %cmp10, label %if.then, label %for.body4.if.end_crit_edge

for.body4.if.end_crit_edge:                       ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #23
  %4 = add i16 %conv6, 29
  %5 = and i16 %4, 31
  %6 = or i16 %5, -992
  %or = zext i16 %6 to i32
  %add7 = add i32 %i.186, %flex_pit_start
  %mul = shl i32 %add7, 5
  %add12 = add i32 %mul, 2445824
  tail call void @i40e_write_rx_ctl(ptr noundef %hw, i32 noundef %add12, i32 noundef %or) #21
  %inc = add i32 %i.186, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4.if.end_crit_edge
  %i.2 = phi i32 [ %inc, %if.then ], [ %i.186, %for.body4.if.end_crit_edge ]
  %j.0 = add i32 %j.087, 1
  %exitcond.not = icmp eq i32 %j.0, 3
  br i1 %exitcond.not, label %for.end.loopexit, label %if.end.for.body4_crit_edge

if.end.for.body4_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body4

for.end.loopexit:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %.pre = add i32 %i.2, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond2.preheader.for.end_crit_edge
  %inc28.pre-phi = phi i32 [ %.pre, %for.end.loopexit ], [ %j.084, %for.cond2.preheader.for.end_crit_edge ]
  %i.1.lcssa = phi i32 [ %i.2, %for.end.loopexit ], [ %i.090, %for.cond2.preheader.for.end_crit_edge ]
  %add15 = add i32 %i.1.lcssa, %flex_pit_start
  %mul16 = shl i32 %add15, 5
  %add17 = add i32 %mul16, 2445824
  %pit_index = getelementptr inbounds %struct.i40e_flex_pit, ptr %entry1.091, i32 0, i32 2
  %7 = ptrtoint ptr %pit_index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pit_index, align 2
  %conv18 = zext i8 %8 to i32
  %add19 = shl nuw nsw i32 %conv18, 10
  %shl20 = add nuw nsw i32 %add19, 51200
  %and21 = and i32 %shl20, 64512
  %src_offset23 = getelementptr inbounds %struct.i40e_flex_pit, ptr %entry1.091, i32 0, i32 1
  %9 = ptrtoint ptr %src_offset23 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %src_offset23, align 4
  %11 = and i16 %10, 31
  %12 = or i16 %11, 32
  %or22 = zext i16 %12 to i32
  %or27 = or i32 %and21, %or22
  tail call void @i40e_write_rx_ctl(ptr noundef %hw, i32 noundef %add17, i32 noundef %or27) #21
  %13 = ptrtoint ptr %entry1.091 to i32
  call void @__asan_load4_noabort(i32 %13)
  %entry1.0 = load ptr, ptr %entry1.091, align 4
  %cmp.not = icmp eq ptr %entry1.0, %flex_pit_list
  br i1 %cmp.not, label %for.end.for.end35_crit_edge, label %for.end.for.cond2.preheader_crit_edge

for.end.for.cond2.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond2.preheader

for.end.for.end35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end35

for.end35:                                        ; preds = %for.end.for.end35_crit_edge, %entry.for.end35_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end35_crit_edge ], [ %inc28.pre-phi, %for.end.for.end35_crit_edge ]
  %14 = ptrtoint ptr %flex_pit_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %flex_pit_list, align 4
  %cmp.i.not = icmp eq ptr %15, %flex_pit_list
  br i1 %cmp.i.not, label %for.end35.if.end45_crit_edge, label %if.then36

for.end35.if.end45_crit_edge:                     ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end45

if.then36:                                        ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #23
  %prev = getelementptr inbounds %struct.list_head, ptr %flex_pit_list, i32 0, i32 1
  %16 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev, align 4
  %src_offset41 = getelementptr inbounds %struct.i40e_flex_pit, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %src_offset41 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %src_offset41, align 4
  %add43 = add i16 %19, 1
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %for.end35.if.end45_crit_edge
  %last_offset.0 = phi i16 [ 0, %for.end35.if.end45_crit_edge ], [ %add43, %if.then36 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0.lcssa)
  %cmp4794 = icmp slt i32 %i.0.lcssa, 3
  br i1 %cmp4794, label %for.body49.lr.ph, label %if.end45.for.end61_crit_edge

if.end45.for.end61_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end61

for.body49.lr.ph:                                 ; preds = %if.end45
  %hw50 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  br label %for.body49

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %for.body49.lr.ph
  %last_offset.196 = phi i16 [ %last_offset.0, %for.body49.lr.ph ], [ %inc60, %for.body49.for.body49_crit_edge ]
  %i.395 = phi i32 [ %i.0.lcssa, %for.body49.lr.ph ], [ %inc59, %for.body49.for.body49_crit_edge ]
  %add51 = add i32 %i.395, %flex_pit_start
  %mul52 = shl i32 %add51, 5
  %add53 = add i32 %mul52, 2445824
  %20 = and i16 %last_offset.196, 31
  %21 = or i16 %20, -992
  %or57 = zext i16 %21 to i32
  tail call void @i40e_write_rx_ctl(ptr noundef %hw50, i32 noundef %add53, i32 noundef %or57) #21
  %inc59 = add i32 %i.395, 1
  %inc60 = add i16 %last_offset.196, 1
  %exitcond98.not = icmp eq i32 %inc59, 3
  br i1 %exitcond98.not, label %for.body49.for.end61_crit_edge, label %for.body49.for.body49_crit_edge

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body49

for.body49.for.end61_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end61

for.end61:                                        ; preds = %for.body49.for.end61_crit_edge, %if.end45.for.end61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_fdir_check_and_reenable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_get_rss(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_fill_rss_lut(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_config_rss(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_reconfig_rss_queues(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_get_phy_register_ext(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @i40e_phy_type_to_ethtool(ptr noundef readonly %pf, ptr noundef %ks) unnamed_addr #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_types3 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 4
  %0 = ptrtoint ptr %phy_types3 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %phy_types3, align 8
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1
  %and = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %2 = call ptr @memset(ptr %link_modes, i32 0, i32 24)
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end25

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link_modes, align 4
  %or.i = or i32 %4, 32
  store i32 %or.i, ptr %link_modes, align 4
  %requested_speeds = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %5 = ptrtoint ptr %requested_speeds to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %requested_speeds, align 4
  %7 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.then.if.end_crit_edge, label %if.then11

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %8 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %advertising, align 4
  %or.i719 = or i32 %9, 32
  store i32 %or.i719, ptr %advertising, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then.if.end_crit_edge
  %hw_features = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 53
  %10 = ptrtoint ptr %hw_features to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_features, align 4
  %and15 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end25_crit_edge, label %if.then17

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end25

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %or.i720 = or i32 %4, 40
  %12 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i720, ptr %link_modes, align 4
  %13 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %advertising, align 4
  %or.i721 = or i32 %14, 8
  store i32 %or.i721, ptr %advertising, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %if.end.if.end25_crit_edge, %entry.if.end25_crit_edge
  %15 = and i64 %1, 4198624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %if.end25.if.end52_crit_edge, label %if.then39

if.end25.if.end52_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end52

if.then39:                                        ; preds = %if.end25
  %17 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %link_modes, align 4
  %or.i722 = or i32 %18, 4096
  store i32 %or.i722, ptr %link_modes, align 4
  %requested_speeds43 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %19 = ptrtoint ptr %requested_speeds43 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %requested_speeds43, align 4
  %21 = and i8 %20, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool46.not = icmp eq i8 %21, 0
  br i1 %tobool46.not, label %if.then39.if.end52_crit_edge, label %if.then47

if.then39.if.end52_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end52

if.then47:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #23
  %22 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %advertising, align 4
  %or.i723 = or i32 %23, 4096
  store i32 %or.i723, ptr %advertising, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.then39.if.end52_crit_edge, %if.end25.if.end52_crit_edge
  %and53 = and i64 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and53)
  %tobool54.not = icmp eq i64 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end68_crit_edge, label %if.then55

if.end52.if.end68_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end68

if.then55:                                        ; preds = %if.end52
  %24 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_modes, align 4
  %or.i724 = or i32 %25, 4096
  store i32 %or.i724, ptr %link_modes, align 4
  %requested_speeds59 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %26 = ptrtoint ptr %requested_speeds59 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %requested_speeds59, align 4
  %28 = and i8 %27, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool62.not = icmp eq i8 %28, 0
  br i1 %tobool62.not, label %if.then55.if.end68_crit_edge, label %if.then63

if.then55.if.end68_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end68

if.then63:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #23
  %29 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %advertising, align 4
  %or.i725 = or i32 %30, 4096
  store i32 %or.i725, ptr %advertising, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %if.then55.if.end68_crit_edge, %if.end52.if.end68_crit_edge
  %and69 = and i64 %1, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and69)
  %tobool70.not = icmp eq i64 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end84_crit_edge, label %if.then71

if.end68.if.end84_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end84

if.then71:                                        ; preds = %if.end68
  %add.ptr.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 4
  %or.i726 = or i32 %32, 32768
  store i32 %or.i726, ptr %add.ptr.i, align 4
  %requested_speeds75 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %33 = ptrtoint ptr %requested_speeds75 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %requested_speeds75, align 4
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool78.not = icmp eq i8 %35, 0
  br i1 %tobool78.not, label %if.then71.if.end84_crit_edge, label %if.then79

if.then71.if.end84_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end84

if.then79:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i727 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %36 = ptrtoint ptr %add.ptr.i727 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i727, align 4
  %or.i728 = or i32 %37, 32768
  store i32 %or.i728, ptr %add.ptr.i727, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %if.then71.if.end84_crit_edge, %if.end68.if.end84_crit_edge
  %and85 = and i64 %1, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and85)
  %tobool86.not = icmp eq i64 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end100_crit_edge, label %if.then87

if.end84.if.end100_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end100

if.then87:                                        ; preds = %if.end84
  %add.ptr.i729 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %add.ptr.i729 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i729, align 4
  %or.i730 = or i32 %39, 65536
  store i32 %or.i730, ptr %add.ptr.i729, align 4
  %requested_speeds91 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %40 = ptrtoint ptr %requested_speeds91 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %requested_speeds91, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %tobool94.not = icmp sgt i8 %41, -1
  br i1 %tobool94.not, label %if.then87.if.end100_crit_edge, label %if.then95

if.then87.if.end100_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end100

if.then95:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i731 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %42 = ptrtoint ptr %add.ptr.i731 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i731, align 4
  %or.i732 = or i32 %43, 65536
  store i32 %or.i732, ptr %add.ptr.i731, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then95, %if.then87.if.end100_crit_edge, %if.end84.if.end100_crit_edge
  %44 = and i64 %1, 8960
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %if.end100.if.end113_crit_edge, label %if.then109

if.end100.if.end113_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end113

if.then109:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #23
  %46 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %link_modes, align 4
  %or.i733 = or i32 %47, 16777216
  store i32 %or.i733, ptr %link_modes, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %if.end100.if.end113_crit_edge
  %48 = and i64 %1, 16778240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %if.end113.if.end132_crit_edge, label %if.then119

if.end113.if.end132_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end132

if.then119:                                       ; preds = %if.end113
  %50 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %link_modes, align 4
  %or.i734 = or i32 %51, 16777216
  store i32 %or.i734, ptr %link_modes, align 4
  %requested_speeds123 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %52 = ptrtoint ptr %requested_speeds123 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %requested_speeds123, align 4
  %54 = and i8 %53, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool126.not = icmp eq i8 %54, 0
  br i1 %tobool126.not, label %if.then119.if.end132_crit_edge, label %if.then127

if.then119.if.end132_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end132

if.then127:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #23
  %55 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %advertising, align 4
  %or.i735 = or i32 %56, 16777216
  store i32 %or.i735, ptr %advertising, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then127, %if.then119.if.end132_crit_edge, %if.end113.if.end132_crit_edge
  %and133 = and i64 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and133)
  %tobool134.not = icmp eq i64 %and133, 0
  br i1 %tobool134.not, label %if.end132.if.end148_crit_edge, label %if.then135

if.end132.if.end148_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end148

if.then135:                                       ; preds = %if.end132
  %57 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %link_modes, align 4
  %or.i736 = or i32 %58, 8
  store i32 %or.i736, ptr %link_modes, align 4
  %requested_speeds139 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %59 = ptrtoint ptr %requested_speeds139 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %requested_speeds139, align 4
  %61 = and i8 %60, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool142.not = icmp eq i8 %61, 0
  br i1 %tobool142.not, label %if.then135.if.end148_crit_edge, label %if.then143

if.then135.if.end148_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end148

if.then143:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #23
  %62 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %advertising, align 4
  %or.i737 = or i32 %63, 8
  store i32 %or.i737, ptr %advertising, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %if.then135.if.end148_crit_edge, %if.end132.if.end148_crit_edge
  %and149 = and i64 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and149)
  %tobool150.not = icmp eq i64 %and149, 0
  br i1 %tobool150.not, label %if.end148.if.end164_crit_edge, label %if.then151

if.end148.if.end164_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end164

if.then151:                                       ; preds = %if.end148
  %64 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %link_modes, align 4
  %or.i738 = or i32 %65, 32
  store i32 %or.i738, ptr %link_modes, align 4
  %requested_speeds155 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %66 = ptrtoint ptr %requested_speeds155 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %requested_speeds155, align 4
  %68 = and i8 %67, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool158.not = icmp eq i8 %68, 0
  br i1 %tobool158.not, label %if.then151.if.end164_crit_edge, label %if.then159

if.then151.if.end164_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end164

if.then159:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #23
  %69 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %advertising, align 4
  %or.i739 = or i32 %70, 32
  store i32 %or.i739, ptr %advertising, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then159, %if.then151.if.end164_crit_edge, %if.end148.if.end164_crit_edge
  %and165 = and i64 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and165)
  %tobool166.not = icmp eq i64 %and165, 0
  br i1 %tobool166.not, label %if.end164.if.end174_crit_edge, label %if.then167

if.end164.if.end174_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end174

if.then167:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #23
  %71 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %link_modes, align 4
  %or.i740 = or i32 %72, 33554432
  store i32 %or.i740, ptr %link_modes, align 4
  %73 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %advertising, align 4
  %or.i741 = or i32 %74, 33554432
  store i32 %or.i741, ptr %advertising, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then167, %if.end164.if.end174_crit_edge
  %and175 = and i64 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and175)
  %tobool176.not = icmp eq i64 %and175, 0
  br i1 %tobool176.not, label %if.end174.if.end184_crit_edge, label %if.then177

if.end174.if.end184_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end184

if.then177:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #23
  %75 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %link_modes, align 4
  %or.i742 = or i32 %76, 67108864
  store i32 %or.i742, ptr %link_modes, align 4
  %77 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %advertising, align 4
  %or.i743 = or i32 %78, 67108864
  store i32 %or.i743, ptr %advertising, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then177, %if.end174.if.end184_crit_edge
  %and185 = and i64 %1, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and185)
  %tobool186.not = icmp eq i64 %and185, 0
  br i1 %tobool186.not, label %if.end184.if.end194_crit_edge, label %if.then187

if.end184.if.end194_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end194

if.then187:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #23
  %79 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %link_modes, align 4
  %or.i744 = or i32 %80, 8388608
  store i32 %or.i744, ptr %link_modes, align 4
  %81 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %advertising, align 4
  %or.i745 = or i32 %82, 8388608
  store i32 %or.i745, ptr %advertising, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then187, %if.end184.if.end194_crit_edge
  %and195 = and i64 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and195)
  %tobool196.not = icmp eq i64 %and195, 0
  br i1 %tobool196.not, label %if.end194.if.end210_crit_edge, label %if.then197

if.end194.if.end210_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end210

if.then197:                                       ; preds = %if.end194
  %83 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %link_modes, align 4
  %or.i746 = or i32 %84, 4194304
  store i32 %or.i746, ptr %link_modes, align 4
  %requested_speeds201 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %85 = ptrtoint ptr %requested_speeds201 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %requested_speeds201, align 4
  %87 = and i8 %86, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool204.not = icmp eq i8 %87, 0
  br i1 %tobool204.not, label %if.then197.if.end210_crit_edge, label %if.then205

if.then197.if.end210_crit_edge:                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end210

if.then205:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #23
  %88 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %advertising, align 4
  %or.i747 = or i32 %89, 4194304
  store i32 %or.i747, ptr %advertising, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.then205, %if.then197.if.end210_crit_edge, %if.end194.if.end210_crit_edge
  %and211 = and i64 %1, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and211)
  %tobool212.not = icmp eq i64 %and211, 0
  br i1 %tobool212.not, label %if.end210.if.end226_crit_edge, label %if.then213

if.end210.if.end226_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end226

if.then213:                                       ; preds = %if.end210
  %90 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %link_modes, align 4
  %or.i748 = or i32 %91, 262144
  store i32 %or.i748, ptr %link_modes, align 4
  %requested_speeds217 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %92 = ptrtoint ptr %requested_speeds217 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %requested_speeds217, align 4
  %94 = and i8 %93, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool220.not = icmp eq i8 %94, 0
  br i1 %tobool220.not, label %if.then213.if.end226_crit_edge, label %if.then221

if.then213.if.end226_crit_edge:                   ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end226

if.then221:                                       ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #23
  %95 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %advertising, align 4
  %or.i749 = or i32 %96, 262144
  store i32 %or.i749, ptr %advertising, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.then221, %if.then213.if.end226_crit_edge, %if.end210.if.end226_crit_edge
  %and227 = and i64 %1, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and227)
  %tobool228.not = icmp eq i64 %and227, 0
  br i1 %tobool228.not, label %if.end226.if.end245_crit_edge, label %land.lhs.true

if.end226.if.end245_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end245

land.lhs.true:                                    ; preds = %if.end226
  %hw_features229 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 53
  %97 = ptrtoint ptr %hw_features229 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hw_features229, align 4
  %and230 = and i32 %98, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %if.then232, label %land.lhs.true.if.end245_crit_edge

land.lhs.true.if.end245_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end245

if.then232:                                       ; preds = %land.lhs.true
  %99 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %link_modes, align 4
  %or.i750 = or i32 %100, 524288
  store i32 %or.i750, ptr %link_modes, align 4
  %requested_speeds236 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %101 = ptrtoint ptr %requested_speeds236 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %requested_speeds236, align 4
  %103 = and i8 %102, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool239.not = icmp eq i8 %103, 0
  br i1 %tobool239.not, label %if.then232.if.end245_crit_edge, label %if.then240

if.then232.if.end245_crit_edge:                   ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end245

if.then240:                                       ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #23
  %104 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %advertising, align 4
  %or.i751 = or i32 %105, 524288
  store i32 %or.i751, ptr %advertising, align 4
  br label %if.end245

if.end245:                                        ; preds = %if.then240, %if.then232.if.end245_crit_edge, %land.lhs.true.if.end245_crit_edge, %if.end226.if.end245_crit_edge
  %and246 = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and246)
  %tobool247.not = icmp eq i64 %and246, 0
  br i1 %tobool247.not, label %if.end245.if.end265_crit_edge, label %land.lhs.true248

if.end245.if.end265_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end265

land.lhs.true248:                                 ; preds = %if.end245
  %hw_features249 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 53
  %106 = ptrtoint ptr %hw_features249 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %hw_features249, align 4
  %and250 = and i32 %107, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %if.then252, label %land.lhs.true248.if.end265_crit_edge

land.lhs.true248.if.end265_crit_edge:             ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end265

if.then252:                                       ; preds = %land.lhs.true248
  %108 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %link_modes, align 4
  %or.i752 = or i32 %109, 131072
  store i32 %or.i752, ptr %link_modes, align 4
  %requested_speeds256 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %110 = ptrtoint ptr %requested_speeds256 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %requested_speeds256, align 4
  %112 = and i8 %111, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool259.not = icmp eq i8 %112, 0
  br i1 %tobool259.not, label %if.then252.if.end265_crit_edge, label %if.then260

if.then252.if.end265_crit_edge:                   ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end265

if.then260:                                       ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #23
  %113 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %advertising, align 4
  %or.i753 = or i32 %114, 131072
  store i32 %or.i753, ptr %advertising, align 4
  br label %if.end265

if.end265:                                        ; preds = %if.then260, %if.then252.if.end265_crit_edge, %land.lhs.true248.if.end265_crit_edge, %if.end245.if.end265_crit_edge
  %and266 = and i64 %1, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and266)
  %tobool267.not = icmp eq i64 %and266, 0
  br i1 %tobool267.not, label %if.end265.if.end281_crit_edge, label %if.then268

if.end265.if.end281_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end281

if.then268:                                       ; preds = %if.end265
  %add.ptr.i754 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %115 = ptrtoint ptr %add.ptr.i754 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr.i754, align 4
  %or.i755 = or i32 %116, 1
  store i32 %or.i755, ptr %add.ptr.i754, align 4
  %requested_speeds272 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %117 = ptrtoint ptr %requested_speeds272 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %requested_speeds272, align 4
  %119 = and i8 %118, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool275.not = icmp eq i8 %119, 0
  br i1 %tobool275.not, label %if.then268.if.end281_crit_edge, label %if.then276

if.then268.if.end281_crit_edge:                   ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end281

if.then276:                                       ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i756 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %120 = ptrtoint ptr %add.ptr.i756 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i756, align 4
  %or.i757 = or i32 %121, 1
  store i32 %or.i757, ptr %add.ptr.i756, align 4
  br label %if.end281

if.end281:                                        ; preds = %if.then276, %if.then268.if.end281_crit_edge, %if.end265.if.end281_crit_edge
  %and282 = and i64 %1, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and282)
  %tobool283.not = icmp eq i64 %and282, 0
  br i1 %tobool283.not, label %if.end281.if.end297_crit_edge, label %if.then284

if.end281.if.end297_crit_edge:                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end297

if.then284:                                       ; preds = %if.end281
  %122 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %link_modes, align 4
  %or.i758 = or i32 %123, -2147483648
  store i32 %or.i758, ptr %link_modes, align 4
  %requested_speeds288 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %124 = ptrtoint ptr %requested_speeds288 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %requested_speeds288, align 4
  %126 = and i8 %125, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool291.not = icmp eq i8 %126, 0
  br i1 %tobool291.not, label %if.then284.if.end297_crit_edge, label %if.then292

if.then284.if.end297_crit_edge:                   ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end297

if.then292:                                       ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #23
  %127 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %advertising, align 4
  %or.i759 = or i32 %128, -2147483648
  store i32 %or.i759, ptr %advertising, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.then292, %if.then284.if.end297_crit_edge, %if.end281.if.end297_crit_edge
  %129 = and i64 %1, 51539607552
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %129)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %if.end297.if.end316_crit_edge, label %if.then303

if.end297.if.end316_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end316

if.then303:                                       ; preds = %if.end297
  %add.ptr.i760 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %131 = ptrtoint ptr %add.ptr.i760 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %add.ptr.i760, align 4
  %or.i761 = or i32 %132, 2
  store i32 %or.i761, ptr %add.ptr.i760, align 4
  %requested_speeds307 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %133 = ptrtoint ptr %requested_speeds307 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %requested_speeds307, align 4
  %135 = and i8 %134, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool310.not = icmp eq i8 %135, 0
  br i1 %tobool310.not, label %if.then303.if.end316_crit_edge, label %if.then311

if.then303.if.end316_crit_edge:                   ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end316

if.then311:                                       ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i762 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %136 = ptrtoint ptr %add.ptr.i762 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %add.ptr.i762, align 4
  %or.i763 = or i32 %137, 2
  store i32 %or.i763, ptr %add.ptr.i762, align 4
  br label %if.end316

if.end316:                                        ; preds = %if.then311, %if.then303.if.end316_crit_edge, %if.end297.if.end316_crit_edge
  %138 = and i64 %1, 206158430208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %138)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %if.end316.if.end335_crit_edge, label %if.then322

if.end316.if.end335_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end335

if.then322:                                       ; preds = %if.end316
  %140 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %link_modes, align 4
  %or.i764 = or i32 %141, -2147483648
  store i32 %or.i764, ptr %link_modes, align 4
  %requested_speeds326 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %142 = ptrtoint ptr %requested_speeds326 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %requested_speeds326, align 4
  %144 = and i8 %143, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool329.not = icmp eq i8 %144, 0
  br i1 %tobool329.not, label %if.then322.if.end335_crit_edge, label %if.then330

if.then322.if.end335_crit_edge:                   ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end335

if.then330:                                       ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #23
  %145 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %advertising, align 4
  %or.i765 = or i32 %146, -2147483648
  store i32 %or.i765, ptr %advertising, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.then330, %if.then322.if.end335_crit_edge, %if.end316.if.end335_crit_edge
  %147 = and i64 %1, 270582939648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %147)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %if.end335.if.end378_crit_edge, label %if.then353

if.end335.if.end378_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end378

if.then353:                                       ; preds = %if.end335
  %add.ptr.i766 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %149 = ptrtoint ptr %add.ptr.i766 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %add.ptr.i766, align 4
  %or.i771 = or i32 %150, 917504
  store i32 %or.i771, ptr %add.ptr.i766, align 4
  %requested_speeds363 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %151 = ptrtoint ptr %requested_speeds363 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %requested_speeds363, align 4
  %153 = and i8 %152, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool366.not = icmp eq i8 %153, 0
  br i1 %tobool366.not, label %if.then353.if.end378_crit_edge, label %if.then367

if.then353.if.end378_crit_edge:                   ; preds = %if.then353
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end378

if.then367:                                       ; preds = %if.then353
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i772 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %154 = ptrtoint ptr %add.ptr.i772 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %add.ptr.i772, align 4
  %or.i777 = or i32 %155, 917504
  store i32 %or.i777, ptr %add.ptr.i772, align 4
  br label %if.end378

if.end378:                                        ; preds = %if.then367, %if.then353.if.end378_crit_edge, %if.end335.if.end378_crit_edge
  %156 = and i64 %1, 8390656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %156)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %if.end378.if.end397_crit_edge, label %if.then384

if.end378.if.end397_crit_edge:                    ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end397

if.then384:                                       ; preds = %if.end378
  %add.ptr.i778 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %158 = ptrtoint ptr %add.ptr.i778 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %add.ptr.i778, align 4
  %or.i779 = or i32 %159, 1024
  store i32 %or.i779, ptr %add.ptr.i778, align 4
  %requested_speeds388 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %160 = ptrtoint ptr %requested_speeds388 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %requested_speeds388, align 4
  %162 = and i8 %161, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool391.not = icmp eq i8 %162, 0
  br i1 %tobool391.not, label %if.then384.if.end397_crit_edge, label %if.then392

if.then384.if.end397_crit_edge:                   ; preds = %if.then384
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end397

if.then392:                                       ; preds = %if.then384
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i780 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %163 = ptrtoint ptr %add.ptr.i780 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr.i780, align 4
  %or.i781 = or i32 %164, 1024
  store i32 %or.i781, ptr %add.ptr.i780, align 4
  br label %if.end397

if.end397:                                        ; preds = %if.then392, %if.then384.if.end397_crit_edge, %if.end378.if.end397_crit_edge
  %and398 = and i64 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and398)
  %tobool399.not = icmp eq i64 %and398, 0
  br i1 %tobool399.not, label %if.end397.if.end413_crit_edge, label %if.then400

if.end397.if.end413_crit_edge:                    ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end413

if.then400:                                       ; preds = %if.end397
  %add.ptr.i782 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %165 = ptrtoint ptr %add.ptr.i782 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %add.ptr.i782, align 4
  %or.i783 = or i32 %166, 2048
  store i32 %or.i783, ptr %add.ptr.i782, align 4
  %requested_speeds404 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %167 = ptrtoint ptr %requested_speeds404 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %requested_speeds404, align 4
  %169 = and i8 %168, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool407.not = icmp eq i8 %169, 0
  br i1 %tobool407.not, label %if.then400.if.end413_crit_edge, label %if.then408

if.then400.if.end413_crit_edge:                   ; preds = %if.then400
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end413

if.then408:                                       ; preds = %if.then400
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i784 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %170 = ptrtoint ptr %add.ptr.i784 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %add.ptr.i784, align 4
  %or.i785 = or i32 %171, 2048
  store i32 %or.i785, ptr %add.ptr.i784, align 4
  br label %if.end413

if.end413:                                        ; preds = %if.then408, %if.then400.if.end413_crit_edge, %if.end397.if.end413_crit_edge
  %and414 = and i64 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and414)
  %tobool415.not = icmp eq i64 %and414, 0
  br i1 %tobool415.not, label %if.end413.if.end429_crit_edge, label %if.then416

if.end413.if.end429_crit_edge:                    ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end429

if.then416:                                       ; preds = %if.end413
  %add.ptr.i786 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %172 = ptrtoint ptr %add.ptr.i786 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr.i786, align 4
  %or.i787 = or i32 %173, 4096
  store i32 %or.i787, ptr %add.ptr.i786, align 4
  %requested_speeds420 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %174 = ptrtoint ptr %requested_speeds420 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %requested_speeds420, align 4
  %176 = and i8 %175, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool423.not = icmp eq i8 %176, 0
  br i1 %tobool423.not, label %if.then416.if.end429_crit_edge, label %if.then424

if.then416.if.end429_crit_edge:                   ; preds = %if.then416
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end429

if.then424:                                       ; preds = %if.then416
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i788 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %177 = ptrtoint ptr %add.ptr.i788 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %add.ptr.i788, align 4
  %or.i789 = or i32 %178, 4096
  store i32 %or.i789, ptr %add.ptr.i788, align 4
  br label %if.end429

if.end429:                                        ; preds = %if.then424, %if.then416.if.end429_crit_edge, %if.end413.if.end429_crit_edge
  %179 = and i64 %1, 939524096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %179)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %if.end429.if.end451_crit_edge, label %if.then438

if.end429.if.end451_crit_edge:                    ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end451

if.then438:                                       ; preds = %if.end429
  %add.ptr.i790 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %181 = ptrtoint ptr %add.ptr.i790 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %add.ptr.i790, align 4
  %or.i791 = or i32 %182, 512
  store i32 %or.i791, ptr %add.ptr.i790, align 4
  %requested_speeds442 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 12
  %183 = ptrtoint ptr %requested_speeds442 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %requested_speeds442, align 4
  %185 = and i8 %184, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool445.not = icmp eq i8 %185, 0
  br i1 %tobool445.not, label %if.then438.if.end451_crit_edge, label %if.then446

if.then438.if.end451_crit_edge:                   ; preds = %if.then438
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end451

if.then446:                                       ; preds = %if.then438
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i792 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %186 = ptrtoint ptr %add.ptr.i792 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %add.ptr.i792, align 4
  %or.i793 = or i32 %187, 512
  store i32 %or.i793, ptr %add.ptr.i792, align 4
  br label %if.end451

if.end451:                                        ; preds = %if.then446, %if.then438.if.end451_crit_edge, %if.end429.if.end451_crit_edge
  %188 = and i64 %1, 891100597277
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %188)
  %189 = icmp ne i64 %188, 0
  %tobool247.not.not = xor i1 %tobool247.not, true
  %brmerge717 = select i1 %189, i1 true, i1 %tobool247.not.not
  %tobool134.not.not = xor i1 %tobool134.not, true
  %brmerge718 = select i1 %brmerge717, i1 true, i1 %tobool134.not.not
  br i1 %brmerge718, label %if.then523, label %if.end451.if.end530_crit_edge

if.end451.if.end530_crit_edge:                    ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end530

if.then523:                                       ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #23
  %190 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %link_modes, align 4
  %or.i794 = or i32 %191, 64
  store i32 %or.i794, ptr %link_modes, align 4
  %192 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %advertising, align 4
  %or.i795 = or i32 %193, 64
  store i32 %or.i795, ptr %advertising, align 4
  br label %if.end530

if.end530:                                        ; preds = %if.then523, %if.end451.if.end530_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_intersect_link_masks(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #21

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #22 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 164)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #22 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 164)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind readonly }
attributes #18 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #19 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #23 = { nomerge }
attributes #24 = { cold nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind allocsize(2) }
attributes #27 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !134, !135, !137, !138, !139, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !191, !192, !193, !194, !196, !198, !199, !200, !201, !203, !205, !206, !207, !208, !210, !211, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !241, !242, !244, !246, !248, !250, !252, !254, !256, !258, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !297, !299, !301, !303, !304, !305, !306}
!llvm.named.register.sp = !{!308}
!llvm.module.flags = !{!309, !310, !311, !312, !313, !314, !315, !316}
!llvm.ident = !{!317}

!0 = !{ptr @i40e_ethtool_ops, !1, !"i40e_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5636, i32 33}
!2 = !{ptr @i40e_nvm_version_str.buf, !3, !"buf", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/i40e/i40e.h", i32 988, i32 14}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/i40e/i40e.h", i32 1002, i32 30}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/i40e/i40e.h", i32 1013, i32 5}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 472, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @i40e_partition_setting_complaint._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @i40e_partition_setting_complaint._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1695, i32 23}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1543, i32 23}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1785, i32 4}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @i40e_get_eeprom._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @i40e_get_eeprom._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1803, i32 3}
!27 = !{ptr @i40e_get_eeprom._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @i40e_get_eeprom._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1823, i32 4}
!31 = !{ptr @i40e_get_eeprom._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @i40e_get_eeprom._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1829, i32 4}
!35 = !{ptr @i40e_get_eeprom._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @i40e_get_eeprom._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1834, i32 4}
!39 = !{ptr @i40e_get_eeprom._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @i40e_get_eeprom._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1892, i32 3}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @i40e_set_eeprom._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @i40e_set_eeprom._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2925, i32 3}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2935, i32 3}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2940, i32 3}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2947, i32 3}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2952, i32 3}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2958, i32 3}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2963, i32 3}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2976, i32 3}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1971, i32 8}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2022, i32 8}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2061, i32 8}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1622, i32 23}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1629, i32 23}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1634, i32 8}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1660, i32 23}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1666, i32 23}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1672, i32 23}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2579, i32 3}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2584, i32 4}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @i40e_diag_test._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @i40e_diag_test._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2627, i32 3}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2640, i32 2}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2494, i32 2}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2497, i32 3}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2526, i32 2}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2541, i32 2}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2515, i32 2}
!102 = !{ptr @i40e_gstrings_test, !103, !"i40e_gstrings_test", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 416, i32 19}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2387, i32 3}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2389, i32 3}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2407, i32 2}
!110 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @i40e_gstrings_net_stats, !112, !"i40e_gstrings_net_stats", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 242, i32 32}
!113 = !{ptr @i40e_gstrings_misc_stats, !114, !"i40e_gstrings_misc_stats", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 285, i32 32}
!115 = !{ptr @i40e_gstrings_queue_stats, !116, !"i40e_gstrings_queue_stats", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 61, i32 32}
!117 = !{ptr @i40e_gstrings_veb_stats, !118, !"i40e_gstrings_veb_stats", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 256, i32 32}
!119 = !{ptr @i40e_gstrings_veb_tc_stats, !120, !"i40e_gstrings_veb_tc_stats", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 278, i32 32}
!121 = !{ptr @i40e_gstrings_stats, !122, !"i40e_gstrings_stats", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 310, i32 32}
!123 = !{ptr @i40e_gstrings_pfc_stats, !124, !"i40e_gstrings_pfc_stats", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 378, i32 32}
!125 = !{ptr @i40e_gstrings_priv_flags, !126, !"i40e_gstrings_priv_flags", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 437, i32 37}
!127 = !{ptr @i40e_gl_gstrings_priv_flags, !128, !"i40e_gl_gstrings_priv_flags", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 459, i32 37}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 2360, i32 2}
!131 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!132 = distinct !{null, !133, !"__already_done", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 105, i32 3}
!134 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!135 = distinct !{null, !136, !"__warned", i1 false, i1 false}
!136 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!137 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!141 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5203, i32 4}
!144 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @i40e_set_priv_flags._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @i40e_set_priv_flags._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5212, i32 3}
!149 = !{ptr @i40e_set_priv_flags._entry.63, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @i40e_set_priv_flags._entry_ptr.65, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @i40e_set_priv_flags._entry.66, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5221, i32 3}
!153 = !{ptr @i40e_set_priv_flags._entry_ptr.67, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5248, i32 4}
!156 = !{ptr @i40e_set_priv_flags._entry.68, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @i40e_set_priv_flags._entry_ptr.70, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5272, i32 4}
!160 = !{ptr @i40e_set_priv_flags._entry.71, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @i40e_set_priv_flags._entry_ptr.73, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5277, i32 3}
!164 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @i40e_set_priv_flags._entry.74, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @i40e_set_priv_flags._entry_ptr.77, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5285, i32 3}
!169 = !{ptr @i40e_set_priv_flags._entry.78, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @i40e_set_priv_flags._entry_ptr.80, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5301, i32 6}
!173 = !{ptr @i40e_set_priv_flags._entry.81, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @i40e_set_priv_flags._entry_ptr.83, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5306, i32 6}
!177 = !{ptr @i40e_set_priv_flags._entry.84, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @i40e_set_priv_flags._entry_ptr.86, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5310, i32 6}
!181 = !{ptr @i40e_set_priv_flags._entry.87, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @i40e_set_priv_flags._entry_ptr.89, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5314, i32 6}
!185 = !{ptr @i40e_set_priv_flags._entry.90, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @i40e_set_priv_flags._entry_ptr.92, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1422, i32 9}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1435, i32 4}
!191 = !{ptr @.str.95, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.96, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @i40e_set_fec_cfg.__UNIQUE_ID_ddebug678, !190, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 3328, i32 3}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 3506, i32 3}
!198 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @i40e_set_rss_hash_opt._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @i40e_set_rss_hash_opt._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = distinct !{null, !202, !"ipv6_full_mask", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4165, i32 22}
!203 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4436, i32 4}
!205 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @i40e_check_fdir_input_set._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @i40e_check_fdir_input_set._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4445, i32 4}
!210 = !{ptr @i40e_check_fdir_input_set._entry.102, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @i40e_check_fdir_input_set._entry_ptr.104, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4515, i32 2}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4519, i32 3}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4528, i32 3}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4542, i32 3}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4015, i32 10}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4017, i32 10}
!224 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4019, i32 10}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4021, i32 10}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4023, i32 10}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4025, i32 10}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4027, i32 10}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4029, i32 10}
!236 = !{ptr @.str.117, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4031, i32 10}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4085, i32 3}
!240 = !{ptr @.str.119, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.120, !239, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4092, i32 3}
!244 = !{ptr @.str.122, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4099, i32 3}
!246 = !{ptr @.str.123, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4106, i32 3}
!248 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4113, i32 3}
!250 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4124, i32 4}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4130, i32 2}
!254 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4132, i32 2}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4654, i32 4}
!258 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @i40e_disallow_matching_filters._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @i40e_disallow_matching_filters._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4940, i32 4}
!263 = !{ptr @.str.131, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @i40e_set_channels._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @i40e_set_channels._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.133, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 4948, i32 3}
!268 = !{ptr @i40e_set_channels._entry.132, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @i40e_set_channels._entry_ptr.134, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.135, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5362, i32 27}
!272 = !{ptr @.str.136, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5371, i32 27}
!274 = !{ptr @.str.137, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5399, i32 29}
!276 = !{ptr @.str.138, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5441, i32 27}
!278 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5547, i32 44}
!280 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5548, i32 25}
!282 = !{ptr @.str.141, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5549, i32 54}
!284 = !{ptr @.str.142, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5556, i32 9}
!286 = !{ptr @.str.143, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 983, i32 8}
!288 = !{ptr @.str.144, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1183, i32 23}
!290 = !{ptr @.str.145, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1247, i32 25}
!292 = !{ptr @.str.146, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1266, i32 25}
!294 = !{ptr @.str.147, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1369, i32 4}
!296 = !{ptr @i40e_set_link_ksettings.__UNIQUE_ID_ddebug676, !295, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!297 = !{ptr @.str.148, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1375, i32 23}
!299 = !{ptr @.str.149, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1503, i32 22}
!301 = !{ptr @.str.150, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 1524, i32 3}
!303 = !{ptr @.str.151, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @i40e_set_fec_param._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @i40e_set_fec_param._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @i40e_ethtool_recovery_mode_ops, !307, !"i40e_ethtool_recovery_mode_ops", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ethtool.c", i32 5629, i32 33}
!308 = !{!"sp"}
!309 = !{i32 1, !"wchar_size", i32 2}
!310 = !{i32 1, !"min_enum_size", i32 4}
!311 = !{i32 8, !"branch-target-enforcement", i32 0}
!312 = !{i32 8, !"sign-return-address", i32 0}
!313 = !{i32 8, !"sign-return-address-all", i32 0}
!314 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!315 = !{i32 7, !"uwtable", i32 1}
!316 = !{i32 7, !"frame-pointer", i32 2}
!317 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!318 = !{i64 6334863}
!319 = !{i64 2160556128}
!320 = !{!"auto-init"}
!321 = !{i8 0, i8 2}
!322 = !{i64 2160566826}
!323 = !{i64 2160606189}
!324 = !{i64 6334445}
!325 = !{!"branch_weights", i32 2000, i32 1}
!326 = !{i64 2149955858}
!327 = !{i64 2149956124}
!328 = !{!329}
!329 = distinct !{!329, !330, !"i40e_get_veb_tc_stats: %agg.result"}
!330 = distinct !{!330, !"i40e_get_veb_tc_stats"}
!331 = !{!332}
!332 = distinct !{!332, !333, !"i40e_get_pfc_stats: %agg.result"}
!333 = distinct !{!333, !"i40e_get_pfc_stats"}
!334 = !{i64 2160636405}
!335 = !{i64 2149234869, i64 2149234874, i64 2149234887, i64 2149234931, i64 2149234965, i64 2149234986}
!336 = !{i64 2160613223}
!337 = !{i64 2160614047}
!338 = !{i64 1155897, i64 1155958}
!339 = !{i64 1158629}
!340 = !{!"branch_weights", i32 1, i32 2000}
!341 = !{i64 1158914}
!342 = !{i64 2155301331}
!343 = !{i64 2155301173}
!344 = !{i64 2155301501}
!345 = !{i64 2150572227}
