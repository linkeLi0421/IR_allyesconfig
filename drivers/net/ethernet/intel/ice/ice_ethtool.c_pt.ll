; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ice_stats = type { [32 x i8], i32, i32 }
%struct.ice_priv_flag = type { [32 x i8], i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.194, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.194 = type { ptr }
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
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.178 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.178 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.ice_ptp = type { %struct.ice_ptp_port, %struct.kthread_delayed_work, %struct.kthread_work, i64, i8, i8, ptr, [4 x %struct.ice_perout_channel], %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, i64 }
%struct.ice_ptp_port = type { %struct.ice_ptp_tx, %struct.kthread_delayed_work, %struct.mutex, i8, i8, i8 }
%struct.ice_ptp_tx = type { %struct.kthread_work, %struct.spinlock, ptr, ptr, i8, i8, i8, i8, i8 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ice_perout_channel = type { i8, i32, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ice_hw_port_stats = type { %struct.ice_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.ice_hw = type { ptr, ptr, ptr, ptr, i32, i64, i32, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, [9 x i16], %struct.list_head, [768 x ptr], i8, i8, %struct.ice_bus_info, %struct.ice_flash_info, %struct.ice_hw_dev_caps, %struct.ice_hw_func_caps, ptr, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ice_fw_log_cfg, i8, i8, i8, %struct.ice_pkg_ver, i32, [32 x i8], i8, %struct.ice_pkg_ver, [32 x i8], %struct.ice_pkg_ver, [28 x i8], ptr, ptr, i32, %struct.mutex, %struct.ice_tunnel_table, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, [5 x %struct.ice_blk_info], [5 x %struct.mutex], [5 x %struct.list_head], i32, %struct.mutex, %struct.list_head, [28 x i16], ptr, [1 x i32], %struct.mutex, %struct.list_head, %struct.ice_mbx_snapshot, [32 x i32], i16 }
%struct.ice_bus_info = type { i16, i8 }
%struct.ice_flash_info = type { %struct.ice_orom_info, %struct.ice_nvm_info, %struct.ice_netlist_info, %struct.ice_bank_info, i16, i32, i8 }
%struct.ice_orom_info = type { i8, i8, i16 }
%struct.ice_nvm_info = type { i32, i8, i8 }
%struct.ice_netlist_info = type { i32, i32, i32, i32, i32, i16 }
%struct.ice_bank_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_hw_dev_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, %struct.ice_ts_dev_info, i32 }
%struct.ice_hw_common_caps = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ts_dev_info = type { i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ice_hw_func_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, i32, i32, %struct.ice_ts_func_info }
%struct.ice_ts_func_info = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ctl_q_info = type { i32, %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring, i32, i16, i16, i16, i16, i32, %struct.mutex, %struct.mutex }
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.215, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.215 = type { ptr }
%struct.ice_fw_log_cfg = type { i8, i8, [27 x %struct.ice_fw_log_evnt] }
%struct.ice_fw_log_evnt = type { i8 }
%struct.ice_pkg_ver = type { i8, i8, i8, i8 }
%struct.ice_tunnel_table = type { [16 x %struct.ice_tunnel_entry], i16, [3 x i16] }
%struct.ice_tunnel_entry = type { i32, i16, i16, ptr, i8 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.ice_blk_info = type { %struct.ice_xlt1, %struct.ice_xlt2, %struct.ice_prof_tcam, %struct.ice_prof_redir, %struct.ice_es, %struct.ice_masks, i8, i8 }
%struct.ice_xlt1 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_xlt2 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_prof_tcam = type { i32, i16, i16, ptr, i8 }
%struct.ice_prof_redir = type { ptr, i32, i16 }
%struct.ice_es = type { i32, i16, i16, ptr, ptr, %struct.list_head, ptr, %struct.mutex, ptr, i8 }
%struct.ice_masks = type { %struct.mutex, i16, i16, [32 x %struct.ice_mask] }
%struct.ice_mask = type { i16, i16, i16, i8 }
%struct.ice_mbx_snapshot = type { %struct.ice_mbx_snap_buffer_data, %struct.ice_mbx_vf_counter }
%struct.ice_mbx_snap_buffer_data = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.ice_mbx_vf_counter = type { ptr, i32 }
%struct.ice_link_default_override_tlv = type { i8, i8, i8, i8, i64, i64 }
%struct.ice_switchdev_info = type { ptr, ptr, i8 }
%struct.ice_agg_node = type { i32, i32, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.200, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.200 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_rx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.206, [96 x i8], %struct.xdp_rxq_info, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_rxq_stats, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.callback_head, ptr, ptr, ptr, ptr, ptr, i32, i64, i8, i8, i8, [125 x i8] }
%union.anon.206 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ice_rxq_stats = type { i64, i64, i64 }
%struct.ice_q_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.ice_tx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.ice_txq_stats, %struct.callback_head, [1 x i32], ptr, ptr, %struct.spinlock, i32, i8, i8, i8, [49 x i8] }
%struct.ice_txq_stats = type { i64, i64, i64, i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_q_vector = type { ptr, i16, i16, i8, i8, i8, i8, %struct.napi_struct, %struct.ice_ring_container, %struct.ice_ring_container, %struct.cpumask, %struct.irq_affinity_notify, ptr, [32 x i8], i16, [10 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ice_ring_container = type { %union.anon.205, %struct.dim, i16, i16, i32 }
%union.anon.205 = type { ptr }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.188, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.188 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ice_port_info = type { ptr, ptr, i32, i16, i16, i8, i8, i16, i16, i16, i16, %struct.ice_fc_info, %struct.ice_mac_info, %struct.ice_phy_info, %struct.mutex, [8 x [9 x ptr]], [9 x %struct.list_head], %struct.ice_qos_cfg, i8 }
%struct.ice_fc_info = type { i32, i32 }
%struct.ice_mac_info = type { [6 x i8], [6 x i8] }
%struct.ice_phy_info = type { %struct.ice_link_status, %struct.ice_link_status, i64, i64, i32, i8, i16, i32, i32, %struct.ice_aqc_set_phy_cfg_data }
%struct.ice_link_status = type { i64, i64, i8, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.ice_aqc_set_phy_cfg_data = type { i64, i64, i8, i8, i16, i16, i8, i8 }
%struct.ice_qos_cfg = type { %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg, i8 }
%struct.ice_dcbx_cfg = type { i32, i32, %struct.ice_dcb_ets_cfg, %struct.ice_dcb_ets_cfg, %struct.ice_dcb_pfc_cfg, i8, [64 x %struct.ice_dcb_app_priority_table], [2 x i32], [64 x i8], i8, i8 }
%struct.ice_dcb_ets_cfg = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.ice_dcb_pfc_cfg = type { i8, i8, i8, i8 }
%struct.ice_dcb_app_priority_table = type { i16, i8, i8 }
%struct.ice_aqc_get_phy_caps_data = type { i64, i64, i8, i8, i16, i16, [4 x i8], [8 x i8], i8, i8, i8, [3 x i8], i8, [7 x i8], [16 x %struct.anon.218] }
%struct.anon.218 = type { [3 x i8], i8, [16 x i8], i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ice_repr = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.ice_vf = type { ptr, %struct.mutex, i16, i16, i16, %struct.ice_vf_fdir, i32, ptr, %struct.virtchnl_version_info, i32, %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr, %struct.ice_time_mac, [1 x i32], [1 x i32], i16, i8, i16, i32, i32, [1 x i32], i32, i8, i16, i16, %struct.ice_mdd_vf_events, %struct.ice_mdd_vf_events, [2 x i32], ptr, %struct.ice_vc_vf_ops, %struct.devlink_port }
%struct.ice_vf_fdir = type { [28 x [2 x i16]], [28 x [2 x i32]], ptr, %struct.idr, %struct.list_head, %struct.spinlock, %struct.ice_vf_fdir_ctx, %struct.ice_vf_fdir_ctx }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ice_vf_fdir_ctx = type { %struct.timer_list, i32, i32, %union.ice_32b_rx_flex_desc, i32, ptr }
%union.ice_32b_rx_flex_desc = type { %struct.anon.201 }
%struct.anon.201 = type { i64, i64, i64, i64 }
%struct.virtchnl_version_info = type { i32, i32 }
%struct.virtchnl_ether_addr = type { [6 x i8], i8, i8 }
%struct.ice_time_mac = type { i32, [6 x i8] }
%struct.ice_mdd_vf_events = type { i16, i16 }
%struct.ice_vc_vf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.10, %union.anon.107, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.107 = type { %struct.atomic_t }
%struct.ice_tx_buf = type { ptr, %union.anon.207, i32, i16, i32, i32, i32 }
%union.anon.207 = type { ptr }
%struct.ice_tx_desc = type { i64, i64 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.187, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.187 = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_diag_reg_test_info = type { i32, i32, i32, i32 }
%struct.ice_rx_buf = type { i32, ptr, i32, i16 }

@ice_ethtool_safe_mode_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ice_get_drvinfo, ptr @ice_get_regs_len, ptr @ice_get_regs, ptr @ice_get_wol, ptr @ice_set_wol, ptr @ice_get_msglevel, ptr @ice_set_msglevel, ptr @ice_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @ice_get_eeprom_len, ptr @ice_get_eeprom, ptr null, ptr null, ptr null, ptr @ice_get_ringparam, ptr @ice_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @ice_get_strings, ptr null, ptr @ice_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @ice_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ice_get_channels, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ice_get_link_ksettings, ptr @ice_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ice_ethtool_repr_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ice_repr_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ice_repr_get_strings, ptr null, ptr @ice_repr_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @ice_repr_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ice_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 132625, i32 0, ptr @ice_get_drvinfo, ptr @ice_get_regs_len, ptr @ice_get_regs, ptr @ice_get_wol, ptr @ice_set_wol, ptr @ice_get_msglevel, ptr @ice_set_msglevel, ptr @ice_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @ice_get_eeprom_len, ptr @ice_get_eeprom, ptr null, ptr @ice_get_coalesce, ptr @ice_set_coalesce, ptr @ice_get_ringparam, ptr @ice_set_ringparam, ptr null, ptr @ice_get_pauseparam, ptr @ice_set_pauseparam, ptr @ice_self_test, ptr @ice_get_strings, ptr @ice_set_phys_id, ptr @ice_get_ethtool_stats, ptr null, ptr null, ptr @ice_get_priv_flags, ptr @ice_set_priv_flags, ptr @ice_get_sset_count, ptr @ice_get_rxnfc, ptr @ice_set_rxnfc, ptr null, ptr null, ptr @ice_get_rxfh_key_size, ptr @ice_get_rxfh_indir_size, ptr @ice_get_rxfh, ptr @ice_set_rxfh, ptr null, ptr null, ptr @ice_get_channels, ptr @ice_set_channels, ptr null, ptr null, ptr null, ptr @ice_get_ts_info, ptr @ice_get_module_info, ptr @ice_get_module_eeprom, ptr null, ptr null, ptr null, ptr null, ptr @ice_get_per_q_coalesce, ptr @ice_set_per_q_coalesce, ptr @ice_get_link_ksettings, ptr @ice_set_link_ksettings, ptr null, ptr @ice_get_fecparam, ptr @ice_set_fecparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%x.%02x 0x%x %d.%d.%d\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Wake on LAN is not supported on this interface!\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_set_wol.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 3, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ice_set_wol\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/ice/ice_ethtool.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WoL magic packet %sabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@ice_get_eeprom.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ice_get_eeprom\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"GEEPROM cmd 0x%08x, offset 0x%08x, len 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@ice_get_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 290, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ice_acquire_nvm failed, err %d aq_err %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_get_eeprom._entry_ptr = internal global ptr @ice_get_eeprom._entry, section ".printk_index", align 4
@ice_get_eeprom._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.4, i32 298, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ice_read_flat_nvm failed, err %d aq_err %s\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_get_eeprom._entry_ptr.15 = internal global ptr @ice_get_eeprom._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Descriptors requested (Tx: %d / Rx: %d) out of range [%d-%d] (increment %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Requested Tx descriptor count rounded up to %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Requested Rx descriptor count rounded up to %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ice_set_ringparam.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 2, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_set_ringparam\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Nothing to change, descriptor count is same as requested\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_set_ringparam.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.4, ptr @.str.21, i8 2, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Link is down, descriptor count change happens when link is brought up\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Changing Tx descriptor count from %d to %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Changing XDP descriptor count from %d to %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Changing Rx descriptor count from %d to %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_gstrings_vsi_stats = internal constant { [16 x %struct.ice_stats], [160 x i8] } { [16 x %struct.ice_stats] [%struct.ice_stats { [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 488 }, %struct.ice_stats { [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 536 }, %struct.ice_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 496 }, %struct.ice_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 544 }, %struct.ice_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 504 }, %struct.ice_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 552 }, %struct.ice_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 480 }, %struct.ice_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 528 }, %struct.ice_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 512 }, %struct.ice_stats { [32 x i8] c"rx_unknown_protocol\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 520 }, %struct.ice_stats { [32 x i8] c"rx_alloc_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 56 }, %struct.ice_stats { [32 x i8] c"rx_pg_alloc_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 60 }, %struct.ice_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 568 }, %struct.ice_stats { [32 x i8] c"tx_linearize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 32 }, %struct.ice_stats { [32 x i8] c"tx_busy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 52 }, %struct.ice_stats { [32 x i8] c"tx_restart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 48 }], [160 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_queue_%u_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_queue_%u_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_queue_%u_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_queue_%u_bytes\00", [46 x i8] zeroinitializer }, align 32
@ice_gstrings_pf_stats = internal constant { [42 x %struct.ice_stats], [432 x i8] } { [42 x %struct.ice_stats] [%struct.ice_stats { [32 x i8] c"rx_bytes.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1632 }, %struct.ice_stats { [32 x i8] c"tx_bytes.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1680 }, %struct.ice_stats { [32 x i8] c"rx_unicast.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1640 }, %struct.ice_stats { [32 x i8] c"tx_unicast.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1688 }, %struct.ice_stats { [32 x i8] c"rx_multicast.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1648 }, %struct.ice_stats { [32 x i8] c"tx_multicast.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1696 }, %struct.ice_stats { [32 x i8] c"rx_broadcast.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1656 }, %struct.ice_stats { [32 x i8] c"tx_broadcast.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1704 }, %struct.ice_stats { [32 x i8] c"tx_errors.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1720 }, %struct.ice_stats { [32 x i8] c"tx_timeout.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11668 }, %struct.ice_stats { [32 x i8] c"rx_size_64.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2136 }, %struct.ice_stats { [32 x i8] c"tx_size_64.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2224 }, %struct.ice_stats { [32 x i8] c"rx_size_127.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2144 }, %struct.ice_stats { [32 x i8] c"tx_size_127.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2232 }, %struct.ice_stats { [32 x i8] c"rx_size_255.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2152 }, %struct.ice_stats { [32 x i8] c"tx_size_255.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2240 }, %struct.ice_stats { [32 x i8] c"rx_size_511.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2160 }, %struct.ice_stats { [32 x i8] c"tx_size_511.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2248 }, %struct.ice_stats { [32 x i8] c"rx_size_1023.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2168 }, %struct.ice_stats { [32 x i8] c"tx_size_1023.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2256 }, %struct.ice_stats { [32 x i8] c"rx_size_1522.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2176 }, %struct.ice_stats { [32 x i8] c"tx_size_1522.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2264 }, %struct.ice_stats { [32 x i8] c"rx_size_big.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2184 }, %struct.ice_stats { [32 x i8] c"tx_size_big.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2272 }, %struct.ice_stats { [32 x i8] c"link_xon_rx.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1784 }, %struct.ice_stats { [32 x i8] c"link_xon_tx.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1800 }, %struct.ice_stats { [32 x i8] c"link_xoff_rx.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1792 }, %struct.ice_stats { [32 x i8] c"link_xoff_tx.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1808 }, %struct.ice_stats { [32 x i8] c"tx_dropped_link_down.nic\00\00\00\00\00\00\00\00", i32 8, i32 1728 }, %struct.ice_stats { [32 x i8] c"rx_undersize.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2192 }, %struct.ice_stats { [32 x i8] c"rx_fragments.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2200 }, %struct.ice_stats { [32 x i8] c"rx_oversize.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2208 }, %struct.ice_stats { [32 x i8] c"rx_jabber.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2216 }, %struct.ice_stats { [32 x i8] c"rx_csum_bad.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 1592 }, %struct.ice_stats { [32 x i8] c"rx_length_errors.nic\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1776 }, %struct.ice_stats { [32 x i8] c"rx_dropped.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1664 }, %struct.ice_stats { [32 x i8] c"rx_crc_errors.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1736 }, %struct.ice_stats { [32 x i8] c"illegal_bytes.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1744 }, %struct.ice_stats { [32 x i8] c"mac_local_faults.nic\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1760 }, %struct.ice_stats { [32 x i8] c"mac_remote_faults.nic\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1768 }, %struct.ice_stats { [32 x i8] c"fdir_sb_match.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2288 }, %struct.ice_stats { [32 x i8] c"fdir_sb_status.nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 2280 }], [432 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_priority_%u_xon.nic\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_priority_%u_xoff.nic\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_priority_%u_xon.nic\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_priority_%u_xoff.nic\00", [40 x i8] zeroinitializer }, align 32
@ice_gstrings_test = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"Register test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"EEPROM test    (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Interrupt test (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Loopback test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Link test   (on/offline)\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@ice_gstrings_priv_flags = internal constant { [5 x %struct.ice_priv_flag], [44 x i8] } { [5 x %struct.ice_priv_flag] [%struct.ice_priv_flag { [32 x i8] c"link-down-on-close\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14 }, %struct.ice_priv_flag { [32 x i8] c"fw-lldp-agent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17 }, %struct.ice_priv_flag { [32 x i8] c"vf-true-promisc-support\00\00\00\00\00\00\00\00\00", i32 22 }, %struct.ice_priv_flag { [32 x i8] c"mdd-auto-reset-vf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 23 }, %struct.ice_priv_flag { [32 x i8] c"legacy-rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 21 }], [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"WARNING: Unrecognized link_speed (0x%x).\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"The selected speed is not supported by the current media. Please select a link speed that is supported by the current media.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Nothing changed, exiting without setting anything.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set phy config failed,\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Autoneg not supported on this phy.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Autoneg cannot be disabled on this phy\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_get_rc_coalesce.__UNIQUE_ID_ddebug644 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.4, ptr @.str.43, i8 3, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_get_rc_coalesce\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid c_type %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"User set %s-usecs to %d, device only supports even values. Rounding down and attempting to set %s-usecs to %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Invalid value, %s-usecs-high valid values are 0 (disabled), %d-%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Invalid value, %s-usecs-high cannot be changed if adaptive-tx or adaptive-rx is enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_set_rc_coalesce.__UNIQUE_ID_ddebug645 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 3, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_set_rc_coalesce\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid container type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s interrupt throttling cannot be changed if adaptive-%s is enabled\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid value, %s-usecs range is 0-%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Changing flow control parameters only supported for PF VSI\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"To change autoneg please use: ethtool -s <dev> autoneg <on|off>\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Autoneg did not complete so changing settings may not result in an actual change.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Priority flow control enabled. Cannot set link flow control.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Set fc failed on the get_phy_capabilities call with err %d aq_err %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Set fc failed on the set_phy_config call with err %d aq_err %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Set fc failed on the get_link_info call with err %d aq_err %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"offline testing starting\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_self_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 817, ptr @.str.63, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"Please take active VFs and Netqueues offline and restart the adapter before running NIC diagnostics\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ice_self_test\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ice_self_test._entry_ptr = internal global ptr @ice_self_test._entry, section ".printk_index", align 4
@ice_self_test._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.62, ptr @.str.4, i32 852, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not open device %s, err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_self_test._entry_ptr.66 = internal global ptr @ice_self_test._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"online testing starting\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"testing finished\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link test\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"link query error, status = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EEPROM test\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"interrupt test\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"loopback test\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to create a VSI for the loopback test\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not remove MAC filter for the test VSI\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not disable MAC loopback\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not disable test rings\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to remove the test VSI\0A\00", [33 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.81 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to stop Tx rings, VSI %d error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to stop Rx rings, VSI %d error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ice_reg_test.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.4, ptr @.str.84, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ice_reg_test\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Register test\0A\00", [17 x i8] zeroinitializer }, align 32
@ice_reg_pattern_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.4, i32 399, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: reg pattern test failed - reg 0x%08x pat 0x%08x val 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_reg_pattern_test\00", [43 x i8] zeroinitializer }, align 32
@ice_reg_pattern_test._entry_ptr = internal global ptr @ice_reg_pattern_test._entry, section ".printk_index", align 4
@ice_reg_pattern_test._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.4, i32 407, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: reg restore test failed - reg 0x%08x orig 0x%08x val 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_reg_pattern_test._entry_ptr.89 = internal global ptr @ice_reg_pattern_test._entry.87, section ".printk_index", align 4
@ice_set_priv_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.4, i32 1190, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Setting link-down-on-close not supported on this port\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_set_priv_flags\00", [45 x i8] zeroinitializer }, align 32
@ice_set_priv_flags._entry_ptr = internal global ptr @ice_set_priv_flags._entry, section ".printk_index", align 4
@ice_set_priv_flags._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.4, i32 1208, ptr @.str.94, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to unreg for LLDP events\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ice_set_priv_flags._entry_ptr.95 = internal global ptr @ice_set_priv_flags._entry.92, section ".printk_index", align 4
@ice_set_priv_flags._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.91, ptr @.str.4, i32 1215, ptr @.str.63, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Fail to stop LLDP agent\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_set_priv_flags._entry_ptr.98 = internal global ptr @ice_set_priv_flags._entry.96, section ".printk_index", align 4
@ice_set_priv_flags._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.91, ptr @.str.4, i32 1222, ptr @.str.63, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Fail to init DCB\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_set_priv_flags._entry_ptr.101 = internal global ptr @ice_set_priv_flags._entry.99, section ".printk_index", align 4
@ice_set_priv_flags._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.91, ptr @.str.4, i32 1232, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"QoS in L3 DSCP mode, FW Agent not allowed to start\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_set_priv_flags._entry_ptr.104 = internal global ptr @ice_set_priv_flags._entry.102, section ".printk_index", align 4
@ice_set_priv_flags._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.91, ptr @.str.4, i32 1247, ptr @.str.63, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fail to start LLDP Agent\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_set_priv_flags._entry_ptr.107 = internal global ptr @ice_set_priv_flags._entry.105, section ".printk_index", align 4
@ice_set_priv_flags.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.4, ptr @.str.108, i8 1, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to start FW DCBX\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_set_priv_flags._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.91, ptr @.str.4, i32 1259, ptr @.str.94, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FW DCBX agent is %s\0A\00", [43 x i8] zeroinitializer }, align 32
@ice_set_priv_flags._entry_ptr.111 = internal global ptr @ice_set_priv_flags._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTIVE\00", [25 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISABLED\00", [23 x i8] zeroinitializer }, align 32
@ice_set_priv_flags.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.4, ptr @.str.100, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_set_priv_flags.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.4, ptr @.str.114, i8 1, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fail to enable MIB change events\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_set_priv_flags._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.91, ptr @.str.4, i32 1293, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Changing vf-true-promisc-support flag while VF(s) are in promiscuous mode not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_set_priv_flags._entry_ptr.117 = internal global ptr @ice_set_priv_flags._entry.115, section ".printk_index", align 4
@ice_get_rss_hash_opt.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.4, ptr @.str.119, i8 2, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_get_rss_hash_opt\00", [43 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Advanced RSS disabled. Package download failed, vsi num = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ice_get_rss_hash_opt.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.4, ptr @.str.120, i8 2, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Header type is not valid, vsi num = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_get_rss_hash_opt.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.4, ptr @.str.121, i8 2, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"No hash fields found for the given header type, vsi num = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ice_set_rss_hash_opt.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.4, ptr @.str.119, i8 2, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_set_rss_hash_opt\00", [43 x i8] zeroinitializer }, align 32
@ice_set_rss_hash_opt.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.4, ptr @.str.123, i8 2, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid hash fields, vsi num = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_set_rss_hash_opt.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.4, ptr @.str.120, i8 2, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_set_rss_hash_opt.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.4, ptr @.str.124, i8 2, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ice_add_rss_cfg failed, vsi num = %d, error = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RSS is not configured on this VSI!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Cannot change RSS params with ADQ configured.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Changing channel in Safe Mode is not supported\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot set channels with ADQ configured.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Cannot set channels when Flow Director filters are active\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Please specify at least 1 Rx and 1 Tx channel\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Maximum allowed Rx channels is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Maximum allowed Tx channels is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_vsi_set_dflt_rss_lut._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.4, i32 3368, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot set RSS lut, err %d aq_err %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_vsi_set_dflt_rss_lut\00", [39 x i8] zeroinitializer }, align 32
@ice_vsi_set_dflt_rss_lut._entry_ptr = internal global ptr @ice_vsi_set_dflt_rss_lut._entry, section ".printk_index", align 4
@.str.135 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SFF Module Type not recognized.\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_get_module_eeprom.__UNIQUE_ID_ddebug646 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.4, ptr @.str.137, i8 3, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_get_module_eeprom\00", [42 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"SFF %02X %02X %02X %X = %02X%02X%02X%02X.%02X%02X%02X%02X (%X)\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_set_fecparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.4, i32 1030, ptr @.str.63, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported FEC mode: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ice_set_fecparam\00", [47 x i8] zeroinitializer }, align 32
@ice_set_fecparam._entry_ptr = internal global ptr @ice_set_fecparam._entry, section ".printk_index", align 4
@.str.140 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Changing FEC parameters only supported for PF VSI\0A\00", [45 x i8] zeroinitializer }, align 32
@switch.table.ice_get_fecparam = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 8, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.ice_get_rss_hash_opt = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 68, i32 132, i32 260, i32 68, i32 72, i32 136, i32 264], [36 x i8] zeroinitializer }, align 32
@switch.table.ice_set_rss_hash_opt = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 68, i32 132, i32 260, i32 68, i32 72, i32 136, i32 264], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.142 = internal global [12 x i64] [i64 10, i64 16, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.144 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.147 = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 32, i64 42, i64 49, i64 50]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 13, i64 17]
@__sancov_gen_cov_switch_values.150 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.156 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.157 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7]
@___asan_gen_.158 = private unnamed_addr constant [26 x i8] c"ice_ethtool_safe_mode_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 4105, i32 33 }
@___asan_gen_.161 = private unnamed_addr constant [21 x i8] c"ice_ethtool_repr_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 4136, i32 33 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"ice_ethtool_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 4058, i32 33 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 184, i32 27 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 190, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3461, i32 23 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3495, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 280, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 289, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 297, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2709, i32 22 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2718, i32 23 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2722, i32 23 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2728, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2757, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2765, i32 22 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2793, i32 22 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2823, i32 22 }
@___asan_gen_.242 = private unnamed_addr constant [23 x i8] c"ice_gstrings_vsi_stats\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 50, i32 31 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 891, i32 24 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 892, i32 24 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 896, i32 24 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 897, i32 24 }
@___asan_gen_.257 = private unnamed_addr constant [22 x i8] c"ice_gstrings_pf_stats\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 96, i32 31 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 908, i32 24 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 909, i32 24 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 912, i32 24 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 913, i32 24 }
@___asan_gen_.272 = private unnamed_addr constant [18 x i8] c"ice_gstrings_test\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 77, i32 19 }
@___asan_gen_.275 = private unnamed_addr constant [24 x i8] c"ice_gstrings_priv_flags\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 161, i32 35 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 695, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 723, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1866, i32 23 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2246, i32 24 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2315, i32 23 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2370, i32 23 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2151, i32 25 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2168, i32 25 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3530, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3790, i32 36 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3794, i32 36 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3762, i32 23 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3644, i32 29 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3651, i32 29 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3669, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3676, i32 28 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3682, i32 28 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3003, i32 23 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3031, i32 23 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3039, i32 23 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3043, i32 23 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3061, i32 23 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3065, i32 23 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3069, i32 23 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 812, i32 23 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 817, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 851, i32 5 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 857, i32 23 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 871, i32 22 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 343, i32 22 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 346, i32 22 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 369, i32 22 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 779, i32 22 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 692, i32 22 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 696, i32 22 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 750, i32 22 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 754, i32 22 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 757, i32 22 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 761, i32 22 }
@___asan_gen_.420 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 326, i32 6 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 515, i32 27 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 520, i32 27 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 443, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 398, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 406, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1190, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1208, i32 5 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1215, i32 5 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1222, i32 5 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1232, i32 5 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1247, i32 5 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1256, i32 5 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1258, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1273, i32 5 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1293, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2561, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2568, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2575, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2515, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2522, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2536, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3127, i32 23 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3182, i32 22 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3389, i32 19 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3397, i32 19 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3402, i32 19 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3421, i32 19 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3429, i32 19 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3434, i32 19 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3367, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 3964, i32 23 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 4037, i32 5 }
@___asan_gen_.578 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1029, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.588 = private constant [48 x i8] c"../drivers/net/ethernet/intel/ice/ice_ethtool.c\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 976, i32 23 }
@___asan_gen_.590 = private unnamed_addr constant [30 x i8] c"switch.table.ice_get_fecparam\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [34 x i8] c"switch.table.ice_get_rss_hash_opt\00", align 1
@___asan_gen_.592 = private unnamed_addr constant [34 x i8] c"switch.table.ice_set_rss_hash_opt\00", align 1
@llvm.compiler.used = appending global [163 x ptr] [ptr @ice_get_eeprom._entry, ptr @ice_get_eeprom._entry.13, ptr @ice_get_eeprom._entry_ptr, ptr @ice_get_eeprom._entry_ptr.15, ptr @ice_reg_pattern_test._entry, ptr @ice_reg_pattern_test._entry.87, ptr @ice_reg_pattern_test._entry_ptr, ptr @ice_reg_pattern_test._entry_ptr.89, ptr @ice_self_test._entry, ptr @ice_self_test._entry.64, ptr @ice_self_test._entry_ptr, ptr @ice_self_test._entry_ptr.66, ptr @ice_set_fecparam._entry, ptr @ice_set_fecparam._entry_ptr, ptr @ice_set_priv_flags._entry, ptr @ice_set_priv_flags._entry.102, ptr @ice_set_priv_flags._entry.105, ptr @ice_set_priv_flags._entry.109, ptr @ice_set_priv_flags._entry.115, ptr @ice_set_priv_flags._entry.92, ptr @ice_set_priv_flags._entry.96, ptr @ice_set_priv_flags._entry.99, ptr @ice_set_priv_flags._entry_ptr, ptr @ice_set_priv_flags._entry_ptr.101, ptr @ice_set_priv_flags._entry_ptr.104, ptr @ice_set_priv_flags._entry_ptr.107, ptr @ice_set_priv_flags._entry_ptr.111, ptr @ice_set_priv_flags._entry_ptr.117, ptr @ice_set_priv_flags._entry_ptr.95, ptr @ice_set_priv_flags._entry_ptr.98, ptr @ice_vsi_set_dflt_rss_lut._entry, ptr @ice_vsi_set_dflt_rss_lut._entry_ptr, ptr @ice_ethtool_safe_mode_ops, ptr @ice_ethtool_repr_ops, ptr @ice_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ice_gstrings_vsi_stats, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @ice_gstrings_pf_stats, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ice_gstrings_test, ptr @ice_gstrings_priv_flags, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @switch.table.ice_get_fecparam, ptr @switch.table.ice_get_rss_hash_opt, ptr @switch.table.ice_set_rss_hash_opt], section "llvm.metadata"
@0 = internal global [147 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ethtool_safe_mode_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ethtool_repr_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_get_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_get_eeprom._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_gstrings_vsi_stats to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_gstrings_pf_stats to i32), i32 1680, i32 2112, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_gstrings_test to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_gstrings_priv_flags to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_self_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_self_test._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_reg_pattern_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_reg_pattern_test._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_set_priv_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_set_priv_flags._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_set_priv_flags._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_set_priv_flags._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_set_priv_flags._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_set_priv_flags._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_set_priv_flags._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_set_priv_flags._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vsi_set_dflt_rss_lut._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_set_fecparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_get_fecparam to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_get_rss_hash_opt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_set_rss_hash_opt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ice_set_ethtool_safe_mode_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ice_ethtool_safe_mode_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ice_set_ethtool_repr_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ice_ethtool_repr_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ice_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ice_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %flash.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 26
  %nvm2.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 26, i32 1
  %driver.i = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call.i = tail call i32 @strscpy(ptr noundef %driver.i, ptr noundef nonnull @.str, i32 noundef 32) #17
  %fw_version.i = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %major.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 26, i32 1, i32 1
  %4 = ptrtoint ptr %major.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %major.i, align 4
  %conv.i = zext i8 %5 to i32
  %minor.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 26, i32 1, i32 2
  %6 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %minor.i, align 1
  %conv6.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %nvm2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nvm2.i, align 4
  %10 = ptrtoint ptr %flash.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flash.i, align 2
  %conv8.i = zext i8 %11 to i32
  %build.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 26, i32 0, i32 2
  %12 = ptrtoint ptr %build.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %build.i, align 2
  %conv9.i = zext i16 %13 to i32
  %patch.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 26, i32 0, i32 1
  %14 = ptrtoint ptr %patch.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %patch.i, align 1
  %conv10.i = zext i8 %15 to i32
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %conv.i, i32 noundef %conv6.i, i32 noundef %9, i32 noundef %conv8.i, i32 noundef %conv9.i, i32 noundef %conv10.i) #17
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call3 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #17
  %n_priv_flags = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 7
  %22 = ptrtoint ptr %n_priv_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %n_priv_flags, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ice_get_regs_len(ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_get_regs(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %version, align 4
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 557056
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !301
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !302
  %9 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %p, align 4
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1, align 8
  %add.ptr.1 = getelementptr i8, ptr %11, i32 753920
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #17, !srcloc !301
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !302
  %arrayidx4.1 = getelementptr i32, ptr %p, i32 1
  %14 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx4.1, align 4
  %15 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw1, align 8
  %add.ptr.2 = getelementptr i8, ptr %16, i32 1179648
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #17, !srcloc !301
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !302
  %arrayidx4.2 = getelementptr i32, ptr %p, i32 2
  %19 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx4.2, align 4
  %20 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1, align 8
  %add.ptr.3 = getelementptr i8, ptr %21, i32 1310720
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #17, !srcloc !301
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !302
  %arrayidx4.3 = getelementptr i32, ptr %p, i32 3
  %24 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx4.3, align 4
  %25 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw1, align 8
  %add.ptr.4 = getelementptr i8, ptr %26, i32 1376256
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #17, !srcloc !301
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !302
  %arrayidx4.4 = getelementptr i32, ptr %p, i32 4
  %29 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.4, align 4
  %30 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw1, align 8
  %add.ptr.5 = getelementptr i8, ptr %31, i32 1493248
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5) #17, !srcloc !301
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !302
  %arrayidx4.5 = getelementptr i32, ptr %p, i32 5
  %34 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx4.5, align 4
  %35 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw1, align 8
  %add.ptr.6 = getelementptr i8, ptr %36, i32 2695168
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6) #17, !srcloc !301
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !302
  %arrayidx4.6 = getelementptr i32, ptr %p, i32 6
  %39 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx4.6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_get_wol(ptr noundef %netdev, ptr nocapture noundef writeonly %wol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %type = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.2) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %call2 = tail call zeroext i1 @ice_is_wol_supported(ptr noundef %hw) #17
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %supported, align 4
  %wol_ena = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 54
  %7 = ptrtoint ptr %wol_ena to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %wol_ena, align 2
  %8 = lshr i8 %bf.load, 2
  %9 = and i8 %8, 32
  %10 = zext i8 %9 to i32
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %supported, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %.sink = phi i32 [ %10, %if.then3 ], [ 0, %if.else ]
  %12 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_set_wol(ptr noundef %netdev, ptr nocapture noundef readonly %wol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %type = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hw = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %call2 = tail call zeroext i1 @ice_is_wol_supported(ptr noundef %hw) #17
  br i1 %call2, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.end6_crit_edge
    i32 32, label %if.end.if.end6_crit_edge58
  ]

if.end.if.end6_crit_edge58:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.end.if.end6_crit_edge58
  %wol_ena = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 54
  %9 = ptrtoint ptr %wol_ena to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %wol_ena, align 2
  %bf.lshr = lshr i8 %bf.load, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8 = icmp ne i32 %7, 0
  %10 = zext i1 %tobool8 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr, i8 %10)
  %cmp10.not = icmp eq i8 %bf.lshr, %10
  br i1 %cmp10.not, label %if.end6.cleanup_crit_edge, label %if.then12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %bf.shl = select i1 %tobool8, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  %11 = ptrtoint ptr %wol_ena to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.set, ptr %wol_ena, align 2
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call26 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool8) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_wol.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_wol, %if.then35)) #17
          to label %cleanup [label %if.then35], !srcloc !303

if.then35:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %wol_ena to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load37 = load i8, ptr %wol_ena, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load37)
  %tobool40.not = icmp sgt i8 %bf.load37, -1
  %cond = select i1 %tobool40.not, ptr @.str.7, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_set_wol.__UNIQUE_ID_ddebug643, ptr noundef %netdev, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.then12, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.then35 ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ice_get_msglevel(ptr nocapture noundef readonly %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %msg_enable = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ice_set_msglevel(ptr nocapture noundef readonly %netdev, i32 noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %msg_enable = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %data, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_nway_reset(ptr nocapture noundef readonly %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %state = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %call4 = tail call i32 @ice_set_link(ptr noundef %1, i1 noundef zeroext %tobool.not) #17
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ice_get_eeprom_len(ptr nocapture noundef readonly %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %flash_size = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 26, i32 5
  %4 = ptrtoint ptr %flash_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flash_size, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_get_eeprom(ptr noundef %netdev, ptr noundef %eeprom, ptr nocapture noundef writeonly %bytes) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %vendor_id = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 9
  %6 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vendor_id, align 8
  %conv = zext i16 %7 to i32
  %device_id = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 8
  %8 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device_id, align 2
  %conv4 = zext i16 %9 to i32
  %shl = shl nuw i32 %conv4, 16
  %or = or i32 %shl, %conv
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %10 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %magic, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_eeprom.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_eeprom, %if.then)) #17
          to label %do.end10 [label %if.then], !srcloc !303

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eeprom, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_get_eeprom.__UNIQUE_ID_ddebug613, ptr noundef %netdev, ptr noundef nonnull @.str.9, i32 noundef %12, i32 noundef %14, i32 noundef %16) #17
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  %len11 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %17 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len11, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #21
  %tobool13.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool13.not, label %do.end10.cleanup_crit_edge, label %if.end15

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end15:                                         ; preds = %do.end10
  %call16 = tail call i32 @ice_acquire_nvm(ptr noundef %hw2, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 30, i32 8
  %19 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sq_last_status, align 4
  %call22 = tail call ptr @ice_aq_str(i32 noundef %20) #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.10, i32 noundef %call16, ptr noundef %call22) #20
  br label %out

if.end23:                                         ; preds = %if.end15
  %offset24 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %21 = ptrtoint ptr %offset24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset24, align 4
  %call26 = tail call i32 @ice_read_flat_nvm(ptr noundef %hw2, i32 noundef %22, ptr noundef %len11, ptr noundef nonnull %call9.i.i, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end35, label %do.end31

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %sq_last_status33 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 30, i32 8
  %23 = ptrtoint ptr %sq_last_status33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sq_last_status33, align 4
  %call34 = tail call ptr @ice_aq_str(i32 noundef %24) #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.14, i32 noundef %call26, ptr noundef %call34) #20
  br label %release

if.end35:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len11, align 4
  %27 = call ptr @memcpy(ptr %bytes, ptr %call9.i.i, i32 %26)
  br label %release

release:                                          ; preds = %if.end35, %do.end31
  tail call void @ice_release_nvm(ptr noundef %hw2) #17
  br label %out

out:                                              ; preds = %release, %do.end21
  %ret.0 = phi i32 [ %call16, %do.end21 ], [ %call26, %release ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ice_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8160, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %3 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8160, ptr %tx_max_pending, align 4
  %rx_rings = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_rings, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %count = getelementptr inbounds %struct.ice_rx_ring, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 2
  %conv = zext i16 %9 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %10 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %rx_pending, align 4
  %tx_rings = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_rings, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %count3 = getelementptr inbounds %struct.ice_tx_ring, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %count3 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %count3, align 4
  %conv4 = zext i16 %16 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %17 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv4, ptr %tx_pending, align 4
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 2
  %18 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %rx_mini_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 3
  %19 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rx_jumbo_max_pending, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %20 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rx_mini_pending, align 4
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %21 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %rx_jumbo_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %4 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pending, align 4
  %6 = add i32 %5, -8161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8097, i32 %6)
  %7 = icmp ult i32 %6, -8097
  br i1 %7, label %entry.if.then_crit_edge, label %lor.lhs.false4

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false4:                                   ; preds = %entry
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pending, align 4
  %10 = add i32 %9, -8161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8097, i32 %10)
  %11 = icmp ult i32 %10, -8097
  br i1 %11, label %lor.lhs.false4.if.then_crit_edge, label %if.end

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false4.if.then_crit_edge, %entry.if.then_crit_edge
  %rx_pending10 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %12 = ptrtoint ptr %rx_pending10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_pending10, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %13, i32 noundef 64, i32 noundef 8160, i32 noundef 32) #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %14 = trunc i32 %5 to i16
  %15 = add nuw nsw i16 %14, 31
  %conv = and i16 %15, -32
  %conv12 = zext i16 %conv to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv12)
  %cmp14.not = icmp eq i32 %5, %conv12
  br i1 %cmp14.not, label %if.end.if.end18_crit_edge, label %if.then16

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.17, i32 noundef %conv12) #20
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  %16 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_pending, align 4
  %18 = trunc i32 %17 to i16
  %19 = add i16 %18, 31
  %conv22 = and i16 %19, -32
  %conv23 = zext i16 %conv22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv23)
  %cmp25.not = icmp eq i32 %17, %conv23
  br i1 %cmp25.not, label %if.end18.if.end29_crit_edge, label %if.then27

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.18, i32 noundef %conv23) #20
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end18.if.end29_crit_edge
  %tx_rings31 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %tx_rings31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_rings31, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %count = getelementptr inbounds %struct.ice_tx_ring, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv, i16 %25)
  %cmp33 = icmp eq i16 %conv, %25
  br i1 %cmp33, label %land.lhs.true, label %if.end29.if.end51_crit_edge

if.end29.if.end51_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end29
  %rx_rings36 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %rx_rings36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_rings36, align 16
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %count38 = getelementptr inbounds %struct.ice_rx_ring, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %count38 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %count38, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv22, i16 %31)
  %cmp40 = icmp eq i16 %conv22, %31
  br i1 %cmp40, label %do.body43, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

do.body43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_ringparam.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_ringparam, %if.then47)) #17
          to label %cleanup [label %if.then47], !srcloc !303

if.then47:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_set_ringparam.__UNIQUE_ID_ddebug629, ptr noundef %netdev, ptr noundef nonnull @.str.20) #17
  br label %cleanup

if.end51:                                         ; preds = %land.lhs.true.if.end51_crit_edge, %if.end29.if.end51_crit_edge
  %call52 = tail call zeroext i1 @ice_xsk_any_rx_ring_ena(ptr noundef %1) #17
  br i1 %call52, label %if.end51.cleanup_crit_edge, label %while.cond.preheader

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end51
  %state = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 20
  %call55661 = tail call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %state) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55661)
  %tobool56.not662 = icmp eq i32 %call55661, 0
  br i1 %tobool56.not662, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %if.end59.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %timeout.0663 = phi i32 [ %dec, %if.end59.while.body_crit_edge ], [ 50, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %timeout.0663, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool57.not = icmp eq i32 %dec, 0
  br i1 %tobool57.not, label %while.body.cleanup_crit_edge, label %if.end59

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end59:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #17
  %call55 = tail call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %state) #17
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end59.while.end_crit_edge, label %if.end59.while.body_crit_edge

if.end59.while.body_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end59.while.end_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end59.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.cond.preheader, label %if.end113

for.cond.preheader:                               ; preds = %while.end
  %alloc_txq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 47
  %36 = ptrtoint ptr %alloc_txq to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %alloc_txq, align 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp64692.not = icmp eq i16 %37, 0
  br i1 %cmp64692.not, label %for.cond.preheader.for.cond69.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond69.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.body.for.cond69.preheader_crit_edge, %for.cond.preheader.for.cond69.preheader_crit_edge
  %alloc_rxq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 49
  %38 = ptrtoint ptr %alloc_rxq to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %alloc_rxq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp71695.not = icmp eq i16 %39, 0
  br i1 %cmp71695.not, label %for.cond69.preheader.for.end79_crit_edge, label %for.body73.lr.ph

for.cond69.preheader.for.end79_crit_edge:         ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end79

for.body73.lr.ph:                                 ; preds = %for.cond69.preheader
  %rx_rings74 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 4
  br label %for.body73

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0693 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %40 = ptrtoint ptr %tx_rings31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_rings31, align 4
  %arrayidx67 = getelementptr ptr, ptr %41, i32 %i.0693
  %42 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx67, align 4
  %count68 = getelementptr inbounds %struct.ice_tx_ring, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %count68 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv, ptr %count68, align 4
  %inc = add nuw nsw i32 %i.0693, 1
  %45 = ptrtoint ptr %alloc_txq to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %alloc_txq, align 64
  %conv63 = zext i16 %46 to i32
  %cmp64 = icmp ult i32 %inc, %conv63
  br i1 %cmp64, label %for.body.for.body_crit_edge, label %for.body.for.cond69.preheader_crit_edge

for.body.for.cond69.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond69.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %for.body73.lr.ph
  %i.1696 = phi i32 [ 0, %for.body73.lr.ph ], [ %inc78, %for.body73.for.body73_crit_edge ]
  %47 = ptrtoint ptr %rx_rings74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_rings74, align 16
  %arrayidx75 = getelementptr ptr, ptr %48, i32 %i.1696
  %49 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx75, align 4
  %count76 = getelementptr inbounds %struct.ice_rx_ring, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %count76 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv22, ptr %count76, align 2
  %inc78 = add nuw nsw i32 %i.1696, 1
  %52 = ptrtoint ptr %alloc_rxq to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %alloc_rxq, align 4
  %conv70 = zext i16 %53 to i32
  %cmp71 = icmp ult i32 %inc78, %conv70
  br i1 %cmp71, label %for.body73.for.body73_crit_edge, label %for.body73.for.end79_crit_edge

for.body73.for.end79_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end79

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body73

for.end79:                                        ; preds = %for.body73.for.end79_crit_edge, %for.cond69.preheader.for.end79_crit_edge
  %xdp_prog.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 57
  %54 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.i580.not = icmp eq ptr %55, null
  br i1 %tobool.i580.not, label %for.end79.if.end93_crit_edge, label %for.cond82.preheader

for.end79.if.end93_crit_edge:                     ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

for.cond82.preheader:                             ; preds = %for.end79
  %num_xdp_txq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 60
  %56 = ptrtoint ptr %num_xdp_txq to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %num_xdp_txq, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp84698.not = icmp eq i16 %57, 0
  br i1 %cmp84698.not, label %for.cond82.preheader.if.end93_crit_edge, label %for.body86.lr.ph

for.cond82.preheader.if.end93_crit_edge:          ; preds = %for.cond82.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

for.body86.lr.ph:                                 ; preds = %for.cond82.preheader
  %xdp_rings87 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 58
  br label %for.body86

for.body86:                                       ; preds = %for.body86.for.body86_crit_edge, %for.body86.lr.ph
  %i.2699 = phi i32 [ 0, %for.body86.lr.ph ], [ %inc91, %for.body86.for.body86_crit_edge ]
  %58 = ptrtoint ptr %xdp_rings87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xdp_rings87, align 8
  %arrayidx88 = getelementptr ptr, ptr %59, i32 %i.2699
  %60 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx88, align 4
  %count89 = getelementptr inbounds %struct.ice_tx_ring, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %count89 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv, ptr %count89, align 4
  %inc91 = add nuw nsw i32 %i.2699, 1
  %63 = ptrtoint ptr %num_xdp_txq to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %num_xdp_txq, align 16
  %conv83 = zext i16 %64 to i32
  %cmp84 = icmp ult i32 %inc91, %conv83
  br i1 %cmp84, label %for.body86.for.body86_crit_edge, label %for.body86.if.end93_crit_edge

for.body86.if.end93_crit_edge:                    ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

for.body86.for.body86_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body86

if.end93:                                         ; preds = %for.body86.if.end93_crit_edge, %for.cond82.preheader.if.end93_crit_edge, %for.end79.if.end93_crit_edge
  %num_tx_desc = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 54
  %65 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv, ptr %num_tx_desc, align 2
  %num_rx_desc = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 53
  %66 = ptrtoint ptr %num_rx_desc to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv22, ptr %num_rx_desc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_ringparam.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_ringparam, %if.then107)) #17
          to label %done [label %if.then107], !srcloc !303

if.then107:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_set_ringparam.__UNIQUE_ID_ddebug630, ptr noundef %netdev, ptr noundef nonnull @.str.21) #17
  br label %done

if.end113:                                        ; preds = %while.end
  %67 = ptrtoint ptr %tx_rings31 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_rings31, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %count117 = getelementptr inbounds %struct.ice_tx_ring, ptr %70, i32 0, i32 16
  %71 = ptrtoint ptr %count117 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %count117, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv, i16 %72)
  %cmp119 = icmp eq i16 %conv, %72
  br i1 %cmp119, label %if.end113.process_rx_crit_edge, label %if.end122

if.end113.process_rx_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_rx

if.end122:                                        ; preds = %if.end113
  %conv118 = zext i16 %72 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.22, i32 noundef %conv118, i32 noundef %conv12) #20
  %num_txq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 48
  %73 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %num_txq, align 2
  %conv128 = zext i16 %74 to i32
  %75 = shl nuw nsw i32 %conv128, 8
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %75, i32 noundef 3520) #21
  %tobool130.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool130.not, label %if.end122.done_crit_edge, label %for.cond133.preheader

if.end122.done_crit_edge:                         ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

for.cond133.preheader:                            ; preds = %if.end122
  %76 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %num_txq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp136665.not = icmp eq i16 %77, 0
  br i1 %cmp136665.not, label %for.cond133.preheader.for.end159_crit_edge, label %for.cond133.preheader.for.body138_crit_edge

for.cond133.preheader.for.body138_crit_edge:      ; preds = %for.cond133.preheader
  br label %for.body138

for.cond133.preheader.for.end159_crit_edge:       ; preds = %for.cond133.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end159

for.body138:                                      ; preds = %for.inc157.for.body138_crit_edge, %for.cond133.preheader.for.body138_crit_edge
  %i.3666 = phi i32 [ %inc158, %for.inc157.for.body138_crit_edge ], [ 0, %for.cond133.preheader.for.body138_crit_edge ]
  %arrayidx139 = getelementptr %struct.ice_tx_ring, ptr %call8.i.i, i32 %i.3666
  %78 = ptrtoint ptr %tx_rings31 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tx_rings31, align 4
  %arrayidx141 = getelementptr ptr, ptr %79, i32 %i.3666
  %80 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx141, align 4
  %82 = call ptr @memcpy(ptr %arrayidx139, ptr %81, i32 256)
  %count143 = getelementptr %struct.ice_tx_ring, ptr %call8.i.i, i32 %i.3666, i32 16
  %83 = ptrtoint ptr %count143 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv, ptr %count143, align 4
  %desc = getelementptr %struct.ice_tx_ring, ptr %call8.i.i, i32 %i.3666, i32 1
  %84 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %desc, align 4
  %tx_buf = getelementptr %struct.ice_tx_ring, ptr %call8.i.i, i32 %i.3666, i32 4
  %85 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %tx_buf, align 16
  %call147 = tail call i32 @ice_setup_tx_ring(ptr noundef %arrayidx139) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %for.inc157, label %while.cond150.preheader

while.cond150.preheader:                          ; preds = %for.body138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3666)
  %tobool152.not672 = icmp eq i32 %i.3666, 0
  br i1 %tobool152.not672, label %while.cond150.preheader.while.end155_crit_edge, label %while.cond150.preheader.while.body153_crit_edge

while.cond150.preheader.while.body153_crit_edge:  ; preds = %while.cond150.preheader
  br label %while.body153

while.cond150.preheader.while.end155_crit_edge:   ; preds = %while.cond150.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end155

while.body153:                                    ; preds = %while.body153.while.body153_crit_edge, %while.cond150.preheader.while.body153_crit_edge
  %i.4673 = phi i32 [ %dec151, %while.body153.while.body153_crit_edge ], [ %i.3666, %while.cond150.preheader.while.body153_crit_edge ]
  %dec151 = add nsw i32 %i.4673, -1
  %arrayidx154 = getelementptr %struct.ice_tx_ring, ptr %call8.i.i, i32 %dec151
  tail call void @ice_clean_tx_ring(ptr noundef %arrayidx154) #17
  %tobool152.not = icmp eq i32 %dec151, 0
  br i1 %tobool152.not, label %while.body153.while.end155_crit_edge, label %while.body153.while.body153_crit_edge

while.body153.while.body153_crit_edge:            ; preds = %while.body153
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body153

while.body153.while.end155_crit_edge:             ; preds = %while.body153
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end155

while.end155:                                     ; preds = %while.body153.while.end155_crit_edge, %while.cond150.preheader.while.end155_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #17
  br label %done

for.inc157:                                       ; preds = %for.body138
  %inc158 = add nuw nsw i32 %i.3666, 1
  %86 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %num_txq, align 2
  %conv135 = zext i16 %87 to i32
  %cmp136 = icmp ult i32 %inc158, %conv135
  br i1 %cmp136, label %for.inc157.for.body138_crit_edge, label %for.inc157.for.end159_crit_edge

for.inc157.for.end159_crit_edge:                  ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end159

for.inc157.for.body138_crit_edge:                 ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body138

for.end159:                                       ; preds = %for.inc157.for.end159_crit_edge, %for.cond133.preheader.for.end159_crit_edge
  %xdp_prog.i581 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 57
  %88 = ptrtoint ptr %xdp_prog.i581 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %xdp_prog.i581, align 4
  %tobool.i582.not = icmp eq ptr %89, null
  br i1 %tobool.i582.not, label %for.end159.process_rx_crit_edge, label %if.end162

for.end159.process_rx_crit_edge:                  ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_rx

if.end162:                                        ; preds = %for.end159
  %xdp_rings163 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 58
  %90 = ptrtoint ptr %xdp_rings163 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %xdp_rings163, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %count165 = getelementptr inbounds %struct.ice_tx_ring, ptr %93, i32 0, i32 16
  %94 = ptrtoint ptr %count165 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %count165, align 4
  %conv166 = zext i16 %95 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.23, i32 noundef %conv166, i32 noundef %conv12) #20
  %num_xdp_txq168 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 60
  %96 = ptrtoint ptr %num_xdp_txq168 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %num_xdp_txq168, align 16
  %conv169 = zext i16 %97 to i32
  %98 = shl nuw nsw i32 %conv169, 8
  %call8.i.i612 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %98, i32 noundef 3520) #21
  %tobool171.not = icmp eq ptr %call8.i.i612, null
  br i1 %tobool171.not, label %if.end162.free_tx_crit_edge, label %for.cond174.preheader

if.end162.free_tx_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_tx

for.cond174.preheader:                            ; preds = %if.end162
  %99 = ptrtoint ptr %num_xdp_txq168 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %num_xdp_txq168, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %cmp177668.not = icmp eq i16 %100, 0
  br i1 %cmp177668.not, label %for.cond174.preheader.process_rx_crit_edge, label %for.cond174.preheader.for.body179_crit_edge

for.cond174.preheader.for.body179_crit_edge:      ; preds = %for.cond174.preheader
  br label %for.body179

for.cond174.preheader.process_rx_crit_edge:       ; preds = %for.cond174.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_rx

for.body179:                                      ; preds = %if.end199.for.body179_crit_edge, %for.cond174.preheader.for.body179_crit_edge
  %i.5669 = phi i32 [ %inc202, %if.end199.for.body179_crit_edge ], [ 0, %for.cond174.preheader.for.body179_crit_edge ]
  %arrayidx180 = getelementptr %struct.ice_tx_ring, ptr %call8.i.i612, i32 %i.5669
  %101 = ptrtoint ptr %xdp_rings163 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %xdp_rings163, align 8
  %arrayidx182 = getelementptr ptr, ptr %102, i32 %i.5669
  %103 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx182, align 4
  %105 = call ptr @memcpy(ptr %arrayidx180, ptr %104, i32 256)
  %count184 = getelementptr %struct.ice_tx_ring, ptr %call8.i.i612, i32 %i.5669, i32 16
  %106 = ptrtoint ptr %count184 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv, ptr %count184, align 4
  %desc186 = getelementptr %struct.ice_tx_ring, ptr %call8.i.i612, i32 %i.5669, i32 1
  %107 = ptrtoint ptr %desc186 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %desc186, align 4
  %tx_buf188 = getelementptr %struct.ice_tx_ring, ptr %call8.i.i612, i32 %i.5669, i32 4
  %108 = ptrtoint ptr %tx_buf188 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %tx_buf188, align 16
  %call190 = tail call i32 @ice_setup_tx_ring(ptr noundef %arrayidx180) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end199, label %while.cond193.preheader

while.cond193.preheader:                          ; preds = %for.body179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5669)
  %tobool195.not670 = icmp eq i32 %i.5669, 0
  br i1 %tobool195.not670, label %while.cond193.preheader.free_tx.sink.split_crit_edge, label %while.cond193.preheader.while.body196_crit_edge

while.cond193.preheader.while.body196_crit_edge:  ; preds = %while.cond193.preheader
  br label %while.body196

while.cond193.preheader.free_tx.sink.split_crit_edge: ; preds = %while.cond193.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_tx.sink.split

while.body196:                                    ; preds = %while.body196.while.body196_crit_edge, %while.cond193.preheader.while.body196_crit_edge
  %i.6671 = phi i32 [ %dec194, %while.body196.while.body196_crit_edge ], [ %i.5669, %while.cond193.preheader.while.body196_crit_edge ]
  %dec194 = add nsw i32 %i.6671, -1
  %arrayidx197 = getelementptr %struct.ice_tx_ring, ptr %call8.i.i612, i32 %dec194
  tail call void @ice_clean_tx_ring(ptr noundef %arrayidx197) #17
  %tobool195.not = icmp eq i32 %dec194, 0
  br i1 %tobool195.not, label %while.body196.free_tx.sink.split_crit_edge, label %while.body196.while.body196_crit_edge

while.body196.while.body196_crit_edge:            ; preds = %while.body196
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body196

while.body196.free_tx.sink.split_crit_edge:       ; preds = %while.body196
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_tx.sink.split

if.end199:                                        ; preds = %for.body179
  %flags.i = getelementptr %struct.ice_tx_ring, ptr %call8.i.i612, i32 %i.5669, i32 27
  %109 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %flags.i, align 4
  %111 = or i8 %110, 1
  store i8 %111, ptr %flags.i, align 4
  %inc202 = add nuw nsw i32 %i.5669, 1
  %112 = ptrtoint ptr %num_xdp_txq168 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %num_xdp_txq168, align 16
  %conv176 = zext i16 %113 to i32
  %cmp177 = icmp ult i32 %inc202, %conv176
  br i1 %cmp177, label %if.end199.for.body179_crit_edge, label %if.end199.process_rx_crit_edge

if.end199.process_rx_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_rx

if.end199.for.body179_crit_edge:                  ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body179

process_rx:                                       ; preds = %if.end199.process_rx_crit_edge, %for.cond174.preheader.process_rx_crit_edge, %for.end159.process_rx_crit_edge, %if.end113.process_rx_crit_edge
  %tx_rings.0 = phi ptr [ null, %if.end113.process_rx_crit_edge ], [ %call8.i.i, %for.end159.process_rx_crit_edge ], [ %call8.i.i, %for.cond174.preheader.process_rx_crit_edge ], [ %call8.i.i, %if.end199.process_rx_crit_edge ]
  %xdp_rings.0 = phi ptr [ null, %if.end113.process_rx_crit_edge ], [ null, %for.end159.process_rx_crit_edge ], [ %call8.i.i612, %for.cond174.preheader.process_rx_crit_edge ], [ %call8.i.i612, %if.end199.process_rx_crit_edge ]
  %rx_rings205 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 4
  %114 = ptrtoint ptr %rx_rings205 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rx_rings205, align 16
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %count207 = getelementptr inbounds %struct.ice_rx_ring, ptr %117, i32 0, i32 11
  %118 = ptrtoint ptr %count207 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %count207, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv22, i16 %119)
  %cmp209 = icmp eq i16 %conv22, %119
  br i1 %cmp209, label %process_rx.process_link_crit_edge, label %if.end212

process_rx.process_link_crit_edge:                ; preds = %process_rx
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_link

if.end212:                                        ; preds = %process_rx
  %conv208 = zext i16 %119 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.24, i32 noundef %conv208, i32 noundef %conv23) #20
  %num_rxq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 50
  %120 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %num_rxq, align 2
  %conv218 = zext i16 %121 to i32
  %122 = shl nuw nsw i32 %conv218, 9
  %call8.i.i645 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %122, i32 noundef 3520) #21
  %tobool220.not = icmp eq ptr %call8.i.i645, null
  br i1 %tobool220.not, label %if.end212.done_crit_edge, label %for.cond223.preheader

if.end212.done_crit_edge:                         ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

for.cond223.preheader:                            ; preds = %if.end212
  %123 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %num_rxq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %cmp226675.not = icmp eq i16 %124, 0
  br i1 %cmp226675.not, label %for.cond223.preheader.process_link_crit_edge, label %for.cond223.preheader.for.body228_crit_edge

for.cond223.preheader.for.body228_crit_edge:      ; preds = %for.cond223.preheader
  br label %for.body228

for.cond223.preheader.process_link_crit_edge:     ; preds = %for.cond223.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_link

for.body228:                                      ; preds = %for.inc274.for.body228_crit_edge, %for.cond223.preheader.for.body228_crit_edge
  %i.7676 = phi i32 [ %inc275, %for.inc274.for.body228_crit_edge ], [ 0, %for.cond223.preheader.for.body228_crit_edge ]
  %arrayidx229 = getelementptr %struct.ice_rx_ring, ptr %call8.i.i645, i32 %i.7676
  %125 = ptrtoint ptr %rx_rings205 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rx_rings205, align 16
  %arrayidx231 = getelementptr ptr, ptr %126, i32 %i.7676
  %127 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx231, align 4
  %129 = call ptr @memcpy(ptr %arrayidx229, ptr %128, i32 512)
  %count233 = getelementptr %struct.ice_rx_ring, ptr %call8.i.i645, i32 %i.7676, i32 11
  %130 = ptrtoint ptr %count233 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv22, ptr %count233, align 2
  %desc235 = getelementptr %struct.ice_rx_ring, ptr %call8.i.i645, i32 %i.7676, i32 1
  %131 = ptrtoint ptr %desc235 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %desc235, align 4
  %132 = getelementptr %struct.ice_rx_ring, ptr %call8.i.i645, i32 %i.7676, i32 7
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %132, align 4
  %134 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %back, align 8
  %hw = getelementptr inbounds %struct.ice_pf, ptr %135, i32 0, i32 58
  %136 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %137, i32 753920
  %tail = getelementptr %struct.ice_rx_ring, ptr %call8.i.i645, i32 %i.7676, i32 6
  %138 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %add.ptr, ptr %tail, align 8
  %call240 = tail call i32 @ice_setup_rx_ring(ptr noundef %arrayidx229) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end243, label %for.body228.while.cond267.preheader_crit_edge

for.body228.while.cond267.preheader_crit_edge:    ; preds = %for.body228
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond267.preheader

if.end243:                                        ; preds = %for.body228
  %next_to_clean = getelementptr %struct.ice_rx_ring, ptr %call8.i.i645, i32 %i.7676, i32 14
  %139 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %next_to_clean, align 8
  %next_to_use = getelementptr %struct.ice_rx_ring, ptr %call8.i.i645, i32 %i.7676, i32 13
  %141 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %next_to_use, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %140, i16 %142)
  %cmp249 = icmp ugt i16 %140, %142
  br i1 %cmp249, label %if.end243.rx_unwind_crit_edge, label %cond.false

if.end243.rx_unwind_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #19
  br label %rx_unwind

cond.false:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #19
  %143 = ptrtoint ptr %count233 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %count233, align 2
  br label %rx_unwind

rx_unwind:                                        ; preds = %cond.false, %if.end243.rx_unwind_crit_edge
  %cond = phi i16 [ %144, %cond.false ], [ 0, %if.end243.rx_unwind_crit_edge ]
  %145 = xor i16 %142, -1
  %add257 = add i16 %140, %145
  %sub261 = add i16 %add257, %cond
  %call263 = tail call zeroext i1 @ice_alloc_rx_bufs(ptr noundef %arrayidx229, i16 noundef zeroext %sub261) #17
  br i1 %call263, label %rx_unwind.while.cond267.preheader_crit_edge, label %for.inc274

rx_unwind.while.cond267.preheader_crit_edge:      ; preds = %rx_unwind
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond267.preheader

while.cond267.preheader:                          ; preds = %rx_unwind.while.cond267.preheader_crit_edge, %for.body228.while.cond267.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.7676)
  %tobool268.not677 = icmp eq i32 %i.7676, 0
  br i1 %tobool268.not677, label %while.cond267.preheader.free_tx.sink.split_crit_edge, label %while.cond267.preheader.while.body269_crit_edge

while.cond267.preheader.while.body269_crit_edge:  ; preds = %while.cond267.preheader
  br label %while.body269

while.cond267.preheader.free_tx.sink.split_crit_edge: ; preds = %while.cond267.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_tx.sink.split

while.body269:                                    ; preds = %while.body269.while.body269_crit_edge, %while.cond267.preheader.while.body269_crit_edge
  %i.8678 = phi i32 [ %dec270, %while.body269.while.body269_crit_edge ], [ %i.7676, %while.cond267.preheader.while.body269_crit_edge ]
  %dec270 = add nsw i32 %i.8678, -1
  %arrayidx271 = getelementptr %struct.ice_rx_ring, ptr %call8.i.i645, i32 %dec270
  tail call void @ice_free_rx_ring(ptr noundef %arrayidx271) #17
  %tobool268.not = icmp eq i32 %dec270, 0
  br i1 %tobool268.not, label %while.body269.free_tx.sink.split_crit_edge, label %while.body269.while.body269_crit_edge

while.body269.while.body269_crit_edge:            ; preds = %while.body269
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body269

while.body269.free_tx.sink.split_crit_edge:       ; preds = %while.body269
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_tx.sink.split

for.inc274:                                       ; preds = %rx_unwind
  %inc275 = add nuw nsw i32 %i.7676, 1
  %146 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %num_rxq, align 2
  %conv225 = zext i16 %147 to i32
  %cmp226 = icmp ult i32 %inc275, %conv225
  br i1 %cmp226, label %for.inc274.for.body228_crit_edge, label %for.inc274.process_link_crit_edge

for.inc274.process_link_crit_edge:                ; preds = %for.inc274
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_link

for.inc274.for.body228_crit_edge:                 ; preds = %for.inc274
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body228

process_link:                                     ; preds = %for.inc274.process_link_crit_edge, %for.cond223.preheader.process_link_crit_edge, %process_rx.process_link_crit_edge
  %rx_rings.0 = phi ptr [ null, %process_rx.process_link_crit_edge ], [ %call8.i.i645, %for.cond223.preheader.process_link_crit_edge ], [ %call8.i.i645, %for.inc274.process_link_crit_edge ]
  %state277 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 9
  %call279 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state277) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %if.then281, label %process_link.done_crit_edge

process_link.done_crit_edge:                      ; preds = %process_link
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.then281:                                       ; preds = %process_link
  %call282 = tail call i32 @ice_down(ptr noundef %1) #17
  %tobool283.not = icmp eq ptr %tx_rings.0, null
  br i1 %tobool283.not, label %if.then281.if.end299_crit_edge, label %for.cond285.preheader

if.then281.if.end299_crit_edge:                   ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end299

for.cond285.preheader:                            ; preds = %if.then281
  %num_txq286 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 48
  %148 = ptrtoint ptr %num_txq286 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %num_txq286, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %cmp288683.not = icmp eq i16 %149, 0
  br i1 %cmp288683.not, label %for.cond285.preheader.for.end298_crit_edge, label %for.cond285.preheader.for.body290_crit_edge

for.cond285.preheader.for.body290_crit_edge:      ; preds = %for.cond285.preheader
  br label %for.body290

for.cond285.preheader.for.end298_crit_edge:       ; preds = %for.cond285.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end298

for.body290:                                      ; preds = %for.body290.for.body290_crit_edge, %for.cond285.preheader.for.body290_crit_edge
  %i.9684 = phi i32 [ %inc297, %for.body290.for.body290_crit_edge ], [ 0, %for.cond285.preheader.for.body290_crit_edge ]
  %150 = ptrtoint ptr %tx_rings31 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %tx_rings31, align 4
  %arrayidx292 = getelementptr ptr, ptr %151, i32 %i.9684
  %152 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx292, align 4
  tail call void @ice_free_tx_ring(ptr noundef %153) #17
  %154 = ptrtoint ptr %tx_rings31 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %tx_rings31, align 4
  %arrayidx294 = getelementptr ptr, ptr %155, i32 %i.9684
  %156 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx294, align 4
  %arrayidx295 = getelementptr %struct.ice_tx_ring, ptr %tx_rings.0, i32 %i.9684
  %158 = call ptr @memcpy(ptr %157, ptr %arrayidx295, i32 256)
  %inc297 = add nuw nsw i32 %i.9684, 1
  %159 = ptrtoint ptr %num_txq286 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %num_txq286, align 2
  %conv287 = zext i16 %160 to i32
  %cmp288 = icmp ult i32 %inc297, %conv287
  br i1 %cmp288, label %for.body290.for.body290_crit_edge, label %for.body290.for.end298_crit_edge

for.body290.for.end298_crit_edge:                 ; preds = %for.body290
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end298

for.body290.for.body290_crit_edge:                ; preds = %for.body290
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body290

for.end298:                                       ; preds = %for.body290.for.end298_crit_edge, %for.cond285.preheader.for.end298_crit_edge
  tail call void @kfree(ptr noundef nonnull %tx_rings.0) #17
  br label %if.end299

if.end299:                                        ; preds = %for.end298, %if.then281.if.end299_crit_edge
  %tobool300.not = icmp eq ptr %rx_rings.0, null
  br i1 %tobool300.not, label %if.end299.if.end326_crit_edge, label %for.cond302.preheader

if.end299.if.end326_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end326

for.cond302.preheader:                            ; preds = %if.end299
  %num_rxq303 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 50
  %161 = ptrtoint ptr %num_rxq303 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %num_rxq303, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %cmp305686.not = icmp eq i16 %162, 0
  br i1 %cmp305686.not, label %for.cond302.preheader.for.end325_crit_edge, label %for.cond302.preheader.for.body307_crit_edge

for.cond302.preheader.for.body307_crit_edge:      ; preds = %for.cond302.preheader
  br label %for.body307

for.cond302.preheader.for.end325_crit_edge:       ; preds = %for.cond302.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end325

for.body307:                                      ; preds = %for.body307.for.body307_crit_edge, %for.cond302.preheader.for.body307_crit_edge
  %i.10687 = phi i32 [ %inc324, %for.body307.for.body307_crit_edge ], [ 0, %for.cond302.preheader.for.body307_crit_edge ]
  %163 = ptrtoint ptr %rx_rings205 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rx_rings205, align 16
  %arrayidx309 = getelementptr ptr, ptr %164, i32 %i.10687
  %165 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx309, align 4
  tail call void @ice_free_rx_ring(ptr noundef %166) #17
  %167 = ptrtoint ptr %rx_rings205 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rx_rings205, align 16
  %arrayidx311 = getelementptr ptr, ptr %168, i32 %i.10687
  %169 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx311, align 4
  %tail312 = getelementptr inbounds %struct.ice_rx_ring, ptr %170, i32 0, i32 6
  %171 = ptrtoint ptr %tail312 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %tail312, align 8
  %arrayidx313 = getelementptr %struct.ice_rx_ring, ptr %rx_rings.0, i32 %i.10687
  %tail314 = getelementptr %struct.ice_rx_ring, ptr %rx_rings.0, i32 %i.10687, i32 6
  %173 = ptrtoint ptr %tail314 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %172, ptr %tail314, align 8
  %next_to_use316 = getelementptr %struct.ice_rx_ring, ptr %rx_rings.0, i32 %i.10687, i32 13
  %174 = ptrtoint ptr %next_to_use316 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 0, ptr %next_to_use316, align 2
  %next_to_clean318 = getelementptr %struct.ice_rx_ring, ptr %rx_rings.0, i32 %i.10687, i32 14
  %175 = ptrtoint ptr %next_to_clean318 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %next_to_clean318, align 8
  %next_to_alloc = getelementptr %struct.ice_rx_ring, ptr %rx_rings.0, i32 %i.10687, i32 15
  %176 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %next_to_alloc, align 2
  %177 = load ptr, ptr %rx_rings205, align 16
  %arrayidx321 = getelementptr ptr, ptr %177, i32 %i.10687
  %178 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx321, align 4
  %180 = call ptr @memcpy(ptr %179, ptr %arrayidx313, i32 512)
  %inc324 = add nuw nsw i32 %i.10687, 1
  %181 = ptrtoint ptr %num_rxq303 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %num_rxq303, align 2
  %conv304 = zext i16 %182 to i32
  %cmp305 = icmp ult i32 %inc324, %conv304
  br i1 %cmp305, label %for.body307.for.body307_crit_edge, label %for.body307.for.end325_crit_edge

for.body307.for.end325_crit_edge:                 ; preds = %for.body307
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end325

for.body307.for.body307_crit_edge:                ; preds = %for.body307
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body307

for.end325:                                       ; preds = %for.body307.for.end325_crit_edge, %for.cond302.preheader.for.end325_crit_edge
  tail call void @kfree(ptr noundef nonnull %rx_rings.0) #17
  br label %if.end326

if.end326:                                        ; preds = %for.end325, %if.end299.if.end326_crit_edge
  %tobool327.not = icmp eq ptr %xdp_rings.0, null
  br i1 %tobool327.not, label %if.end326.if.end343_crit_edge, label %for.cond329.preheader

if.end326.if.end343_crit_edge:                    ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end343

for.cond329.preheader:                            ; preds = %if.end326
  %num_xdp_txq330 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 60
  %183 = ptrtoint ptr %num_xdp_txq330 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %num_xdp_txq330, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %184)
  %cmp332689.not = icmp eq i16 %184, 0
  br i1 %cmp332689.not, label %for.cond329.preheader.for.end342_crit_edge, label %for.body334.lr.ph

for.cond329.preheader.for.end342_crit_edge:       ; preds = %for.cond329.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end342

for.body334.lr.ph:                                ; preds = %for.cond329.preheader
  %xdp_rings335 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 58
  br label %for.body334

for.body334:                                      ; preds = %for.body334.for.body334_crit_edge, %for.body334.lr.ph
  %i.11690 = phi i32 [ 0, %for.body334.lr.ph ], [ %inc341, %for.body334.for.body334_crit_edge ]
  %185 = ptrtoint ptr %xdp_rings335 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %xdp_rings335, align 8
  %arrayidx336 = getelementptr ptr, ptr %186, i32 %i.11690
  %187 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx336, align 4
  tail call void @ice_free_tx_ring(ptr noundef %188) #17
  %189 = ptrtoint ptr %xdp_rings335 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %xdp_rings335, align 8
  %arrayidx338 = getelementptr ptr, ptr %190, i32 %i.11690
  %191 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx338, align 4
  %arrayidx339 = getelementptr %struct.ice_tx_ring, ptr %xdp_rings.0, i32 %i.11690
  %193 = call ptr @memcpy(ptr %192, ptr %arrayidx339, i32 256)
  %inc341 = add nuw nsw i32 %i.11690, 1
  %194 = ptrtoint ptr %num_xdp_txq330 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %num_xdp_txq330, align 16
  %conv331 = zext i16 %195 to i32
  %cmp332 = icmp ult i32 %inc341, %conv331
  br i1 %cmp332, label %for.body334.for.body334_crit_edge, label %for.body334.for.end342_crit_edge

for.body334.for.end342_crit_edge:                 ; preds = %for.body334
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end342

for.body334.for.body334_crit_edge:                ; preds = %for.body334
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body334

for.end342:                                       ; preds = %for.body334.for.end342_crit_edge, %for.cond329.preheader.for.end342_crit_edge
  tail call void @kfree(ptr noundef nonnull %xdp_rings.0) #17
  br label %if.end343

if.end343:                                        ; preds = %for.end342, %if.end326.if.end343_crit_edge
  %num_tx_desc344 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 54
  %196 = ptrtoint ptr %num_tx_desc344 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %conv, ptr %num_tx_desc344, align 2
  %num_rx_desc345 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 53
  %197 = ptrtoint ptr %num_rx_desc345 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv22, ptr %num_rx_desc345, align 4
  %call346 = tail call i32 @ice_up(ptr noundef %1) #17
  br label %done

free_tx.sink.split:                               ; preds = %while.body269.free_tx.sink.split_crit_edge, %while.cond267.preheader.free_tx.sink.split_crit_edge, %while.body196.free_tx.sink.split_crit_edge, %while.cond193.preheader.free_tx.sink.split_crit_edge
  %retval.0.i.i647714.sink = phi ptr [ %call8.i.i612, %while.cond193.preheader.free_tx.sink.split_crit_edge ], [ %call8.i.i645, %while.cond267.preheader.free_tx.sink.split_crit_edge ], [ %call8.i.i645, %while.body269.free_tx.sink.split_crit_edge ], [ %call8.i.i612, %while.body196.free_tx.sink.split_crit_edge ]
  %err.6.ph = phi i32 [ %call190, %while.cond193.preheader.free_tx.sink.split_crit_edge ], [ -12, %while.cond267.preheader.free_tx.sink.split_crit_edge ], [ -12, %while.body269.free_tx.sink.split_crit_edge ], [ %call190, %while.body196.free_tx.sink.split_crit_edge ]
  %tx_rings.1.ph = phi ptr [ %call8.i.i, %while.cond193.preheader.free_tx.sink.split_crit_edge ], [ %tx_rings.0, %while.cond267.preheader.free_tx.sink.split_crit_edge ], [ %tx_rings.0, %while.body269.free_tx.sink.split_crit_edge ], [ %call8.i.i, %while.body196.free_tx.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %retval.0.i.i647714.sink) #17
  br label %free_tx

free_tx:                                          ; preds = %free_tx.sink.split, %if.end162.free_tx_crit_edge
  %err.6 = phi i32 [ -12, %if.end162.free_tx_crit_edge ], [ %err.6.ph, %free_tx.sink.split ]
  %tx_rings.1 = phi ptr [ %call8.i.i, %if.end162.free_tx_crit_edge ], [ %tx_rings.1.ph, %free_tx.sink.split ]
  %tobool348.not = icmp eq ptr %tx_rings.1, null
  br i1 %tobool348.not, label %free_tx.done_crit_edge, label %for.cond350.preheader

free_tx.done_crit_edge:                           ; preds = %free_tx
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

for.cond350.preheader:                            ; preds = %free_tx
  %num_txq351 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 48
  %198 = ptrtoint ptr %num_txq351 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %num_txq351, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %199)
  %cmp353680.not = icmp eq i16 %199, 0
  br i1 %cmp353680.not, label %for.cond350.preheader.for.end359_crit_edge, label %for.cond350.preheader.for.body355_crit_edge

for.cond350.preheader.for.body355_crit_edge:      ; preds = %for.cond350.preheader
  br label %for.body355

for.cond350.preheader.for.end359_crit_edge:       ; preds = %for.cond350.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end359

for.body355:                                      ; preds = %for.body355.for.body355_crit_edge, %for.cond350.preheader.for.body355_crit_edge
  %i.12681 = phi i32 [ %inc358, %for.body355.for.body355_crit_edge ], [ 0, %for.cond350.preheader.for.body355_crit_edge ]
  %arrayidx356 = getelementptr %struct.ice_tx_ring, ptr %tx_rings.1, i32 %i.12681
  tail call void @ice_free_tx_ring(ptr noundef %arrayidx356) #17
  %inc358 = add nuw nsw i32 %i.12681, 1
  %200 = ptrtoint ptr %num_txq351 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %num_txq351, align 2
  %conv352 = zext i16 %201 to i32
  %cmp353 = icmp ult i32 %inc358, %conv352
  br i1 %cmp353, label %for.body355.for.body355_crit_edge, label %for.body355.for.end359_crit_edge

for.body355.for.end359_crit_edge:                 ; preds = %for.body355
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end359

for.body355.for.body355_crit_edge:                ; preds = %for.body355
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body355

for.end359:                                       ; preds = %for.body355.for.end359_crit_edge, %for.cond350.preheader.for.end359_crit_edge
  tail call void @kfree(ptr noundef nonnull %tx_rings.1) #17
  br label %done

done:                                             ; preds = %for.end359, %free_tx.done_crit_edge, %if.end343, %process_link.done_crit_edge, %if.end212.done_crit_edge, %while.end155, %if.end122.done_crit_edge, %if.then107, %if.end93
  %err.7 = phi i32 [ 0, %process_link.done_crit_edge ], [ 0, %if.end343 ], [ %err.6, %for.end359 ], [ %err.6, %free_tx.done_crit_edge ], [ %call147, %while.end155 ], [ 0, %if.then107 ], [ -12, %if.end122.done_crit_edge ], [ -12, %if.end212.done_crit_edge ], [ 0, %if.end93 ]
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %state) #17
  br label %cleanup

cleanup:                                          ; preds = %done, %while.body.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.then47, %do.body43, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %err.7, %done ], [ 0, %if.then47 ], [ -16, %if.end51.cleanup_crit_edge ], [ 0, %do.body43 ], [ -16, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_get_strings(ptr noundef %netdev, i32 noundef %stringset, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call fastcc void @__ice_get_strings(ptr noundef %netdev, i32 noundef %stringset, ptr noundef %data, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call fastcc void @__ice_get_ethtool_stats(ptr noundef %netdev, ptr noundef %data, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ice_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %sset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %sset, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge3
  ]

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 4
  %alloc_txq.i = getelementptr inbounds %struct.ice_vsi, ptr %2, i32 0, i32 47
  %3 = ptrtoint ptr %alloc_txq.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %alloc_txq.i, align 64
  %conv.i = zext i16 %4 to i32
  %alloc_rxq.i = getelementptr inbounds %struct.ice_vsi, ptr %2, i32 0, i32 49
  %5 = ptrtoint ptr %alloc_rxq.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %alloc_rxq.i, align 4
  %conv2.i = zext i16 %6 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv.i
  %mul.i = shl nuw nsw i32 %add.i, 1
  %add = add nuw nsw i32 %mul.i, 90
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %entry.return_crit_edge, %entry.return_crit_edge3
  %retval.0 = phi i32 [ -95, %sw.default ], [ %add, %sw.bb ], [ 5, %entry.return_crit_edge ], [ 5, %entry.return_crit_edge3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_get_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef %ch) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %num_lan_msix.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %num_lan_msix.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_lan_msix.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %6 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv1.i = zext i16 %5 to i32
  %conv2.i = and i32 %6, 65535
  %7 = tail call i32 @llvm.umin.i32(i32 %conv2.i, i32 %conv1.i) #17
  %num_rxq.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 28, i32 0, i32 3
  %8 = ptrtoint ptr %num_rxq.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_rxq.i, align 4
  %conv9.i = zext i16 %9 to i32
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %conv9.i) #17
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 1
  %11 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_rx, align 4
  %12 = ptrtoint ptr %num_lan_msix.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_lan_msix.i, align 4
  %call.i.i.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %14 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv1.i35 = zext i16 %13 to i32
  %conv2.i36 = and i32 %14, 65535
  %15 = tail call i32 @llvm.umin.i32(i32 %conv2.i36, i32 %conv1.i35) #17
  %num_txq.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 28, i32 0, i32 5
  %16 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_txq.i, align 8
  %conv9.i37 = zext i16 %17 to i32
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %conv9.i37) #17
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 2
  %19 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_tx, align 4
  %20 = ptrtoint ptr %max_rx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_rx, align 4
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 %18)
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %23 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %max_combined, align 4
  %num_q_vectors.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_q_vectors.i, align 64
  %conv.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp9.not.i = icmp eq i16 %25, 0
  br i1 %cmp9.not.i, label %entry.ice_get_combined_cnt.exit_crit_edge, label %for.body.lr.ph.i

entry.ice_get_combined_cnt.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_get_combined_cnt.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %q_vectors.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %q_vectors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %q_vectors.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %q_idx.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc3.i, %if.end.i.for.body.i_crit_edge ]
  %combined.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %combined.1.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %27, i32 %q_idx.011.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %rx.i = getelementptr inbounds %struct.ice_q_vector, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx.i, align 16
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %tx.i = getelementptr inbounds %struct.ice_q_vector, ptr %29, i32 0, i32 9
  %32 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx.i, align 128
  %tobool2.not.i = icmp ne ptr %33, null
  %inc.i = zext i1 %tobool2.not.i to i32
  %spec.select.i = add i32 %combined.010.i, %inc.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %for.body.i.if.end.i_crit_edge
  %combined.1.i = phi i32 [ %combined.010.i, %for.body.i.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %inc3.i = add nuw nsw i32 %q_idx.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc3.i, %conv.i
  br i1 %exitcond.not.i, label %if.end.i.ice_get_combined_cnt.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.end.i.ice_get_combined_cnt.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_get_combined_cnt.exit

ice_get_combined_cnt.exit:                        ; preds = %if.end.i.ice_get_combined_cnt.exit_crit_edge, %entry.ice_get_combined_cnt.exit_crit_edge
  %combined.0.lcssa.i = phi i32 [ 0, %entry.ice_get_combined_cnt.exit_crit_edge ], [ %combined.1.i, %if.end.i.ice_get_combined_cnt.exit_crit_edge ]
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %34 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %combined.0.lcssa.i, ptr %combined_count, align 4
  %num_rxq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 50
  %35 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_rxq, align 2
  %conv = zext i16 %36 to i32
  %sub = sub i32 %conv, %combined.0.lcssa.i
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %37 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub, ptr %rx_count, align 4
  %num_txq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 48
  %38 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_txq, align 2
  %conv8 = zext i16 %39 to i32
  %sub10 = sub i32 %conv8, %combined.0.lcssa.i
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %40 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub10, ptr %tx_count, align 4
  %flags = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 21
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags, align 4
  %43 = lshr i32 %42, 7
  %.lobit = and i32 %43, 1
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %44 = ptrtoint ptr %other_count to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.lobit, ptr %other_count, align 4
  %max_other = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 3
  %45 = ptrtoint ptr %max_other to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.lobit, ptr %max_other, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_get_link_ksettings(ptr noundef %netdev, ptr noundef %ks) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i262 = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i262 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i262, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1
  %lp_advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 2
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 3
  %2 = call ptr @memset(ptr %link_modes, i32 0, i32 36)
  %3 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_info, align 4
  %link_info6 = getelementptr inbounds %struct.ice_port_info, ptr %4, i32 0, i32 13, i32 0, i32 8
  %5 = ptrtoint ptr %link_info6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %link_info6, align 2
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %add.ptr.i262 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i262, align 4
  %port_info.i = getelementptr inbounds %struct.ice_vsi, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %port_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_info.i, align 4
  tail call fastcc void @ice_phy_type_to_ethtool(ptr noundef %netdev, ptr noundef %ks) #17
  %link_speed.i = getelementptr inbounds %struct.ice_port_info, ptr %11, i32 0, i32 13, i32 0, i32 4
  %12 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %link_speed.i, align 4
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.142)
  switch i16 %13, label %sw.default.i [
    i16 1024, label %sw.bb.i
    i16 512, label %sw.bb5.i
    i16 256, label %sw.bb8.i
    i16 128, label %sw.bb11.i
    i16 64, label %sw.bb14.i
    i16 32, label %sw.bb17.i
    i16 16, label %sw.bb20.i
    i16 8, label %sw.bb23.i
    i16 4, label %sw.bb26.i
    i16 2, label %sw.bb29.i
  ]

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %15 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 100000, ptr %speed.i, align 4
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %speed7.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %16 = ptrtoint ptr %speed7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 50000, ptr %speed7.i, align 4
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %speed10.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %17 = ptrtoint ptr %speed10.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 40000, ptr %speed10.i, align 4
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %speed13.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %18 = ptrtoint ptr %speed13.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 25000, ptr %speed13.i, align 4
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %speed16.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %19 = ptrtoint ptr %speed16.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20000, ptr %speed16.i, align 4
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %speed19.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %20 = ptrtoint ptr %speed19.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10000, ptr %speed19.i, align 4
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %speed22.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %21 = ptrtoint ptr %speed22.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5000, ptr %speed22.i, align 4
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %speed25.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %22 = ptrtoint ptr %speed25.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2500, ptr %speed25.i, align 4
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %speed28.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %23 = ptrtoint ptr %speed28.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1000, ptr %speed28.i, align 4
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %speed31.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %24 = ptrtoint ptr %speed31.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 100, ptr %speed31.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.36, i32 noundef %conv.i) #20
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb29.i, %sw.bb26.i, %sw.bb23.i, %sw.bb20.i, %sw.bb17.i, %sw.bb14.i, %sw.bb11.i, %sw.bb8.i, %sw.bb5.i, %sw.bb.i
  %duplex.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 2
  %25 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %duplex.i, align 4
  %an_info.i = getelementptr inbounds %struct.ice_port_info, ptr %11, i32 0, i32 13, i32 0, i32 9
  %26 = ptrtoint ptr %an_info.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %an_info.i, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end.i_crit_edge, label %if.then.i

sw.epilog.i.if.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lp_advertising, align 4
  %or.i.i = or i32 %30, 64
  store i32 %or.i.i, ptr %lp_advertising, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.i.if.end.i_crit_edge
  %fc.i = getelementptr inbounds %struct.ice_port_info, ptr %11, i32 0, i32 11
  %31 = ptrtoint ptr %fc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fc.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %32, label %sw.default52.i [
    i32 3, label %sw.bb36.i
    i32 2, label %sw.bb40.i
    i32 1, label %sw.bb47.i
  ]

sw.bb36.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %34 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lp_advertising, align 4
  %or.i83.i = or i32 %35, 8192
  store i32 %or.i83.i, ptr %lp_advertising, align 4
  br label %if.end

sw.bb40.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lp_advertising, align 4
  %or.i85.i = or i32 %37, 24576
  store i32 %or.i85.i, ptr %lp_advertising, align 4
  br label %if.end

sw.bb47.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lp_advertising, align 4
  %or.i86.i = or i32 %39, 16384
  store i32 %or.i86.i, ptr %lp_advertising, align 4
  br label %if.end

sw.default52.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lp_advertising, align 4
  %and.i87.i = and i32 %41, -24577
  store i32 %and.i87.i, ptr %lp_advertising, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @ice_phy_type_to_ethtool(ptr noundef %netdev, ptr noundef %ks) #17
  %speed.i263 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 1
  %42 = ptrtoint ptr %speed.i263 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %speed.i263, align 4
  %duplex.i264 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 2
  %43 = ptrtoint ptr %duplex.i264 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %duplex.i264, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.default52.i, %sw.bb47.i, %sw.bb40.i, %sw.bb36.i
  %an_info = getelementptr inbounds %struct.ice_port_info, ptr %4, i32 0, i32 13, i32 0, i32 9
  %44 = ptrtoint ptr %an_info to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %an_info, align 1
  %46 = and i8 %45, 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 5
  %47 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %autoneg, align 1
  %48 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port_info, align 4
  %media_type = getelementptr inbounds %struct.ice_port_info, ptr %49, i32 0, i32 13, i32 4
  %50 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %media_type, align 8
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %51, label %if.end.sw.epilog_crit_edge [
    i32 1, label %if.end.sw.epilog.sink.split_crit_edge
    i32 2, label %if.end.sw.epilog.sink.split.sink.split_crit_edge
    i32 3, label %sw.bb26
    i32 4, label %sw.bb35
  ]

if.end.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split.sink.split

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split.sink.split

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %sw.bb35, %sw.bb26, %if.end.sw.epilog.sink.split.sink.split_crit_edge
  %.sink269 = phi i32 [ 65536, %sw.bb26 ], [ 1024, %sw.bb35 ], [ 128, %if.end.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink.ph.ph = phi i8 [ -17, %sw.bb26 ], [ 5, %sw.bb35 ], [ 0, %if.end.sw.epilog.sink.split.sink.split_crit_edge ]
  %53 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %link_modes, align 4
  %or.i236 = or i32 %54, %.sink269
  store i32 %or.i236, ptr %link_modes, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %if.end.sw.epilog.sink.split_crit_edge
  %advertising.sink267 = phi ptr [ %link_modes, %if.end.sw.epilog.sink.split_crit_edge ], [ %advertising, %sw.epilog.sink.split.sink.split ]
  %.sink266 = phi i32 [ 1024, %if.end.sw.epilog.sink.split_crit_edge ], [ %.sink269, %sw.epilog.sink.split.sink.split ]
  %.sink.ph = phi i8 [ 3, %if.end.sw.epilog.sink.split_crit_edge ], [ %.sink.ph.ph, %sw.epilog.sink.split.sink.split ]
  %55 = ptrtoint ptr %advertising.sink267 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %advertising.sink267, align 4
  %or.i241 = or i32 %56, %.sink266
  store i32 %or.i241, ptr %advertising.sink267, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %.sink = phi i8 [ -1, %if.end.sw.epilog_crit_edge ], [ %.sink.ph, %sw.epilog.sink.split ]
  %port45 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ks, i32 0, i32 3
  %57 = ptrtoint ptr %port45 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %.sink, ptr %port45, align 1
  %58 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %link_modes, align 4
  %or.i242 = or i32 %59, 8192
  store i32 %or.i242, ptr %link_modes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 560) #22
  %tobool50.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool50.not, label %sw.epilog.cleanup_crit_edge, label %if.end52

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end52:                                         ; preds = %sw.epilog
  %61 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %port_info, align 4
  %call54 = tail call i32 @ice_aq_get_phy_caps(ptr noundef %62, i1 noundef zeroext false, i8 noundef zeroext 4, ptr noundef nonnull %call7.i.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.done_crit_edge

if.end52.done_crit_edge:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end57:                                         ; preds = %if.end52
  %caps58 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call7.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %caps58 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %caps58, align 8
  %conv59 = zext i8 %64 to i32
  %and64 = and i32 %conv59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %65 = and i32 %conv59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %.not = icmp eq i32 %65, 3
  br i1 %.not, label %if.then66, label %if.else73

if.then66:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  %66 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %advertising, align 4
  %or.i244 = or i32 %67, 24576
  br label %if.end103

if.else73:                                        ; preds = %if.end57
  %and60 = and i32 %conv59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %68 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %advertising, align 4
  br i1 %tobool61.not, label %if.else82, label %if.then78

if.then78:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #19
  %or.i245 = or i32 %69, 16384
  br label %if.end103

if.else82:                                        ; preds = %if.else73
  br i1 %tobool65.not, label %if.else94, label %if.then87

if.then87:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #19
  %or.i247 = or i32 %69, 24576
  br label %if.end103

if.else94:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #19
  %and.i248 = and i32 %69, -24577
  br label %if.end103

if.end103:                                        ; preds = %if.else94, %if.then87, %if.then78, %if.then66
  %or.i245.sink = phi i32 [ %or.i245, %if.then78 ], [ %and.i248, %if.else94 ], [ %or.i247, %if.then87 ], [ %or.i244, %if.then66 ]
  %70 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or.i245.sink, ptr %advertising, align 4
  %add.ptr.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i, align 4
  %or.i249 = or i32 %72, 131072
  store i32 %or.i249, ptr %add.ptr.i, align 4
  %link_fec_options = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call7.i.i, i32 0, i32 8
  %73 = ptrtoint ptr %link_fec_options to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %link_fec_options, align 2
  %conv107 = zext i8 %74 to i32
  %75 = and i32 %conv107, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %if.end103.if.end118_crit_edge, label %if.then114

if.end103.if.end118_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end118

if.then114:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  %or.i251 = or i32 %72, 655360
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or.i251, ptr %add.ptr.i, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %if.end103.if.end118_crit_edge
  %78 = and i32 %conv107, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %if.end118.if.end132_crit_edge, label %if.then128

if.end118.if.end132_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end132

if.then128:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #19
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i, align 4
  %or.i253 = or i32 %81, 262144
  store i32 %or.i253, ptr %add.ptr.i, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.end118.if.end132_crit_edge
  %82 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %port_info, align 4
  %call134 = tail call i32 @ice_aq_get_phy_caps(ptr noundef %83, i1 noundef zeroext false, i8 noundef zeroext 2, ptr noundef nonnull %call7.i.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end132.done_crit_edge

if.end132.done_crit_edge:                         ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end137:                                        ; preds = %if.end132
  %add.ptr.i254 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %84 = ptrtoint ptr %add.ptr.i254 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.i254, align 4
  %or.i255 = or i32 %85, 131072
  store i32 %or.i255, ptr %add.ptr.i254, align 4
  %86 = ptrtoint ptr %link_fec_options to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %link_fec_options, align 2
  %88 = and i8 %87, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %if.end137.if.end154_crit_edge, label %if.then150

if.end137.if.end154_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154

if.then150:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #19
  %or.i257 = or i32 %85, 655360
  %90 = ptrtoint ptr %add.ptr.i254 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or.i257, ptr %add.ptr.i254, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then150, %if.end137.if.end154_crit_edge
  %91 = and i8 %87, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool158.not = icmp eq i8 %91, 0
  br i1 %tobool158.not, label %if.end154.if.end163_crit_edge, label %if.then159

if.end154.if.end163_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end163

if.then159:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #19
  %92 = ptrtoint ptr %add.ptr.i254 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i254, align 4
  %or.i259 = or i32 %93, 262144
  store i32 %or.i259, ptr %add.ptr.i254, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then159, %if.end154.if.end163_crit_edge
  %call164 = tail call zeroext i1 @ice_is_phy_caps_an_enabled(ptr noundef nonnull %call7.i.i) #17
  br i1 %call164, label %if.then165, label %if.end163.done_crit_edge

if.end163.done_crit_edge:                         ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.then165:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #19
  %94 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %link_modes, align 4
  %or.i260 = or i32 %95, 64
  store i32 %or.i260, ptr %link_modes, align 4
  %96 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %advertising, align 4
  %or.i261 = or i32 %97, 64
  store i32 %or.i261, ptr %advertising, align 4
  br label %done

done:                                             ; preds = %if.then165, %if.end163.done_crit_edge, %if.end132.done_crit_edge, %if.end52.done_crit_edge
  %err.0 = phi i32 [ %call54, %if.end52.done_crit_edge ], [ %call134, %if.end132.done_crit_edge ], [ 0, %if.then165 ], [ 0, %if.end163.done_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %done, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %done ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_set_link_ksettings(ptr noundef %netdev, ptr noundef %ks) #1 align 64 {
entry:
  %copy_ks = alloca %struct.ethtool_link_ksettings, align 4
  %safe_ks = alloca %struct.ethtool_link_ksettings, align 4
  %config = alloca %struct.ice_aqc_set_phy_cfg_data, align 8
  %autoneg_changed = alloca i8, align 1
  %phy_type_high = alloca i64, align 8
  %phy_type_low = alloca i64, align 8
  %linkup = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %copy_ks) #17
  %0 = call ptr @memcpy(ptr %copy_ks, ptr %ks, i32 88)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %safe_ks) #17
  %1 = call ptr @memset(ptr %safe_ks, i32 0, i32 88)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #17
  %2 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %config, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %config, i32 0, i32 2
  %4 = call ptr @memset(ptr %config, i32 255, i32 24)
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %back, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %autoneg_changed) #17
  %9 = ptrtoint ptr %autoneg_changed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %autoneg_changed, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phy_type_high) #17
  %10 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %phy_type_high, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phy_type_low) #17
  %11 = ptrtoint ptr %phy_type_low to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %phy_type_low, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %linkup) #17
  %12 = ptrtoint ptr %linkup to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %linkup, align 1, !annotation !304
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port_info, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %media_type = getelementptr inbounds %struct.ice_port_info, ptr %14, i32 0, i32 13, i32 4
  %15 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %media_type, align 8
  %.off = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.end.if.end18_crit_edge, label %land.lhs.true13

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

land.lhs.true13:                                  ; preds = %if.end
  %link_info15 = getelementptr inbounds %struct.ice_port_info, ptr %14, i32 0, i32 13, i32 0, i32 8
  %17 = ptrtoint ptr %link_info15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %link_info15, align 2
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool16.not = icmp eq i8 %19, 0
  br i1 %tobool16.not, label %land.lhs.true13.if.end18_crit_edge, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true13.if.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true13.if.end18_crit_edge, %if.end.if.end18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 560) #22
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %call23 = tail call zeroext i1 @ice_fw_supports_report_dflt_cfg(ptr noundef %22) #17
  %. = select i1 %call23, i8 8, i8 2
  %call26 = tail call i32 @ice_aq_get_phy_caps(ptr noundef nonnull %14, i1 noundef zeroext false, i8 noundef zeroext %., ptr noundef nonnull %call7.i.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.end30, label %if.end22.done_crit_edge

if.end22.done_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end30:                                         ; preds = %if.end22
  %autoneg31 = getelementptr inbounds %struct.ethtool_link_settings, ptr %copy_ks, i32 0, i32 5
  %23 = ptrtoint ptr %autoneg31 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %autoneg31, align 1
  call fastcc void @ice_phy_type_to_ethtool(ptr noundef %netdev, ptr noundef nonnull %safe_ks)
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %copy_ks, i32 0, i32 1, i32 1
  %link_modes32 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %safe_ks, i32 0, i32 1
  %call.i = call i32 @__bitmap_subset(ptr noundef %advertising, ptr noundef %link_modes32, i32 noundef 92) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end30
  %flags = getelementptr inbounds %struct.ice_pf, ptr %8, i32 0, i32 21
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool39.not = icmp eq i32 %27, 0
  br i1 %tobool39.not, label %if.then40, label %if.then36.done_crit_edge

if.then36.done_crit_edge:                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.37) #20
  br label %done

if.end42:                                         ; preds = %if.end30
  %28 = getelementptr inbounds i8, ptr %safe_ks, i32 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 84)
  %30 = ptrtoint ptr %copy_ks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %copy_ks, align 4
  %32 = ptrtoint ptr %safe_ks to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %safe_ks, align 4
  %link_mode_masks_nwords = getelementptr inbounds %struct.ethtool_link_settings, ptr %copy_ks, i32 0, i32 9
  %33 = ptrtoint ptr %link_mode_masks_nwords to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %link_mode_masks_nwords, align 1
  %link_mode_masks_nwords48 = getelementptr inbounds %struct.ethtool_link_settings, ptr %safe_ks, i32 0, i32 9
  %35 = ptrtoint ptr %link_mode_masks_nwords48 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %link_mode_masks_nwords48, align 1
  %call49 = call i32 @ice_get_link_ksettings(ptr noundef %netdev, ptr noundef nonnull %safe_ks)
  %autoneg51 = getelementptr inbounds %struct.ethtool_link_settings, ptr %safe_ks, i32 0, i32 5
  %36 = ptrtoint ptr %autoneg51 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %autoneg51, align 1
  %38 = ptrtoint ptr %autoneg31 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %autoneg31, align 1
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %safe_ks, i32 0, i32 1
  %39 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %speed, align 4
  %speed56 = getelementptr inbounds %struct.ethtool_link_settings, ptr %copy_ks, i32 0, i32 1
  %41 = ptrtoint ptr %speed56 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %speed56, align 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %copy_ks, ptr noundef nonnull dereferenceable(48) %safe_ks, i32 48) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool60.not = icmp eq i32 %bcmp, 0
  br i1 %tobool60.not, label %while.cond.preheader, label %if.end42.done_crit_edge

if.end42.done_crit_edge:                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

while.cond.preheader:                             ; preds = %if.end42
  %state = getelementptr inbounds %struct.ice_pf, ptr %8, i32 0, i32 20
  %call64216 = call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %state) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64216)
  %tobool65.not217 = icmp eq i32 %call64216, 0
  br i1 %tobool65.not217, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %if.end68.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %timeout.0218 = phi i8 [ %dec, %if.end68.while.body_crit_edge ], [ 50, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i8 %timeout.0218, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool66.not = icmp eq i8 %dec, 0
  br i1 %tobool66.not, label %while.body.done_crit_edge, label %if.end68

while.body.done_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end68:                                         ; preds = %while.body
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #17
  %call64 = call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %state) #17
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end68.while.end_crit_edge, label %if.end68.while.body_crit_edge

if.end68.while.body_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end68.while.end_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end68.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %curr_user_phy_cfg = getelementptr inbounds %struct.ice_port_info, ptr %14, i32 0, i32 13, i32 9
  %42 = call ptr @memcpy(ptr %config, ptr %curr_user_phy_cfg, i32 24)
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %3, align 8
  %45 = or i8 %44, 32
  store i8 %45, ptr %3, align 8
  %call72 = call fastcc i32 @ice_setup_autoneg(ptr noundef nonnull %14, ptr noundef nonnull %safe_ks, ptr noundef nonnull %config, i8 noundef zeroext %24, ptr noundef nonnull %autoneg_changed, ptr noundef %netdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %while.end.done_crit_edge

while.end.done_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end75:                                         ; preds = %while.end
  %get_link_info = getelementptr inbounds %struct.ice_port_info, ptr %14, i32 0, i32 13, i32 5
  %46 = ptrtoint ptr %get_link_info to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %get_link_info, align 4
  %call77 = call i32 @ice_get_link_status(ptr noundef nonnull %14, ptr noundef nonnull %linkup) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.done_crit_edge

if.end75.done_crit_edge:                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end80:                                         ; preds = %if.end75
  %curr_user_speed_req = getelementptr inbounds %struct.ice_port_info, ptr %14, i32 0, i32 13, i32 6
  %47 = ptrtoint ptr %curr_user_speed_req to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %curr_user_speed_req, align 2
  %call82 = call fastcc zeroext i16 @ice_ksettings_find_adv_link_speed(ptr noundef %ks)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call82)
  %tobool83.not = icmp eq i16 %call82, 0
  %spec.select = select i1 %tobool83.not, i16 %48, i16 %call82
  call void @ice_update_phy_type(ptr noundef nonnull %phy_type_low, ptr noundef nonnull %phy_type_high, i16 noundef zeroext %spec.select) #17
  %49 = ptrtoint ptr %autoneg_changed to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %autoneg_changed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool86.not = icmp eq i8 %50, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select, i16 %48)
  %cmp90 = icmp eq i16 %spec.select, %48
  %or.cond = select i1 %tobool86.not, i1 %cmp90, i1 false
  br i1 %or.cond, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.38) #20
  br label %done

if.end93:                                         ; preds = %if.end80
  %req_speeds = getelementptr inbounds %struct.ice_port_info, ptr %14, i32 0, i32 13, i32 0, i32 5
  %51 = ptrtoint ptr %req_speeds to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %spec.select, ptr %req_speeds, align 2
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %3, align 8
  %54 = or i8 %53, 8
  store i8 %54, ptr %3, align 8
  %55 = ptrtoint ptr %phy_type_low to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %phy_type_low, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %tobool100.not = icmp eq i64 %56, 0
  br i1 %tobool100.not, label %lor.lhs.false, label %if.end93.if.end103_crit_edge

if.end93.if.end103_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

lor.lhs.false:                                    ; preds = %if.end93
  %57 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %phy_type_high, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %58)
  %tobool101.not = icmp eq i64 %58, 0
  br i1 %tobool101.not, label %if.then102, label %lor.lhs.false.if.end103_crit_edge

lor.lhs.false.if.end103_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

if.then102:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.37) #20
  br label %done

if.end103:                                        ; preds = %lor.lhs.false.if.end103_crit_edge, %if.end93.if.end103_crit_edge
  %59 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %phy_type_high, align 8
  %61 = call i64 @llvm.bswap.i64(i64 %60)
  %phy_type_high104 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call7.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %phy_type_high104 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %phy_type_high104, align 8
  %and105 = and i64 %61, %63
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %and105, ptr %2, align 8
  %65 = call i64 @llvm.bswap.i64(i64 %56)
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %call7.i.i, align 8
  %and108 = and i64 %67, %65
  %68 = ptrtoint ptr %config to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %and108, ptr %config, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and105)
  %tobool111.not = icmp eq i64 %and105, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and108)
  %tobool114.not = icmp eq i64 %and108, 0
  %or.cond213 = select i1 %tobool111.not, i1 %tobool114.not, i1 false
  br i1 %or.cond213, label %if.then115, label %if.end103.if.end127_crit_edge

if.end103.if.end127_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end127

if.then115:                                       ; preds = %if.end103
  %flags116 = getelementptr inbounds %struct.ice_pf, ptr %8, i32 0, i32 21
  %69 = ptrtoint ptr %flags116 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flags116, align 4
  %71 = and i32 %70, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool119.not = icmp eq i32 %71, 0
  br i1 %tobool119.not, label %if.else125, label %if.then120

if.then120:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #19
  %nvm_phy_type_hi = getelementptr inbounds %struct.ice_pf, ptr %8, i32 0, i32 72
  %72 = ptrtoint ptr %nvm_phy_type_hi to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %nvm_phy_type_hi, align 8
  %and121 = and i64 %73, %61
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %and121, ptr %2, align 8
  %nvm_phy_type_lo = getelementptr inbounds %struct.ice_pf, ptr %8, i32 0, i32 71
  %75 = ptrtoint ptr %nvm_phy_type_lo to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %nvm_phy_type_lo, align 8
  %and123 = and i64 %76, %65
  %77 = ptrtoint ptr %config to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %and123, ptr %config, align 8
  br label %if.end127

if.else125:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.37) #20
  br label %done

if.end127:                                        ; preds = %if.then120, %if.end103.if.end127_crit_edge
  %link_info130 = getelementptr inbounds %struct.ice_port_info, ptr %14, i32 0, i32 13, i32 0, i32 8
  %78 = ptrtoint ptr %link_info130 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %link_info130, align 2
  %80 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool133.not = icmp eq i8 %80, 0
  br i1 %tobool133.not, label %if.end127.if.end136_crit_edge, label %if.then134

if.end127.if.end136_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end136

if.then134:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #19
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i, align 4
  call void @ice_print_link_msg(ptr noundef %82, i1 noundef zeroext false) #17
  call void @netif_carrier_off(ptr noundef %netdev) #17
  call void @netif_tx_stop_all_queues(ptr noundef %netdev) #17
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.end127.if.end136_crit_edge
  %hw137 = getelementptr inbounds %struct.ice_pf, ptr %8, i32 0, i32 58
  %call138 = call i32 @ice_aq_set_phy_cfg(ptr noundef %hw137, ptr noundef nonnull %14, ptr noundef nonnull %config, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %if.then140

if.then140:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.39) #20
  br label %done

if.end141:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #19
  %83 = ptrtoint ptr %curr_user_speed_req to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %spec.select, ptr %curr_user_speed_req, align 2
  br label %done

done:                                             ; preds = %if.end141, %if.then140, %if.else125, %if.then102, %if.then92, %if.end75.done_crit_edge, %while.end.done_crit_edge, %while.body.done_crit_edge, %if.end42.done_crit_edge, %if.then40, %if.then36.done_crit_edge, %if.end22.done_crit_edge
  %err.1 = phi i32 [ %call26, %if.end22.done_crit_edge ], [ %call72, %while.end.done_crit_edge ], [ %call77, %if.end75.done_crit_edge ], [ %call138, %if.then140 ], [ 0, %if.end141 ], [ -95, %if.else125 ], [ -95, %if.then102 ], [ 0, %if.then92 ], [ -95, %if.then40 ], [ -95, %if.then36.done_crit_edge ], [ -95, %if.end42.done_crit_edge ], [ -16, %while.body.done_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  %state144 = getelementptr inbounds %struct.ice_pf, ptr %8, i32 0, i32 20
  call void @_clear_bit(i32 noundef 21, ptr noundef %state144) #17
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end18.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %done ], [ -5, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true13.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %linkup) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phy_type_low) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phy_type_high) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %autoneg_changed) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #17
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %safe_ks) #17
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %copy_ks) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_wol_supported(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_set_link(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_acquire_nvm(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_aq_str(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_read_flat_nvm(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_release_nvm(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_xsk_any_rx_ring_ena(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_setup_tx_ring(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_clean_tx_ring(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_setup_rx_ring(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_alloc_rx_bufs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_free_rx_ring(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_down(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_free_tx_ring(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_up(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ice_get_strings(ptr noundef %netdev, i32 noundef %stringset, ptr noundef %data, ptr nocapture noundef readonly %vsi) unnamed_addr #1 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #17
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %p, align 4
  %1 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %stringset, label %entry.cleanup_crit_edge [
    i32 1, label %for.body.preheader
    i32 0, label %sw.bb44
    i32 2, label %for.body49.preheader
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body49.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @ice_gstrings_priv_flags) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([5 x %struct.ice_priv_flag], ptr @ice_gstrings_priv_flags, i32 0, i32 1)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([5 x %struct.ice_priv_flag], ptr @ice_gstrings_priv_flags, i32 0, i32 2)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([5 x %struct.ice_priv_flag], ptr @ice_gstrings_priv_flags, i32 0, i32 3)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([5 x %struct.ice_priv_flag], ptr @ice_gstrings_priv_flags, i32 0, i32 4)) #17
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @ice_gstrings_vsi_stats) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 1)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 2)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 3)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 4)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 5)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 6)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 7)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 8)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 9)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 10)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 11)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 12)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 13)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 14)) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 15)) #17
  %call = call zeroext i1 @ice_is_port_repr_netdev(ptr noundef %netdev) #17
  br i1 %call, label %for.body.preheader.cleanup_crit_edge, label %for.cond1.preheader

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond1.preheader:                              ; preds = %for.body.preheader
  %alloc_txq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 47
  %2 = ptrtoint ptr %alloc_txq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %alloc_txq, align 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp287.not = icmp eq i16 %3, 0
  br i1 %cmp287.not, label %for.cond1.preheader.for.cond8.preheader_crit_edge, label %for.cond1.preheader.for.body4_crit_edge

for.cond1.preheader.for.body4_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body4

for.cond1.preheader.for.cond8.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.body4.for.cond8.preheader_crit_edge, %for.cond1.preheader.for.cond8.preheader_crit_edge
  %alloc_rxq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 49
  %4 = ptrtoint ptr %alloc_rxq to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %alloc_rxq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp1090.not = icmp eq i16 %5, 0
  br i1 %cmp1090.not, label %for.cond8.preheader.for.end15_crit_edge, label %for.cond8.preheader.for.body12_crit_edge

for.cond8.preheader.for.body12_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body12

for.cond8.preheader.for.end15_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end15

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond1.preheader.for.body4_crit_edge
  %i.188 = phi i32 [ %inc6, %for.body4.for.body4_crit_edge ], [ 0, %for.cond1.preheader.for.body4_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.25, i32 noundef %i.188) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.26, i32 noundef %i.188) #17
  %inc6 = add nuw nsw i32 %i.188, 1
  %6 = ptrtoint ptr %alloc_txq to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %alloc_txq, align 64
  %conv = zext i16 %7 to i32
  %cmp2 = icmp ult i32 %inc6, %conv
  br i1 %cmp2, label %for.body4.for.body4_crit_edge, label %for.body4.for.cond8.preheader_crit_edge

for.body4.for.cond8.preheader_crit_edge:          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond8.preheader

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body4

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.cond8.preheader.for.body12_crit_edge
  %i.291 = phi i32 [ %inc14, %for.body12.for.body12_crit_edge ], [ 0, %for.cond8.preheader.for.body12_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.27, i32 noundef %i.291) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.28, i32 noundef %i.291) #17
  %inc14 = add nuw nsw i32 %i.291, 1
  %8 = ptrtoint ptr %alloc_rxq to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %alloc_rxq, align 4
  %conv9 = zext i16 %9 to i32
  %cmp10 = icmp ult i32 %inc14, %conv9
  br i1 %cmp10, label %for.body12.for.body12_crit_edge, label %for.body12.for.end15_crit_edge

for.body12.for.end15_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end15

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body12

for.end15:                                        ; preds = %for.body12.for.end15_crit_edge, %for.cond8.preheader.for.end15_crit_edge
  %type = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 17
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp16.not = icmp eq i32 %11, 0
  br i1 %cmp16.not, label %for.end15.for.body23_crit_edge, label %for.end15.cleanup_crit_edge

for.end15.cleanup_crit_edge:                      ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.end15.for.body23_crit_edge:                   ; preds = %for.end15
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.end15.for.body23_crit_edge
  %i.392 = phi i32 [ %inc28, %for.body23.for.body23_crit_edge ], [ 0, %for.end15.for.body23_crit_edge ]
  %arrayidx24 = getelementptr [42 x %struct.ice_stats], ptr @ice_gstrings_pf_stats, i32 0, i32 %i.392
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef %arrayidx24) #17
  %inc28 = add nuw nsw i32 %i.392, 1
  %exitcond.not = icmp eq i32 %inc28, 42
  br i1 %exitcond.not, label %for.body33.preheader, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body23

for.body33.preheader:                             ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.29, i32 noundef 0) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.30, i32 noundef 0) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.29, i32 noundef 1) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.30, i32 noundef 1) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.29, i32 noundef 2) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.30, i32 noundef 2) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.29, i32 noundef 3) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.30, i32 noundef 3) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.29, i32 noundef 4) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.30, i32 noundef 4) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.29, i32 noundef 5) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.30, i32 noundef 5) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.29, i32 noundef 6) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.30, i32 noundef 6) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.29, i32 noundef 7) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.30, i32 noundef 7) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.31, i32 noundef 0) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.32, i32 noundef 0) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.31, i32 noundef 1) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.32, i32 noundef 1) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.31, i32 noundef 2) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.32, i32 noundef 2) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.31, i32 noundef 3) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.32, i32 noundef 3) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.31, i32 noundef 4) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.32, i32 noundef 4) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.31, i32 noundef 5) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.32, i32 noundef 5) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.31, i32 noundef 6) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.32, i32 noundef 6) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.31, i32 noundef 7) #17
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.32, i32 noundef 7) #17
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %12 = call ptr @memcpy(ptr %data, ptr @ice_gstrings_test, i32 160)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb44, %for.body33.preheader, %for.end15.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %for.body49.preheader, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_port_repr_netdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ice_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef writeonly %data, ptr noundef %vsi) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  tail call void @ice_update_pf_stats(ptr noundef %1) #17
  tail call void @ice_update_vsi_stats(ptr noundef %vsi) #17
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %cond.end.for.body_crit_edge ]
  %stat_offset = getelementptr [16 x %struct.ice_stats], ptr @ice_gstrings_vsi_stats, i32 0, i32 %i.011, i32 2
  %2 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %vsi, i32 %3
  %4 = lshr i32 13311, %i.011
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not = icmp eq i32 %5, 0
  br i1 %cmp2.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %conv = zext i32 %9 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %conv, %cond.false ]
  %inc = add nuw nsw i32 %i.011, 1
  %arrayidx3 = getelementptr i64, ptr %data, i32 %i.011
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %cond, ptr %arrayidx3, align 8
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %cond.end
  %call = tail call zeroext i1 @ice_is_port_repr_netdev(ptr noundef %netdev) #17
  br i1 %call, label %for.end.cleanup_crit_edge, label %if.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %for.end
  %11 = tail call i32 @llvm.read_register.i32(metadata !291) #17
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !305
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %alloc_txq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 47
  %15 = ptrtoint ptr %alloc_txq to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %alloc_txq, align 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp713.not = icmp eq i16 %16, 0
  br i1 %cmp713.not, label %rcu_read_lock.exit.for.cond26.preheader_crit_edge, label %do.end.lr.ph

rcu_read_lock.exit.for.cond26.preheader_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond26.preheader

do.end.lr.ph:                                     ; preds = %rcu_read_lock.exit
  %tx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 5
  br label %do.end

for.cond26.preheader:                             ; preds = %for.inc23.for.cond26.preheader_crit_edge, %rcu_read_lock.exit.for.cond26.preheader_crit_edge
  %i.1.lcssa = phi i32 [ 16, %rcu_read_lock.exit.for.cond26.preheader_crit_edge ], [ %i.2, %for.inc23.for.cond26.preheader_crit_edge ]
  %alloc_rxq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 49
  %17 = ptrtoint ptr %alloc_rxq to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %alloc_rxq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp2817.not = icmp eq i16 %18, 0
  br i1 %cmp2817.not, label %for.cond26.preheader.for.end54_crit_edge, label %do.end33.lr.ph

for.cond26.preheader.for.end54_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end54

do.end33.lr.ph:                                   ; preds = %for.cond26.preheader
  %rx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 4
  br label %do.end33

do.end:                                           ; preds = %for.inc23.do.end_crit_edge, %do.end.lr.ph
  %i.115 = phi i32 [ 16, %do.end.lr.ph ], [ %i.2, %for.inc23.do.end_crit_edge ]
  %j.114 = phi i32 [ 0, %do.end.lr.ph ], [ %inc24, %for.inc23.do.end_crit_edge ]
  %19 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_rings, align 4
  %arrayidx10 = getelementptr ptr, ptr %20, i32 %j.114
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %arrayidx10, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %stats12 = getelementptr inbounds %struct.ice_tx_ring, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %stats12 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %stats12, align 8
  %arrayidx14 = getelementptr i64, ptr %data, i32 %i.115
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx14, align 8
  %bytes = getelementptr inbounds %struct.ice_tx_ring, ptr %22, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bytes, align 8
  br label %for.inc23

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx19 = getelementptr i64, ptr %data, i32 %i.115
  %28 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %arrayidx19, align 8
  br label %for.inc23

for.inc23:                                        ; preds = %if.else, %if.then11
  %.sink = phi i64 [ %27, %if.then11 ], [ 0, %if.else ]
  %inc13.sink = or i32 %i.115, 1
  %arrayidx17 = getelementptr i64, ptr %data, i32 %inc13.sink
  %29 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %.sink, ptr %arrayidx17, align 8
  %i.2 = add nuw nsw i32 %i.115, 2
  %inc24 = add nuw nsw i32 %j.114, 1
  %30 = ptrtoint ptr %alloc_txq to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %alloc_txq, align 64
  %conv6 = zext i16 %31 to i32
  %cmp7 = icmp ult i32 %inc24, %conv6
  br i1 %cmp7, label %for.inc23.do.end_crit_edge, label %for.inc23.for.cond26.preheader_crit_edge

for.inc23.for.cond26.preheader_crit_edge:         ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond26.preheader

for.inc23.do.end_crit_edge:                       ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end33:                                         ; preds = %for.inc52.do.end33_crit_edge, %do.end33.lr.ph
  %i.319 = phi i32 [ %i.1.lcssa, %do.end33.lr.ph ], [ %i.4, %for.inc52.do.end33_crit_edge ]
  %j.218 = phi i32 [ 0, %do.end33.lr.ph ], [ %inc53, %for.inc52.do.end33_crit_edge ]
  %32 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_rings, align 16
  %arrayidx35 = getelementptr ptr, ptr %33, i32 %j.218
  %34 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %35, null
  br i1 %tobool36.not, label %if.else46, label %if.then37

if.then37:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #19
  %stats38 = getelementptr inbounds %struct.ice_rx_ring, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %stats38 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %stats38, align 8
  %arrayidx41 = getelementptr i64, ptr %data, i32 %i.319
  %38 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx41, align 8
  %bytes43 = getelementptr inbounds %struct.ice_rx_ring, ptr %35, i32 0, i32 19, i32 1
  %39 = ptrtoint ptr %bytes43 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %bytes43, align 8
  br label %for.inc52

if.else46:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx48 = getelementptr i64, ptr %data, i32 %i.319
  %41 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %arrayidx48, align 8
  br label %for.inc52

for.inc52:                                        ; preds = %if.else46, %if.then37
  %.sink30 = phi i64 [ %40, %if.then37 ], [ 0, %if.else46 ]
  %inc40.sink = add nuw nsw i32 %i.319, 1
  %arrayidx45 = getelementptr i64, ptr %data, i32 %inc40.sink
  %42 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %.sink30, ptr %arrayidx45, align 8
  %i.4 = add nuw nsw i32 %i.319, 2
  %inc53 = add nuw nsw i32 %j.218, 1
  %43 = ptrtoint ptr %alloc_rxq to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %alloc_rxq, align 4
  %conv27 = zext i16 %44 to i32
  %cmp28 = icmp ult i32 %inc53, %conv27
  br i1 %cmp28, label %for.inc52.do.end33_crit_edge, label %for.inc52.for.end54_crit_edge

for.inc52.for.end54_crit_edge:                    ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end54

for.inc52.do.end33_crit_edge:                     ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33

for.end54:                                        ; preds = %for.inc52.for.end54_crit_edge, %for.cond26.preheader.for.end54_crit_edge
  %i.3.lcssa = phi i32 [ %i.1.lcssa, %for.cond26.preheader.for.end54_crit_edge ], [ %i.4, %for.inc52.for.end54_crit_edge ]
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i1, label %for.end54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

for.end54.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %for.end54
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %for.end54.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !306
  %45 = tail call i32 @llvm.read_register.i32(metadata !291) #17
  %and.i.i.i.i.i8 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %type = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 17
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp55.not = icmp eq i32 %50, 0
  br i1 %cmp55.not, label %rcu_read_unlock.exit.for.body62_crit_edge, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

rcu_read_unlock.exit.for.body62_crit_edge:        ; preds = %rcu_read_unlock.exit
  br label %for.body62

for.body62:                                       ; preds = %cond.end73.for.body62_crit_edge, %rcu_read_unlock.exit.for.body62_crit_edge
  %i.522 = phi i32 [ %inc75, %cond.end73.for.body62_crit_edge ], [ %i.3.lcssa, %rcu_read_unlock.exit.for.body62_crit_edge ]
  %j.321 = phi i32 [ %inc78, %cond.end73.for.body62_crit_edge ], [ 0, %rcu_read_unlock.exit.for.body62_crit_edge ]
  %stat_offset64 = getelementptr [42 x %struct.ice_stats], ptr @ice_gstrings_pf_stats, i32 0, i32 %j.321, i32 2
  %51 = ptrtoint ptr %stat_offset64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stat_offset64, align 4
  %add.ptr65 = getelementptr i8, ptr %1, i32 %52
  %sizeof_stat67 = getelementptr [42 x %struct.ice_stats], ptr @ice_gstrings_pf_stats, i32 0, i32 %j.321, i32 1
  %53 = ptrtoint ptr %sizeof_stat67 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sizeof_stat67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %54)
  %cmp68 = icmp eq i32 %54, 8
  br i1 %cmp68, label %cond.true70, label %cond.false71

cond.true70:                                      ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr65, align 8
  br label %cond.end73

cond.false71:                                     ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #19
  %57 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr65, align 4
  %conv72 = zext i32 %58 to i64
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false71, %cond.true70
  %cond74 = phi i64 [ %56, %cond.true70 ], [ %conv72, %cond.false71 ]
  %inc75 = add nuw nsw i32 %i.522, 1
  %arrayidx76 = getelementptr i64, ptr %data, i32 %i.522
  %59 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %cond74, ptr %arrayidx76, align 8
  %inc78 = add nuw nsw i32 %j.321, 1
  %exitcond27.not = icmp eq i32 %inc78, 42
  br i1 %exitcond27.not, label %for.body83.preheader, label %cond.end73.for.body62_crit_edge

cond.end73.for.body62_crit_edge:                  ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body62

for.body83.preheader:                             ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx85 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 14, i32 0
  %60 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx85, align 8
  %inc86 = add nuw nsw i32 %i.522, 2
  %arrayidx87 = getelementptr i64, ptr %data, i32 %inc75
  %62 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %arrayidx87, align 8
  %arrayidx89 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 15, i32 0
  %63 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx89, align 8
  %inc90 = add nuw nsw i32 %i.522, 3
  %arrayidx91 = getelementptr i64, ptr %data, i32 %inc86
  %65 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %arrayidx91, align 8
  %arrayidx85.1 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 14, i32 1
  %66 = ptrtoint ptr %arrayidx85.1 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx85.1, align 8
  %inc86.1 = add nuw nsw i32 %i.522, 4
  %arrayidx87.1 = getelementptr i64, ptr %data, i32 %inc90
  %68 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx87.1, align 8
  %arrayidx89.1 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 15, i32 1
  %69 = ptrtoint ptr %arrayidx89.1 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx89.1, align 8
  %inc90.1 = add nuw nsw i32 %i.522, 5
  %arrayidx91.1 = getelementptr i64, ptr %data, i32 %inc86.1
  %71 = ptrtoint ptr %arrayidx91.1 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %arrayidx91.1, align 8
  %arrayidx85.2 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 14, i32 2
  %72 = ptrtoint ptr %arrayidx85.2 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx85.2, align 8
  %inc86.2 = add nuw nsw i32 %i.522, 6
  %arrayidx87.2 = getelementptr i64, ptr %data, i32 %inc90.1
  %74 = ptrtoint ptr %arrayidx87.2 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %arrayidx87.2, align 8
  %arrayidx89.2 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 15, i32 2
  %75 = ptrtoint ptr %arrayidx89.2 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx89.2, align 8
  %inc90.2 = add nuw nsw i32 %i.522, 7
  %arrayidx91.2 = getelementptr i64, ptr %data, i32 %inc86.2
  %77 = ptrtoint ptr %arrayidx91.2 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %arrayidx91.2, align 8
  %arrayidx85.3 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 14, i32 3
  %78 = ptrtoint ptr %arrayidx85.3 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx85.3, align 8
  %inc86.3 = add nuw nsw i32 %i.522, 8
  %arrayidx87.3 = getelementptr i64, ptr %data, i32 %inc90.2
  %80 = ptrtoint ptr %arrayidx87.3 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %arrayidx87.3, align 8
  %arrayidx89.3 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 15, i32 3
  %81 = ptrtoint ptr %arrayidx89.3 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx89.3, align 8
  %inc90.3 = add nuw nsw i32 %i.522, 9
  %arrayidx91.3 = getelementptr i64, ptr %data, i32 %inc86.3
  %83 = ptrtoint ptr %arrayidx91.3 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %arrayidx91.3, align 8
  %arrayidx85.4 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 14, i32 4
  %84 = ptrtoint ptr %arrayidx85.4 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx85.4, align 8
  %inc86.4 = add nuw nsw i32 %i.522, 10
  %arrayidx87.4 = getelementptr i64, ptr %data, i32 %inc90.3
  %86 = ptrtoint ptr %arrayidx87.4 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %arrayidx87.4, align 8
  %arrayidx89.4 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 15, i32 4
  %87 = ptrtoint ptr %arrayidx89.4 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx89.4, align 8
  %inc90.4 = add nuw nsw i32 %i.522, 11
  %arrayidx91.4 = getelementptr i64, ptr %data, i32 %inc86.4
  %89 = ptrtoint ptr %arrayidx91.4 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %arrayidx91.4, align 8
  %arrayidx85.5 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 14, i32 5
  %90 = ptrtoint ptr %arrayidx85.5 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %arrayidx85.5, align 8
  %inc86.5 = add nuw nsw i32 %i.522, 12
  %arrayidx87.5 = getelementptr i64, ptr %data, i32 %inc90.4
  %92 = ptrtoint ptr %arrayidx87.5 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %arrayidx87.5, align 8
  %arrayidx89.5 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 15, i32 5
  %93 = ptrtoint ptr %arrayidx89.5 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx89.5, align 8
  %inc90.5 = add nuw nsw i32 %i.522, 13
  %arrayidx91.5 = getelementptr i64, ptr %data, i32 %inc86.5
  %95 = ptrtoint ptr %arrayidx91.5 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %arrayidx91.5, align 8
  %arrayidx85.6 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 14, i32 6
  %96 = ptrtoint ptr %arrayidx85.6 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx85.6, align 8
  %inc86.6 = add nuw nsw i32 %i.522, 14
  %arrayidx87.6 = getelementptr i64, ptr %data, i32 %inc90.5
  %98 = ptrtoint ptr %arrayidx87.6 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %arrayidx87.6, align 8
  %arrayidx89.6 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 15, i32 6
  %99 = ptrtoint ptr %arrayidx89.6 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx89.6, align 8
  %inc90.6 = add nuw nsw i32 %i.522, 15
  %arrayidx91.6 = getelementptr i64, ptr %data, i32 %inc86.6
  %101 = ptrtoint ptr %arrayidx91.6 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %arrayidx91.6, align 8
  %arrayidx85.7 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 14, i32 7
  %102 = ptrtoint ptr %arrayidx85.7 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %arrayidx85.7, align 8
  %inc86.7 = add nuw nsw i32 %i.522, 16
  %arrayidx87.7 = getelementptr i64, ptr %data, i32 %inc90.6
  %104 = ptrtoint ptr %arrayidx87.7 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %arrayidx87.7, align 8
  %arrayidx89.7 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 15, i32 7
  %105 = ptrtoint ptr %arrayidx89.7 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx89.7, align 8
  %inc90.7 = add nuw nsw i32 %i.522, 17
  %arrayidx91.7 = getelementptr i64, ptr %data, i32 %inc86.7
  %107 = ptrtoint ptr %arrayidx91.7 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %arrayidx91.7, align 8
  %arrayidx100 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 12, i32 0
  %108 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx100, align 8
  %inc101 = add nuw nsw i32 %i.522, 18
  %arrayidx102 = getelementptr i64, ptr %data, i32 %inc90.7
  %110 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %arrayidx102, align 8
  %arrayidx104 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 13, i32 0
  %111 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %arrayidx104, align 8
  %inc105 = add nuw nsw i32 %i.522, 19
  %arrayidx106 = getelementptr i64, ptr %data, i32 %inc101
  %113 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %arrayidx106, align 8
  %arrayidx100.1 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 12, i32 1
  %114 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx100.1, align 8
  %inc101.1 = add nuw nsw i32 %i.522, 20
  %arrayidx102.1 = getelementptr i64, ptr %data, i32 %inc105
  %116 = ptrtoint ptr %arrayidx102.1 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %arrayidx102.1, align 8
  %arrayidx104.1 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 13, i32 1
  %117 = ptrtoint ptr %arrayidx104.1 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx104.1, align 8
  %inc105.1 = add nuw nsw i32 %i.522, 21
  %arrayidx106.1 = getelementptr i64, ptr %data, i32 %inc101.1
  %119 = ptrtoint ptr %arrayidx106.1 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %arrayidx106.1, align 8
  %arrayidx100.2 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 12, i32 2
  %120 = ptrtoint ptr %arrayidx100.2 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %arrayidx100.2, align 8
  %inc101.2 = add nuw nsw i32 %i.522, 22
  %arrayidx102.2 = getelementptr i64, ptr %data, i32 %inc105.1
  %122 = ptrtoint ptr %arrayidx102.2 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %arrayidx102.2, align 8
  %arrayidx104.2 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 13, i32 2
  %123 = ptrtoint ptr %arrayidx104.2 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx104.2, align 8
  %inc105.2 = add nuw nsw i32 %i.522, 23
  %arrayidx106.2 = getelementptr i64, ptr %data, i32 %inc101.2
  %125 = ptrtoint ptr %arrayidx106.2 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %arrayidx106.2, align 8
  %arrayidx100.3 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 12, i32 3
  %126 = ptrtoint ptr %arrayidx100.3 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %arrayidx100.3, align 8
  %inc101.3 = add nuw nsw i32 %i.522, 24
  %arrayidx102.3 = getelementptr i64, ptr %data, i32 %inc105.2
  %128 = ptrtoint ptr %arrayidx102.3 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %127, ptr %arrayidx102.3, align 8
  %arrayidx104.3 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 13, i32 3
  %129 = ptrtoint ptr %arrayidx104.3 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %arrayidx104.3, align 8
  %inc105.3 = add nuw nsw i32 %i.522, 25
  %arrayidx106.3 = getelementptr i64, ptr %data, i32 %inc101.3
  %131 = ptrtoint ptr %arrayidx106.3 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %arrayidx106.3, align 8
  %arrayidx100.4 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 12, i32 4
  %132 = ptrtoint ptr %arrayidx100.4 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx100.4, align 8
  %inc101.4 = add nuw nsw i32 %i.522, 26
  %arrayidx102.4 = getelementptr i64, ptr %data, i32 %inc105.3
  %134 = ptrtoint ptr %arrayidx102.4 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %133, ptr %arrayidx102.4, align 8
  %arrayidx104.4 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 13, i32 4
  %135 = ptrtoint ptr %arrayidx104.4 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %arrayidx104.4, align 8
  %inc105.4 = add nuw nsw i32 %i.522, 27
  %arrayidx106.4 = getelementptr i64, ptr %data, i32 %inc101.4
  %137 = ptrtoint ptr %arrayidx106.4 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %136, ptr %arrayidx106.4, align 8
  %arrayidx100.5 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 12, i32 5
  %138 = ptrtoint ptr %arrayidx100.5 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx100.5, align 8
  %inc101.5 = add nuw nsw i32 %i.522, 28
  %arrayidx102.5 = getelementptr i64, ptr %data, i32 %inc105.4
  %140 = ptrtoint ptr %arrayidx102.5 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %139, ptr %arrayidx102.5, align 8
  %arrayidx104.5 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 13, i32 5
  %141 = ptrtoint ptr %arrayidx104.5 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %arrayidx104.5, align 8
  %inc105.5 = add nuw nsw i32 %i.522, 29
  %arrayidx106.5 = getelementptr i64, ptr %data, i32 %inc101.5
  %143 = ptrtoint ptr %arrayidx106.5 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %142, ptr %arrayidx106.5, align 8
  %arrayidx100.6 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 12, i32 6
  %144 = ptrtoint ptr %arrayidx100.6 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %arrayidx100.6, align 8
  %inc101.6 = add nuw nsw i32 %i.522, 30
  %arrayidx102.6 = getelementptr i64, ptr %data, i32 %inc105.5
  %146 = ptrtoint ptr %arrayidx102.6 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %145, ptr %arrayidx102.6, align 8
  %arrayidx104.6 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 13, i32 6
  %147 = ptrtoint ptr %arrayidx104.6 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx104.6, align 8
  %inc105.6 = add nuw nsw i32 %i.522, 31
  %arrayidx106.6 = getelementptr i64, ptr %data, i32 %inc101.6
  %149 = ptrtoint ptr %arrayidx106.6 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %148, ptr %arrayidx106.6, align 8
  %arrayidx100.7 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 12, i32 7
  %150 = ptrtoint ptr %arrayidx100.7 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %arrayidx100.7, align 8
  %inc101.7 = add nuw nsw i32 %i.522, 32
  %arrayidx102.7 = getelementptr i64, ptr %data, i32 %inc105.6
  %152 = ptrtoint ptr %arrayidx102.7 to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %151, ptr %arrayidx102.7, align 8
  %arrayidx104.7 = getelementptr %struct.ice_pf, ptr %1, i32 0, i32 56, i32 13, i32 7
  %153 = ptrtoint ptr %arrayidx104.7 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %arrayidx104.7, align 8
  %arrayidx106.7 = getelementptr i64, ptr %data, i32 %inc101.7
  %155 = ptrtoint ptr %arrayidx106.7 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %154, ptr %arrayidx106.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body83.preheader, %rcu_read_unlock.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_update_pf_stats(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_update_vsi_stats(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_get_phy_caps(ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_phy_caps_an_enabled(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_phy_type_to_ethtool(ptr nocapture noundef readonly %netdev, ptr noundef %ks) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i1039 = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i1039 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i1039, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_info, align 4
  %req_speeds2 = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 13, i32 0, i32 5
  %6 = ptrtoint ptr %req_speeds2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %req_speeds2, align 2
  %flags = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %nvm_phy_type_lo = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 71
  %11 = ptrtoint ptr %nvm_phy_type_lo to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %nvm_phy_type_lo, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  %nvm_phy_type_hi = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 72
  %14 = ptrtoint ptr %nvm_phy_type_hi to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %nvm_phy_type_hi, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  call void @__sanitizer_cov_trace_const_cmp8(i64 2251799813685248, i64 %13)
  %tobool.not.i = icmp ult i64 %13, 2251799813685248
  %and1.i1040 = and i64 %16, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i1040)
  %tobool2.not.i = icmp eq i64 %and1.i1040, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool2.not.i
  %storemerge.v.i = select i1 %or.cond.i, i64 -4, i64 -524288
  %storemerge.i = and i64 %storemerge.v.i, %13
  %hw = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %call4 = tail call zeroext i1 @ice_fw_supports_link_override(ptr noundef %hw) #17
  br i1 %call4, label %land.lhs.true, label %if.then.if.then30_crit_edge

if.then.if.then30_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then30

land.lhs.true:                                    ; preds = %if.then
  %call6 = tail call zeroext i1 @ice_fw_supports_report_dflt_cfg(ptr noundef %hw) #17
  br i1 %call6, label %land.lhs.true.if.then30_crit_edge, label %if.then7

land.lhs.true.if.then30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then30

if.then7:                                         ; preds = %land.lhs.true
  %link_dflt_override = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 73
  %17 = ptrtoint ptr %link_dflt_override to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %link_dflt_override, align 8
  %19 = and i8 %18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  br i1 %tobool8.not, label %if.then7.if.then30_crit_edge, label %land.lhs.true9

if.then7.if.then30_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then30

land.lhs.true9:                                   ; preds = %if.then7
  %phy_type_low = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 73, i32 4
  %20 = ptrtoint ptr %phy_type_low to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %phy_type_low, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool10.not = icmp eq i64 %21, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %land.lhs.true9.if.end26_crit_edge

land.lhs.true9.if.end26_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %phy_type_high = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 73, i32 5
  %22 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %phy_type_high, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool11.not = icmp eq i64 %23, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.then30_crit_edge, label %lor.lhs.false.if.end26_crit_edge

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then30

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %phy_type_low22 = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 13, i32 2
  %24 = ptrtoint ptr %phy_type_low22 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %phy_type_low22, align 8
  %phy_type_high25 = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 13, i32 3
  %26 = ptrtoint ptr %phy_type_high25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %phy_type_high25, align 8
  br label %if.then30

if.end26:                                         ; preds = %lor.lhs.false.if.end26_crit_edge, %land.lhs.true9.if.end26_crit_edge
  %28 = ptrtoint ptr %nvm_phy_type_lo to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %nvm_phy_type_lo, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %and15 = and i64 %30, %21
  %31 = ptrtoint ptr %nvm_phy_type_hi to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %nvm_phy_type_hi, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32)
  %phy_type_high17 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 73, i32 5
  %34 = ptrtoint ptr %phy_type_high17 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %phy_type_high17, align 8
  %and18 = and i64 %33, %35
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool27.not = icmp eq i64 %and15, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

land.lhs.true28:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool29.not = icmp eq i64 %and18, 0
  br i1 %tobool29.not, label %land.lhs.true28.if.then30_crit_edge, label %land.lhs.true28.if.end37_crit_edge

land.lhs.true28.if.end37_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

land.lhs.true28.if.then30_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then30

if.then30:                                        ; preds = %land.lhs.true28.if.then30_crit_edge, %if.else, %lor.lhs.false.if.then30_crit_edge, %if.then7.if.then30_crit_edge, %land.lhs.true.if.then30_crit_edge, %if.then.if.then30_crit_edge
  %phy_types_low.010721081 = phi i64 [ %storemerge.i, %land.lhs.true28.if.then30_crit_edge ], [ %storemerge.i, %if.then.if.then30_crit_edge ], [ %storemerge.i, %lor.lhs.false.if.then30_crit_edge ], [ %storemerge.i, %if.then7.if.then30_crit_edge ], [ %storemerge.i, %land.lhs.true.if.then30_crit_edge ], [ %25, %if.else ]
  %phy_types_high.010751080 = phi i64 [ %16, %land.lhs.true28.if.then30_crit_edge ], [ %16, %if.then.if.then30_crit_edge ], [ %16, %lor.lhs.false.if.then30_crit_edge ], [ %16, %if.then7.if.then30_crit_edge ], [ %16, %land.lhs.true.if.then30_crit_edge ], [ %27, %if.else ]
  %36 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port_info, align 4
  %phy_type_low33 = getelementptr inbounds %struct.ice_port_info, ptr %37, i32 0, i32 13, i32 2
  %38 = ptrtoint ptr %phy_type_low33 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %phy_type_low33, align 8
  %phy_type_high36 = getelementptr inbounds %struct.ice_port_info, ptr %37, i32 0, i32 13, i32 3
  %40 = ptrtoint ptr %phy_type_high36 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %phy_type_high36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %land.lhs.true28.if.end37_crit_edge, %if.end26.if.end37_crit_edge
  %phy_types_high.01074 = phi i64 [ %16, %if.end26.if.end37_crit_edge ], [ %16, %land.lhs.true28.if.end37_crit_edge ], [ %phy_types_high.010751080, %if.then30 ]
  %phy_types_low.01071 = phi i64 [ %storemerge.i, %if.end26.if.end37_crit_edge ], [ %storemerge.i, %land.lhs.true28.if.end37_crit_edge ], [ %phy_types_low.010721081, %if.then30 ]
  %advert_phy_type_lo.2 = phi i64 [ %and15, %if.end26.if.end37_crit_edge ], [ 0, %land.lhs.true28.if.end37_crit_edge ], [ %39, %if.then30 ]
  %advert_phy_type_hi.2 = phi i64 [ %and18, %if.end26.if.end37_crit_edge ], [ %and18, %land.lhs.true28.if.end37_crit_edge ], [ %41, %if.then30 ]
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1
  %and41 = and i64 %phy_types_low.01071, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and41)
  %tobool42.not = icmp eq i64 %and41, 0
  %42 = call ptr @memset(ptr %link_modes, i32 0, i32 24)
  br i1 %tobool42.not, label %if.end37.if.end63_crit_edge, label %if.then43

if.end37.if.end63_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.then43:                                        ; preds = %if.end37
  %43 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %link_modes, align 4
  %or.i = or i32 %44, 8
  store i32 %or.i, ptr %link_modes, align 4
  %45 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool49.not = icmp eq i16 %45, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %if.then43.if.then58_crit_edge

if.then43.if.then58_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then58

lor.lhs.false50:                                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool51.not = icmp ne i16 %7, 0
  %and53 = and i64 %advert_phy_type_lo.2, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and53)
  %tobool54.not = icmp eq i64 %and53, 0
  %or.cond942 = select i1 %tobool51.not, i1 true, i1 %tobool54.not
  br i1 %or.cond942, label %lor.lhs.false50.if.end63_crit_edge, label %lor.lhs.false50.if.then58_crit_edge

lor.lhs.false50.if.then58_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then58

lor.lhs.false50.if.end63_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.then58:                                        ; preds = %lor.lhs.false50.if.then58_crit_edge, %if.then43.if.then58_crit_edge
  %46 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %advertising, align 4
  %or.i963 = or i32 %47, 8
  store i32 %or.i963, ptr %advertising, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %lor.lhs.false50.if.end63_crit_edge, %if.end37.if.end63_crit_edge
  %and64 = and i64 %phy_types_low.01071, 68
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and64)
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end89_crit_edge, label %if.then66

if.end63.if.end89_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end89

if.then66:                                        ; preds = %if.end63
  %48 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %link_modes, align 4
  %or.i964 = or i32 %49, 32
  store i32 %or.i964, ptr %link_modes, align 4
  %50 = and i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool73.not = icmp eq i16 %50, 0
  br i1 %tobool73.not, label %lor.lhs.false74, label %if.then66.if.then82_crit_edge

if.then66.if.then82_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then82

lor.lhs.false74:                                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool75.not = icmp ne i16 %7, 0
  %and77 = and i64 %advert_phy_type_lo.2, 68
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and77)
  %tobool78.not = icmp eq i64 %and77, 0
  %or.cond943 = select i1 %tobool75.not, i1 true, i1 %tobool78.not
  br i1 %or.cond943, label %lor.lhs.false74.if.end89_crit_edge, label %lor.lhs.false74.if.then82_crit_edge

lor.lhs.false74.if.then82_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then82

lor.lhs.false74.if.end89_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end89

if.then82:                                        ; preds = %lor.lhs.false74.if.then82_crit_edge, %if.then66.if.then82_crit_edge
  %51 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %advertising, align 4
  %or.i965 = or i32 %52, 32
  store i32 %or.i965, ptr %advertising, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then82, %lor.lhs.false74.if.end89_crit_edge, %if.end63.if.end89_crit_edge
  %and90 = and i64 %phy_types_low.01071, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and90)
  %tobool91.not = icmp eq i64 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end115_crit_edge, label %if.then92

if.end89.if.end115_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115

if.then92:                                        ; preds = %if.end89
  %53 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %link_modes, align 4
  %or.i966 = or i32 %54, 131072
  store i32 %or.i966, ptr %link_modes, align 4
  %55 = and i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool99.not = icmp eq i16 %55, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %if.then92.if.then108_crit_edge

if.then92.if.then108_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then108

lor.lhs.false100:                                 ; preds = %if.then92
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool101.not = icmp ne i16 %7, 0
  %and103 = and i64 %advert_phy_type_lo.2, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and103)
  %tobool104.not = icmp eq i64 %and103, 0
  %or.cond944 = select i1 %tobool101.not, i1 true, i1 %tobool104.not
  br i1 %or.cond944, label %lor.lhs.false100.if.end115_crit_edge, label %lor.lhs.false100.if.then108_crit_edge

lor.lhs.false100.if.then108_crit_edge:            ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then108

lor.lhs.false100.if.end115_crit_edge:             ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115

if.then108:                                       ; preds = %lor.lhs.false100.if.then108_crit_edge, %if.then92.if.then108_crit_edge
  %56 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %advertising, align 4
  %or.i967 = or i32 %57, 131072
  store i32 %or.i967, ptr %advertising, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then108, %lor.lhs.false100.if.end115_crit_edge, %if.end89.if.end115_crit_edge
  %and116 = and i64 %phy_types_low.01071, 24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and116)
  %tobool117.not = icmp eq i64 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end141_crit_edge, label %if.then118

if.end115.if.end141_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end141

if.then118:                                       ; preds = %if.end115
  %add.ptr.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i, align 4
  %or.i968 = or i32 %59, 512
  store i32 %or.i968, ptr %add.ptr.i, align 4
  %60 = and i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool125.not = icmp eq i16 %60, 0
  br i1 %tobool125.not, label %lor.lhs.false126, label %if.then118.if.then134_crit_edge

if.then118.if.then134_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then134

lor.lhs.false126:                                 ; preds = %if.then118
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool127.not = icmp ne i16 %7, 0
  %and129 = and i64 %advert_phy_type_lo.2, 24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and129)
  %tobool130.not = icmp eq i64 %and129, 0
  %or.cond945 = select i1 %tobool127.not, i1 true, i1 %tobool130.not
  br i1 %or.cond945, label %lor.lhs.false126.if.end141_crit_edge, label %lor.lhs.false126.if.then134_crit_edge

lor.lhs.false126.if.then134_crit_edge:            ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then134

lor.lhs.false126.if.end141_crit_edge:             ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end141

if.then134:                                       ; preds = %lor.lhs.false126.if.then134_crit_edge, %if.then118.if.then134_crit_edge
  %add.ptr.i969 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %61 = ptrtoint ptr %add.ptr.i969 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i969, align 4
  %or.i970 = or i32 %62, 512
  store i32 %or.i970, ptr %add.ptr.i969, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then134, %lor.lhs.false126.if.end141_crit_edge, %if.end115.if.end141_crit_edge
  %and142 = and i64 %phy_types_low.01071, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and142)
  %tobool143.not = icmp eq i64 %and142, 0
  br i1 %tobool143.not, label %if.end141.if.end167_crit_edge, label %if.then144

if.end141.if.end167_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end167

if.then144:                                       ; preds = %if.end141
  %add.ptr.i971 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %add.ptr.i971 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i971, align 4
  %or.i972 = or i32 %64, 32768
  store i32 %or.i972, ptr %add.ptr.i971, align 4
  %65 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool151.not = icmp eq i16 %65, 0
  br i1 %tobool151.not, label %lor.lhs.false152, label %if.then144.if.then160_crit_edge

if.then144.if.then160_crit_edge:                  ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then160

lor.lhs.false152:                                 ; preds = %if.then144
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool153.not = icmp ne i16 %7, 0
  %and155 = and i64 %advert_phy_type_lo.2, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and155)
  %tobool156.not = icmp eq i64 %and155, 0
  %or.cond946 = select i1 %tobool153.not, i1 true, i1 %tobool156.not
  br i1 %or.cond946, label %lor.lhs.false152.if.end167_crit_edge, label %lor.lhs.false152.if.then160_crit_edge

lor.lhs.false152.if.then160_crit_edge:            ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then160

lor.lhs.false152.if.end167_crit_edge:             ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end167

if.then160:                                       ; preds = %lor.lhs.false152.if.then160_crit_edge, %if.then144.if.then160_crit_edge
  %add.ptr.i973 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %66 = ptrtoint ptr %add.ptr.i973 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i973, align 4
  %or.i974 = or i32 %67, 32768
  store i32 %or.i974, ptr %add.ptr.i973, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then160, %lor.lhs.false152.if.end167_crit_edge, %if.end141.if.end167_crit_edge
  %and168 = and i64 %phy_types_low.01071, 768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and168)
  %tobool169.not = icmp eq i64 %and168, 0
  br i1 %tobool169.not, label %if.end167.if.end193_crit_edge, label %if.then170

if.end167.if.end193_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end193

if.then170:                                       ; preds = %if.end167
  %68 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %link_modes, align 4
  %or.i975 = or i32 %69, 32768
  store i32 %or.i975, ptr %link_modes, align 4
  %70 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool177.not = icmp eq i16 %70, 0
  br i1 %tobool177.not, label %lor.lhs.false178, label %if.then170.if.then186_crit_edge

if.then170.if.then186_crit_edge:                  ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then186

lor.lhs.false178:                                 ; preds = %if.then170
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool179.not = icmp ne i16 %7, 0
  %and181 = and i64 %advert_phy_type_lo.2, 768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and181)
  %tobool182.not = icmp eq i64 %and181, 0
  %or.cond947 = select i1 %tobool179.not, i1 true, i1 %tobool182.not
  br i1 %or.cond947, label %lor.lhs.false178.if.end193_crit_edge, label %lor.lhs.false178.if.then186_crit_edge

lor.lhs.false178.if.then186_crit_edge:            ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then186

lor.lhs.false178.if.end193_crit_edge:             ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end193

if.then186:                                       ; preds = %lor.lhs.false178.if.then186_crit_edge, %if.then170.if.then186_crit_edge
  %71 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %advertising, align 4
  %or.i976 = or i32 %72, 32768
  store i32 %or.i976, ptr %advertising, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then186, %lor.lhs.false178.if.end193_crit_edge, %if.end167.if.end193_crit_edge
  %and194 = and i64 %phy_types_low.01071, 3072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and194)
  %tobool195.not = icmp eq i64 %and194, 0
  br i1 %tobool195.not, label %if.end193.if.end219_crit_edge, label %if.then196

if.end193.if.end219_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end219

if.then196:                                       ; preds = %if.end193
  %add.ptr.i977 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %add.ptr.i977 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i977, align 4
  %or.i978 = or i32 %74, 65536
  store i32 %or.i978, ptr %add.ptr.i977, align 4
  %75 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool203.not = icmp eq i16 %75, 0
  br i1 %tobool203.not, label %lor.lhs.false204, label %if.then196.if.then212_crit_edge

if.then196.if.then212_crit_edge:                  ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then212

lor.lhs.false204:                                 ; preds = %if.then196
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool205.not = icmp ne i16 %7, 0
  %and207 = and i64 %advert_phy_type_lo.2, 3072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and207)
  %tobool208.not = icmp eq i64 %and207, 0
  %or.cond948 = select i1 %tobool205.not, i1 true, i1 %tobool208.not
  br i1 %or.cond948, label %lor.lhs.false204.if.end219_crit_edge, label %lor.lhs.false204.if.then212_crit_edge

lor.lhs.false204.if.then212_crit_edge:            ; preds = %lor.lhs.false204
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then212

lor.lhs.false204.if.end219_crit_edge:             ; preds = %lor.lhs.false204
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end219

if.then212:                                       ; preds = %lor.lhs.false204.if.then212_crit_edge, %if.then196.if.then212_crit_edge
  %add.ptr.i979 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %76 = ptrtoint ptr %add.ptr.i979 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i979, align 4
  %or.i980 = or i32 %77, 65536
  store i32 %or.i980, ptr %add.ptr.i979, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then212, %lor.lhs.false204.if.end219_crit_edge, %if.end193.if.end219_crit_edge
  %and220 = and i64 %phy_types_low.01071, 405504
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and220)
  %tobool221.not = icmp eq i64 %and220, 0
  br i1 %tobool221.not, label %if.end219.if.end245_crit_edge, label %if.then222

if.end219.if.end245_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end245

if.then222:                                       ; preds = %if.end219
  %78 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %link_modes, align 4
  %or.i981 = or i32 %79, 4096
  store i32 %or.i981, ptr %link_modes, align 4
  %80 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool229.not = icmp eq i16 %80, 0
  br i1 %tobool229.not, label %lor.lhs.false230, label %if.then222.if.then238_crit_edge

if.then222.if.then238_crit_edge:                  ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then238

lor.lhs.false230:                                 ; preds = %if.then222
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool231.not = icmp ne i16 %7, 0
  %and233 = and i64 %advert_phy_type_lo.2, 405504
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and233)
  %tobool234.not = icmp eq i64 %and233, 0
  %or.cond949 = select i1 %tobool231.not, i1 true, i1 %tobool234.not
  br i1 %or.cond949, label %lor.lhs.false230.if.end245_crit_edge, label %lor.lhs.false230.if.then238_crit_edge

lor.lhs.false230.if.then238_crit_edge:            ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then238

lor.lhs.false230.if.end245_crit_edge:             ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end245

if.then238:                                       ; preds = %lor.lhs.false230.if.then238_crit_edge, %if.then222.if.then238_crit_edge
  %81 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %advertising, align 4
  %or.i982 = or i32 %82, 4096
  store i32 %or.i982, ptr %advertising, align 4
  br label %if.end245

if.end245:                                        ; preds = %if.then238, %lor.lhs.false230.if.end245_crit_edge, %if.end219.if.end245_crit_edge
  %and246 = and i64 %phy_types_low.01071, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and246)
  %tobool247.not = icmp eq i64 %and246, 0
  br i1 %tobool247.not, label %if.end245.if.end271_crit_edge, label %if.then248

if.end245.if.end271_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end271

if.then248:                                       ; preds = %if.end245
  %83 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %link_modes, align 4
  %or.i983 = or i32 %84, 524288
  store i32 %or.i983, ptr %link_modes, align 4
  %85 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool255.not = icmp eq i16 %85, 0
  br i1 %tobool255.not, label %lor.lhs.false256, label %if.then248.if.then264_crit_edge

if.then248.if.then264_crit_edge:                  ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then264

lor.lhs.false256:                                 ; preds = %if.then248
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool257.not = icmp ne i16 %7, 0
  %and259 = and i64 %advert_phy_type_lo.2, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and259)
  %tobool260.not = icmp eq i64 %and259, 0
  %or.cond950 = select i1 %tobool257.not, i1 true, i1 %tobool260.not
  br i1 %or.cond950, label %lor.lhs.false256.if.end271_crit_edge, label %lor.lhs.false256.if.then264_crit_edge

lor.lhs.false256.if.then264_crit_edge:            ; preds = %lor.lhs.false256
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then264

lor.lhs.false256.if.end271_crit_edge:             ; preds = %lor.lhs.false256
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end271

if.then264:                                       ; preds = %lor.lhs.false256.if.then264_crit_edge, %if.then248.if.then264_crit_edge
  %86 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %advertising, align 4
  %or.i984 = or i32 %87, 524288
  store i32 %or.i984, ptr %advertising, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then264, %lor.lhs.false256.if.end271_crit_edge, %if.end245.if.end271_crit_edge
  %and272 = and i64 %phy_types_low.01071, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and272)
  %tobool273.not = icmp eq i64 %and272, 0
  br i1 %tobool273.not, label %if.end271.if.end297_crit_edge, label %if.then274

if.end271.if.end297_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end297

if.then274:                                       ; preds = %if.end271
  %add.ptr.i985 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %88 = ptrtoint ptr %add.ptr.i985 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr.i985, align 4
  %or.i986 = or i32 %89, 2048
  store i32 %or.i986, ptr %add.ptr.i985, align 4
  %90 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool281.not = icmp eq i16 %90, 0
  br i1 %tobool281.not, label %lor.lhs.false282, label %if.then274.if.then290_crit_edge

if.then274.if.then290_crit_edge:                  ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then290

lor.lhs.false282:                                 ; preds = %if.then274
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool283.not = icmp ne i16 %7, 0
  %and285 = and i64 %advert_phy_type_lo.2, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and285)
  %tobool286.not = icmp eq i64 %and285, 0
  %or.cond951 = select i1 %tobool283.not, i1 true, i1 %tobool286.not
  br i1 %or.cond951, label %lor.lhs.false282.if.end297_crit_edge, label %lor.lhs.false282.if.then290_crit_edge

lor.lhs.false282.if.then290_crit_edge:            ; preds = %lor.lhs.false282
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then290

lor.lhs.false282.if.end297_crit_edge:             ; preds = %lor.lhs.false282
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end297

if.then290:                                       ; preds = %lor.lhs.false282.if.then290_crit_edge, %if.then274.if.then290_crit_edge
  %add.ptr.i987 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %91 = ptrtoint ptr %add.ptr.i987 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i987, align 4
  %or.i988 = or i32 %92, 2048
  store i32 %or.i988, ptr %add.ptr.i987, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.then290, %lor.lhs.false282.if.end297_crit_edge, %if.end271.if.end297_crit_edge
  %and298 = and i64 %phy_types_low.01071, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and298)
  %tobool299.not = icmp eq i64 %and298, 0
  br i1 %tobool299.not, label %if.end297.if.end323_crit_edge, label %if.then300

if.end297.if.end323_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end323

if.then300:                                       ; preds = %if.end297
  %add.ptr.i989 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %93 = ptrtoint ptr %add.ptr.i989 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i989, align 4
  %or.i990 = or i32 %94, 4096
  store i32 %or.i990, ptr %add.ptr.i989, align 4
  %95 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool307.not = icmp eq i16 %95, 0
  br i1 %tobool307.not, label %lor.lhs.false308, label %if.then300.if.then316_crit_edge

if.then300.if.then316_crit_edge:                  ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then316

lor.lhs.false308:                                 ; preds = %if.then300
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool309.not = icmp ne i16 %7, 0
  %and311 = and i64 %advert_phy_type_lo.2, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and311)
  %tobool312.not = icmp eq i64 %and311, 0
  %or.cond952 = select i1 %tobool309.not, i1 true, i1 %tobool312.not
  br i1 %or.cond952, label %lor.lhs.false308.if.end323_crit_edge, label %lor.lhs.false308.if.then316_crit_edge

lor.lhs.false308.if.then316_crit_edge:            ; preds = %lor.lhs.false308
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then316

lor.lhs.false308.if.end323_crit_edge:             ; preds = %lor.lhs.false308
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end323

if.then316:                                       ; preds = %lor.lhs.false308.if.then316_crit_edge, %if.then300.if.then316_crit_edge
  %add.ptr.i991 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %96 = ptrtoint ptr %add.ptr.i991 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr.i991, align 4
  %or.i992 = or i32 %97, 4096
  store i32 %or.i992, ptr %add.ptr.i991, align 4
  br label %if.end323

if.end323:                                        ; preds = %if.then316, %lor.lhs.false308.if.end323_crit_edge, %if.end297.if.end323_crit_edge
  %and324 = and i64 %phy_types_low.01071, 813170688
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and324)
  %tobool325.not = icmp eq i64 %and324, 0
  br i1 %tobool325.not, label %if.end323.if.end349_crit_edge, label %if.then326

if.end323.if.end349_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end349

if.then326:                                       ; preds = %if.end323
  %98 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %link_modes, align 4
  %or.i993 = or i32 %99, -2147483648
  store i32 %or.i993, ptr %link_modes, align 4
  %100 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool333.not = icmp eq i16 %100, 0
  br i1 %tobool333.not, label %lor.lhs.false334, label %if.then326.if.then342_crit_edge

if.then326.if.then342_crit_edge:                  ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then342

lor.lhs.false334:                                 ; preds = %if.then326
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool335.not = icmp ne i16 %7, 0
  %and337 = and i64 %advert_phy_type_lo.2, 813170688
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and337)
  %tobool338.not = icmp eq i64 %and337, 0
  %or.cond953 = select i1 %tobool335.not, i1 true, i1 %tobool338.not
  br i1 %or.cond953, label %lor.lhs.false334.if.end349_crit_edge, label %lor.lhs.false334.if.then342_crit_edge

lor.lhs.false334.if.then342_crit_edge:            ; preds = %lor.lhs.false334
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then342

lor.lhs.false334.if.end349_crit_edge:             ; preds = %lor.lhs.false334
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end349

if.then342:                                       ; preds = %lor.lhs.false334.if.then342_crit_edge, %if.then326.if.then342_crit_edge
  %101 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %advertising, align 4
  %or.i994 = or i32 %102, -2147483648
  store i32 %or.i994, ptr %advertising, align 4
  br label %if.end349

if.end349:                                        ; preds = %if.then342, %lor.lhs.false334.if.end349_crit_edge, %if.end323.if.end349_crit_edge
  %and350 = and i64 %phy_types_low.01071, 25165824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and350)
  %tobool351.not = icmp eq i64 %and350, 0
  br i1 %tobool351.not, label %if.end349.if.end375_crit_edge, label %if.then352

if.end349.if.end375_crit_edge:                    ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end375

if.then352:                                       ; preds = %if.end349
  %add.ptr.i995 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %103 = ptrtoint ptr %add.ptr.i995 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i995, align 4
  %or.i996 = or i32 %104, 2
  store i32 %or.i996, ptr %add.ptr.i995, align 4
  %105 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool359.not = icmp eq i16 %105, 0
  br i1 %tobool359.not, label %lor.lhs.false360, label %if.then352.if.then368_crit_edge

if.then352.if.then368_crit_edge:                  ; preds = %if.then352
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then368

lor.lhs.false360:                                 ; preds = %if.then352
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool361.not = icmp ne i16 %7, 0
  %and363 = and i64 %advert_phy_type_lo.2, 25165824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and363)
  %tobool364.not = icmp eq i64 %and363, 0
  %or.cond954 = select i1 %tobool361.not, i1 true, i1 %tobool364.not
  br i1 %or.cond954, label %lor.lhs.false360.if.end375_crit_edge, label %lor.lhs.false360.if.then368_crit_edge

lor.lhs.false360.if.then368_crit_edge:            ; preds = %lor.lhs.false360
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then368

lor.lhs.false360.if.end375_crit_edge:             ; preds = %lor.lhs.false360
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end375

if.then368:                                       ; preds = %lor.lhs.false360.if.then368_crit_edge, %if.then352.if.then368_crit_edge
  %add.ptr.i997 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %106 = ptrtoint ptr %add.ptr.i997 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr.i997, align 4
  %or.i998 = or i32 %107, 2
  store i32 %or.i998, ptr %add.ptr.i997, align 4
  br label %if.end375

if.end375:                                        ; preds = %if.then368, %lor.lhs.false360.if.end375_crit_edge, %if.end349.if.end375_crit_edge
  %and376 = and i64 %phy_types_low.01071, 234881024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and376)
  %tobool377.not = icmp eq i64 %and376, 0
  br i1 %tobool377.not, label %if.end375.if.end401_crit_edge, label %if.then378

if.end375.if.end401_crit_edge:                    ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end401

if.then378:                                       ; preds = %if.end375
  %add.ptr.i999 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %108 = ptrtoint ptr %add.ptr.i999 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr.i999, align 4
  %or.i1000 = or i32 %109, 1
  store i32 %or.i1000, ptr %add.ptr.i999, align 4
  %110 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool385.not = icmp eq i16 %110, 0
  br i1 %tobool385.not, label %lor.lhs.false386, label %if.then378.if.then394_crit_edge

if.then378.if.then394_crit_edge:                  ; preds = %if.then378
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then394

lor.lhs.false386:                                 ; preds = %if.then378
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool387.not = icmp ne i16 %7, 0
  %and389 = and i64 %advert_phy_type_lo.2, 234881024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and389)
  %tobool390.not = icmp eq i64 %and389, 0
  %or.cond955 = select i1 %tobool387.not, i1 true, i1 %tobool390.not
  br i1 %or.cond955, label %lor.lhs.false386.if.end401_crit_edge, label %lor.lhs.false386.if.then394_crit_edge

lor.lhs.false386.if.then394_crit_edge:            ; preds = %lor.lhs.false386
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then394

lor.lhs.false386.if.end401_crit_edge:             ; preds = %lor.lhs.false386
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end401

if.then394:                                       ; preds = %lor.lhs.false386.if.then394_crit_edge, %if.then378.if.then394_crit_edge
  %add.ptr.i1001 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %111 = ptrtoint ptr %add.ptr.i1001 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr.i1001, align 4
  %or.i1002 = or i32 %112, 1
  store i32 %or.i1002, ptr %add.ptr.i1001, align 4
  br label %if.end401

if.end401:                                        ; preds = %if.then394, %lor.lhs.false386.if.end401_crit_edge, %if.end375.if.end401_crit_edge
  %and402 = and i64 %phy_types_low.01071, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and402)
  %tobool403.not = icmp eq i64 %and402, 0
  br i1 %tobool403.not, label %if.end401.if.end427_crit_edge, label %if.then404

if.end401.if.end427_crit_edge:                    ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end427

if.then404:                                       ; preds = %if.end401
  %113 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %link_modes, align 4
  %or.i1003 = or i32 %114, 8388608
  store i32 %or.i1003, ptr %link_modes, align 4
  %115 = and i16 %7, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool411.not = icmp eq i16 %115, 0
  br i1 %tobool411.not, label %lor.lhs.false412, label %if.then404.if.then420_crit_edge

if.then404.if.then420_crit_edge:                  ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then420

lor.lhs.false412:                                 ; preds = %if.then404
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool413.not = icmp ne i16 %7, 0
  %and415 = and i64 %advert_phy_type_lo.2, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and415)
  %tobool416.not = icmp eq i64 %and415, 0
  %or.cond956 = select i1 %tobool413.not, i1 true, i1 %tobool416.not
  br i1 %or.cond956, label %lor.lhs.false412.if.end427_crit_edge, label %lor.lhs.false412.if.then420_crit_edge

lor.lhs.false412.if.then420_crit_edge:            ; preds = %lor.lhs.false412
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then420

lor.lhs.false412.if.end427_crit_edge:             ; preds = %lor.lhs.false412
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end427

if.then420:                                       ; preds = %lor.lhs.false412.if.then420_crit_edge, %if.then404.if.then420_crit_edge
  %116 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %advertising, align 4
  %or.i1004 = or i32 %117, 8388608
  store i32 %or.i1004, ptr %advertising, align 4
  br label %if.end427

if.end427:                                        ; preds = %if.then420, %lor.lhs.false412.if.end427_crit_edge, %if.end401.if.end427_crit_edge
  %and428 = and i64 %phy_types_low.01071, 52613349376
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and428)
  %tobool429.not = icmp eq i64 %and428, 0
  br i1 %tobool429.not, label %if.end427.if.end453_crit_edge, label %if.then430

if.end427.if.end453_crit_edge:                    ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end453

if.then430:                                       ; preds = %if.end427
  %118 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %link_modes, align 4
  %or.i1005 = or i32 %119, 16777216
  store i32 %or.i1005, ptr %link_modes, align 4
  %120 = and i16 %7, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool437.not = icmp eq i16 %120, 0
  br i1 %tobool437.not, label %lor.lhs.false438, label %if.then430.if.then446_crit_edge

if.then430.if.then446_crit_edge:                  ; preds = %if.then430
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then446

lor.lhs.false438:                                 ; preds = %if.then430
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool439.not = icmp ne i16 %7, 0
  %and441 = and i64 %advert_phy_type_lo.2, 52613349376
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and441)
  %tobool442.not = icmp eq i64 %and441, 0
  %or.cond957 = select i1 %tobool439.not, i1 true, i1 %tobool442.not
  br i1 %or.cond957, label %lor.lhs.false438.if.end453_crit_edge, label %lor.lhs.false438.if.then446_crit_edge

lor.lhs.false438.if.then446_crit_edge:            ; preds = %lor.lhs.false438
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then446

lor.lhs.false438.if.end453_crit_edge:             ; preds = %lor.lhs.false438
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end453

if.then446:                                       ; preds = %lor.lhs.false438.if.then446_crit_edge, %if.then430.if.then446_crit_edge
  %121 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %advertising, align 4
  %or.i1006 = or i32 %122, 16777216
  store i32 %or.i1006, ptr %advertising, align 4
  br label %if.end453

if.end453:                                        ; preds = %if.then446, %lor.lhs.false438.if.end453_crit_edge, %if.end427.if.end453_crit_edge
  %and454 = and i64 %phy_types_low.01071, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and454)
  %tobool455.not = icmp eq i64 %and454, 0
  br i1 %tobool455.not, label %if.end453.if.end479_crit_edge, label %if.then456

if.end453.if.end479_crit_edge:                    ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end479

if.then456:                                       ; preds = %if.end453
  %123 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %link_modes, align 4
  %or.i1007 = or i32 %124, 33554432
  store i32 %or.i1007, ptr %link_modes, align 4
  %125 = and i16 %7, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool463.not = icmp eq i16 %125, 0
  br i1 %tobool463.not, label %lor.lhs.false464, label %if.then456.if.then472_crit_edge

if.then456.if.then472_crit_edge:                  ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then472

lor.lhs.false464:                                 ; preds = %if.then456
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool465.not = icmp ne i16 %7, 0
  %and467 = and i64 %advert_phy_type_lo.2, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and467)
  %tobool468.not = icmp eq i64 %and467, 0
  %or.cond958 = select i1 %tobool465.not, i1 true, i1 %tobool468.not
  br i1 %or.cond958, label %lor.lhs.false464.if.end479_crit_edge, label %lor.lhs.false464.if.then472_crit_edge

lor.lhs.false464.if.then472_crit_edge:            ; preds = %lor.lhs.false464
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then472

lor.lhs.false464.if.end479_crit_edge:             ; preds = %lor.lhs.false464
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end479

if.then472:                                       ; preds = %lor.lhs.false464.if.then472_crit_edge, %if.then456.if.then472_crit_edge
  %126 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %advertising, align 4
  %or.i1008 = or i32 %127, 33554432
  store i32 %or.i1008, ptr %advertising, align 4
  br label %if.end479

if.end479:                                        ; preds = %if.then472, %lor.lhs.false464.if.end479_crit_edge, %if.end453.if.end479_crit_edge
  %and480 = and i64 %phy_types_low.01071, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and480)
  %tobool481.not = icmp eq i64 %and480, 0
  br i1 %tobool481.not, label %if.end479.if.end505_crit_edge, label %if.then482

if.end479.if.end505_crit_edge:                    ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end505

if.then482:                                       ; preds = %if.end479
  %128 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %link_modes, align 4
  %or.i1009 = or i32 %129, 67108864
  store i32 %or.i1009, ptr %link_modes, align 4
  %130 = and i16 %7, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool489.not = icmp eq i16 %130, 0
  br i1 %tobool489.not, label %lor.lhs.false490, label %if.then482.if.then498_crit_edge

if.then482.if.then498_crit_edge:                  ; preds = %if.then482
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then498

lor.lhs.false490:                                 ; preds = %if.then482
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool491.not = icmp ne i16 %7, 0
  %and493 = and i64 %advert_phy_type_lo.2, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and493)
  %tobool494.not = icmp eq i64 %and493, 0
  %or.cond959 = select i1 %tobool491.not, i1 true, i1 %tobool494.not
  br i1 %or.cond959, label %lor.lhs.false490.if.end505_crit_edge, label %lor.lhs.false490.if.then498_crit_edge

lor.lhs.false490.if.then498_crit_edge:            ; preds = %lor.lhs.false490
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then498

lor.lhs.false490.if.end505_crit_edge:             ; preds = %lor.lhs.false490
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end505

if.then498:                                       ; preds = %lor.lhs.false490.if.then498_crit_edge, %if.then482.if.then498_crit_edge
  %131 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %advertising, align 4
  %or.i1010 = or i32 %132, 67108864
  store i32 %or.i1010, ptr %advertising, align 4
  br label %if.end505

if.end505:                                        ; preds = %if.then498, %lor.lhs.false490.if.end505_crit_edge, %if.end479.if.end505_crit_edge
  %and506 = and i64 %phy_types_low.01071, 1758187812290560
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and506)
  %tobool507.not = icmp eq i64 %and506, 0
  br i1 %tobool507.not, label %if.end505.if.end531_crit_edge, label %if.then508

if.end505.if.end531_crit_edge:                    ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end531

if.then508:                                       ; preds = %if.end505
  %add.ptr.i1011 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %133 = ptrtoint ptr %add.ptr.i1011 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr.i1011, align 4
  %or.i1012 = or i32 %134, 4
  store i32 %or.i1012, ptr %add.ptr.i1011, align 4
  %135 = and i16 %7, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool515.not = icmp eq i16 %135, 0
  br i1 %tobool515.not, label %lor.lhs.false516, label %if.then508.if.then524_crit_edge

if.then508.if.then524_crit_edge:                  ; preds = %if.then508
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then524

lor.lhs.false516:                                 ; preds = %if.then508
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool517.not = icmp ne i16 %7, 0
  %and519 = and i64 %advert_phy_type_lo.2, 1758187812290560
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and519)
  %tobool520.not = icmp eq i64 %and519, 0
  %or.cond960 = select i1 %tobool517.not, i1 true, i1 %tobool520.not
  br i1 %or.cond960, label %lor.lhs.false516.if.end531_crit_edge, label %lor.lhs.false516.if.then524_crit_edge

lor.lhs.false516.if.then524_crit_edge:            ; preds = %lor.lhs.false516
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then524

lor.lhs.false516.if.end531_crit_edge:             ; preds = %lor.lhs.false516
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end531

if.then524:                                       ; preds = %lor.lhs.false516.if.then524_crit_edge, %if.then508.if.then524_crit_edge
  %add.ptr.i1013 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %136 = ptrtoint ptr %add.ptr.i1013 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %add.ptr.i1013, align 4
  %or.i1014 = or i32 %137, 4
  store i32 %or.i1014, ptr %add.ptr.i1013, align 4
  br label %if.end531

if.end531:                                        ; preds = %if.then524, %lor.lhs.false516.if.end531_crit_edge, %if.end505.if.end531_crit_edge
  %and532 = and i64 %phy_types_low.01071, 282024732524544
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and532)
  %tobool533.not = icmp eq i64 %and532, 0
  br i1 %tobool533.not, label %if.end531.if.end557_crit_edge, label %if.then534

if.end531.if.end557_crit_edge:                    ; preds = %if.end531
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end557

if.then534:                                       ; preds = %if.end531
  %add.ptr.i1015 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %138 = ptrtoint ptr %add.ptr.i1015 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %add.ptr.i1015, align 4
  %or.i1016 = or i32 %139, 8
  store i32 %or.i1016, ptr %add.ptr.i1015, align 4
  %140 = and i16 %7, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %tobool541.not = icmp eq i16 %140, 0
  br i1 %tobool541.not, label %lor.lhs.false542, label %if.then534.if.then550_crit_edge

if.then534.if.then550_crit_edge:                  ; preds = %if.then534
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then550

lor.lhs.false542:                                 ; preds = %if.then534
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool543.not = icmp ne i16 %7, 0
  %and545 = and i64 %advert_phy_type_lo.2, 282024732524544
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and545)
  %tobool546.not = icmp eq i64 %and545, 0
  %or.cond961 = select i1 %tobool543.not, i1 true, i1 %tobool546.not
  br i1 %or.cond961, label %lor.lhs.false542.if.end557_crit_edge, label %lor.lhs.false542.if.then550_crit_edge

lor.lhs.false542.if.then550_crit_edge:            ; preds = %lor.lhs.false542
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then550

lor.lhs.false542.if.end557_crit_edge:             ; preds = %lor.lhs.false542
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end557

if.then550:                                       ; preds = %lor.lhs.false542.if.then550_crit_edge, %if.then534.if.then550_crit_edge
  %add.ptr.i1017 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %141 = ptrtoint ptr %add.ptr.i1017 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %add.ptr.i1017, align 4
  %or.i1018 = or i32 %142, 8
  store i32 %or.i1018, ptr %add.ptr.i1017, align 4
  br label %if.end557

if.end557:                                        ; preds = %if.then550, %lor.lhs.false542.if.end557_crit_edge, %if.end531.if.end557_crit_edge
  %and558 = and i64 %phy_types_low.01071, 211518549393408
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and558)
  %tobool559.not = icmp eq i64 %and558, 0
  br i1 %tobool559.not, label %if.end557.if.end583_crit_edge, label %if.then560

if.end557.if.end583_crit_edge:                    ; preds = %if.end557
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end583

if.then560:                                       ; preds = %if.end557
  %add.ptr.i1019 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %143 = ptrtoint ptr %add.ptr.i1019 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %add.ptr.i1019, align 4
  %or.i1020 = or i32 %144, 256
  store i32 %or.i1020, ptr %add.ptr.i1019, align 4
  %145 = and i16 %7, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %tobool567.not = icmp eq i16 %145, 0
  br i1 %tobool567.not, label %lor.lhs.false568, label %if.then560.if.then576_crit_edge

if.then560.if.then576_crit_edge:                  ; preds = %if.then560
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then576

lor.lhs.false568:                                 ; preds = %if.then560
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool569.not = icmp ne i16 %7, 0
  %and571 = and i64 %advert_phy_type_lo.2, 211518549393408
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and571)
  %tobool572.not = icmp eq i64 %and571, 0
  %or.cond962 = select i1 %tobool569.not, i1 true, i1 %tobool572.not
  br i1 %or.cond962, label %lor.lhs.false568.if.end583_crit_edge, label %lor.lhs.false568.if.then576_crit_edge

lor.lhs.false568.if.then576_crit_edge:            ; preds = %lor.lhs.false568
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then576

lor.lhs.false568.if.end583_crit_edge:             ; preds = %lor.lhs.false568
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end583

if.then576:                                       ; preds = %lor.lhs.false568.if.then576_crit_edge, %if.then560.if.then576_crit_edge
  %add.ptr.i1021 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %146 = ptrtoint ptr %add.ptr.i1021 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %add.ptr.i1021, align 4
  %or.i1022 = or i32 %147, 256
  store i32 %or.i1022, ptr %add.ptr.i1021, align 4
  br label %if.end583

if.end583:                                        ; preds = %if.then576, %lor.lhs.false568.if.end583_crit_edge, %if.end557.if.end583_crit_edge
  %and584 = and i64 %phy_types_low.01071, 3424987516615262208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and584)
  %tobool585.not = icmp eq i64 %and584, 0
  %and587 = and i64 %phy_types_high.01074, 30
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and587)
  %tobool588.not = icmp eq i64 %and587, 0
  %or.cond = select i1 %tobool585.not, i1 %tobool588.not, i1 false
  br i1 %or.cond, label %if.end583.if.end612_crit_edge, label %if.then589

if.end583.if.end612_crit_edge:                    ; preds = %if.end583
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end612

if.then589:                                       ; preds = %if.end583
  %add.ptr.i1023 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %148 = ptrtoint ptr %add.ptr.i1023 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %add.ptr.i1023, align 4
  %or.i1024 = or i32 %149, 64
  store i32 %or.i1024, ptr %add.ptr.i1023, align 4
  %150 = and i16 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %150)
  %tobool596.not = icmp eq i16 %150, 0
  br i1 %tobool596.not, label %lor.lhs.false597, label %if.then589.if.then605_crit_edge

if.then589.if.then605_crit_edge:                  ; preds = %if.then589
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then605

lor.lhs.false597:                                 ; preds = %if.then589
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool598.not = icmp eq i16 %7, 0
  br i1 %tobool598.not, label %land.lhs.true599, label %lor.lhs.false597.if.end612_crit_edge

lor.lhs.false597.if.end612_crit_edge:             ; preds = %lor.lhs.false597
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end612

land.lhs.true599:                                 ; preds = %lor.lhs.false597
  %and600 = and i64 %advert_phy_type_lo.2, 3424987516615262208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and600)
  %tobool601.not = icmp eq i64 %and600, 0
  %and603 = and i64 %advert_phy_type_hi.2, 30
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and603)
  %tobool604.not = icmp eq i64 %and603, 0
  %or.cond937 = select i1 %tobool601.not, i1 %tobool604.not, i1 false
  br i1 %or.cond937, label %land.lhs.true599.if.end612_crit_edge, label %land.lhs.true599.if.then605_crit_edge

land.lhs.true599.if.then605_crit_edge:            ; preds = %land.lhs.true599
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then605

land.lhs.true599.if.end612_crit_edge:             ; preds = %land.lhs.true599
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end612

if.then605:                                       ; preds = %land.lhs.true599.if.then605_crit_edge, %if.then589.if.then605_crit_edge
  %add.ptr.i1025 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %151 = ptrtoint ptr %add.ptr.i1025 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %add.ptr.i1025, align 4
  %or.i1026 = or i32 %152, 64
  store i32 %or.i1026, ptr %add.ptr.i1025, align 4
  br label %if.end612

if.end612:                                        ; preds = %if.then605, %land.lhs.true599.if.end612_crit_edge, %lor.lhs.false597.if.end612_crit_edge, %if.end583.if.end612_crit_edge
  %and613 = and i64 %phy_types_low.01071, 4616189618054758400
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and613)
  %tobool614.not = icmp eq i64 %and613, 0
  br i1 %tobool614.not, label %if.end612.if.end638_crit_edge, label %if.then615

if.end612.if.end638_crit_edge:                    ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end638

if.then615:                                       ; preds = %if.end612
  %add.ptr.i1027 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %153 = ptrtoint ptr %add.ptr.i1027 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %add.ptr.i1027, align 4
  %or.i1028 = or i32 %154, 32
  store i32 %or.i1028, ptr %add.ptr.i1027, align 4
  %155 = and i16 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool622.not = icmp eq i16 %155, 0
  br i1 %tobool622.not, label %lor.lhs.false623, label %if.then615.if.then631_crit_edge

if.then615.if.then631_crit_edge:                  ; preds = %if.then615
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then631

lor.lhs.false623:                                 ; preds = %if.then615
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool624.not = icmp eq i16 %7, 0
  br i1 %tobool624.not, label %land.lhs.true625, label %lor.lhs.false623.if.end638_crit_edge

lor.lhs.false623.if.end638_crit_edge:             ; preds = %lor.lhs.false623
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end638

land.lhs.true625:                                 ; preds = %lor.lhs.false623
  %and626 = and i64 %advert_phy_type_lo.2, 4616189618054758400
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and626)
  %tobool627.not = icmp eq i64 %and626, 0
  %and629 = and i64 %advert_phy_type_hi.2, 30
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and629)
  %tobool630.not = icmp eq i64 %and629, 0
  %or.cond938 = select i1 %tobool627.not, i1 %tobool630.not, i1 false
  br i1 %or.cond938, label %land.lhs.true625.if.end638_crit_edge, label %land.lhs.true625.if.then631_crit_edge

land.lhs.true625.if.then631_crit_edge:            ; preds = %land.lhs.true625
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then631

land.lhs.true625.if.end638_crit_edge:             ; preds = %land.lhs.true625
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end638

if.then631:                                       ; preds = %land.lhs.true625.if.then631_crit_edge, %if.then615.if.then631_crit_edge
  %add.ptr.i1029 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %156 = ptrtoint ptr %add.ptr.i1029 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %add.ptr.i1029, align 4
  %or.i1030 = or i32 %157, 32
  store i32 %or.i1030, ptr %add.ptr.i1029, align 4
  br label %if.end638

if.end638:                                        ; preds = %if.then631, %land.lhs.true625.if.end638_crit_edge, %lor.lhs.false623.if.end638_crit_edge, %if.end612.if.end638_crit_edge
  %and639 = and i64 %phy_types_low.01071, -9214364837600034816
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and639)
  %tobool640.not = icmp eq i64 %and639, 0
  br i1 %tobool640.not, label %if.end638.if.end664_crit_edge, label %if.then641

if.end638.if.end664_crit_edge:                    ; preds = %if.end638
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end664

if.then641:                                       ; preds = %if.end638
  %add.ptr.i1031 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %158 = ptrtoint ptr %add.ptr.i1031 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %add.ptr.i1031, align 4
  %or.i1032 = or i32 %159, 128
  store i32 %or.i1032, ptr %add.ptr.i1031, align 4
  %160 = and i16 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool648.not = icmp eq i16 %160, 0
  br i1 %tobool648.not, label %lor.lhs.false649, label %if.then641.if.then657_crit_edge

if.then641.if.then657_crit_edge:                  ; preds = %if.then641
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then657

lor.lhs.false649:                                 ; preds = %if.then641
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool650.not = icmp eq i16 %7, 0
  br i1 %tobool650.not, label %land.lhs.true651, label %lor.lhs.false649.if.end664_crit_edge

lor.lhs.false649.if.end664_crit_edge:             ; preds = %lor.lhs.false649
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end664

land.lhs.true651:                                 ; preds = %lor.lhs.false649
  %and652 = and i64 %advert_phy_type_lo.2, -9214364837600034816
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and652)
  %tobool653.not = icmp eq i64 %and652, 0
  %and655 = and i64 %advert_phy_type_hi.2, 30
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and655)
  %tobool656.not = icmp eq i64 %and655, 0
  %or.cond939 = select i1 %tobool653.not, i1 %tobool656.not, i1 false
  br i1 %or.cond939, label %land.lhs.true651.if.end664_crit_edge, label %land.lhs.true651.if.then657_crit_edge

land.lhs.true651.if.then657_crit_edge:            ; preds = %land.lhs.true651
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then657

land.lhs.true651.if.end664_crit_edge:             ; preds = %land.lhs.true651
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end664

if.then657:                                       ; preds = %land.lhs.true651.if.then657_crit_edge, %if.then641.if.then657_crit_edge
  %add.ptr.i1033 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %161 = ptrtoint ptr %add.ptr.i1033 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %add.ptr.i1033, align 4
  %or.i1034 = or i32 %162, 128
  store i32 %or.i1034, ptr %add.ptr.i1033, align 4
  br label %if.end664

if.end664:                                        ; preds = %if.then657, %land.lhs.true651.if.end664_crit_edge, %lor.lhs.false649.if.end664_crit_edge, %if.end638.if.end664_crit_edge
  %and665 = and i64 %phy_types_low.01071, 1170935903116328960
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and665)
  %tobool666.not = icmp eq i64 %and665, 0
  %and668 = and i64 %phy_types_high.01074, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and668)
  %tobool669.not = icmp eq i64 %and668, 0
  %or.cond940 = select i1 %tobool666.not, i1 %tobool669.not, i1 false
  br i1 %or.cond940, label %if.end664.if.end693_crit_edge, label %if.then670

if.end664.if.end693_crit_edge:                    ; preds = %if.end664
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end693

if.then670:                                       ; preds = %if.end664
  %add.ptr.i1035 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 0, i32 1
  %163 = ptrtoint ptr %add.ptr.i1035 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr.i1035, align 4
  %or.i1036 = or i32 %164, 16
  store i32 %or.i1036, ptr %add.ptr.i1035, align 4
  %165 = and i16 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %tobool677.not = icmp eq i16 %165, 0
  br i1 %tobool677.not, label %lor.lhs.false678, label %if.then670.if.then686_crit_edge

if.then670.if.then686_crit_edge:                  ; preds = %if.then670
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then686

lor.lhs.false678:                                 ; preds = %if.then670
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool679.not = icmp eq i16 %7, 0
  br i1 %tobool679.not, label %land.lhs.true680, label %lor.lhs.false678.if.end693_crit_edge

lor.lhs.false678.if.end693_crit_edge:             ; preds = %lor.lhs.false678
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end693

land.lhs.true680:                                 ; preds = %lor.lhs.false678
  %and681 = and i64 %advert_phy_type_lo.2, 1170935903116328960
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and681)
  %tobool682.not = icmp eq i64 %and681, 0
  %and684 = and i64 %advert_phy_type_hi.2, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and684)
  %tobool685.not = icmp eq i64 %and684, 0
  %or.cond941 = select i1 %tobool682.not, i1 %tobool685.not, i1 false
  br i1 %or.cond941, label %land.lhs.true680.if.end693_crit_edge, label %land.lhs.true680.if.then686_crit_edge

land.lhs.true680.if.then686_crit_edge:            ; preds = %land.lhs.true680
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then686

land.lhs.true680.if.end693_crit_edge:             ; preds = %land.lhs.true680
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end693

if.then686:                                       ; preds = %land.lhs.true680.if.then686_crit_edge, %if.then670.if.then686_crit_edge
  %add.ptr.i1037 = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %166 = ptrtoint ptr %add.ptr.i1037 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr.i1037, align 4
  %or.i1038 = or i32 %167, 16
  store i32 %or.i1038, ptr %add.ptr.i1037, align 4
  br label %if.end693

if.end693:                                        ; preds = %if.then686, %land.lhs.true680.if.end693_crit_edge, %lor.lhs.false678.if.end693_crit_edge, %if.end664.if.end693_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_fw_supports_link_override(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_fw_supports_report_dflt_cfg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_setup_autoneg(ptr nocapture noundef readonly %p, ptr noundef %ks, ptr nocapture noundef %config, i8 noundef zeroext %autoneg_enabled, ptr nocapture noundef writeonly %autoneg_changed, ptr noundef %netdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %autoneg_changed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %autoneg_changed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %autoneg_enabled)
  %cmp = icmp eq i8 %autoneg_enabled, 1
  %an_info = getelementptr inbounds %struct.ice_port_info, ptr %p, i32 0, i32 13, i32 0, i32 9
  %1 = ptrtoint ptr %an_info to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %an_info, align 1
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then3, label %if.then.if.end30_crit_edge

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then3:                                         ; preds = %if.then
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1
  %4 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %link_modes, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.40) #20
  br label %if.end30

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  %caps = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %config, i32 0, i32 2
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %caps, align 8
  %9 = or i8 %8, 32
  store i8 %9, ptr %caps, align 8
  %10 = ptrtoint ptr %autoneg_changed to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %autoneg_changed, align 1
  br label %if.end30

if.else9:                                         ; preds = %entry
  br i1 %tobool.not, label %if.else9.if.end30_crit_edge, label %if.then16

if.else9.if.end30_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then16:                                        ; preds = %if.else9
  %link_modes17 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1
  %11 = ptrtoint ptr %link_modes17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %link_modes17, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %if.else23, label %if.then22

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.41) #20
  br label %if.end30

if.else23:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  %caps24 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %config, i32 0, i32 2
  %14 = ptrtoint ptr %caps24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %caps24, align 8
  %16 = and i8 %15, -33
  store i8 %16, ptr %caps24, align 8
  %17 = ptrtoint ptr %autoneg_changed to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %autoneg_changed, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.else23, %if.then22, %if.else9.if.end30_crit_edge, %if.else, %if.then5, %if.then.if.end30_crit_edge
  %err.0 = phi i32 [ 0, %if.then.if.end30_crit_edge ], [ 0, %if.else ], [ -22, %if.then5 ], [ -22, %if.then22 ], [ 0, %if.else23 ], [ 0, %if.else9.if.end30_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_link_status(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i16 @ice_ksettings_find_adv_link_speed(ptr noundef %ks) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %advertising, align 4
  %2 = trunc i32 %1 to i16
  %3 = lshr i16 %2, 2
  %4 = and i16 %3, 2
  %arrayidx.i = getelementptr %struct.ethtool_link_ksettings, ptr %ks, i32 0, i32 1, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i, align 4
  %7 = or i16 %4, 4
  %8 = load volatile i32, ptr %advertising, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %entry.if.then22_crit_edge

entry.if.then22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then22

lor.lhs.false:                                    ; preds = %entry
  %10 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  %adv_link_speed.1 = select i1 %tobool6.not, i16 %4, i16 %7
  %11 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %advertising, align 4
  %13 = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.end26_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then22

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %entry.if.then22_crit_edge
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %lor.lhs.false.if.end26_crit_edge
  %adv_link_speed.2 = phi i16 [ %7, %if.then22 ], [ %adv_link_speed.1, %lor.lhs.false.if.end26_crit_edge ]
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i, align 4
  %16 = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool31.not = icmp eq i32 %16, 0
  %17 = or i16 %adv_link_speed.2, 8
  %18 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %advertising, align 4
  %20 = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool41.not = icmp eq i32 %20, 0
  %21 = select i1 %tobool41.not, i1 %tobool31.not, i1 false
  %adv_link_speed.4 = select i1 %21, i16 %adv_link_speed.2, i16 %17
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i, align 4
  %24 = lshr i32 %23, 12
  %25 = trunc i32 %24 to i16
  %26 = and i16 %25, 16
  %27 = or i16 %26, %adv_link_speed.4
  %28 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %advertising, align 4
  %30 = and i32 %29, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool61.not = icmp eq i32 %30, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %if.end26.if.then68_crit_edge

if.end26.if.then68_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then68

lor.lhs.false62:                                  ; preds = %if.end26
  %31 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %advertising, align 4
  %33 = and i32 %32, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool67.not = icmp eq i32 %33, 0
  br i1 %tobool67.not, label %lor.lhs.false62.if.end72_crit_edge, label %lor.lhs.false62.if.then68_crit_edge

lor.lhs.false62.if.then68_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then68

lor.lhs.false62.if.end72_crit_edge:               ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72

if.then68:                                        ; preds = %lor.lhs.false62.if.then68_crit_edge, %if.end26.if.then68_crit_edge
  %34 = or i16 %27, 32
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %lor.lhs.false62.if.end72_crit_edge
  %adv_link_speed.6 = phi i16 [ %34, %if.then68 ], [ %27, %lor.lhs.false62.if.end72_crit_edge ]
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx.i, align 4
  %37 = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool77.not = icmp eq i32 %37, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %if.end72.if.then84_crit_edge

if.end72.if.then84_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then84

lor.lhs.false78:                                  ; preds = %if.end72
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i, align 4
  %40 = and i32 %39, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool83.not = icmp eq i32 %40, 0
  br i1 %tobool83.not, label %lor.lhs.false78.if.end88_crit_edge, label %lor.lhs.false78.if.then84_crit_edge

lor.lhs.false78.if.then84_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then84

lor.lhs.false78.if.end88_crit_edge:               ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

if.then84:                                        ; preds = %lor.lhs.false78.if.then84_crit_edge, %if.end72.if.then84_crit_edge
  %41 = or i16 %adv_link_speed.6, 32
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %lor.lhs.false78.if.end88_crit_edge
  %adv_link_speed.7 = phi i16 [ %41, %if.then84 ], [ %adv_link_speed.6, %lor.lhs.false78.if.end88_crit_edge ]
  %42 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %tobool93.not = icmp sgt i32 %43, -1
  br i1 %tobool93.not, label %lor.lhs.false94, label %if.end88.if.then106_crit_edge

if.end88.if.then106_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then106

lor.lhs.false94:                                  ; preds = %if.end88
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i, align 4
  %46 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool99.not = icmp eq i32 %46, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %lor.lhs.false94.if.then106_crit_edge

lor.lhs.false94.if.then106_crit_edge:             ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then106

lor.lhs.false100:                                 ; preds = %lor.lhs.false94
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i261 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i261)
  %tobool105.not = icmp eq i32 %and1.i261, 0
  br i1 %tobool105.not, label %lor.lhs.false100.if.end110_crit_edge, label %lor.lhs.false100.if.then106_crit_edge

lor.lhs.false100.if.then106_crit_edge:            ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then106

lor.lhs.false100.if.end110_crit_edge:             ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end110

if.then106:                                       ; preds = %lor.lhs.false100.if.then106_crit_edge, %lor.lhs.false94.if.then106_crit_edge, %if.end88.if.then106_crit_edge
  %49 = or i16 %adv_link_speed.7, 128
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %lor.lhs.false100.if.end110_crit_edge
  %adv_link_speed.8 = phi i16 [ %49, %if.then106 ], [ %adv_link_speed.7, %lor.lhs.false100.if.end110_crit_edge ]
  %50 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %advertising, align 4
  %52 = and i32 %51, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool115.not = icmp eq i32 %52, 0
  br i1 %tobool115.not, label %lor.lhs.false116, label %if.end110.if.then134_crit_edge

if.end110.if.then134_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then134

lor.lhs.false116:                                 ; preds = %if.end110
  %53 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %advertising, align 4
  %55 = and i32 %54, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool121.not = icmp eq i32 %55, 0
  br i1 %tobool121.not, label %lor.lhs.false122, label %lor.lhs.false116.if.then134_crit_edge

lor.lhs.false116.if.then134_crit_edge:            ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then134

lor.lhs.false122:                                 ; preds = %lor.lhs.false116
  %56 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %advertising, align 4
  %58 = and i32 %57, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool127.not = icmp eq i32 %58, 0
  br i1 %tobool127.not, label %lor.lhs.false128, label %lor.lhs.false122.if.then134_crit_edge

lor.lhs.false122.if.then134_crit_edge:            ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then134

lor.lhs.false128:                                 ; preds = %lor.lhs.false122
  %59 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %advertising, align 4
  %61 = and i32 %60, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool133.not = icmp eq i32 %61, 0
  br i1 %tobool133.not, label %lor.lhs.false128.if.end138_crit_edge, label %lor.lhs.false128.if.then134_crit_edge

lor.lhs.false128.if.then134_crit_edge:            ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then134

lor.lhs.false128.if.end138_crit_edge:             ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end138

if.then134:                                       ; preds = %lor.lhs.false128.if.then134_crit_edge, %lor.lhs.false122.if.then134_crit_edge, %lor.lhs.false116.if.then134_crit_edge, %if.end110.if.then134_crit_edge
  %62 = or i16 %adv_link_speed.8, 256
  br label %if.end138

if.end138:                                        ; preds = %if.then134, %lor.lhs.false128.if.end138_crit_edge
  %adv_link_speed.9 = phi i16 [ %62, %if.then134 ], [ %adv_link_speed.8, %lor.lhs.false128.if.end138_crit_edge ]
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %arrayidx.i, align 4
  %65 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool143.not = icmp eq i32 %65, 0
  br i1 %tobool143.not, label %lor.lhs.false144, label %if.end138.if.then150_crit_edge

if.end138.if.then150_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then150

lor.lhs.false144:                                 ; preds = %if.end138
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %arrayidx.i, align 4
  %68 = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool149.not = icmp eq i32 %68, 0
  br i1 %tobool149.not, label %lor.lhs.false144.if.end154_crit_edge, label %lor.lhs.false144.if.then150_crit_edge

lor.lhs.false144.if.then150_crit_edge:            ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then150

lor.lhs.false144.if.end154_crit_edge:             ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154

if.then150:                                       ; preds = %lor.lhs.false144.if.then150_crit_edge, %if.end138.if.then150_crit_edge
  %69 = or i16 %adv_link_speed.9, 512
  br label %if.end154

if.end154:                                        ; preds = %if.then150, %lor.lhs.false144.if.end154_crit_edge
  %adv_link_speed.10 = phi i16 [ %69, %if.then150 ], [ %adv_link_speed.9, %lor.lhs.false144.if.end154_crit_edge ]
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %arrayidx.i, align 4
  %72 = trunc i32 %71 to i16
  %73 = shl i16 %72, 1
  %74 = and i16 %73, 512
  %75 = or i16 %74, %adv_link_speed.10
  %76 = load volatile i32, ptr %arrayidx.i, align 4
  %77 = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool169.not = icmp eq i32 %77, 0
  br i1 %tobool169.not, label %lor.lhs.false170, label %if.end154.if.then188_crit_edge

if.end154.if.then188_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then188

lor.lhs.false170:                                 ; preds = %if.end154
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %arrayidx.i, align 4
  %80 = and i32 %79, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool175.not = icmp eq i32 %80, 0
  br i1 %tobool175.not, label %lor.lhs.false176, label %lor.lhs.false170.if.then188_crit_edge

lor.lhs.false170.if.then188_crit_edge:            ; preds = %lor.lhs.false170
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then188

lor.lhs.false176:                                 ; preds = %lor.lhs.false170
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %arrayidx.i, align 4
  %83 = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool181.not = icmp eq i32 %83, 0
  br i1 %tobool181.not, label %lor.lhs.false182, label %lor.lhs.false176.if.then188_crit_edge

lor.lhs.false176.if.then188_crit_edge:            ; preds = %lor.lhs.false176
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then188

lor.lhs.false182:                                 ; preds = %lor.lhs.false176
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %arrayidx.i, align 4
  %86 = and i32 %85, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool187.not = icmp eq i32 %86, 0
  br i1 %tobool187.not, label %lor.lhs.false182.if.end192_crit_edge, label %lor.lhs.false182.if.then188_crit_edge

lor.lhs.false182.if.then188_crit_edge:            ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then188

lor.lhs.false182.if.end192_crit_edge:             ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end192

if.then188:                                       ; preds = %lor.lhs.false182.if.then188_crit_edge, %lor.lhs.false176.if.then188_crit_edge, %lor.lhs.false170.if.then188_crit_edge, %if.end154.if.then188_crit_edge
  %87 = or i16 %75, 1024
  br label %if.end192

if.end192:                                        ; preds = %if.then188, %lor.lhs.false182.if.end192_crit_edge
  %adv_link_speed.12 = phi i16 [ %87, %if.then188 ], [ %75, %lor.lhs.false182.if.end192_crit_edge ]
  ret i16 %adv_link_speed.12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_update_phy_type(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_print_link_msg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_set_phy_cfg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_repr_get_drvinfo(ptr noundef %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ice_netdev_to_repr(ptr noundef %netdev) #17
  %vf = getelementptr inbounds %struct.ice_repr, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 4
  %call1 = tail call i32 @ice_check_vf_ready_for_cfg(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back.i, align 8
  %flash.i = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 58, i32 26
  %nvm2.i = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 58, i32 26, i32 1
  %driver.i = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call.i = tail call i32 @strscpy(ptr noundef %driver.i, ptr noundef nonnull @.str, i32 noundef 32) #17
  %fw_version.i = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %major.i = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 58, i32 26, i32 1, i32 1
  %6 = ptrtoint ptr %major.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %major.i, align 4
  %conv.i = zext i8 %7 to i32
  %minor.i = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 58, i32 26, i32 1, i32 2
  %8 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %minor.i, align 1
  %conv6.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %nvm2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nvm2.i, align 4
  %12 = ptrtoint ptr %flash.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flash.i, align 2
  %conv8.i = zext i8 %13 to i32
  %build.i = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 58, i32 26, i32 0, i32 2
  %14 = ptrtoint ptr %build.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %build.i, align 2
  %conv9.i = zext i16 %15 to i32
  %patch.i = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 58, i32 26, i32 0, i32 1
  %16 = ptrtoint ptr %patch.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %patch.i, align 1
  %conv10.i = zext i8 %17 to i32
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %conv.i, i32 noundef %conv6.i, i32 noundef %11, i32 noundef %conv8.i, i32 noundef %conv9.i, i32 noundef %conv10.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_repr_get_strings(ptr noundef %netdev, i32 noundef %stringset, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ice_netdev_to_repr(ptr noundef %netdev) #17
  %vf = getelementptr inbounds %struct.ice_repr, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 4
  %call1 = tail call i32 @ice_check_vf_ready_for_cfg(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  tail call fastcc void @__ice_get_strings(ptr noundef %netdev, i32 noundef 1, ptr noundef %data, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_repr_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ice_netdev_to_repr(ptr noundef %netdev) #17
  %vf = getelementptr inbounds %struct.ice_repr, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 4
  %call1 = tail call i32 @ice_check_vf_ready_for_cfg(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  tail call fastcc void @__ice_get_ethtool_stats(ptr noundef %netdev, ptr noundef %data, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ice_repr_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 16, i32 -95
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_netdev_to_repr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_check_vf_ready_for_cfg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call2.i = tail call fastcc i32 @ice_get_q_coalesce(ptr noundef %1, ptr noundef %ec, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 -22
  ret i32 %..i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ice_set_coalesce(ptr noundef %netdev, ptr noundef %ec, i32 noundef -1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pause) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_info, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rx_pause, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_pause, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 560) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ice_aq_get_phy_caps(ptr noundef %3, i1 noundef zeroext false, i8 noundef zeroext 4, ptr noundef nonnull %call7.i.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call zeroext i1 @ice_is_phy_caps_an_enabled(ptr noundef nonnull %call7.i.i) #17
  %cond = zext i1 %call6 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %autoneg, align 4
  %pfcena = getelementptr inbounds %struct.ice_port_info, ptr %3, i32 0, i32 17, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %pfcena to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pfcena, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end9:                                          ; preds = %if.end5
  %caps = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %caps, align 8
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %tx_pause, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %14 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool17.not = icmp eq i8 %14, 0
  br i1 %tobool17.not, label %if.end13.out_crit_edge, label %if.then18

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %rx_pause, align 4
  br label %out

out:                                              ; preds = %if.then18, %if.end13.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pause) #1 align 64 {
entry:
  %aq_failures = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %aq_failures) #17
  %4 = ptrtoint ptr %aq_failures to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %aq_failures, align 1, !annotation !304
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_info, align 4
  %link_info4 = getelementptr inbounds %struct.ice_port_info, ptr %6, i32 0, i32 13, i32 0, i32 8
  %7 = ptrtoint ptr %link_info4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %link_info4, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  %type = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.53) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 560) #22
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @ice_aq_get_phy_caps(ptr noundef %6, i1 noundef zeroext false, i8 noundef zeroext 4, ptr noundef nonnull %call7.i.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call zeroext i1 @ice_is_phy_caps_an_enabled(ptr noundef nonnull %call7.i.i) #17
  %cond = zext i1 %call14 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %13 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %cond)
  %cmp16.not = icmp eq i32 %14, %cond
  br i1 %cmp16.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.54) #20
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %state = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 20
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %land.lhs.true, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end19
  %an_info = getelementptr inbounds %struct.ice_port_info, ptr %6, i32 0, i32 13, i32 0, i32 9
  %18 = ptrtoint ptr %an_info to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %an_info, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool24.not = icmp eq i8 %20, 0
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.55) #20
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true.if.end26_crit_edge, %if.end19.if.end26_crit_edge
  %pfcena = getelementptr inbounds %struct.ice_port_info, ptr %6, i32 0, i32 17, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %pfcena to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pfcena, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool27.not = icmp eq i8 %22, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.56) #20
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %23 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool30.not = icmp eq i32 %24, 0
  %tx_pause46 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %25 = ptrtoint ptr %tx_pause46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_pause46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool47.not = icmp eq i32 %26, 0
  br i1 %tobool30.not, label %land.lhs.true45, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end29
  br i1 %tobool47.not, label %land.lhs.true36, label %land.lhs.true31.if.end64_crit_edge

land.lhs.true31.if.end64_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %27 = ptrtoint ptr %tx_pause46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_pause46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool38.not = icmp eq i32 %28, 0
  br i1 %tobool38.not, label %land.lhs.true36.if.end64_crit_edge, label %land.lhs.true36.cleanup_crit_edge

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true36.if.end64_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

land.lhs.true45:                                  ; preds = %if.end29
  br i1 %tobool47.not, label %land.lhs.true54, label %land.lhs.true45.if.end64_crit_edge

land.lhs.true45.if.end64_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

land.lhs.true54:                                  ; preds = %land.lhs.true45
  %29 = ptrtoint ptr %tx_pause46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_pause46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool56.not = icmp eq i32 %30, 0
  br i1 %tobool56.not, label %land.lhs.true54.if.end64_crit_edge, label %land.lhs.true54.cleanup_crit_edge

land.lhs.true54.cleanup_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true54.if.end64_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

if.end64:                                         ; preds = %land.lhs.true54.if.end64_crit_edge, %land.lhs.true45.if.end64_crit_edge, %land.lhs.true36.if.end64_crit_edge, %land.lhs.true31.if.end64_crit_edge
  %.sink = phi i32 [ 3, %land.lhs.true31.if.end64_crit_edge ], [ 1, %land.lhs.true36.if.end64_crit_edge ], [ 2, %land.lhs.true45.if.end64_crit_edge ], [ 0, %land.lhs.true54.if.end64_crit_edge ]
  %req_mode41 = getelementptr inbounds %struct.ice_port_info, ptr %6, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %req_mode41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %req_mode41, align 4
  %call66 = call i32 @ice_set_fc(ptr noundef %6, ptr noundef nonnull %aq_failures, i1 noundef zeroext %tobool) #17
  %32 = ptrtoint ptr %aq_failures to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %aq_failures, align 1
  %conv67 = zext i8 %33 to i32
  %and68 = and i32 %conv67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else72, label %if.then70

if.then70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 30, i32 8
  %34 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sq_last_status, align 4
  %call71 = call ptr @ice_aq_str(i32 noundef %35) #17
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.57, i32 noundef %call66, ptr noundef %call71) #20
  br label %cleanup

if.else72:                                        ; preds = %if.end64
  %and74 = and i32 %conv67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else80, label %if.then76

if.then76:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #19
  %sq_last_status78 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 30, i32 8
  %36 = ptrtoint ptr %sq_last_status78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sq_last_status78, align 4
  %call79 = call ptr @ice_aq_str(i32 noundef %37) #17
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.58, i32 noundef %call66, ptr noundef %call79) #20
  br label %cleanup

if.else80:                                        ; preds = %if.else72
  %and82 = and i32 %conv67, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.else80.cleanup_crit_edge, label %if.then84

if.else80.cleanup_crit_edge:                      ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then84:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #19
  %sq_last_status86 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 30, i32 8
  %38 = ptrtoint ptr %sq_last_status86 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sq_last_status86, align 4
  %call87 = call ptr @ice_aq_str(i32 noundef %39) #17
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.59, i32 noundef %call66, ptr noundef %call87) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %if.else80.cleanup_crit_edge, %if.then76, %if.then70, %land.lhs.true54.cleanup_crit_edge, %land.lhs.true36.cleanup_crit_edge, %if.then28, %if.then18, %if.then12, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ %call10, %if.then12 ], [ -95, %if.then18 ], [ -95, %if.then28 ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true54.cleanup_crit_edge ], [ -11, %if.then70 ], [ -11, %if.then76 ], [ -11, %if.then84 ], [ %call66, %if.else80.cleanup_crit_edge ], [ -22, %land.lhs.true36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %aq_failures) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_self_test(ptr noundef %netdev, ptr nocapture noundef %eth_test, ptr nocapture noundef %data) #1 align 64 {
entry:
  %link_up.i132 = alloca i8, align 1
  %broadcast.i = alloca [6 x i8], align 1
  %link_up.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
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
  %back = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.60) #20
  %state = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #17
  %num_alloc_vfs.i = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %num_alloc_vfs.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_alloc_vfs.i, align 8
  %conv.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp7.not.i = icmp eq i16 %11, 0
  br i1 %cmp7.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %vf2.i = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 12
  %12 = ptrtoint ptr %vf2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vf2.i, align 4
  %vf_states.i149 = getelementptr %struct.ice_vf, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %vf_states.i149 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %vf_states.i149, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i150 = icmp eq i32 %16, 0
  br i1 %tobool.not.i150, label %for.body.lr.ph.i.for.cond.i_crit_edge, label %for.body.lr.ph.i.do.end_crit_edge

for.body.lr.ph.i.do.end_crit_edge:                ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.08.i151 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.08.i151, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.ice_active_vfs.exit_crit_edge, label %for.body.i

for.cond.i.ice_active_vfs.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_active_vfs.exit

for.body.i:                                       ; preds = %for.cond.i
  %vf_states.i = getelementptr %struct.ice_vf, ptr %13, i32 %inc.i, i32 20
  %17 = ptrtoint ptr %vf_states.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %vf_states.i, align 4
  %19 = and i32 %18, 2
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.ice_active_vfs.exit_crit_edge

for.body.i.ice_active_vfs.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_active_vfs.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

ice_active_vfs.exit:                              ; preds = %for.body.i.ice_active_vfs.exit_crit_edge, %for.cond.i.ice_active_vfs.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp.i.le = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i.le, label %ice_active_vfs.exit.do.end_crit_edge, label %ice_active_vfs.exit.if.end_crit_edge

ice_active_vfs.exit.if.end_crit_edge:             ; preds = %ice_active_vfs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

ice_active_vfs.exit.do.end_crit_edge:             ; preds = %ice_active_vfs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %ice_active_vfs.exit.do.end_crit_edge, %for.body.lr.ph.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.61) #20
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1, ptr %data, align 8
  %arrayidx5 = getelementptr i64, ptr %data, i32 1
  %21 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1, ptr %arrayidx5, align 8
  %arrayidx6 = getelementptr i64, ptr %data, i32 2
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1, ptr %arrayidx6, align 8
  %arrayidx7 = getelementptr i64, ptr %data, i32 3
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1, ptr %arrayidx7, align 8
  %arrayidx8 = getelementptr i64, ptr %data, i32 4
  %24 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1, ptr %arrayidx8, align 8
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %or = or i32 %26, 2
  store i32 %or, ptr %flags, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #17
  br label %skip_ol_tests

if.end:                                           ; preds = %ice_active_vfs.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  br i1 %tobool.i.not, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call13 = tail call i32 @ice_stop(ptr noundef %netdev) #17
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up.i) #17
  %27 = ptrtoint ptr %link_up.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %link_up.i, align 1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.69) #20
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %port_info.i = getelementptr inbounds %struct.ice_vsi, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %port_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port_info.i, align 4
  %call1.i = call i32 @ice_get_link_status(ptr noundef %31, ptr noundef nonnull %link_up.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i111 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i111, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.70, i32 noundef %call1.i) #20
  br label %ice_link_test.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %link_up.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %link_up.i, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool2.not.i = icmp eq i8 %33, 0
  %..i = select i1 %tobool2.not.i, i64 2, i64 0
  br label %ice_link_test.exit

ice_link_test.exit:                               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ 1, %if.then.i ], [ %..i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i) #17
  %arrayidx16 = getelementptr i64, ptr %data, i32 4
  %34 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %retval.0.i, ptr %arrayidx16, align 8
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %back.i, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.71) #20
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %38, i32 0, i32 58
  %call1.i113 = call i32 @ice_nvm_validate_checksum(ptr noundef %hw.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113)
  %tobool.i114 = icmp ne i32 %call1.i113, 0
  %39 = zext i1 %tobool.i114 to i64
  %arrayidx18 = getelementptr i64, ptr %data, i32 1
  %40 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx18, align 8
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 4
  %back.i116 = getelementptr inbounds %struct.ice_vsi, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %back.i116 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %back.i116, align 8
  %sw_int_count.i = getelementptr inbounds %struct.ice_pf, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %sw_int_count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sw_int_count.i, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.72) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !308
  call void @arm_heavy_mb() #17
  %hw.i117 = getelementptr inbounds %struct.ice_pf, ptr %44, i32 0, i32 58
  %47 = ptrtoint ptr %hw.i117 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw.i117, align 8
  %oicr_idx.i = getelementptr inbounds %struct.ice_pf, ptr %44, i32 0, i32 41
  %49 = ptrtoint ptr %oicr_idx.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %oicr_idx.i, align 4
  %conv1.i = zext i16 %50 to i32
  %mul.i = shl nuw nsw i32 %conv1.i, 2
  %add.i = add nuw nsw i32 %mul.i, 1441792
  %add.ptr.i118 = getelementptr i8, ptr %48, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 67108998) #17, !srcloc !309
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #17
  %conv2.i = and i32 %46, 65535
  %51 = ptrtoint ptr %sw_int_count.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sw_int_count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %52)
  %cmp.i119 = icmp eq i32 %conv2.i, %52
  %53 = zext i1 %cmp.i119 to i64
  %arrayidx20 = getelementptr i64, ptr %data, i32 2
  %54 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx20, align 8
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 4
  %back.i121 = getelementptr inbounds %struct.ice_vsi, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %back.i121 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %back.i121, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %broadcast.i) #17
  %59 = call ptr @memset(ptr %broadcast.i, i32 255, i32 6)
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %58, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.73) #20
  %hw.i122 = getelementptr inbounds %struct.ice_pf, ptr %58, i32 0, i32 58
  %port_info.i123 = getelementptr inbounds %struct.ice_pf, ptr %58, i32 0, i32 58, i32 3
  %62 = ptrtoint ptr %port_info.i123 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %port_info.i123, align 4
  %call2.i = call ptr @ice_lb_vsi_setup(ptr noundef %58, ptr noundef %63) #17
  %tobool.not.i124 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i124, label %if.then.i125, label %if.end.i126

if.then.i125:                                     ; preds = %ice_link_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.74) #20
  br label %ice_loopback_test.exit

if.end.i126:                                      ; preds = %ice_link_test.exit
  %64 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %netdev, ptr %call2.i, align 128
  %tx_rings.i = getelementptr inbounds %struct.ice_vsi, ptr %call2.i, i32 0, i32 5
  %65 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tx_rings.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %rx_rings.i = getelementptr inbounds %struct.ice_vsi, ptr %call2.i, i32 0, i32 4
  %69 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rx_rings.i, align 16
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %call.i.i = call i32 @ice_vsi_setup_tx_rings(ptr noundef nonnull %call2.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i126.ice_lbtest_prepare_rings.exit.i_crit_edge

if.end.i126.ice_lbtest_prepare_rings.exit.i_crit_edge: ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_lbtest_prepare_rings.exit.i

if.end.i.i:                                       ; preds = %if.end.i126
  %call1.i.i = call i32 @ice_vsi_setup_rx_rings(ptr noundef nonnull %call2.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.err_setup_rx_ring.i.i_crit_edge

if.end.i.i.err_setup_rx_ring.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_setup_rx_ring.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = call i32 @ice_vsi_cfg(ptr noundef nonnull %call2.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.err_setup_rx_ring.i.i_crit_edge

if.end4.i.i.err_setup_rx_ring.i.i_crit_edge:      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_setup_rx_ring.i.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %call9.i.i = call i32 @ice_vsi_start_all_rx_rings(ptr noundef nonnull %call2.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end8.i, label %err_start_rx_ring.i.i

err_start_rx_ring.i.i:                            ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @ice_vsi_free_rx_rings(ptr noundef nonnull %call2.i) #17
  br label %err_setup_rx_ring.i.i

err_setup_rx_ring.i.i:                            ; preds = %err_start_rx_ring.i.i, %if.end4.i.i.err_setup_rx_ring.i.i_crit_edge, %if.end.i.i.err_setup_rx_ring.i.i_crit_edge
  %call13.i.i = call i32 @ice_vsi_stop_lan_tx_rings(ptr noundef nonnull %call2.i, i32 noundef 0, i16 noundef zeroext 0) #17
  br label %ice_lbtest_prepare_rings.exit.i

ice_lbtest_prepare_rings.exit.i:                  ; preds = %err_setup_rx_ring.i.i, %if.end.i126.ice_lbtest_prepare_rings.exit.i_crit_edge
  call void @ice_vsi_free_tx_rings(ptr noundef nonnull %call2.i) #17
  br label %lbtest_vsi_close.i

if.end8.i:                                        ; preds = %if.end8.i.i
  %count.i = getelementptr inbounds %struct.ice_rx_ring, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %count.i, align 2
  %call9.i = call zeroext i1 @ice_alloc_rx_bufs(ptr noundef %72, i16 noundef zeroext %74) #17
  br i1 %call9.i, label %if.end8.i.lbtest_rings_dis.i_crit_edge, label %if.end11.i

if.end8.i.lbtest_rings_dis.i_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lbtest_rings_dis.i

if.end11.i:                                       ; preds = %if.end8.i
  %call13.i = call i32 @ice_aq_set_mac_loopback(ptr noundef %hw.i122, i1 noundef zeroext true, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.lbtest_mac_dis.i_crit_edge

if.end11.i.lbtest_mac_dis.i_crit_edge:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lbtest_mac_dis.i

if.end16.i:                                       ; preds = %if.end11.i
  %75 = call ptr @memset(ptr %broadcast.i, i32 255, i32 6)
  %call18.i = call i32 @ice_fltr_add_mac(ptr noundef nonnull %call2.i, ptr noundef nonnull %broadcast.i, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end16.i.lbtest_mac_dis.i_crit_edge

if.end16.i.lbtest_mac_dis.i_crit_edge:            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lbtest_mac_dis.i

if.end21.i:                                       ; preds = %if.end16.i
  %tobool.not.i103.i = icmp eq ptr %58, null
  br i1 %tobool.not.i103.i, label %if.end21.i.remove_mac_filters.i_crit_edge, label %if.end.i104.i

if.end21.i.remove_mac_filters.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %remove_mac_filters.i

if.end.i104.i:                                    ; preds = %if.end21.i
  %76 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %58, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef 64, i32 noundef 3520) #17
  %tobool1.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool1.not.i.i, label %if.end.i104.i.remove_mac_filters.i_crit_edge, label %if.end25.i

if.end.i104.i.remove_mac_filters.i_crit_edge:     ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %remove_mac_filters.i

if.end25.i:                                       ; preds = %if.end.i104.i
  %78 = call ptr @memset(ptr %call.i.i.i, i32 255, i32 64)
  %arrayidx.i.i = getelementptr i8, ptr %call.i.i.i, i32 32
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -34, ptr %arrayidx.i.i, align 1
  %arrayidx5.i.i = getelementptr i8, ptr %call.i.i.i, i32 42
  %80 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -83, ptr %arrayidx5.i.i, align 1
  %arrayidx6.i.i = getelementptr i8, ptr %call.i.i.i, i32 44
  %81 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -66, ptr %arrayidx6.i.i, align 1
  %arrayidx7.i.i = getelementptr i8, ptr %call.i.i.i, i32 46
  %82 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -17, ptr %arrayidx7.i.i, align 1
  %count26.i = getelementptr inbounds %struct.ice_tx_ring, ptr %68, i32 0, i32 16
  %83 = ptrtoint ptr %count26.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %count26.i, align 4
  %85 = call i16 @llvm.umin.i16(i16 %84, i16 32) #17
  %cond.i = zext i16 %85 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %cmp28127.not.i = icmp eq i16 %85, 0
  br i1 %cmp28127.not.i, label %if.end25.i.for.end.i_crit_edge, label %for.body.lr.ph.i127

if.end25.i.for.end.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.lr.ph.i127:                              ; preds = %if.end25.i
  %desc.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %68, i32 0, i32 1
  %next_to_use.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %68, i32 0, i32 10
  %tx_buf1.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %68, i32 0, i32 4
  %dev.i106.i = getelementptr inbounds %struct.ice_tx_ring, ptr %68, i32 0, i32 2
  %86 = ptrtoint ptr %call.i.i.i to i32
  %sub.i.i.i = add i32 %86, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %and.i.i.i = and i32 %86, 4095
  %tail.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %68, i32 0, i32 3
  br label %for.body.i128

for.body.i128:                                    ; preds = %for.inc.i.for.body.i128_crit_edge, %for.body.lr.ph.i127
  %i.0128.i = phi i32 [ 0, %for.body.lr.ph.i127 ], [ %inc.i129, %for.inc.i.for.body.i128_crit_edge ]
  %87 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %desc.i.i, align 4
  %89 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %next_to_use.i.i, align 8
  %91 = ptrtoint ptr %tx_buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tx_buf1.i.i, align 16
  %93 = ptrtoint ptr %dev.i106.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i106.i, align 8
  %call.i.i107.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call.i.i.i) #17
  br i1 %call.i.i107.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %for.body.i128
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i.i, !prof !310

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %94) #17
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %94, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %98, %if.end.i.i.i.i ], [ %96, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.80, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #17
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %99 = ptrtoint ptr %dev.i106.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i106.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %100, i32 noundef -1) #17
  br label %lbtest_free_frame.i

dma_map_single_attrs.exit.i.i:                    ; preds = %for.body.i128
  call void @debug_dma_map_single(ptr noundef %94, ptr noundef nonnull %call.i.i.i, i32 noundef 64) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %101 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %101, i32 %shr.i.i.i
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %94, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef 64, i32 noundef 1, i32 noundef 0) #17
  %102 = ptrtoint ptr %dev.i106.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i106.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %103, i32 noundef %call41.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i.i, label %dma_map_single_attrs.exit.i.i.lbtest_free_frame.i_crit_edge, label %for.inc.i

dma_map_single_attrs.exit.i.i.lbtest_free_frame.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lbtest_free_frame.i

for.inc.i:                                        ; preds = %dma_map_single_attrs.exit.i.i
  %idxprom.i.i = zext i16 %90 to i32
  %arrayidx4.i.i = getelementptr %struct.ice_tx_buf, ptr %92, i32 %idxprom.i.i
  %arrayidx.i108.i = getelementptr %struct.ice_tx_desc, ptr %88, i32 %idxprom.i.i
  %conv7.i.i = zext i32 %call41.i.i.i to i64
  %104 = call i64 @llvm.bswap.i64(i64 %conv7.i.i) #17
  %105 = ptrtoint ptr %arrayidx.i108.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %arrayidx.i108.i, align 8
  %cmd_type_offset_bsz.i.i = getelementptr %struct.ice_tx_desc, ptr %88, i32 %idxprom.i.i, i32 1
  %106 = ptrtoint ptr %cmd_type_offset_bsz.i.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 3458764513820606464, ptr %cmd_type_offset_bsz.i.i, align 8
  %107 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx.i108.i, ptr %arrayidx4.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %108 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %next_to_use.i.i, align 8
  %inc.i.i = add i16 %109, 1
  %110 = ptrtoint ptr %count26.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %count26.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i, i16 %111)
  %cmp.not.i.i = icmp ult i16 %inc.i.i, %111
  %spec.store.select.i.i = select i1 %cmp.not.i.i, i16 %inc.i.i, i16 0
  %112 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %spec.store.select.i.i, ptr %next_to_use.i.i, align 8
  %conv22.i.i = zext i16 %spec.store.select.i.i to i32
  %113 = call i32 @llvm.bswap.i32(i32 %conv22.i.i) #17
  %114 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tail.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #17, !srcloc !309
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #17
  %116 = ptrtoint ptr %dev.i106.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev.i106.i, align 8
  call void @dma_unmap_page_attrs(ptr noundef %117, i32 noundef %call41.i.i.i, i32 noundef 64, i32 noundef 1, i32 noundef 0) #17
  %inc.i129 = add nuw nsw i32 %i.0128.i, 1
  %exitcond.not.i130 = icmp eq i32 %inc.i129, %cond.i
  br i1 %exitcond.not.i130, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i128_crit_edge

for.inc.i.for.body.i128_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i128

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end25.i.for.end.i_crit_edge
  %call34.i = call fastcc i32 @ice_lbtest_receive_frames(ptr noundef %72) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %for.end.i.lbtest_free_frame.i_crit_edge, label %if.else.i

for.end.i.lbtest_free_frame.i_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lbtest_free_frame.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call34.i, i32 %cond.i)
  %cmp37.not.i = icmp eq i32 %call34.i, %cond.i
  %spec.select.i = select i1 %cmp37.not.i, i8 0, i8 10
  br label %lbtest_free_frame.i

lbtest_free_frame.i:                              ; preds = %if.else.i, %for.end.i.lbtest_free_frame.i_crit_edge, %dma_map_single_attrs.exit.i.i.lbtest_free_frame.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  %ret.0.i = phi i8 [ 9, %for.end.i.lbtest_free_frame.i_crit_edge ], [ %spec.select.i, %if.else.i ], [ 8, %dma_map_single_attrs.exit.thread.i.i ], [ 8, %dma_map_single_attrs.exit.i.i.lbtest_free_frame.i_crit_edge ]
  call void @devm_kfree(ptr noundef %dev1.i, ptr noundef nonnull %call.i.i.i) #17
  br label %remove_mac_filters.i

remove_mac_filters.i:                             ; preds = %lbtest_free_frame.i, %if.end.i104.i.remove_mac_filters.i_crit_edge, %if.end21.i.remove_mac_filters.i_crit_edge
  %ret.1.i = phi i8 [ %ret.0.i, %lbtest_free_frame.i ], [ 7, %if.end21.i.remove_mac_filters.i_crit_edge ], [ 7, %if.end.i104.i.remove_mac_filters.i_crit_edge ]
  %call43.i = call i32 @ice_fltr_remove_mac(ptr noundef nonnull %call2.i, ptr noundef nonnull %broadcast.i, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %remove_mac_filters.i.lbtest_mac_dis.i_crit_edge, label %if.then45.i

remove_mac_filters.i.lbtest_mac_dis.i_crit_edge:  ; preds = %remove_mac_filters.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lbtest_mac_dis.i

if.then45.i:                                      ; preds = %remove_mac_filters.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.75) #20
  br label %lbtest_mac_dis.i

lbtest_mac_dis.i:                                 ; preds = %if.then45.i, %remove_mac_filters.i.lbtest_mac_dis.i_crit_edge, %if.end16.i.lbtest_mac_dis.i_crit_edge, %if.end11.i.lbtest_mac_dis.i_crit_edge
  %ret.2.i = phi i8 [ %ret.1.i, %if.then45.i ], [ %ret.1.i, %remove_mac_filters.i.lbtest_mac_dis.i_crit_edge ], [ 4, %if.end11.i.lbtest_mac_dis.i_crit_edge ], [ 5, %if.end16.i.lbtest_mac_dis.i_crit_edge ]
  %call48.i = call i32 @ice_aq_set_mac_loopback(ptr noundef %hw.i122, i1 noundef zeroext false, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %lbtest_mac_dis.i.lbtest_rings_dis.i_crit_edge, label %if.then50.i

lbtest_mac_dis.i.lbtest_rings_dis.i_crit_edge:    ; preds = %lbtest_mac_dis.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lbtest_rings_dis.i

if.then50.i:                                      ; preds = %lbtest_mac_dis.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.76) #20
  br label %lbtest_rings_dis.i

lbtest_rings_dis.i:                               ; preds = %if.then50.i, %lbtest_mac_dis.i.lbtest_rings_dis.i_crit_edge, %if.end8.i.lbtest_rings_dis.i_crit_edge
  %ret.3.i = phi i8 [ %ret.2.i, %if.then50.i ], [ %ret.2.i, %lbtest_mac_dis.i.lbtest_rings_dis.i_crit_edge ], [ 3, %if.end8.i.lbtest_rings_dis.i_crit_edge ]
  %call.i111.i = call i32 @ice_vsi_stop_lan_tx_rings(ptr noundef %call2.i, i32 noundef 0, i16 noundef zeroext 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111.i)
  %tobool.not.i112.i = icmp eq i32 %call.i111.i, 0
  br i1 %tobool.not.i112.i, label %lbtest_rings_dis.i.if.end.i115.i_crit_edge, label %if.then.i.i

lbtest_rings_dis.i.if.end.i115.i_crit_edge:       ; preds = %lbtest_rings_dis.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i115.i

if.then.i.i:                                      ; preds = %lbtest_rings_dis.i
  call void @__sanitizer_cov_trace_pc() #19
  %118 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call2.i, align 128
  %vsi_num.i.i = getelementptr inbounds %struct.ice_vsi, ptr %call2.i, i32 0, i32 18
  %120 = ptrtoint ptr %vsi_num.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %vsi_num.i.i, align 8
  %conv.i.i = zext i16 %121 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %119, ptr noundef nonnull @.str.81, i32 noundef %conv.i.i, i32 noundef %call.i111.i) #20
  br label %if.end.i115.i

if.end.i115.i:                                    ; preds = %if.then.i.i, %lbtest_rings_dis.i.if.end.i115.i_crit_edge
  %call1.i113.i = call i32 @ice_vsi_stop_all_rx_rings(ptr noundef %call2.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113.i)
  %tobool2.not.i114.i = icmp eq i32 %call1.i113.i, 0
  br i1 %tobool2.not.i114.i, label %lbtest_vsi_close.critedge.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #19
  %122 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call2.i, align 128
  %vsi_num5.i.i = getelementptr inbounds %struct.ice_vsi, ptr %call2.i, i32 0, i32 18
  %124 = ptrtoint ptr %vsi_num5.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %vsi_num5.i.i, align 8
  %conv6.i.i = zext i16 %125 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %123, ptr noundef nonnull @.str.82, i32 noundef %conv6.i.i, i32 noundef %call1.i113.i) #20
  call void @ice_vsi_free_tx_rings(ptr noundef %call2.i) #17
  call void @ice_vsi_free_rx_rings(ptr noundef %call2.i) #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.77) #20
  br label %lbtest_vsi_close.i

lbtest_vsi_close.critedge.i:                      ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @ice_vsi_free_tx_rings(ptr noundef %call2.i) #17
  call void @ice_vsi_free_rx_rings(ptr noundef %call2.i) #17
  br label %lbtest_vsi_close.i

lbtest_vsi_close.i:                               ; preds = %lbtest_vsi_close.critedge.i, %if.then3.i.i, %ice_lbtest_prepare_rings.exit.i
  %ret.4.i = phi i8 [ %ret.3.i, %if.then3.i.i ], [ 2, %ice_lbtest_prepare_rings.exit.i ], [ %ret.3.i, %lbtest_vsi_close.critedge.i ]
  %126 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %call2.i, align 128
  %call57.i = call i32 @ice_vsi_release(ptr noundef nonnull %call2.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %lbtest_vsi_close.i.if.end60.i_crit_edge, label %if.then59.i

lbtest_vsi_close.i.if.end60.i_crit_edge:          ; preds = %lbtest_vsi_close.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60.i

if.then59.i:                                      ; preds = %lbtest_vsi_close.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.78) #20
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then59.i, %lbtest_vsi_close.i.if.end60.i_crit_edge
  %conv61.i = zext i8 %ret.4.i to i64
  br label %ice_loopback_test.exit

ice_loopback_test.exit:                           ; preds = %if.end60.i, %if.then.i125
  %retval.0.i131 = phi i64 [ %conv61.i, %if.end60.i ], [ 1, %if.then.i125 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast.i) #17
  %arrayidx22 = getelementptr i64, ptr %data, i32 3
  %127 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %retval.0.i131, ptr %arrayidx22, align 8
  %call23 = call fastcc i64 @ice_reg_test(ptr noundef %netdev)
  %128 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %call23, ptr %data, align 8
  %129 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %arrayidx16, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %130)
  %tobool26.not = icmp eq i64 %130, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %ice_loopback_test.exit.if.then38_crit_edge

ice_loopback_test.exit.if.then38_crit_edge:       ; preds = %ice_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then38

lor.lhs.false:                                    ; preds = %ice_loopback_test.exit
  %131 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx18, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %132)
  %tobool28.not = icmp eq i64 %132, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %lor.lhs.false.if.then38_crit_edge

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then38

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %133 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %arrayidx22, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %134)
  %tobool31.not = icmp eq i64 %134, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %lor.lhs.false29.if.then38_crit_edge

lor.lhs.false29.if.then38_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then38

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %135 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %arrayidx20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %136)
  %tobool34.not = icmp eq i64 %136, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call23)
  %tobool37.not = icmp eq i64 %call23, 0
  %or.cond = select i1 %tobool34.not, i1 %tobool37.not, i1 false
  br i1 %or.cond, label %lor.lhs.false32.if.end41_crit_edge, label %lor.lhs.false32.if.then38_crit_edge

lor.lhs.false32.if.then38_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then38

lor.lhs.false32.if.end41_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then38:                                        ; preds = %lor.lhs.false32.if.then38_crit_edge, %lor.lhs.false29.if.then38_crit_edge, %lor.lhs.false.if.then38_crit_edge, %ice_loopback_test.exit.if.then38_crit_edge
  %137 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flags, align 4
  %or40 = or i32 %138, 2
  store i32 %or40, ptr %flags, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %lor.lhs.false32.if.end41_crit_edge
  call void @_clear_bit(i32 noundef 0, ptr noundef %state) #17
  br i1 %tobool.i.not, label %if.end41.skip_ol_tests_crit_edge, label %if.then45

if.end41.skip_ol_tests_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip_ol_tests

if.then45:                                        ; preds = %if.end41
  %call46 = call i32 @ice_open(ptr noundef %netdev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then45.skip_ol_tests_crit_edge, label %do.end51

if.then45.skip_ol_tests_crit_edge:                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip_ol_tests

do.end51:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  %int_name = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.65, ptr noundef %int_name, i32 noundef %call46) #20
  br label %skip_ol_tests

if.else:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.67) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up.i132) #17
  %139 = ptrtoint ptr %link_up.i132 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %link_up.i132, align 1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.69) #20
  %140 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %add.ptr.i, align 4
  %port_info.i134 = getelementptr inbounds %struct.ice_vsi, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %port_info.i134 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %port_info.i134, align 4
  %call1.i135 = call i32 @ice_get_link_status(ptr noundef %143, ptr noundef nonnull %link_up.i132) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135)
  %tobool.not.i136 = icmp eq i32 %call1.i135, 0
  br i1 %tobool.not.i136, label %if.end.i140, label %if.then.i137

if.then.i137:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.70, i32 noundef %call1.i135) #20
  br label %if.then59

if.end.i140:                                      ; preds = %if.else
  %144 = ptrtoint ptr %link_up.i132 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %link_up.i132, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool2.not.i138 = icmp eq i8 %145, 0
  br i1 %tobool2.not.i138, label %if.end.i140.if.then59_crit_edge, label %ice_link_test.exit142

if.end.i140.if.then59_crit_edge:                  ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then59

ice_link_test.exit142:                            ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i132) #17
  %arrayidx56 = getelementptr i64, ptr %data, i32 4
  %146 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 0, ptr %arrayidx56, align 8
  br label %if.end62

if.then59:                                        ; preds = %if.end.i140.if.then59_crit_edge, %if.then.i137
  %retval.0.i141.ph = phi i64 [ 1, %if.then.i137 ], [ 2, %if.end.i140.if.then59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i132) #17
  %arrayidx56145 = getelementptr i64, ptr %data, i32 4
  %147 = ptrtoint ptr %arrayidx56145 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %retval.0.i141.ph, ptr %arrayidx56145, align 8
  %148 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags, align 4
  %or61 = or i32 %149, 2
  store i32 %or61, ptr %flags, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %ice_link_test.exit142
  %150 = call ptr @memset(ptr %data, i32 0, i32 32)
  br label %skip_ol_tests

skip_ol_tests:                                    ; preds = %if.end62, %do.end51, %if.then45.skip_ol_tests_crit_edge, %if.end41.skip_ol_tests_crit_edge, %do.end
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.68) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_set_phys_id(ptr nocapture noundef readonly %netdev, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %led_active.0.off0 = phi i1 [ true, %sw.bb1 ], [ false, %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_info, align 4
  %call2 = tail call i32 @ice_aq_set_port_id_led(ptr noundef %4, i1 noundef zeroext %led_active.0.off0, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %. = select i1 %tobool3.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_get_priv_flags(ptr nocapture noundef readonly %netdev) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %flags = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = lshr i32 %5, 14
  %.lobit = and i32 %6, 1
  %7 = load volatile i32, ptr %flags, align 4
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 2
  %ret_flags.1.1 = or i32 %9, %.lobit
  %10 = load volatile i32, ptr %flags, align 4
  %11 = lshr i32 %10, 20
  %12 = and i32 %11, 4
  %ret_flags.1.2 = or i32 %12, %ret_flags.1.1
  %13 = load volatile i32, ptr %flags, align 4
  %14 = lshr i32 %13, 20
  %15 = and i32 %14, 8
  %ret_flags.1.3 = or i32 %15, %ret_flags.1.2
  %16 = load volatile i32, ptr %flags, align 4
  %17 = lshr i32 %16, 17
  %18 = and i32 %17, 16
  %ret_flags.1.4 = or i32 %18, %ret_flags.1.3
  ret i32 %ret_flags.1.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_set_priv_flags(ptr nocapture noundef readonly %netdev, i32 noundef %flags) #1 align 64 {
entry:
  %change_flags.sroa.0 = alloca i32, align 4
  %dcbx_agent_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %change_flags.sroa.0)
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %flags)
  %cmp = icmp ugt i32 %flags, 32
  br i1 %cmp, label %entry.cleanup186_crit_edge, label %if.end

entry.cleanup186_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup186

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %flags3 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 20, ptr noundef %flags3) #17
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags3, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags3) #17
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %flags3) #17
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8
  %and.1 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.else.1, label %if.then8.1

if.then8.1:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags3) #17
  br label %if.end14.1

if.else.1:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags3) #17
  br label %if.end14.1

if.end14.1:                                       ; preds = %if.else.1, %if.then8.1
  %and.2 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.else.2, label %if.then8.2

if.then8.2:                                       ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 22, ptr noundef %flags3) #17
  br label %if.end14.2

if.else.2:                                        ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %flags3) #17
  br label %if.end14.2

if.end14.2:                                       ; preds = %if.else.2, %if.then8.2
  %and.3 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %if.else.3, label %if.then8.3

if.then8.3:                                       ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 23, ptr noundef %flags3) #17
  br label %if.end14.3

if.else.3:                                        ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 23, ptr noundef %flags3) #17
  br label %if.end14.3

if.end14.3:                                       ; preds = %if.else.3, %if.then8.3
  %and.4 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %if.else.4, label %if.then8.4

if.then8.4:                                       ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 21, ptr noundef %flags3) #17
  br label %if.end14.4

if.else.4:                                        ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %flags3) #17
  br label %if.end14.4

if.end14.4:                                       ; preds = %if.else.4, %if.then8.4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags3, align 4
  %xor.i = xor i32 %9, %7
  %10 = ptrtoint ptr %change_flags.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %xor.i, ptr %change_flags.sroa.0, align 4
  %change_flags.sroa.0.0.change_flags.sroa.0.0.change_flags.sroa.0.0. = load volatile i32, ptr %change_flags.sroa.0, align 4
  %11 = and i32 %change_flags.sroa.0.0.change_flags.sroa.0.0.change_flags.sroa.0.0., 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool21.not = icmp eq i32 %11, 0
  br i1 %tobool21.not, label %if.end14.4.if.end29_crit_edge, label %land.lhs.true

if.end14.4.if.end29_crit_edge:                    ; preds = %if.end14.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end14.4
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags3, align 4
  %14 = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp eq i32 %14, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end29_crit_edge, label %do.end

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.90) #20
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags3) #17
  br label %ethtool_exit

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.end14.4.if.end29_crit_edge
  %15 = ptrtoint ptr %change_flags.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %change_flags.sroa.0.0.change_flags.sroa.0.0.change_flags.sroa.0.0.259 = load volatile i32, ptr %change_flags.sroa.0, align 4
  %16 = and i32 %change_flags.sroa.0.0.change_flags.sroa.0.0.change_flags.sroa.0.0.259, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool32.not = icmp eq i32 %16, 0
  br i1 %tobool32.not, label %if.end29.if.end158_crit_edge, label %if.then33

if.end29.if.end158_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end158

if.then33:                                        ; preds = %if.end29
  %17 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags3, align 4
  %19 = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool37.not = icmp eq i32 %19, 0
  br i1 %tobool37.not, label %if.then38, label %if.else66

if.then38:                                        ; preds = %if.then33
  %hw = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %call39 = tail call i32 @ice_cfg_lldp_mib_change(ptr noundef %hw, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.if.end45_crit_edge, label %do.end44

if.then38.if.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

do.end44:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.93) #20
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %if.then38.if.end45_crit_edge
  %call47 = tail call i32 @ice_aq_stop_lldp(ptr noundef %hw, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end45.if.end53_crit_edge, label %do.end52

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.97) #20
  br label %if.end53

if.end53:                                         ; preds = %do.end52, %if.end45.if.end53_crit_edge
  %call54 = tail call i32 @ice_init_pf_dcb(ptr noundef %3, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end53.if.end60_crit_edge, label %do.end59

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.100) #20
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %if.end53.if.end60_crit_edge
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %20 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dcbx_cap, align 2
  %22 = and i16 %21, -4
  %23 = or i16 %22, 1
  store i16 %23, ptr %dcbx_cap, align 2
  br label %if.end158

if.else66:                                        ; preds = %if.then33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dcbx_agent_status) #17
  %24 = ptrtoint ptr %dcbx_agent_status to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %dcbx_agent_status, align 1, !annotation !304
  %port_info.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %25 = ptrtoint ptr %port_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port_info.i, align 4
  %pfc_mode.i = getelementptr inbounds %struct.ice_port_info, ptr %26, i32 0, i32 17, i32 0, i32 5
  %27 = ptrtoint ptr %pfc_mode.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pfc_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp70 = icmp eq i8 %28, 1
  br i1 %cmp70, label %cleanup, label %if.end78

if.end78:                                         ; preds = %if.else66
  tail call void @ice_cfg_sw_lldp(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false) #17
  %hw79 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %call80 = tail call i32 @ice_aq_start_lldp(ptr noundef %hw79, i1 noundef zeroext true, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end78.if.end86_crit_edge, label %do.end85

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end86

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.106) #20
  br label %if.end86

if.end86:                                         ; preds = %do.end85, %if.end78.if.end86_crit_edge
  %call88 = call i32 @ice_aq_start_stop_dcbx(ptr noundef %hw79, i1 noundef zeroext true, ptr noundef nonnull %dcbx_agent_status, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end86.do.end103_crit_edge, label %do.body91

if.end86.do.end103_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end103

do.body91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_priv_flags.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_priv_flags, %if.then96)) #17
          to label %do.end103 [label %if.then96], !srcloc !303

if.then96:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_set_priv_flags.__UNIQUE_ID_ddebug617, ptr noundef %dev2, ptr noundef nonnull @.str.108) #17
  br label %do.end103

do.end103:                                        ; preds = %if.then96, %do.body91, %if.end86.do.end103_crit_edge
  %29 = ptrtoint ptr %dcbx_agent_status to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dcbx_agent_status, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool104.not = icmp eq i8 %30, 0
  %cond = select i1 %tobool104.not, ptr @.str.113, ptr @.str.112
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.110, ptr noundef nonnull %cond) #20
  %call106 = call i32 @ice_init_pf_dcb(ptr noundef %3, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %do.end103.if.end125_crit_edge, label %do.body109

do.end103.if.end125_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end125

do.body109:                                       ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_priv_flags.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_priv_flags, %if.then121)) #17
          to label %if.end125 [label %if.then121], !srcloc !303

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_set_priv_flags.__UNIQUE_ID_ddebug618, ptr noundef %dev2, ptr noundef nonnull @.str.100) #17
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %do.body109, %do.end103.if.end125_crit_edge
  %call127 = call i32 @ice_cfg_lldp_mib_change(ptr noundef %hw79, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end125.cleanup.thread_crit_edge, label %do.body130

if.end125.cleanup.thread_crit_edge:               ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

do.body130:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_priv_flags.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_priv_flags, %if.then142)) #17
          to label %cleanup.thread [label %if.then142], !srcloc !303

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_set_priv_flags.__UNIQUE_ID_ddebug619, ptr noundef %dev2, ptr noundef nonnull @.str.114) #17
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then142, %do.body130, %if.end125.cleanup.thread_crit_edge
  %dcbx_cap147 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %31 = ptrtoint ptr %dcbx_cap147 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dcbx_cap147, align 2
  %33 = and i16 %32, -4
  %34 = or i16 %33, 2
  store i16 %34, ptr %dcbx_cap147, align 2
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %back.i, align 8
  %state.i = getelementptr inbounds %struct.ice_pf, ptr %38, i32 0, i32 20
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i, align 4
  %41 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  %call4.i = call i32 @ice_set_link(ptr noundef %36, i1 noundef zeroext %tobool.not.i) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dcbx_agent_status) #17
  br label %if.end158

cleanup:                                          ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags3) #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.103) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dcbx_agent_status) #17
  br label %ethtool_exit

if.end158:                                        ; preds = %cleanup.thread, %if.end60, %if.end29.if.end158_crit_edge
  %42 = ptrtoint ptr %change_flags.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %change_flags.sroa.0.0.change_flags.sroa.0.0.change_flags.sroa.0.0.260 = load volatile i32, ptr %change_flags.sroa.0, align 4
  %43 = and i32 %change_flags.sroa.0.0.change_flags.sroa.0.0.change_flags.sroa.0.0.260, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool161.not = icmp eq i32 %43, 0
  br i1 %tobool161.not, label %if.end158.if.end170_crit_edge, label %if.then162

if.end158.if.end170_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end170

if.then162:                                       ; preds = %if.end158
  %state = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 9
  %call164 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.then166, label %if.then162.if.end170_crit_edge

if.then162.if.end170_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end170

if.then166:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #19
  %call167 = call i32 @ice_down(ptr noundef %1) #17
  %call168 = call i32 @ice_up(ptr noundef %1) #17
  br label %if.end170

if.end170:                                        ; preds = %if.then166, %if.then162.if.end170_crit_edge, %if.end158.if.end170_crit_edge
  %44 = ptrtoint ptr %change_flags.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %change_flags.sroa.0.0.change_flags.sroa.0.0.change_flags.sroa.0.0.261 = load volatile i32, ptr %change_flags.sroa.0, align 4
  %45 = and i32 %change_flags.sroa.0.0.change_flags.sroa.0.0.change_flags.sroa.0.0.261, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool173.not = icmp eq i32 %45, 0
  br i1 %tobool173.not, label %if.end170.ethtool_exit_crit_edge, label %land.lhs.true174

if.end170.ethtool_exit_crit_edge:                 ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #19
  br label %ethtool_exit

land.lhs.true174:                                 ; preds = %if.end170
  %call175 = call zeroext i1 @ice_is_any_vf_in_promisc(ptr noundef %3) #17
  br i1 %call175, label %do.end180, label %land.lhs.true174.ethtool_exit_crit_edge

land.lhs.true174.ethtool_exit_crit_edge:          ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #19
  br label %ethtool_exit

do.end180:                                        ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.116) #20
  call void @_change_bit(i32 noundef 22, ptr noundef %flags3) #17
  br label %ethtool_exit

ethtool_exit:                                     ; preds = %do.end180, %land.lhs.true174.ethtool_exit_crit_edge, %if.end170.ethtool_exit_crit_edge, %cleanup, %do.end
  %ret.2 = phi i32 [ -22, %do.end ], [ -95, %cleanup ], [ -11, %do.end180 ], [ 0, %land.lhs.true174.ethtool_exit_crit_edge ], [ 0, %if.end170.ethtool_exit_crit_edge ]
  call void @_clear_bit(i32 noundef 20, ptr noundef %flags3) #17
  br label %cleanup186

cleanup186:                                       ; preds = %ethtool_exit, %entry.cleanup186_crit_edge
  %retval.0 = phi i32 [ %ret.2, %ethtool_exit ], [ -22, %entry.cleanup186_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %change_flags.sroa.0)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_get_rxnfc(ptr nocapture noundef readonly %netdev, ptr noundef %cmd, ptr noundef %rule_locs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 46, label %sw.bb4
    i32 47, label %sw.bb8
    i32 48, label %sw.bb10
    i32 41, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %rss_size = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rss_size, align 2
  %conv = zext i16 %8 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %data, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %fdir_active_fltr = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 64
  %10 = ptrtoint ptr %fdir_active_fltr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fdir_active_fltr, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %12, align 8
  %call5 = tail call i32 @ice_get_fdir_cnt_all(ptr noundef %hw2) #17
  %conv6 = sext i32 %call5 to i64
  %data7 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %data7 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv6, ptr %data7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call9 = tail call i32 @ice_get_ethtool_fdir_entry(ptr noundef %hw2, ptr noundef %cmd) #17
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call11 = tail call i32 @ice_get_fdir_fltr_ids(ptr noundef %hw2, ptr noundef %cmd, ptr noundef %rule_locs) #17
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @ice_get_rss_hash_opt(ptr noundef %1, ptr noundef %cmd)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ 0, %sw.bb4 ], [ 0, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_set_rxnfc(ptr nocapture noundef readonly %netdev, ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 50, label %sw.bb
    i32 49, label %sw.bb4
    i32 42, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call3 = tail call i32 @ice_add_fdir_ethtool(ptr noundef %1, ptr noundef %cmd) #17
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call5 = tail call i32 @ice_del_fdir_ethtool(ptr noundef %1, ptr noundef %cmd) #17
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call7 = tail call fastcc i32 @ice_set_rss_hash_opt(ptr noundef %1, ptr noundef %cmd)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb4, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ice_get_rxfh_key_size(ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ice_get_rxfh_indir_size(ptr nocapture noundef readonly %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %rss_table_size = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %rss_table_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rss_table_size, align 4
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_get_rxfh(ptr noundef %netdev, ptr noundef writeonly %indir, ptr noundef %key, ptr noundef writeonly %hfunc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %indir, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 21
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.125) #20
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %rss_table_size = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %rss_table_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rss_table_size, align 4
  %conv = zext i16 %9 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3520) #21
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @ice_get_rss_key(ptr noundef %1, ptr noundef %key) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end16:                                         ; preds = %if.end12
  %10 = ptrtoint ptr %rss_table_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rss_table_size, align 4
  %call18 = tail call i32 @ice_get_rss_lut(ptr noundef %1, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond.preheader, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.cond.preheader:                               ; preds = %if.end16
  %12 = ptrtoint ptr %rss_table_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rss_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp53.not = icmp eq i16 %13, 0
  br i1 %cmp53.not, label %for.cond.preheader.out_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call9.i.i, i32 %i.054
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv25 = zext i8 %15 to i32
  %arrayidx26 = getelementptr i32, ptr %indir, i32 %i.054
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv25, ptr %arrayidx26, align 4
  %inc = add nuw nsw i32 %i.054, 1
  %17 = ptrtoint ptr %rss_table_size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rss_table_size, align 4
  %conv23 = zext i16 %18 to i32
  %cmp = icmp ult i32 %inc, %conv23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

out:                                              ; preds = %for.body.out_crit_edge, %for.cond.preheader.out_crit_edge, %if.end16.out_crit_edge, %if.end12.out_crit_edge
  %err.0 = phi i32 [ %call13, %if.end12.out_crit_edge ], [ %call18, %if.end16.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ], [ 0, %for.body.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -5, %if.then7 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_set_rxfh(ptr noundef %netdev, ptr noundef readonly %indir, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.125) #20
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %vsi.i.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %vsi.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsi.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end9.if.end12_crit_edge, label %ice_get_main_vsi.exit.i

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

ice_get_main_vsi.exit.i:                          ; preds = %if.end9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %ice_get_main_vsi.exit.i.if.end12_crit_edge, label %if.end.i

ice_get_main_vsi.exit.i.if.end12_crit_edge:       ; preds = %ice_get_main_vsi.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.end.i:                                         ; preds = %ice_get_main_vsi.exit.i
  %tc_cfg.i = getelementptr inbounds %struct.ice_vsi, ptr %12, i32 0, i32 56
  %13 = ptrtoint ptr %tc_cfg.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tc_cfg.i, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i = icmp ugt i8 %14, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end12_crit_edge

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

land.lhs.true.i:                                  ; preds = %if.end.i
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end12_crit_edge, label %if.then11

land.lhs.true.i.if.end12_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.126) #20
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.i.if.end12_crit_edge, %if.end.i.if.end12_crit_edge, %ice_get_main_vsi.exit.i.if.end12_crit_edge, %if.end9.if.end12_crit_edge
  %tobool13.not = icmp eq ptr %key, null
  br i1 %tobool13.not, label %if.end12.if.end30_crit_edge, label %if.then14

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then14:                                        ; preds = %if.end12
  %rss_hkey_user = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 26
  %18 = ptrtoint ptr %rss_hkey_user to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rss_hkey_user, align 8
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %if.then16, label %if.then14.if.end23_crit_edge

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then16:                                        ; preds = %if.then14
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 52, i32 noundef 3520) #17
  %20 = ptrtoint ptr %rss_hkey_user to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %rss_hkey_user, align 8
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.then16.cleanup_crit_edge, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end23:                                         ; preds = %if.then16.if.end23_crit_edge, %if.then14.if.end23_crit_edge
  %21 = ptrtoint ptr %rss_hkey_user to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rss_hkey_user, align 8
  %23 = call ptr @memcpy(ptr %22, ptr %key, i32 52)
  %24 = load ptr, ptr %rss_hkey_user, align 8
  %call26 = tail call i32 @ice_set_rss_key(ptr noundef %1, ptr noundef %24) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end23.if.end30_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.end30:                                         ; preds = %if.end23.if.end30_crit_edge, %if.end12.if.end30_crit_edge
  %rss_lut_user = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 27
  %25 = ptrtoint ptr %rss_lut_user to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rss_lut_user, align 4
  %tobool31.not = icmp eq ptr %26, null
  br i1 %tobool31.not, label %if.then32, label %if.end30.if.end40_crit_edge

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.then32:                                        ; preds = %if.end30
  %rss_table_size = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 24
  %27 = ptrtoint ptr %rss_table_size to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rss_table_size, align 4
  %conv33 = zext i16 %28 to i32
  %call.i95 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef %conv33, i32 noundef 3520) #17
  %29 = ptrtoint ptr %rss_lut_user to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i95, ptr %rss_lut_user, align 4
  %tobool37.not = icmp eq ptr %call.i95, null
  br i1 %tobool37.not, label %if.then32.cleanup_crit_edge, label %if.then32.if.end40_crit_edge

if.then32.if.end40_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end40:                                         ; preds = %if.then32.if.end40_crit_edge, %if.end30.if.end40_crit_edge
  %tobool41.not = icmp eq ptr %indir, null
  br i1 %tobool41.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end40
  %rss_table_size43 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 24
  %30 = ptrtoint ptr %rss_table_size43 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rss_table_size43, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp4598.not = icmp eq i16 %31, 0
  br i1 %cmp4598.not, label %for.cond.preheader.if.end52_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end52_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.099 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %i.099
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %conv47 = trunc i32 %33 to i8
  %34 = ptrtoint ptr %rss_lut_user to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rss_lut_user, align 4
  %arrayidx49 = getelementptr i8, ptr %35, i32 %i.099
  %36 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv47, ptr %arrayidx49, align 1
  %inc = add nuw nsw i32 %i.099, 1
  %37 = ptrtoint ptr %rss_table_size43 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rss_table_size43, align 4
  %conv44 = zext i16 %38 to i32
  %cmp45 = icmp ult i32 %inc, %conv44
  br i1 %cmp45, label %for.body.for.body_crit_edge, label %for.body.if.end52_crit_edge

for.body.if.end52_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  %39 = ptrtoint ptr %rss_lut_user to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rss_lut_user, align 4
  %rss_table_size51 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 24
  %41 = ptrtoint ptr %rss_table_size51 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rss_table_size51, align 4
  %rss_size = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 25
  %43 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %rss_size, align 2
  tail call void @ice_fill_rss_lut(ptr noundef %40, i16 noundef zeroext %42, i16 noundef zeroext %44) #17
  br label %if.end52

if.end52:                                         ; preds = %if.else, %for.body.if.end52_crit_edge, %for.cond.preheader.if.end52_crit_edge
  %45 = ptrtoint ptr %rss_lut_user to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rss_lut_user, align 4
  %rss_table_size54 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 24
  %47 = ptrtoint ptr %rss_table_size54 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rss_table_size54, align 4
  %call55 = tail call i32 @ice_set_rss_lut(ptr noundef %1, ptr noundef %46, i16 noundef zeroext %48) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then32.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.then11, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then11 ], [ -5, %if.then8 ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.then16.cleanup_crit_edge ], [ %call26, %if.end23.cleanup_crit_edge ], [ -12, %if.then32.cleanup_crit_edge ], [ %call55, %if.end52 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_set_channels(ptr noundef %dev, ptr nocapture noundef %ch) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %call2 = tail call zeroext i1 @ice_is_safe_mode(ptr noundef %3) #17
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.127) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %4 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %other_count, align 4
  %flags = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = lshr i32 %7, 7
  %.lobit = and i32 %8, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %.lobit)
  %cmp.not = icmp eq i32 %5, %.lobit
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vsi.i.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %vsi.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsi.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end5.if.end8_crit_edge, label %ice_get_main_vsi.exit.i

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

ice_get_main_vsi.exit.i:                          ; preds = %if.end5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %ice_get_main_vsi.exit.i.if.end8_crit_edge, label %if.end.i

ice_get_main_vsi.exit.i.if.end8_crit_edge:        ; preds = %ice_get_main_vsi.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.end.i:                                         ; preds = %ice_get_main_vsi.exit.i
  %tc_cfg.i = getelementptr inbounds %struct.ice_vsi, ptr %12, i32 0, i32 56
  %13 = ptrtoint ptr %tc_cfg.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tc_cfg.i, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i = icmp ugt i8 %14, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end8_crit_edge

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

land.lhs.true.i:                                  ; preds = %if.end.i
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end8_crit_edge, label %if.then7

land.lhs.true.i.if.end8_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.128) #20
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.i.if.end8_crit_edge, %if.end.i.if.end8_crit_edge, %ice_get_main_vsi.exit.i.if.end8_crit_edge, %if.end5.if.end8_crit_edge
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not = icmp eq i32 %20, 0
  br i1 %tobool12.not, label %if.end8.if.end15_crit_edge, label %land.lhs.true

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %fdir_active_fltr = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 64
  %21 = ptrtoint ptr %fdir_active_fltr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fdir_active_fltr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not = icmp eq i32 %22, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end15_crit_edge, label %if.then14

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.129) #20
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %num_q_vectors.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_q_vectors.i, align 64
  %conv.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp9.not.i = icmp eq i16 %24, 0
  br i1 %cmp9.not.i, label %if.end15.ice_get_combined_cnt.exit_crit_edge, label %for.body.lr.ph.i

if.end15.ice_get_combined_cnt.exit_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_get_combined_cnt.exit

for.body.lr.ph.i:                                 ; preds = %if.end15
  %q_vectors.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %q_vectors.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %q_vectors.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i118.for.body.i_crit_edge, %for.body.lr.ph.i
  %q_idx.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc3.i, %if.end.i118.for.body.i_crit_edge ]
  %combined.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %combined.1.i, %if.end.i118.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %26, i32 %q_idx.011.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %rx.i = getelementptr inbounds %struct.ice_q_vector, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx.i, align 16
  %tobool.not.i116 = icmp eq ptr %30, null
  br i1 %tobool.not.i116, label %for.body.i.if.end.i118_crit_edge, label %land.lhs.true.i117

for.body.i.if.end.i118_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i118

land.lhs.true.i117:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %tx.i = getelementptr inbounds %struct.ice_q_vector, ptr %28, i32 0, i32 9
  %31 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx.i, align 128
  %tobool2.not.i = icmp ne ptr %32, null
  %inc.i = zext i1 %tobool2.not.i to i32
  %spec.select.i = add i32 %combined.010.i, %inc.i
  br label %if.end.i118

if.end.i118:                                      ; preds = %land.lhs.true.i117, %for.body.i.if.end.i118_crit_edge
  %combined.1.i = phi i32 [ %combined.010.i, %for.body.i.if.end.i118_crit_edge ], [ %spec.select.i, %land.lhs.true.i117 ]
  %inc3.i = add nuw nsw i32 %q_idx.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc3.i, %conv.i
  br i1 %exitcond.not.i, label %if.end.i118.ice_get_combined_cnt.exit_crit_edge, label %if.end.i118.for.body.i_crit_edge

if.end.i118.for.body.i_crit_edge:                 ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.end.i118.ice_get_combined_cnt.exit_crit_edge:  ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_get_combined_cnt.exit

ice_get_combined_cnt.exit:                        ; preds = %if.end.i118.ice_get_combined_cnt.exit_crit_edge, %if.end15.ice_get_combined_cnt.exit_crit_edge
  %combined.0.lcssa.i = phi i32 [ 0, %if.end15.ice_get_combined_cnt.exit_crit_edge ], [ %combined.1.i, %if.end.i118.ice_get_combined_cnt.exit_crit_edge ]
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %33 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_count, align 4
  %num_rxq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 50
  %35 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_rxq, align 2
  %conv = zext i16 %36 to i32
  %sub = sub i32 %conv, %combined.0.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %sub)
  %cmp17 = icmp eq i32 %34, %sub
  br i1 %cmp17, label %if.then19, label %ice_get_combined_cnt.exit.if.end21_crit_edge

ice_get_combined_cnt.exit.if.end21_crit_edge:     ; preds = %ice_get_combined_cnt.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then19:                                        ; preds = %ice_get_combined_cnt.exit
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %rx_count, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %ice_get_combined_cnt.exit.if.end21_crit_edge
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %38 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_count, align 4
  %num_txq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 48
  %40 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %num_txq, align 2
  %conv22 = zext i16 %41 to i32
  %sub23 = sub i32 %conv22, %combined.0.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %sub23)
  %cmp24 = icmp eq i32 %39, %sub23
  br i1 %cmp24, label %if.then26, label %if.end21.if.end28_crit_edge

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %tx_count, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end21.if.end28_crit_edge
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %43 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %combined_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %combined.0.lcssa.i)
  %cmp29 = icmp eq i32 %44, %combined.0.lcssa.i
  br i1 %cmp29, label %if.end33.thread, label %if.end33

if.end33.thread:                                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  %45 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %combined_count, align 4
  br label %lor.lhs.false

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool35.not = icmp eq i32 %44, 0
  br i1 %tobool35.not, label %if.end33.lor.lhs.false_crit_edge, label %if.end33.if.end42_crit_edge

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.end33.lor.lhs.false_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end33.lor.lhs.false_crit_edge, %if.end33.thread
  %46 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool37.not = icmp eq i32 %47, 0
  br i1 %tobool37.not, label %lor.lhs.false.if.then41_crit_edge, label %land.lhs.true38

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then41

land.lhs.true38:                                  ; preds = %lor.lhs.false
  %48 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool40.not = icmp eq i32 %49, 0
  br i1 %tobool40.not, label %land.lhs.true38.if.then41_crit_edge, label %land.lhs.true38.if.end42_crit_edge

land.lhs.true38.if.end42_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

land.lhs.true38.if.then41_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then41

if.then41:                                        ; preds = %land.lhs.true38.if.then41_crit_edge, %lor.lhs.false.if.then41_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.130) #20
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true38.if.end42_crit_edge, %if.end33.if.end42_crit_edge
  %50 = phi i32 [ 0, %land.lhs.true38.if.end42_crit_edge ], [ %44, %if.end33.if.end42_crit_edge ]
  %51 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_count, align 4
  %add = add i32 %52, %50
  %53 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_count, align 4
  %add47 = add i32 %54, %50
  %num_lan_msix.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 45
  %55 = ptrtoint ptr %num_lan_msix.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %num_lan_msix.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %57 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv1.i = zext i16 %56 to i32
  %conv2.i = and i32 %57, 65535
  %58 = tail call i32 @llvm.umin.i32(i32 %conv2.i, i32 %conv1.i) #17
  %num_rxq.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 28, i32 0, i32 3
  %59 = ptrtoint ptr %num_rxq.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %num_rxq.i, align 4
  %conv9.i = zext i16 %60 to i32
  %61 = tail call i32 @llvm.umin.i32(i32 %58, i32 %conv9.i) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %61)
  %cmp49 = icmp sgt i32 %add, %61
  %62 = ptrtoint ptr %num_lan_msix.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %num_lan_msix.i, align 4
  %call.i.i.i.i120 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %64 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv1.i121 = zext i16 %63 to i32
  %conv2.i122 = and i32 %64, 65535
  %65 = tail call i32 @llvm.umin.i32(i32 %conv2.i122, i32 %conv1.i121) #17
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  %66 = ptrtoint ptr %num_rxq.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %num_rxq.i, align 4
  %conv9.i124 = zext i16 %67 to i32
  %68 = tail call i32 @llvm.umin.i32(i32 %65, i32 %conv9.i124) #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %68) #20
  br label %cleanup

if.end53:                                         ; preds = %if.end42
  %num_txq.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 28, i32 0, i32 5
  %69 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %num_txq.i, align 8
  %conv9.i129 = zext i16 %70 to i32
  %71 = tail call i32 @llvm.umin.i32(i32 %65, i32 %conv9.i129) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %add47, i32 %71)
  %cmp55 = icmp sgt i32 %add47, %71
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  %72 = ptrtoint ptr %num_lan_msix.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %num_lan_msix.i, align 4
  %call.i.i.i.i131 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %74 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv1.i132 = zext i16 %73 to i32
  %conv2.i133 = and i32 %74, 65535
  %75 = tail call i32 @llvm.umin.i32(i32 %conv2.i133, i32 %conv1.i132) #17
  %76 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %num_txq.i, align 8
  %conv9.i135 = zext i16 %77 to i32
  %78 = tail call i32 @llvm.umin.i32(i32 %75, i32 %conv9.i135) #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.132, i32 noundef %78) #20
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  %call60 = tail call i32 @ice_vsi_recfg_qs(ptr noundef %1, i32 noundef %add, i32 noundef %add47) #17
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %79 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %80, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end59
  %81 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %back, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not.i136 = icmp eq i32 %add, 0
  br i1 %tobool.not.i136, label %if.then62.cleanup_crit_edge, label %if.end.i138

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i138:                                      ; preds = %if.then62
  %rss_table_size.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 24
  %85 = ptrtoint ptr %rss_table_size.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %rss_table_size.i, align 4
  %conv.i137 = zext i16 %86 to i32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i137, i32 noundef 3520) #21
  %tobool3.not.i139 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool3.not.i139, label %if.end.i138.cleanup_crit_edge, label %if.end5.i141

if.end.i138.cleanup_crit_edge:                    ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5.i141:                                     ; preds = %if.end.i138
  %flags.i140 = getelementptr inbounds %struct.ice_pf, ptr %82, i32 0, i32 21
  %87 = ptrtoint ptr %flags.i140 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %flags.i140, align 4
  %89 = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool7.not.i = icmp eq i32 %89, 0
  br i1 %tobool7.not.i, label %if.end5.i141.if.end12.i_crit_edge, label %if.else.i

if.end5.i141.if.end12.i_crit_edge:                ; preds = %if.end5.i141
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end5.i141
  call void @__sanitizer_cov_trace_pc() #19
  %rss_table_entry_width.i.i = getelementptr inbounds %struct.ice_pf, ptr %82, i32 0, i32 58, i32 28, i32 0, i32 12
  %90 = ptrtoint ptr %rss_table_entry_width.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rss_table_entry_width.i.i, align 2
  %conv.i.i = zext i8 %91 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %92 = tail call i32 @llvm.smin.i32(i32 %shl.i.i, i32 %add) #17
  %conv10.i = trunc i32 %92 to i16
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.end5.i141.if.end12.i_crit_edge
  %conv10.sink.i = phi i16 [ %conv10.i, %if.else.i ], [ 1, %if.end5.i141.if.end12.i_crit_edge ]
  %93 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 25
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv10.sink.i, ptr %93, align 2
  %95 = ptrtoint ptr %rss_table_size.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %rss_table_size.i, align 4
  tail call void @ice_fill_rss_lut(ptr noundef nonnull %call9.i.i.i, i16 noundef zeroext %96, i16 noundef zeroext %conv10.sink.i) #17
  %97 = ptrtoint ptr %rss_table_size.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %rss_table_size.i, align 4
  %call16.i = tail call i32 @ice_set_rss_lut(ptr noundef %1, ptr noundef nonnull %call9.i.i.i, i16 noundef zeroext %98) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end12.i.if.end20.i_crit_edge, label %do.end.i

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20.i

do.end.i:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  %sq_last_status.i = getelementptr inbounds %struct.ice_pf, ptr %82, i32 0, i32 58, i32 30, i32 8
  %99 = ptrtoint ptr %sq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sq_last_status.i, align 4
  %call19.i = tail call ptr @ice_aq_str(i32 noundef %100) #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.133, i32 noundef %call16.i, ptr noundef %call19.i) #20
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %if.end12.i.if.end20.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #17
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  %rss_table_entry_width.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 28, i32 0, i32 12
  %101 = ptrtoint ptr %rss_table_entry_width.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %rss_table_entry_width.i, align 2
  %conv.i143 = zext i8 %102 to i32
  %shl.i = shl nuw i32 1, %conv.i143
  %103 = tail call i32 @llvm.smin.i32(i32 %shl.i, i32 %add) #17
  %conv67 = trunc i32 %103 to i16
  %rss_size = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 25
  %104 = ptrtoint ptr %rss_size to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv67, ptr %rss_size, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end20.i, %if.end.i138.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %if.then57, %if.then51, %if.then41, %if.then14, %if.then7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -95, %if.then7 ], [ -95, %if.then14 ], [ -22, %if.then51 ], [ -22, %if.then57 ], [ 0, %if.end64 ], [ -22, %if.then41 ], [ -22, %if.end.cleanup_crit_edge ], [ %call16.i, %if.end20.i ], [ -22, %if.then62.cleanup_crit_edge ], [ -12, %if.end.i138.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_get_ts_info(ptr noundef %dev, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %flags = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call2 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %dev, ptr noundef %info) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 95, ptr %so_timestamping, align 4
  %call3 = tail call i32 @ice_get_ptp_clock_index(ptr noundef %3) #17
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3, ptr %phc_index, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %10 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %rx_filters, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_get_module_info(ptr noundef %netdev, ptr nocapture noundef writeonly %modinfo) #1 align 64 {
entry:
  %sff8472_comp = alloca i8, align 1
  %sff8472_swap = alloca i8, align 1
  %sff8636_rev = alloca i8, align 1
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sff8472_comp) #17
  %4 = ptrtoint ptr %sff8472_comp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %sff8472_comp, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sff8472_swap) #17
  %5 = ptrtoint ptr %sff8472_swap to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %sff8472_swap, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sff8636_rev) #17
  %6 = ptrtoint ptr %sff8636_rev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %sff8636_rev, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #17
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %value, align 1
  %call3 = call i32 @ice_aq_sff_eeprom(ptr noundef %hw2, i16 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value, i8 noundef zeroext 1, i1 noundef zeroext false, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %value, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %9, label %sw.default [
    i8 3, label %sw.bb
    i8 13, label %if.end.sw.bb28_crit_edge
    i8 17, label %if.end.sw.bb28_crit_edge70
  ]

if.end.sw.bb28_crit_edge70:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb28

if.end.sw.bb28_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb28

sw.bb:                                            ; preds = %if.end
  %call4 = call i32 @ice_aq_sff_eeprom(ptr noundef %hw2, i16 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 94, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %sff8472_comp, i8 noundef zeroext 1, i1 noundef zeroext false, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %call8 = call i32 @ice_aq_sff_eeprom(ptr noundef %hw2, i16 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 92, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %sff8472_swap, i8 noundef zeroext 1, i1 noundef zeroext false, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %sff8472_swap to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sff8472_swap, align 1
  %conv12 = zext i8 %12 to i32
  %and = and i32 %conv12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %type = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %14 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 256, ptr %eeprom_len, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end11
  %15 = ptrtoint ptr %sff8472_comp to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sff8472_comp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not = icmp eq i8 %16, 0
  %and18 = and i32 %conv12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool19.not
  %type24 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  br i1 %or.cond, label %if.else23, label %if.then20

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %type24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %type24, align 4
  %eeprom_len22 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %18 = ptrtoint ptr %eeprom_len22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 512, ptr %eeprom_len22, align 4
  br label %cleanup

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %type24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %type24, align 4
  %eeprom_len25 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %20 = ptrtoint ptr %eeprom_len25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 256, ptr %eeprom_len25, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %if.end.sw.bb28_crit_edge, %if.end.sw.bb28_crit_edge70
  %call29 = call i32 @ice_aq_sff_eeprom(ptr noundef %hw2, i16 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %sff8636_rev, i8 noundef zeroext 1, i1 noundef zeroext false, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end32:                                         ; preds = %sw.bb28
  %21 = ptrtoint ptr %sff8636_rev to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sff8636_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp = icmp ugt i8 %22, 2
  %type36 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  br i1 %cmp, label %if.then35, label %if.else38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %type36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %type36, align 4
  %eeprom_len37 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %24 = ptrtoint ptr %eeprom_len37 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 640, ptr %eeprom_len37, align 4
  br label %cleanup

if.else38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %type36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %type36, align 4
  %eeprom_len40 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %26 = ptrtoint ptr %eeprom_len40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 640, ptr %eeprom_len40, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.135) #20
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.else38, %if.then35, %sw.bb28.cleanup_crit_edge, %if.else23, %if.then20, %if.then14, %if.end7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call3, %entry.cleanup_crit_edge ], [ %call4, %sw.bb.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call29, %sw.bb28.cleanup_crit_edge ], [ 0, %if.then35 ], [ 0, %if.else38 ], [ 0, %if.then14 ], [ 0, %if.else23 ], [ 0, %if.then20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sff8636_rev) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sff8472_swap) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sff8472_comp) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_get_module_eeprom(ptr noundef %netdev, ptr noundef readonly %ee, ptr noundef %data) #1 align 64 {
entry:
  %value = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #17
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %value, align 8
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back, align 8
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %4, i32 0, i32 58
  %tobool.not = icmp eq ptr %ee, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  %tobool5.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool5.not, %tobool3.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call6 = call i32 @ice_aq_sff_eeprom(ptr noundef %hw2, i16 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value, i8 noundef zeroext 1, i1 noundef zeroext false, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp eq i8 %8, 3
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = call ptr @memset(ptr %data, i32 0, i32 %10)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp15161.not = icmp eq i32 %12, 0
  br i1 %cmp15161.not, label %if.end9.cleanup_crit_edge, label %for.body.lr.ph

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end9
  %offset17 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %arrayidx39 = getelementptr i8, ptr %data, i32 2
  %lnot = xor i1 %cmp, true
  %conv48 = zext i1 %lnot to i8
  %conv64 = zext i1 %cmp to i32
  %arrayidx67 = getelementptr inbounds [8 x i8], ptr %value, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [8 x i8], ptr %value, i32 0, i32 2
  %arrayidx71 = getelementptr inbounds [8 x i8], ptr %value, i32 0, i32 3
  %arrayidx73 = getelementptr inbounds [8 x i8], ptr %value, i32 0, i32 4
  %arrayidx75 = getelementptr inbounds [8 x i8], ptr %value, i32 0, i32 5
  %arrayidx77 = getelementptr inbounds [8 x i8], ptr %value, i32 0, i32 6
  %arrayidx79 = getelementptr inbounds [8 x i8], ptr %value, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc97.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv165 = phi i16 [ -256, %for.body.lr.ph ], [ %indvars.iv.next166, %for.inc97.for.body_crit_edge ]
  %indvars.iv = phi i16 [ -128, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc97.for.body_crit_edge ]
  %addr.0164 = phi i8 [ -96, %for.body.lr.ph ], [ %addr.1151, %for.inc97.for.body_crit_edge ]
  %i.0162 = phi i32 [ 0, %for.body.lr.ph ], [ %add98.pre-phi, %for.inc97.for.body_crit_edge ]
  %13 = ptrtoint ptr %offset17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset17, align 4
  %add = add i32 %14, %i.0162
  %conv18 = trunc i32 %add to i16
  br i1 %cmp, label %if.then20, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %conv18)
  %cmp29156 = icmp ugt i16 %conv18, 255
  br i1 %cmp29156, label %if.end34, label %while.cond.preheader.if.then42_crit_edge

while.cond.preheader.if.then42_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then42

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %conv21 = and i32 %add, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv21)
  %cmp22.not = icmp eq i32 %conv21, 0
  %conv26 = add i16 %conv18, -256
  %spec.select = select i1 %cmp22.not, i8 %addr.0164, i8 -94
  %spec.select155 = select i1 %cmp22.not, i16 %conv18, i16 %conv26
  br label %if.then42

if.end34:                                         ; preds = %while.cond.preheader
  %15 = trunc i32 %14 to i16
  %16 = add i16 %indvars.iv165, %15
  %17 = lshr i16 %16, 7
  %18 = and i16 %16, -128
  %19 = trunc i16 %17 to i8
  %20 = add i16 %indvars.iv, %15
  %21 = sub i16 %20, %18
  %22 = add i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp36 = icmp eq i8 %22, 0
  br i1 %cmp36, label %if.end34.if.then42_crit_edge, label %lor.lhs.false38

if.end34.if.then42_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then42

lor.lhs.false38:                                  ; preds = %if.end34
  %conv35 = zext i8 %22 to i32
  %23 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx39, align 1
  %25 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool41.not = icmp eq i8 %25, 0
  br i1 %tobool41.not, label %lor.lhs.false38.if.then42_crit_edge, label %lor.lhs.false38.for.inc97_crit_edge

lor.lhs.false38.if.then42_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then42

lor.lhs.false38.for.inc97_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #19
  %.pre = add i32 %i.0162, 8
  br label %for.inc97

if.then42:                                        ; preds = %lor.lhs.false38.if.then42_crit_edge, %if.end34.if.then42_crit_edge, %if.then20, %while.cond.preheader.if.then42_crit_edge
  %conv35153 = phi i32 [ %conv35, %lor.lhs.false38.if.then42_crit_edge ], [ 0, %if.end34.if.then42_crit_edge ], [ 0, %if.then20 ], [ 0, %while.cond.preheader.if.then42_crit_edge ]
  %addr.1150 = phi i8 [ %addr.0164, %lor.lhs.false38.if.then42_crit_edge ], [ %addr.0164, %if.end34.if.then42_crit_edge ], [ %spec.select, %if.then20 ], [ %addr.0164, %while.cond.preheader.if.then42_crit_edge ]
  %page.1149 = phi i8 [ %22, %lor.lhs.false38.if.then42_crit_edge ], [ 0, %if.end34.if.then42_crit_edge ], [ 0, %if.then20 ], [ 0, %while.cond.preheader.if.then42_crit_edge ]
  %offset.1148 = phi i16 [ %21, %lor.lhs.false38.if.then42_crit_edge ], [ %21, %if.end34.if.then42_crit_edge ], [ %spec.select155, %if.then20 ], [ %conv18, %while.cond.preheader.if.then42_crit_edge ]
  %conv60 = zext i8 %addr.1150 to i32
  %conv61 = zext i16 %offset.1148 to i32
  br label %for.body46

for.body46:                                       ; preds = %if.then85.for.body46_crit_edge, %if.then42
  %j.0160 = phi i32 [ 0, %if.then42 ], [ %inc88, %if.then85.for.body46_crit_edge ]
  %call50 = call i32 @ice_aq_sff_eeprom(ptr noundef %hw2, i16 noundef zeroext 0, i8 noundef zeroext %addr.1150, i16 noundef zeroext %offset.1148, i8 noundef zeroext %page.1149, i8 noundef zeroext %conv48, ptr noundef nonnull %value, i8 noundef zeroext 8, i1 noundef zeroext false, ptr noundef null) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_module_eeprom.__UNIQUE_ID_ddebug646, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_module_eeprom, %if.then59)) #17
          to label %do.end83 [label %if.then59], !srcloc !303

if.then59:                                        ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %value, align 8
  %conv66 = zext i8 %27 to i32
  %28 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %29 to i32
  %30 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx69, align 2
  %conv70 = zext i8 %31 to i32
  %32 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %33 to i32
  %34 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx73, align 4
  %conv74 = zext i8 %35 to i32
  %36 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %37 to i32
  %38 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx77, align 2
  %conv78 = zext i8 %39 to i32
  %40 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %41 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_get_module_eeprom.__UNIQUE_ID_ddebug646, ptr noundef %netdev, ptr noundef nonnull @.str.137, i32 noundef %conv60, i32 noundef %conv61, i32 noundef %conv35153, i32 noundef %conv64, i32 noundef %conv66, i32 noundef %conv68, i32 noundef %conv70, i32 noundef %conv72, i32 noundef %conv74, i32 noundef %conv76, i32 noundef %conv78, i32 noundef %conv80, i32 noundef %call50) #17
  br label %do.end83

do.end83:                                         ; preds = %if.then59, %for.body46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool84.not = icmp eq i32 %call50, 0
  br i1 %tobool84.not, label %do.end83.for.end_crit_edge, label %if.then85

do.end83.for.end_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.then85:                                        ; preds = %do.end83
  call void @usleep_range_state(i32 noundef 1500, i32 noundef 2500, i32 noundef 2) #17
  %42 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %value, align 8
  %inc88 = add nuw nsw i32 %j.0160, 1
  %exitcond.not = icmp eq i32 %inc88, 4
  br i1 %exitcond.not, label %if.then85.for.end_crit_edge, label %if.then85.for.body46_crit_edge

if.then85.for.body46_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body46

if.then85.for.end_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %if.then85.for.end_crit_edge, %do.end83.for.end_crit_edge
  %add89 = add i32 %i.0162, 8
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add89, i32 %44)
  %cmp91 = icmp ult i32 %add89, %44
  br i1 %cmp91, label %if.then93, label %for.end.for.inc97_crit_edge

for.end.for.inc97_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc97

if.then93:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr = getelementptr i8, ptr %data, i32 %i.0162
  %45 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %value, align 8
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %46, ptr %add.ptr, align 1
  br label %for.inc97

for.inc97:                                        ; preds = %if.then93, %for.end.for.inc97_crit_edge, %lor.lhs.false38.for.inc97_crit_edge
  %add98.pre-phi = phi i32 [ %.pre, %lor.lhs.false38.for.inc97_crit_edge ], [ %add89, %if.then93 ], [ %add89, %for.end.for.inc97_crit_edge ]
  %addr.1151 = phi i8 [ %addr.0164, %lor.lhs.false38.for.inc97_crit_edge ], [ %addr.1150, %if.then93 ], [ %addr.1150, %for.end.for.inc97_crit_edge ]
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %cmp15 = icmp ult i32 %add98.pre-phi, %49
  %indvars.iv.next = add i16 %indvars.iv, 8
  %indvars.iv.next166 = add i16 %indvars.iv165, 8
  br i1 %cmp15, label %for.inc97.for.body_crit_edge, label %for.inc97.cleanup_crit_edge

for.inc97.cleanup_crit_edge:                      ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc97.for.body_crit_edge:                     ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup:                                          ; preds = %for.inc97.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %for.inc97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_get_per_q_coalesce(ptr nocapture noundef readonly %netdev, i32 noundef %q_num, ptr nocapture noundef writeonly %ec) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %q_num, i32 0) #17
  %call2.i = tail call fastcc i32 @ice_get_q_coalesce(ptr noundef %1, ptr noundef %ec, i32 noundef %2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 -22
  ret i32 %..i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_set_per_q_coalesce(ptr noundef %netdev, i32 noundef %q_num, ptr nocapture noundef readonly %ec) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ice_set_coalesce(ptr noundef %netdev, ptr noundef %ec, i32 noundef %q_num)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_get_fecparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %fecparam) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %fec_info = getelementptr inbounds %struct.ice_port_info, ptr %3, i32 0, i32 13, i32 0, i32 11
  %4 = ptrtoint ptr %fec_info to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fec_info, align 1
  %switch.tableidx = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 4
  br i1 %6, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %7 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ice_get_fecparam, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 4, %if.end.sw.epilog_crit_edge ]
  %active_fec5 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 1
  %9 = ptrtoint ptr %active_fec5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %active_fec5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 560) #22
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %sw.epilog.cleanup_crit_edge, label %if.end9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  %call10 = tail call i32 @ice_aq_get_phy_caps(ptr noundef nonnull %3, i1 noundef zeroext false, i8 noundef zeroext 2, ptr noundef nonnull %call7.i.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.done_crit_edge

if.end9.done_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end13:                                         ; preds = %if.end9
  %caps14 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %caps14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %caps14, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool16.not = icmp sgt i8 %12, -1
  br i1 %tobool16.not, label %if.end13.if.end18_crit_edge, label %if.then17

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %13 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fec, align 4
  %or = or i32 %14, 2
  store i32 %or, ptr %fec, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %link_fec_options = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %link_fec_options to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %link_fec_options, align 2
  %conv19 = zext i8 %16 to i32
  %17 = and i32 %conv19, 139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.end18.if.end39_crit_edge, label %if.then36

if.end18.if.end39_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.then36:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %fec37 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %19 = ptrtoint ptr %fec37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fec37, align 4
  %or38 = or i32 %20, 16
  store i32 %or38, ptr %fec37, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end18.if.end39_crit_edge
  %21 = and i32 %conv19, 84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %if.end39.if.end57_crit_edge, label %if.then54

if.end39.if.end57_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

if.then54:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  %fec55 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %23 = ptrtoint ptr %fec55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fec55, align 4
  %or56 = or i32 %24, 8
  store i32 %or56, ptr %fec55, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end39.if.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp = icmp eq i8 %16, 0
  br i1 %cmp, label %if.then61, label %if.end57.done_crit_edge

if.end57.done_crit_edge:                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  %fec62 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %25 = ptrtoint ptr %fec62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fec62, align 4
  %or63 = or i32 %26, 4
  store i32 %or63, ptr %fec62, align 4
  br label %done

done:                                             ; preds = %if.then61, %if.end57.done_crit_edge, %if.end9.done_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %done, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %done ], [ -95, %entry.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_set_fecparam(ptr noundef %netdev, ptr nocapture noundef readonly %fecparam) #1 align 64 {
entry:
  %config.i = alloca %struct.ice_aqc_set_phy_cfg_data, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %fec2 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %0 = ptrtoint ptr %fec2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fec2, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %1, label %do.end [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 8, label %sw.bb3
    i32 16, label %sw.bb4
    i32 4, label %entry.sw.bb5_crit_edge
    i32 1, label %entry.sw.bb5_crit_edge12
  ]

entry.sw.bb5_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge12
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.138, i32 noundef %1) #20
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge
  %fec.0 = phi i32 [ 0, %sw.bb5 ], [ 2, %sw.bb4 ], [ 1, %sw.bb3 ], [ 3, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i) #17
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %port_info.i = getelementptr inbounds %struct.ice_vsi, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %port_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_info.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %sw.epilog.ice_set_fec_cfg.exit_crit_edge, label %if.end.i

sw.epilog.ice_set_fec_cfg.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_set_fec_cfg.exit

if.end.i:                                         ; preds = %sw.epilog
  %type.i = getelementptr inbounds %struct.ice_vsi, ptr %10, i32 0, i32 17
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.140) #20
  br label %ice_set_fec_cfg.exit

if.end3.i:                                        ; preds = %if.end.i
  %curr_user_fec_req.i = getelementptr inbounds %struct.ice_port_info, ptr %12, i32 0, i32 13, i32 7
  %15 = ptrtoint ptr %curr_user_fec_req.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %curr_user_fec_req.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %fec.0)
  %cmp4.i = icmp eq i32 %16, %fec.0
  br i1 %cmp4.i, label %if.end3.i.ice_set_fec_cfg.exit_crit_edge, label %if.end6.i

if.end3.i.ice_set_fec_cfg.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_set_fec_cfg.exit

if.end6.i:                                        ; preds = %if.end3.i
  %curr_user_phy_cfg.i = getelementptr inbounds %struct.ice_port_info, ptr %12, i32 0, i32 13, i32 9
  %17 = call ptr @memcpy(ptr %config.i, ptr %curr_user_phy_cfg.i, i32 24)
  %call8.i = call i32 @ice_cfg_phy_fec(ptr noundef nonnull %12, ptr noundef nonnull %config.i, i32 noundef %fec.0) #17
  %caps.i = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %config.i, i32 0, i32 2
  %18 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %caps.i, align 8
  %20 = or i8 %19, 32
  store i8 %20, ptr %caps.i, align 8
  %hw.i = getelementptr inbounds %struct.ice_port_info, ptr %12, i32 0, i32 1
  %21 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i, align 4
  %call10.i = call i32 @ice_aq_set_phy_cfg(ptr noundef %22, ptr noundef nonnull %12, ptr noundef nonnull %config.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end6.i.ice_set_fec_cfg.exit_crit_edge

if.end6.i.ice_set_fec_cfg.exit_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_set_fec_cfg.exit

if.end13.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %curr_user_fec_req.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %fec.0, ptr %curr_user_fec_req.i, align 8
  br label %ice_set_fec_cfg.exit

ice_set_fec_cfg.exit:                             ; preds = %if.end13.i, %if.end6.i.ice_set_fec_cfg.exit_crit_edge, %if.end3.i.ice_set_fec_cfg.exit_crit_edge, %if.then2.i, %sw.epilog.ice_set_fec_cfg.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %if.then2.i ], [ 0, %if.end13.i ], [ -95, %sw.epilog.ice_set_fec_cfg.exit_crit_edge ], [ 0, %if.end3.i.ice_set_fec_cfg.exit_crit_edge ], [ -11, %if.end6.i.ice_set_fec_cfg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #17
  br label %cleanup

cleanup:                                          ; preds = %ice_set_fec_cfg.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i, %ice_set_fec_cfg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_get_q_coalesce(ptr nocapture noundef readonly %vsi, ptr nocapture noundef writeonly %ec, i32 noundef %q_num) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rxq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 50
  %0 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_rxq, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %q_num)
  %cmp = icmp sgt i32 %conv, %q_num
  %num_txq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 48
  %2 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_txq, align 2
  %conv2 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %q_num)
  %cmp3 = icmp sgt i32 %conv2, %q_num
  br i1 %cmp, label %land.lhs.true, label %if.else25

land.lhs.true:                                    ; preds = %entry
  %rx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 4
  %4 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_rings, align 16
  %arrayidx = getelementptr ptr, ptr %5, i32 %q_num
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %q_vector = getelementptr inbounds %struct.ice_rx_ring, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q_vector, align 4
  %rx = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %cmp3, label %if.then, label %if.then16

if.then:                                          ; preds = %land.lhs.true
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i:                                         ; preds = %if.then
  %type.i = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %13, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %itr_mode.i = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %itr_mode.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %itr_mode.i, align 2
  %bf.clear.i = and i16 %bf.load.i, 1
  %16 = zext i16 %bf.clear.i to i32
  %use_adaptive_rx_coalesce.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %17 = ptrtoint ptr %use_adaptive_rx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %use_adaptive_rx_coalesce.i, align 4
  %bf.load2.i = load i16, ptr %itr_mode.i, align 2
  %bf.lshr.i = lshr i16 %bf.load2.i, 3
  %conv3.i = zext i16 %bf.lshr.i to i32
  %rx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %18 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv3.i, ptr %rx_coalesce_usecs.i, align 4
  %19 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx, align 8
  %q_vector.i = getelementptr inbounds %struct.ice_rx_ring, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %q_vector.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %q_vector.i, align 4
  %intrl.i = getelementptr inbounds %struct.ice_q_vector, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %intrl.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %intrl.i, align 1
  %conv4.i = zext i8 %24 to i32
  %rx_coalesce_usecs_high.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 18
  %25 = ptrtoint ptr %rx_coalesce_usecs_high.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv4.i, ptr %rx_coalesce_usecs_high.i, align 4
  br label %if.end

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %itr_mode6.i = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 8, i32 3
  %26 = ptrtoint ptr %itr_mode6.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load7.i = load i16, ptr %itr_mode6.i, align 2
  %bf.clear8.i = and i16 %bf.load7.i, 1
  %27 = zext i16 %bf.clear8.i to i32
  %use_adaptive_tx_coalesce.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %28 = ptrtoint ptr %use_adaptive_tx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %use_adaptive_tx_coalesce.i, align 4
  %bf.load13.i = load i16, ptr %itr_mode6.i, align 2
  %bf.lshr14.i = lshr i16 %bf.load13.i, 3
  %conv15.i = zext i16 %bf.lshr14.i to i32
  %tx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %29 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv15.i, ptr %tx_coalesce_usecs.i, align 4
  br label %if.end

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_rc_coalesce.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_q_coalesce, %if.then19.i)) #17
          to label %return [label %if.then19.i], !srcloc !303

if.then19.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx, align 8
  %vsi.i = getelementptr inbounds %struct.ice_rx_ring, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vsi.i, align 16
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %back.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_rc_coalesce.__UNIQUE_ID_ddebug644, ptr noundef %dev.i, ptr noundef nonnull @.str.43, i32 noundef %39) #17
  br label %return

if.end:                                           ; preds = %sw.bb5.i, %sw.bb.i
  %tx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 5
  %40 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_rings, align 4
  %arrayidx6 = getelementptr ptr, ptr %41, i32 %q_num
  %42 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx6, align 4
  %q_vector7 = getelementptr inbounds %struct.ice_tx_ring, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %q_vector7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %q_vector7, align 4
  %tx = getelementptr inbounds %struct.ice_q_vector, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx, align 8
  %tobool.not.i60 = icmp eq ptr %47, null
  br i1 %tobool.not.i60, label %if.end.return_crit_edge, label %if.end.i62

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i62:                                       ; preds = %if.end
  %type.i61 = getelementptr inbounds %struct.ice_q_vector, ptr %45, i32 0, i32 9, i32 4
  %48 = ptrtoint ptr %type.i61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type.i61, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %49, label %do.body.i85 [
    i32 0, label %sw.bb.i75
    i32 1, label %sw.bb5.i84
  ]

sw.bb.i75:                                        ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #19
  %itr_mode.i63 = getelementptr inbounds %struct.ice_q_vector, ptr %45, i32 0, i32 9, i32 3
  %51 = ptrtoint ptr %itr_mode.i63 to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i64 = load i16, ptr %itr_mode.i63, align 2
  %bf.clear.i65 = and i16 %bf.load.i64, 1
  %52 = zext i16 %bf.clear.i65 to i32
  %use_adaptive_rx_coalesce.i66 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %53 = ptrtoint ptr %use_adaptive_rx_coalesce.i66 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %use_adaptive_rx_coalesce.i66, align 4
  %bf.load2.i67 = load i16, ptr %itr_mode.i63, align 2
  %bf.lshr.i68 = lshr i16 %bf.load2.i67, 3
  %conv3.i69 = zext i16 %bf.lshr.i68 to i32
  %rx_coalesce_usecs.i70 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %54 = ptrtoint ptr %rx_coalesce_usecs.i70 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv3.i69, ptr %rx_coalesce_usecs.i70, align 4
  %55 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx, align 8
  %q_vector.i71 = getelementptr inbounds %struct.ice_rx_ring, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %q_vector.i71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %q_vector.i71, align 4
  %intrl.i72 = getelementptr inbounds %struct.ice_q_vector, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %intrl.i72 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %intrl.i72, align 1
  %conv4.i73 = zext i8 %60 to i32
  %rx_coalesce_usecs_high.i74 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 18
  %61 = ptrtoint ptr %rx_coalesce_usecs_high.i74 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv4.i73, ptr %rx_coalesce_usecs_high.i74, align 4
  br label %return

sw.bb5.i84:                                       ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #19
  %itr_mode6.i76 = getelementptr inbounds %struct.ice_q_vector, ptr %45, i32 0, i32 9, i32 3
  %62 = ptrtoint ptr %itr_mode6.i76 to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load7.i77 = load i16, ptr %itr_mode6.i76, align 2
  %bf.clear8.i78 = and i16 %bf.load7.i77, 1
  %63 = zext i16 %bf.clear8.i78 to i32
  %use_adaptive_tx_coalesce.i79 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %64 = ptrtoint ptr %use_adaptive_tx_coalesce.i79 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %use_adaptive_tx_coalesce.i79, align 4
  %bf.load13.i80 = load i16, ptr %itr_mode6.i76, align 2
  %bf.lshr14.i81 = lshr i16 %bf.load13.i80, 3
  %conv15.i82 = zext i16 %bf.lshr14.i81 to i32
  %tx_coalesce_usecs.i83 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %65 = ptrtoint ptr %tx_coalesce_usecs.i83 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv15.i82, ptr %tx_coalesce_usecs.i83, align 4
  br label %return

do.body.i85:                                      ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_rc_coalesce.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_q_coalesce, %if.then19.i89)) #17
          to label %return [label %if.then19.i89], !srcloc !303

if.then19.i89:                                    ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #19
  %66 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx, align 8
  %vsi.i86 = getelementptr inbounds %struct.ice_rx_ring, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %vsi.i86 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vsi.i86, align 16
  %back.i87 = getelementptr inbounds %struct.ice_vsi, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %back.i87 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %back.i87, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %dev.i88 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %74 = ptrtoint ptr %type.i61 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %type.i61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_rc_coalesce.__UNIQUE_ID_ddebug644, ptr noundef %dev.i88, ptr noundef nonnull @.str.43, i32 noundef %75) #17
  br label %return

if.then16:                                        ; preds = %land.lhs.true
  br i1 %tobool.not.i, label %if.then16.return_crit_edge, label %if.end.i94

if.then16.return_crit_edge:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i94:                                       ; preds = %if.then16
  %type.i93 = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 8, i32 4
  %76 = ptrtoint ptr %type.i93 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type.i93, align 4
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %77, label %do.body.i117 [
    i32 0, label %sw.bb.i107
    i32 1, label %sw.bb5.i116
  ]

sw.bb.i107:                                       ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #19
  %itr_mode.i95 = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 8, i32 3
  %79 = ptrtoint ptr %itr_mode.i95 to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load.i96 = load i16, ptr %itr_mode.i95, align 2
  %bf.clear.i97 = and i16 %bf.load.i96, 1
  %80 = zext i16 %bf.clear.i97 to i32
  %use_adaptive_rx_coalesce.i98 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %81 = ptrtoint ptr %use_adaptive_rx_coalesce.i98 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %use_adaptive_rx_coalesce.i98, align 4
  %bf.load2.i99 = load i16, ptr %itr_mode.i95, align 2
  %bf.lshr.i100 = lshr i16 %bf.load2.i99, 3
  %conv3.i101 = zext i16 %bf.lshr.i100 to i32
  %rx_coalesce_usecs.i102 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %82 = ptrtoint ptr %rx_coalesce_usecs.i102 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv3.i101, ptr %rx_coalesce_usecs.i102, align 4
  %83 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rx, align 8
  %q_vector.i103 = getelementptr inbounds %struct.ice_rx_ring, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %q_vector.i103 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %q_vector.i103, align 4
  %intrl.i104 = getelementptr inbounds %struct.ice_q_vector, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %intrl.i104 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %intrl.i104, align 1
  %conv4.i105 = zext i8 %88 to i32
  %rx_coalesce_usecs_high.i106 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 18
  %89 = ptrtoint ptr %rx_coalesce_usecs_high.i106 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv4.i105, ptr %rx_coalesce_usecs_high.i106, align 4
  br label %return

sw.bb5.i116:                                      ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #19
  %itr_mode6.i108 = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 8, i32 3
  %90 = ptrtoint ptr %itr_mode6.i108 to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load7.i109 = load i16, ptr %itr_mode6.i108, align 2
  %bf.clear8.i110 = and i16 %bf.load7.i109, 1
  %91 = zext i16 %bf.clear8.i110 to i32
  %use_adaptive_tx_coalesce.i111 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %92 = ptrtoint ptr %use_adaptive_tx_coalesce.i111 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %use_adaptive_tx_coalesce.i111, align 4
  %bf.load13.i112 = load i16, ptr %itr_mode6.i108, align 2
  %bf.lshr14.i113 = lshr i16 %bf.load13.i112, 3
  %conv15.i114 = zext i16 %bf.lshr14.i113 to i32
  %tx_coalesce_usecs.i115 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %93 = ptrtoint ptr %tx_coalesce_usecs.i115 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv15.i114, ptr %tx_coalesce_usecs.i115, align 4
  br label %return

do.body.i117:                                     ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_rc_coalesce.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_q_coalesce, %if.then19.i121)) #17
          to label %return [label %if.then19.i121], !srcloc !303

if.then19.i121:                                   ; preds = %do.body.i117
  call void @__sanitizer_cov_trace_pc() #19
  %94 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rx, align 8
  %vsi.i118 = getelementptr inbounds %struct.ice_rx_ring, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %vsi.i118 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %vsi.i118, align 16
  %back.i119 = getelementptr inbounds %struct.ice_vsi, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %back.i119 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %back.i119, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %dev.i120 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %102 = ptrtoint ptr %type.i93 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %type.i93, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_rc_coalesce.__UNIQUE_ID_ddebug644, ptr noundef %dev.i120, ptr noundef nonnull @.str.43, i32 noundef %103) #17
  br label %return

if.else25:                                        ; preds = %entry
  br i1 %cmp3, label %if.then30, label %if.else25.return_crit_edge

if.else25.return_crit_edge:                       ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then30:                                        ; preds = %if.else25
  %tx_rings31 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 5
  %104 = ptrtoint ptr %tx_rings31 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_rings31, align 4
  %arrayidx32 = getelementptr ptr, ptr %105, i32 %q_num
  %106 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx32, align 4
  %q_vector33 = getelementptr inbounds %struct.ice_tx_ring, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %q_vector33 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %q_vector33, align 4
  %tx34 = getelementptr inbounds %struct.ice_q_vector, ptr %109, i32 0, i32 9
  %110 = ptrtoint ptr %tx34 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tx34, align 8
  %tobool.not.i124 = icmp eq ptr %111, null
  br i1 %tobool.not.i124, label %if.then30.return_crit_edge, label %if.end.i126

if.then30.return_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i126:                                      ; preds = %if.then30
  %type.i125 = getelementptr inbounds %struct.ice_q_vector, ptr %109, i32 0, i32 9, i32 4
  %112 = ptrtoint ptr %type.i125 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %type.i125, align 4
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %113, label %do.body.i149 [
    i32 0, label %sw.bb.i139
    i32 1, label %sw.bb5.i148
  ]

sw.bb.i139:                                       ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #19
  %itr_mode.i127 = getelementptr inbounds %struct.ice_q_vector, ptr %109, i32 0, i32 9, i32 3
  %115 = ptrtoint ptr %itr_mode.i127 to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load.i128 = load i16, ptr %itr_mode.i127, align 2
  %bf.clear.i129 = and i16 %bf.load.i128, 1
  %116 = zext i16 %bf.clear.i129 to i32
  %use_adaptive_rx_coalesce.i130 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %117 = ptrtoint ptr %use_adaptive_rx_coalesce.i130 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %use_adaptive_rx_coalesce.i130, align 4
  %bf.load2.i131 = load i16, ptr %itr_mode.i127, align 2
  %bf.lshr.i132 = lshr i16 %bf.load2.i131, 3
  %conv3.i133 = zext i16 %bf.lshr.i132 to i32
  %rx_coalesce_usecs.i134 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %118 = ptrtoint ptr %rx_coalesce_usecs.i134 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv3.i133, ptr %rx_coalesce_usecs.i134, align 4
  %119 = ptrtoint ptr %tx34 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tx34, align 8
  %q_vector.i135 = getelementptr inbounds %struct.ice_rx_ring, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %q_vector.i135 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %q_vector.i135, align 4
  %intrl.i136 = getelementptr inbounds %struct.ice_q_vector, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %intrl.i136 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %intrl.i136, align 1
  %conv4.i137 = zext i8 %124 to i32
  %rx_coalesce_usecs_high.i138 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 18
  %125 = ptrtoint ptr %rx_coalesce_usecs_high.i138 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv4.i137, ptr %rx_coalesce_usecs_high.i138, align 4
  br label %return

sw.bb5.i148:                                      ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #19
  %itr_mode6.i140 = getelementptr inbounds %struct.ice_q_vector, ptr %109, i32 0, i32 9, i32 3
  %126 = ptrtoint ptr %itr_mode6.i140 to i32
  call void @__asan_load2_noabort(i32 %126)
  %bf.load7.i141 = load i16, ptr %itr_mode6.i140, align 2
  %bf.clear8.i142 = and i16 %bf.load7.i141, 1
  %127 = zext i16 %bf.clear8.i142 to i32
  %use_adaptive_tx_coalesce.i143 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %128 = ptrtoint ptr %use_adaptive_tx_coalesce.i143 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %use_adaptive_tx_coalesce.i143, align 4
  %bf.load13.i144 = load i16, ptr %itr_mode6.i140, align 2
  %bf.lshr14.i145 = lshr i16 %bf.load13.i144, 3
  %conv15.i146 = zext i16 %bf.lshr14.i145 to i32
  %tx_coalesce_usecs.i147 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %129 = ptrtoint ptr %tx_coalesce_usecs.i147 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %conv15.i146, ptr %tx_coalesce_usecs.i147, align 4
  br label %return

do.body.i149:                                     ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_rc_coalesce.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_q_coalesce, %if.then19.i153)) #17
          to label %return [label %if.then19.i153], !srcloc !303

if.then19.i153:                                   ; preds = %do.body.i149
  call void @__sanitizer_cov_trace_pc() #19
  %130 = ptrtoint ptr %tx34 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tx34, align 8
  %vsi.i150 = getelementptr inbounds %struct.ice_rx_ring, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %vsi.i150 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %vsi.i150, align 16
  %back.i151 = getelementptr inbounds %struct.ice_vsi, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %back.i151 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %back.i151, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 8
  %dev.i152 = getelementptr inbounds %struct.pci_dev, ptr %137, i32 0, i32 44
  %138 = ptrtoint ptr %type.i125 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %type.i125, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_rc_coalesce.__UNIQUE_ID_ddebug644, ptr noundef %dev.i152, ptr noundef nonnull @.str.43, i32 noundef %139) #17
  br label %return

return:                                           ; preds = %if.then19.i153, %do.body.i149, %sw.bb5.i148, %sw.bb.i139, %if.then30.return_crit_edge, %if.else25.return_crit_edge, %if.then19.i121, %do.body.i117, %sw.bb5.i116, %sw.bb.i107, %if.then16.return_crit_edge, %if.then19.i89, %do.body.i85, %sw.bb5.i84, %sw.bb.i75, %if.end.return_crit_edge, %if.then19.i, %do.body.i, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.else25.return_crit_edge ], [ -22, %if.then.return_crit_edge ], [ -22, %do.body.i ], [ -22, %if.then19.i ], [ -22, %if.end.return_crit_edge ], [ -22, %do.body.i85 ], [ -22, %if.then19.i89 ], [ -22, %if.then16.return_crit_edge ], [ -22, %do.body.i117 ], [ -22, %if.then19.i121 ], [ -22, %if.then30.return_crit_edge ], [ -22, %do.body.i149 ], [ -22, %if.then19.i153 ], [ 0, %sw.bb5.i84 ], [ 0, %sw.bb.i75 ], [ 0, %sw.bb5.i116 ], [ 0, %sw.bb.i107 ], [ 0, %sw.bb5.i148 ], [ 0, %sw.bb.i139 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ice_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ec, i32 noundef %q_num) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %q_num)
  %cmp = icmp slt i32 %q_num, 0
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %q_vectors = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %q_vectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q_vectors, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then2:                                         ; preds = %if.then
  %itr_setting = getelementptr inbounds %struct.ice_q_vector, ptr %5, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %itr_setting to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %itr_setting, align 2
  %bf.lshr = lshr i16 %bf.load, 3
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %7 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %9 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp ne i32 %8, 0
  %conv.i = zext i16 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %10, %conv.i
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  %rem.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool2.not.i = icmp eq i32 %rem.i, 0
  %or.cond9.i = or i1 %or.cond.i, %tobool2.not.i
  br i1 %or.cond9.i, label %if.then2.ice_print_if_odd_usecs.exit_crit_edge, label %if.then3.i

if.then2.ice_print_if_odd_usecs.exit_crit_edge:   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_print_if_odd_usecs.exit

if.then3.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  %and.i = and i32 %10, 8190
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i32 noundef %10, ptr noundef nonnull @.str.44, i32 noundef %and.i) #20
  br label %ice_print_if_odd_usecs.exit

ice_print_if_odd_usecs.exit:                      ; preds = %if.then3.i, %if.then2.ice_print_if_odd_usecs.exit_crit_edge
  %itr_setting3 = getelementptr inbounds %struct.ice_q_vector, ptr %5, i32 0, i32 9, i32 3
  %11 = ptrtoint ptr %itr_setting3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load4 = load i16, ptr %itr_setting3, align 2
  %bf.lshr5 = lshr i16 %bf.load4, 3
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %12 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %use_adaptive_tx_coalesce, align 4
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %14 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i55 = icmp ne i32 %13, 0
  %conv.i56 = zext i16 %bf.lshr5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i56)
  %cmp.not.i57 = icmp eq i32 %15, %conv.i56
  %or.cond.i58 = or i1 %tobool.not.i55, %cmp.not.i57
  %rem.i59 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i59)
  %tobool2.not.i60 = icmp eq i32 %rem.i59, 0
  %or.cond9.i61 = or i1 %or.cond.i58, %tobool2.not.i60
  br i1 %or.cond9.i61, label %ice_print_if_odd_usecs.exit.if.end_crit_edge, label %if.then3.i63

ice_print_if_odd_usecs.exit.if.end_crit_edge:     ; preds = %ice_print_if_odd_usecs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then3.i63:                                     ; preds = %ice_print_if_odd_usecs.exit
  call void @__sanitizer_cov_trace_pc() #19
  %and.i62 = and i32 %15, 8190
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %15, ptr noundef nonnull @.str.45, i32 noundef %and.i62) #20
  br label %if.end

if.end:                                           ; preds = %if.then3.i63, %ice_print_if_odd_usecs.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %num_txq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 48
  %tx_rings31.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 5
  %num_q_vectors = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_q_vectors, align 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp6109.not = icmp eq i16 %17, 0
  br i1 %cmp6109.not, label %if.end.cleanup30_crit_edge, label %for.body.lr.ph

if.end.cleanup30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

for.body.lr.ph:                                   ; preds = %if.end
  %num_rxq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 50
  %rx_rings.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %v_idx.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end19.for.body_crit_edge ]
  %18 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_rxq, align 2
  %conv8 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %v_idx.0110, i32 %conv8)
  %cmp9.not = icmp ult i32 %v_idx.0110, %conv8
  %20 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_txq, align 2
  %conv2.i101 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %v_idx.0110, i32 %conv2.i101)
  %cmp3.i102 = icmp ult i32 %v_idx.0110, %conv2.i101
  br i1 %cmp9.not, label %land.lhs.true.i, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  br i1 %cmp3.i102, label %if.else25.i, label %land.lhs.true.cleanup30_crit_edge

land.lhs.true.cleanup30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

land.lhs.true.i:                                  ; preds = %for.body
  %22 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_rings.i, align 16
  %arrayidx.i = getelementptr ptr, ptr %23, i32 %v_idx.0110
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %q_vector.i = getelementptr inbounds %struct.ice_rx_ring, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %q_vector.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %q_vector.i, align 4
  %rx.i = getelementptr inbounds %struct.ice_q_vector, ptr %27, i32 0, i32 8
  %call.i = tail call fastcc i32 @ice_set_rc_coalesce(ptr noundef %ec, ptr noundef %rx.i, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i66 = icmp eq i32 %call.i, 0
  br i1 %cmp3.i102, label %if.then.i, label %if.then16.i

if.then.i:                                        ; preds = %land.lhs.true.i
  br i1 %tobool.not.i66, label %if.end.i, label %if.then.i.cleanup30_crit_edge

if.then.i.cleanup30_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

if.end.i:                                         ; preds = %if.then.i
  %28 = ptrtoint ptr %tx_rings31.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_rings31.i, align 4
  %arrayidx6.i = getelementptr ptr, ptr %29, i32 %v_idx.0110
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx6.i, align 4
  %q_vector7.i = getelementptr inbounds %struct.ice_tx_ring, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %q_vector7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %q_vector7.i, align 4
  %tx.i = getelementptr inbounds %struct.ice_q_vector, ptr %33, i32 0, i32 9
  %call8.i = tail call fastcc i32 @ice_set_rc_coalesce(ptr noundef %ec, ptr noundef %tx.i, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.if.end19_crit_edge, label %if.end.i.cleanup30_crit_edge

if.end.i.cleanup30_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then16.i:                                      ; preds = %land.lhs.true.i
  br i1 %tobool.not.i66, label %if.then16.i.if.end19_crit_edge, label %if.then16.i.cleanup30_crit_edge

if.then16.i.cleanup30_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

if.then16.i.if.end19_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.else25.i:                                      ; preds = %land.lhs.true
  %34 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %num_txq, align 2
  %conv2.i = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %v_idx.0110, i32 %conv2.i)
  %cmp3.i = icmp ult i32 %v_idx.0110, %conv2.i
  br i1 %cmp3.i, label %if.then30.i, label %if.else25.i.cleanup30_crit_edge

if.else25.i.cleanup30_crit_edge:                  ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

if.then30.i:                                      ; preds = %if.else25.i
  %36 = ptrtoint ptr %tx_rings31.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_rings31.i, align 4
  %arrayidx32.i = getelementptr ptr, ptr %37, i32 %v_idx.0110
  %38 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx32.i, align 4
  %q_vector33.i = getelementptr inbounds %struct.ice_tx_ring, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %q_vector33.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %q_vector33.i, align 4
  %tx34.i = getelementptr inbounds %struct.ice_q_vector, ptr %41, i32 0, i32 9
  %call35.i = tail call fastcc i32 @ice_set_rc_coalesce(ptr noundef %ec, ptr noundef %tx34.i, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.then30.i.if.end19_crit_edge, label %if.then30.i.cleanup30_crit_edge

if.then30.i.cleanup30_crit_edge:                  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

if.then30.i.if.end19_crit_edge:                   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.end19:                                         ; preds = %if.then30.i.if.end19_crit_edge, %if.then16.i.if.end19_crit_edge, %if.end.i.if.end19_crit_edge
  %42 = ptrtoint ptr %q_vectors to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %q_vectors, align 8
  %arrayidx21 = getelementptr ptr, ptr %43, i32 %v_idx.0110
  %44 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx21, align 4
  tail call void @ice_set_q_vector_intrl(ptr noundef %45) #17
  %inc = add nuw nsw i32 %v_idx.0110, 1
  %46 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_q_vectors, align 64
  %conv = zext i16 %47 to i32
  %cmp6 = icmp ult i32 %inc, %conv
  br i1 %cmp6, label %if.end19.for.body_crit_edge, label %if.end19.cleanup30_crit_edge

if.end19.cleanup30_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end23:                                         ; preds = %entry
  %num_rxq.i67 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 50
  %48 = ptrtoint ptr %num_rxq.i67 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_rxq.i67, align 2
  %conv.i68 = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i68, i32 %q_num)
  %cmp.i69 = icmp ugt i32 %conv.i68, %q_num
  %num_txq.i70 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 48
  %50 = ptrtoint ptr %num_txq.i70 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %num_txq.i70, align 2
  %conv2.i71 = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i71, i32 %q_num)
  %cmp3.i72 = icmp ugt i32 %conv2.i71, %q_num
  br i1 %cmp.i69, label %land.lhs.true.i79, label %if.else25.i89

land.lhs.true.i79:                                ; preds = %if.end23
  %rx_rings.i73 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %rx_rings.i73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_rings.i73, align 16
  %arrayidx.i74 = getelementptr ptr, ptr %53, i32 %q_num
  %54 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i74, align 4
  %q_vector.i75 = getelementptr inbounds %struct.ice_rx_ring, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %q_vector.i75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %q_vector.i75, align 4
  %rx.i76 = getelementptr inbounds %struct.ice_q_vector, ptr %57, i32 0, i32 8
  %call.i77 = tail call fastcc i32 @ice_set_rc_coalesce(ptr noundef %ec, ptr noundef %rx.i76, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %cmp3.i72, label %if.then.i80, label %if.then16.i88

if.then.i80:                                      ; preds = %land.lhs.true.i79
  br i1 %tobool.not.i78, label %if.end.i87, label %if.then.i80.cleanup30_crit_edge

if.then.i80.cleanup30_crit_edge:                  ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

if.end.i87:                                       ; preds = %if.then.i80
  %tx_rings.i81 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 5
  %58 = ptrtoint ptr %tx_rings.i81 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_rings.i81, align 4
  %arrayidx6.i82 = getelementptr ptr, ptr %59, i32 %q_num
  %60 = ptrtoint ptr %arrayidx6.i82 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx6.i82, align 4
  %q_vector7.i83 = getelementptr inbounds %struct.ice_tx_ring, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %q_vector7.i83 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %q_vector7.i83, align 4
  %tx.i84 = getelementptr inbounds %struct.ice_q_vector, ptr %63, i32 0, i32 9
  %call8.i85 = tail call fastcc i32 @ice_set_rc_coalesce(ptr noundef %ec, ptr noundef %tx.i84, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i85)
  %tobool9.not.i86 = icmp eq i32 %call8.i85, 0
  br i1 %tobool9.not.i86, label %if.end.i87.if.end27_crit_edge, label %if.end.i87.cleanup30_crit_edge

if.end.i87.cleanup30_crit_edge:                   ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

if.end.i87.if.end27_crit_edge:                    ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.then16.i88:                                    ; preds = %land.lhs.true.i79
  br i1 %tobool.not.i78, label %if.then16.i88.if.end27_crit_edge, label %if.then16.i88.cleanup30_crit_edge

if.then16.i88.cleanup30_crit_edge:                ; preds = %if.then16.i88
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

if.then16.i88.if.end27_crit_edge:                 ; preds = %if.then16.i88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.else25.i89:                                    ; preds = %if.end23
  br i1 %cmp3.i72, label %if.then30.i96, label %if.else25.i89.cleanup30_crit_edge

if.else25.i89.cleanup30_crit_edge:                ; preds = %if.else25.i89
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

if.then30.i96:                                    ; preds = %if.else25.i89
  %tx_rings31.i90 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 5
  %64 = ptrtoint ptr %tx_rings31.i90 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_rings31.i90, align 4
  %arrayidx32.i91 = getelementptr ptr, ptr %65, i32 %q_num
  %66 = ptrtoint ptr %arrayidx32.i91 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx32.i91, align 4
  %q_vector33.i92 = getelementptr inbounds %struct.ice_tx_ring, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %q_vector33.i92 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %q_vector33.i92, align 4
  %tx34.i93 = getelementptr inbounds %struct.ice_q_vector, ptr %69, i32 0, i32 9
  %call35.i94 = tail call fastcc i32 @ice_set_rc_coalesce(ptr noundef %ec, ptr noundef %tx34.i93, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i94)
  %tobool36.not.i95 = icmp eq i32 %call35.i94, 0
  br i1 %tobool36.not.i95, label %if.then30.i96.if.end27_crit_edge, label %if.then30.i96.cleanup30_crit_edge

if.then30.i96.cleanup30_crit_edge:                ; preds = %if.then30.i96
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup30

if.then30.i96.if.end27_crit_edge:                 ; preds = %if.then30.i96
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.end27:                                         ; preds = %if.then30.i96.if.end27_crit_edge, %if.then16.i88.if.end27_crit_edge, %if.end.i87.if.end27_crit_edge
  %q_vectors28 = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 6
  %70 = ptrtoint ptr %q_vectors28 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %q_vectors28, align 8
  %arrayidx29 = getelementptr ptr, ptr %71, i32 %q_num
  %72 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx29, align 4
  tail call void @ice_set_q_vector_intrl(ptr noundef %73) #17
  br label %cleanup30

cleanup30:                                        ; preds = %if.end27, %if.then30.i96.cleanup30_crit_edge, %if.else25.i89.cleanup30_crit_edge, %if.then16.i88.cleanup30_crit_edge, %if.end.i87.cleanup30_crit_edge, %if.then.i80.cleanup30_crit_edge, %if.end19.cleanup30_crit_edge, %if.then30.i.cleanup30_crit_edge, %if.else25.i.cleanup30_crit_edge, %if.then16.i.cleanup30_crit_edge, %if.end.i.cleanup30_crit_edge, %if.then.i.cleanup30_crit_edge, %land.lhs.true.cleanup30_crit_edge, %if.end.cleanup30_crit_edge
  %retval.1 = phi i32 [ 0, %if.end27 ], [ -22, %if.then.i80.cleanup30_crit_edge ], [ -22, %if.end.i87.cleanup30_crit_edge ], [ -22, %if.then16.i88.cleanup30_crit_edge ], [ -22, %if.then30.i96.cleanup30_crit_edge ], [ -22, %if.else25.i89.cleanup30_crit_edge ], [ 0, %if.end.cleanup30_crit_edge ], [ 0, %land.lhs.true.cleanup30_crit_edge ], [ 0, %if.end19.cleanup30_crit_edge ], [ -22, %if.then.i.cleanup30_crit_edge ], [ -22, %if.end.i.cleanup30_crit_edge ], [ -22, %if.then16.i.cleanup30_crit_edge ], [ -22, %if.then30.i.cleanup30_crit_edge ], [ -22, %if.else25.i.cleanup30_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_set_q_vector_intrl(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_set_rc_coalesce(ptr nocapture noundef readonly %ec, ptr noundef %rc, ptr nocapture noundef readonly %vsi) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ice_ring_container, ptr %rc, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %cond = select i1 %cmp, ptr @.str.44, ptr @.str.45
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %4 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rc, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup76_crit_edge, label %if.end

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup76

if.end:                                           ; preds = %entry
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %1, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end
  %q_vector2 = getelementptr inbounds %struct.ice_rx_ring, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %q_vector2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %q_vector2, align 4
  %rx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 18
  %9 = ptrtoint ptr %rx_coalesce_usecs_high to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_coalesce_usecs_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 236, i32 %10)
  %cmp3 = icmp ugt i32 %10, 236
  br i1 %cmp3, label %sw.bb.if.then9_crit_edge, label %lor.lhs.false

sw.bb.if.then9_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9

lor.lhs.false:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.end13_crit_edge, label %land.lhs.true

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

land.lhs.true:                                    ; preds = %lor.lhs.false
  %intrl_gran = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 44
  %11 = ptrtoint ptr %intrl_gran to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %intrl_gran, align 2
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp7 = icmp ult i32 %10, %conv
  br i1 %cmp7, label %land.lhs.true.if.then9_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9

if.then9:                                         ; preds = %land.lhs.true.if.then9_crit_edge, %sw.bb.if.then9_crit_edge
  %13 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vsi, align 128
  %intrl_gran11 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 44
  %15 = ptrtoint ptr %intrl_gran11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %intrl_gran11, align 2
  %conv12 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond, i32 noundef %conv12, i32 noundef 236) #20
  br label %cleanup76

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge
  %intrl = getelementptr inbounds %struct.ice_q_vector, ptr %8, i32 0, i32 6
  %17 = ptrtoint ptr %intrl to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %intrl, align 1
  %conv15 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv15)
  %cmp16.not = icmp eq i32 %10, %conv15
  br i1 %cmp16.not, label %if.end13.cleanup_crit_edge, label %land.lhs.true18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true18:                                  ; preds = %if.end13
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %19 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not = icmp eq i32 %20, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %land.lhs.true18.if.then22_crit_edge

land.lhs.true18.if.then22_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then22

lor.lhs.false20:                                  ; preds = %land.lhs.true18
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %21 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %use_adaptive_tx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool21.not = icmp eq i32 %22, 0
  br i1 %tobool21.not, label %if.then30, label %lor.lhs.false20.if.then22_crit_edge

lor.lhs.false20.if.then22_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false20.if.then22_crit_edge, %land.lhs.true18.if.then22_crit_edge
  %23 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vsi, align 128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %24, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond) #20
  br label %cleanup76

if.then30:                                        ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #19
  %conv32 = trunc i32 %10 to i8
  %25 = ptrtoint ptr %intrl to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv32, ptr %intrl, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end13.cleanup_crit_edge
  %use_adaptive_rx_coalesce35 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %use_adaptive_tx_coalesce37 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_rc_coalesce.__UNIQUE_ID_ddebug645, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_rc_coalesce, %if.then41)) #17
          to label %cleanup76 [label %if.then41], !srcloc !303

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_set_rc_coalesce.__UNIQUE_ID_ddebug645, ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %29) #17
  br label %cleanup76

sw.epilog:                                        ; preds = %sw.bb36, %cleanup
  %coalesce_usecs.1.in = phi ptr [ %tx_coalesce_usecs, %sw.bb36 ], [ %rx_coalesce_usecs, %cleanup ]
  %use_adaptive_coalesce.1.in = phi ptr [ %use_adaptive_tx_coalesce37, %sw.bb36 ], [ %use_adaptive_rx_coalesce35, %cleanup ]
  %30 = ptrtoint ptr %use_adaptive_coalesce.1.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %use_adaptive_coalesce.1 = load i32, ptr %use_adaptive_coalesce.1.in, align 4
  %31 = ptrtoint ptr %coalesce_usecs.1.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %coalesce_usecs.1 = load i32, ptr %coalesce_usecs.1.in, align 4
  %itr_setting44 = getelementptr inbounds %struct.ice_ring_container, ptr %rc, i32 0, i32 3
  %32 = ptrtoint ptr %itr_setting44 to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %itr_setting44, align 2
  %bf.lshr = lshr i16 %bf.load, 3
  %conv45 = zext i16 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %coalesce_usecs.1, i32 %conv45)
  %cmp46.not = icmp eq i32 %coalesce_usecs.1, %conv45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_adaptive_coalesce.1)
  %tobool49.not = icmp eq i32 %use_adaptive_coalesce.1, 0
  %or.cond = select i1 %cmp46.not, i1 true, i1 %tobool49.not
  br i1 %or.cond, label %if.end52, label %if.then50

if.then50:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vsi, align 128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %34, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond, ptr noundef nonnull %cond) #20
  br label %cleanup76

if.end52:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 8160, i32 %coalesce_usecs.1)
  %cmp53 = icmp ugt i32 %coalesce_usecs.1, 8160
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  %35 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vsi, align 128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull @.str.52, ptr noundef nonnull %cond, i32 noundef 8160) #20
  br label %cleanup76

if.end57:                                         ; preds = %if.end52
  br i1 %tobool49.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  %bf.set = or i16 %bf.load, 1
  %37 = ptrtoint ptr %itr_setting44 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %bf.set, ptr %itr_setting44, align 2
  br label %cleanup76

if.else:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  %conv65 = trunc i32 %coalesce_usecs.1 to i16
  %bf.shl = shl nuw i16 %conv65, 3
  %bf.clear68 = and i16 %bf.load, 6
  %bf.set69 = or i16 %bf.clear68, %bf.shl
  %38 = ptrtoint ptr %itr_setting44 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %bf.set69, ptr %itr_setting44, align 2
  tail call void @ice_write_itr(ptr noundef %rc, i16 noundef zeroext %conv65) #17
  %hw71 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %39 = ptrtoint ptr %hw71 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw71, align 8
  %add.ptr = getelementptr i8, ptr %40, i32 745772
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !312
  br label %cleanup76

cleanup76:                                        ; preds = %if.else, %if.then59, %if.then55, %if.then50, %if.then41, %do.body, %if.then22, %if.then9, %entry.cleanup76_crit_edge
  %retval.1 = phi i32 [ -22, %if.then50 ], [ -22, %if.then55 ], [ -22, %entry.cleanup76_crit_edge ], [ -22, %if.then41 ], [ 0, %if.else ], [ 0, %if.then59 ], [ -22, %do.body ], [ -22, %if.then22 ], [ -22, %if.then9 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_write_itr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_set_fc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @ice_reg_test(ptr noundef %netdev) unnamed_addr #1 align 64 {
entry:
  %ice_reg_list = alloca [4 x %struct.ice_diag_reg_test_info], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_info, align 4
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 4
  %num_msix_vectors = getelementptr inbounds %struct.ice_hw, ptr %5, i32 0, i32 28, i32 0, i32 7
  %6 = ptrtoint ptr %num_msix_vectors to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_msix_vectors, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %conv = zext i16 %7 to i32
  %sub = add nsw i32 %conv, -1
  %cond = select i1 %tobool.not, i32 1, i32 %sub
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ice_reg_list) #17
  %8 = ptrtoint ptr %ice_reg_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1392640, ptr %ice_reg_list, align 4
  %mask = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 0, i32 1
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4095, ptr %mask, align 4
  %elem_num = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 0, i32 2
  %10 = ptrtoint ptr %elem_num to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %elem_num, align 4
  %elem_size = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 0, i32 3
  %11 = ptrtoint ptr %elem_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %elem_size, align 4
  %arrayinit.element = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 1
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1400832, ptr %arrayinit.element, align 4
  %mask7 = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 1, i32 1
  %13 = ptrtoint ptr %mask7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4095, ptr %mask7, align 4
  %elem_num8 = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 1, i32 2
  %14 = ptrtoint ptr %elem_num8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %elem_num8, align 4
  %elem_size9 = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 1, i32 3
  %15 = ptrtoint ptr %elem_size9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %elem_size9, align 4
  %arrayinit.element10 = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 2
  %16 = ptrtoint ptr %arrayinit.element10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1392640, ptr %arrayinit.element10, align 4
  %mask12 = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 2, i32 1
  %17 = ptrtoint ptr %mask12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4095, ptr %mask12, align 4
  %elem_num13 = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 2, i32 2
  %18 = ptrtoint ptr %elem_num13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %elem_num13, align 4
  %elem_size14 = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 2, i32 3
  %19 = ptrtoint ptr %elem_size14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %elem_size14, align 4
  %arrayinit.element15 = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 3
  %20 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1494100, ptr %arrayinit.element15, align 4
  %mask17 = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 3, i32 1
  %21 = ptrtoint ptr %mask17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -65535, ptr %mask17, align 4
  %elem_num18 = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 3, i32 2
  %22 = ptrtoint ptr %elem_num18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %elem_num18, align 4
  %elem_size19 = getelementptr inbounds %struct.ice_diag_reg_test_info, ptr %ice_reg_list, i32 3, i32 3
  %23 = ptrtoint ptr %elem_size19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %elem_size19, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_reg_test.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_reg_test, %if.then)) #17
          to label %do.end26 [label %if.then], !srcloc !303

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_reg_test.__UNIQUE_ID_ddebug614, ptr noundef %netdev, ptr noundef nonnull @.str.84) #17
  br label %do.end26

do.end26:                                         ; preds = %if.then, %entry
  %back.i = getelementptr inbounds %struct.ice_hw, ptr %5, i32 0, i32 1
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.inc48.critedge.for.cond28.preheader_crit_edge, %do.end26
  %i.0106 = phi i32 [ 0, %do.end26 ], [ %inc49, %for.inc48.critedge.for.cond28.preheader_crit_edge ]
  %elem_num29 = getelementptr [4 x %struct.ice_diag_reg_test_info], ptr %ice_reg_list, i32 0, i32 %i.0106, i32 2
  %24 = ptrtoint ptr %elem_num29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %elem_num29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp30104.not = icmp eq i32 %25, 0
  br i1 %cmp30104.not, label %for.cond28.preheader.for.inc48.critedge_crit_edge, label %for.body32.lr.ph

for.cond28.preheader.for.inc48.critedge_crit_edge: ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc48.critedge

for.body32.lr.ph:                                 ; preds = %for.cond28.preheader
  %arrayidx = getelementptr [4 x %struct.ice_diag_reg_test_info], ptr %ice_reg_list, i32 0, i32 %i.0106
  %mask35 = getelementptr [4 x %struct.ice_diag_reg_test_info], ptr %ice_reg_list, i32 0, i32 %i.0106, i32 1
  %26 = ptrtoint ptr %mask35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask35, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %elem_size39 = getelementptr [4 x %struct.ice_diag_reg_test_info], ptr %ice_reg_list, i32 0, i32 %i.0106, i32 3
  %30 = ptrtoint ptr %elem_size39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %elem_size39, align 4
  %and.i = and i32 %27, 1515870810
  %32 = tail call i32 @llvm.bswap.i32(i32 %and.i) #17
  %and.1.i = and i32 %27, -1515870811
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.1.i) #17
  %34 = tail call i32 @llvm.bswap.i32(i32 %27) #17
  br label %for.body32

for.cond28:                                       ; preds = %for.cond.3.i
  %inc = add nuw i32 %j.0105, 1
  %exitcond.not = icmp eq i32 %inc, %25
  br i1 %exitcond.not, label %for.cond28.for.inc48.critedge_crit_edge, label %for.cond28.for.body32_crit_edge

for.cond28.for.body32_crit_edge:                  ; preds = %for.cond28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body32

for.cond28.for.inc48.critedge_crit_edge:          ; preds = %for.cond28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc48.critedge

for.body32:                                       ; preds = %for.cond28.for.body32_crit_edge, %for.body32.lr.ph
  %j.0105 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc, %for.cond28.for.body32_crit_edge ]
  %mul = mul i32 %31, %j.0105
  %add = add i32 %mul, %29
  %35 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %back.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 8
  %add.ptr.i71 = getelementptr i8, ptr %40, i32 %add
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #17, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !314
  tail call void @arm_heavy_mb() #17
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 8
  %add.ptr4.i = getelementptr i8, ptr %43, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %32) #17, !srcloc !309
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 8
  %add.ptr8.i = getelementptr i8, ptr %45, i32 %add
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #17, !srcloc !301
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !315
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %and.i)
  %cmp12.i = icmp eq i32 %47, %and.i
  br i1 %cmp12.i, label %for.cond.i, label %for.body32.do.end15.i_crit_edge

for.body32.do.end15.i_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end15.i

for.cond.i:                                       ; preds = %for.body32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !314
  tail call void @arm_heavy_mb() #17
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %5, align 8
  %add.ptr4.1.i = getelementptr i8, ptr %49, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.1.i, i32 %33) #17, !srcloc !309
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 8
  %add.ptr8.1.i = getelementptr i8, ptr %51, i32 %add
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.1.i) #17, !srcloc !301
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !315
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %and.1.i)
  %cmp12.1.i = icmp eq i32 %53, %and.1.i
  br i1 %cmp12.1.i, label %for.cond.1.i, label %for.cond.i.do.end15.i_crit_edge

for.cond.i.do.end15.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end15.i

for.cond.1.i:                                     ; preds = %for.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !314
  tail call void @arm_heavy_mb() #17
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %5, align 8
  %add.ptr4.2.i = getelementptr i8, ptr %55, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.2.i, i32 0) #17, !srcloc !309
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %5, align 8
  %add.ptr8.2.i = getelementptr i8, ptr %57, i32 %add
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.2.i) #17, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !315
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp12.2.i = icmp eq i32 %58, 0
  br i1 %cmp12.2.i, label %for.cond.2.i, label %do.end15.i.split.loop.exit79

for.cond.2.i:                                     ; preds = %for.cond.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !314
  tail call void @arm_heavy_mb() #17
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %5, align 8
  %add.ptr4.3.i = getelementptr i8, ptr %60, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.3.i, i32 %34) #17, !srcloc !309
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %5, align 8
  %add.ptr8.3.i = getelementptr i8, ptr %62, i32 %add
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.3.i) #17, !srcloc !301
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !315
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %27)
  %cmp12.3.i = icmp eq i32 %64, %27
  br i1 %cmp12.3.i, label %for.cond.3.i, label %for.cond.2.i.do.end15.i_crit_edge

for.cond.2.i.do.end15.i_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end15.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !316
  tail call void @arm_heavy_mb() #17
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %5, align 8
  %add.ptr20.i = getelementptr i8, ptr %66, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %41) #17, !srcloc !309
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 8
  %add.ptr24.i = getelementptr i8, ptr %68, i32 %add
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #17, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %41)
  %cmp28.not.i = icmp eq i32 %69, %41
  br i1 %cmp28.not.i, label %for.cond28, label %do.end32.i

do.end15.i.split.loop.exit79:                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #19
  %70 = tail call i32 @llvm.bswap.i32(i32 %58) #17
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end15.i.split.loop.exit79, %for.cond.2.i.do.end15.i_crit_edge, %for.cond.i.do.end15.i_crit_edge, %for.body32.do.end15.i_crit_edge
  %and.lcssa.i = phi i32 [ 0, %do.end15.i.split.loop.exit79 ], [ %and.i, %for.body32.do.end15.i_crit_edge ], [ %and.1.i, %for.cond.i.do.end15.i_crit_edge ], [ %27, %for.cond.2.i.do.end15.i_crit_edge ]
  %.lcssa.i = phi i32 [ %70, %do.end15.i.split.loop.exit79 ], [ %47, %for.body32.do.end15.i_crit_edge ], [ %53, %for.cond.i.do.end15.i_crit_edge ], [ %64, %for.cond.2.i.do.end15.i_crit_edge ]
  %dev1.i.lcssa = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.lcssa, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %add, i32 noundef %and.lcssa.i, i32 noundef %.lcssa.i) #20
  br label %cleanup51

do.end32.i:                                       ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev1.i.le102 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %71 = tail call i32 @llvm.bswap.i32(i32 %41) #17
  %72 = tail call i32 @llvm.bswap.i32(i32 %69) #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le102, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86, i32 noundef %add, i32 noundef %71, i32 noundef %72) #20
  br label %cleanup51

for.inc48.critedge:                               ; preds = %for.cond28.for.inc48.critedge_crit_edge, %for.cond28.preheader.for.inc48.critedge_crit_edge
  %inc49 = add nuw nsw i32 %i.0106, 1
  %exitcond158.not = icmp eq i32 %inc49, 4
  br i1 %exitcond158.not, label %for.inc48.critedge.cleanup51_crit_edge, label %for.inc48.critedge.for.cond28.preheader_crit_edge

for.inc48.critedge.for.cond28.preheader_crit_edge: ; preds = %for.inc48.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond28.preheader

for.inc48.critedge.cleanup51_crit_edge:           ; preds = %for.inc48.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup51

cleanup51:                                        ; preds = %for.inc48.critedge.cleanup51_crit_edge, %do.end32.i, %do.end15.i
  %retval.4 = phi i64 [ 1, %do.end32.i ], [ 1, %do.end15.i ], [ 0, %for.inc48.critedge.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ice_reg_list) #17
  ret i64 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_open(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_nvm_validate_checksum(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_lb_vsi_setup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_set_mac_loopback(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_fltr_add_mac(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_lbtest_receive_frames(ptr nocapture noundef readonly %rx_ring) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp23.not = icmp eq i16 %1, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %desc = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc7, %cleanup.for.body_crit_edge ]
  %valid_frames.024 = phi i32 [ 0, %for.body.lr.ph ], [ %valid_frames.2, %cleanup.for.body_crit_edge ]
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %status_error0 = getelementptr %union.ice_32b_rx_flex_desc, ptr %4, i32 %i.025, i32 0, i32 1
  %5 = ptrtoint ptr %status_error0 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status_error0, align 8
  %7 = and i16 %6, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %page = getelementptr %struct.ice_rx_buf, ptr %9, i32 %i.025, i32 1
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page, align 4
  %call = tail call ptr @page_address(ptr noundef %11) #17
  %page_offset = getelementptr %struct.ice_rx_buf, ptr %9, i32 %i.025, i32 2
  %12 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_offset, align 4
  %add.ptr = getelementptr i8, ptr %call, i32 %13
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 32
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -34, i8 %15)
  %cmp.i = icmp eq i8 %15, -34
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx2.i = getelementptr i8, ptr %add.ptr, i32 42
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -83, i8 %17)
  %cmp4.i = icmp eq i8 %17, -83
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %arrayidx7.i = getelementptr i8, ptr %add.ptr, i32 44
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %19)
  %cmp9.i = icmp eq i8 %19, -66
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true6.i.cleanup_crit_edge

land.lhs.true6.i.cleanup_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true11.i:                                ; preds = %land.lhs.true6.i
  %arrayidx12.i = getelementptr i8, ptr %add.ptr, i32 46
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %21)
  %cmp14.i = icmp eq i8 %21, -17
  br i1 %cmp14.i, label %land.lhs.true16.i, label %land.lhs.true11.i.cleanup_crit_edge

land.lhs.true11.i.cleanup_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true16.i:                                ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx17.i = getelementptr i8, ptr %add.ptr, i32 48
  %22 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp19.i = icmp eq i8 %23, -1
  %inc20 = zext i1 %cmp19.i to i32
  %spec.select = add i32 %valid_frames.024, %inc20
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true16.i, %land.lhs.true11.i.cleanup_crit_edge, %land.lhs.true6.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %valid_frames.2 = phi i32 [ %valid_frames.024, %for.body.cleanup_crit_edge ], [ %valid_frames.024, %if.end.cleanup_crit_edge ], [ %valid_frames.024, %land.lhs.true.i.cleanup_crit_edge ], [ %valid_frames.024, %land.lhs.true6.i.cleanup_crit_edge ], [ %valid_frames.024, %land.lhs.true11.i.cleanup_crit_edge ], [ %spec.select, %land.lhs.true16.i ]
  %inc7 = add nuw nsw i32 %i.025, 1
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %count, align 2
  %conv = zext i16 %25 to i32
  %cmp = icmp ult i32 %inc7, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %valid_frames.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %valid_frames.2, %cleanup.for.end_crit_edge ]
  ret i32 %valid_frames.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_fltr_remove_mac(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_setup_tx_rings(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_setup_rx_rings(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_cfg(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_start_all_rx_rings(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_vsi_free_rx_rings(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_stop_lan_tx_rings(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_vsi_free_tx_rings(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_stop_all_rx_rings(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_set_port_id_led(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_cfg_lldp_mib_change(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_stop_lldp(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_init_pf_dcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_cfg_sw_lldp(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_start_lldp(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_start_stop_dcbx(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_any_vf_in_promisc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_fdir_cnt_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_ethtool_fdir_entry(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_fdir_fltr_ids(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_get_rss_hash_opt(ptr nocapture noundef readonly %vsi, ptr nocapture noundef %nfc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %data, align 8
  %call = tail call zeroext i1 @ice_is_safe_mode(ptr noundef %1) #17
  br i1 %call, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_rss_hash_opt.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_rss_hash_opt, %if.then5)) #17
          to label %cleanup [label %if.then5], !srcloc !303

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %vsi_num = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 18
  %5 = ptrtoint ptr %vsi_num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vsi_num, align 8
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_rss_hash_opt.__UNIQUE_ID_ddebug626, ptr noundef %dev1, ptr noundef nonnull @.str.119, i32 noundef %conv) #17
  br label %cleanup

if.end6:                                          ; preds = %entry
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 1
  %7 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flow_type.i, align 4
  %switch.tableidx = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 7
  br i1 %9, label %switch.hole_check, label %if.end6.do.body10_crit_edge

if.end6.do.body10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body10

do.body10:                                        ; preds = %switch.hole_check.do.body10_crit_edge, %if.end6.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_rss_hash_opt.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_rss_hash_opt, %if.then22)) #17
          to label %cleanup [label %if.then22], !srcloc !303

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #19
  %vsi_num23 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 18
  %10 = ptrtoint ptr %vsi_num23 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vsi_num23, align 8
  %conv24 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_rss_hash_opt.__UNIQUE_ID_ddebug627, ptr noundef %dev1, ptr noundef nonnull @.str.120, i32 noundef %conv24) #17
  br label %cleanup

switch.hole_check:                                ; preds = %if.end6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 119, %switch.maskindex
  %12 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %switch.lobit.not = icmp eq i8 %12, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body10_crit_edge, label %switch.lookup

switch.hole_check.do.body10_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body10

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ice_get_rss_hash_opt, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %hw = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idx, align 2
  %call29 = tail call i64 @ice_get_rss_cfg(ptr noundef %hw, i16 noundef zeroext %15, i32 noundef %switch.load) #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call29)
  %cmp30 = icmp eq i64 %call29, 0
  br i1 %cmp30, label %do.body33, label %if.end51

do.body33:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_rss_hash_opt.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_rss_hash_opt, %if.then45)) #17
          to label %cleanup [label %if.then45], !srcloc !303

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #19
  %vsi_num46 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 18
  %16 = ptrtoint ptr %vsi_num46 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vsi_num46, align 8
  %conv47 = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_rss_hash_opt.__UNIQUE_ID_ddebug628, ptr noundef %dev1, ptr noundef nonnull @.str.121, i32 noundef %conv47) #17
  br label %cleanup

if.end51:                                         ; preds = %switch.lookup
  %18 = and i64 %call29, 10240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %if.end51.if.end57_crit_edge, label %if.then55

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data, align 8
  %or = or i64 %21, 16
  store i64 %or, ptr %data, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end51.if.end57_crit_edge
  %22 = and i64 %call29, 20480
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %if.end57.if.end66_crit_edge, label %if.then63

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end66

if.then63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data, align 8
  %or65 = or i64 %25, 32
  store i64 %or65, ptr %data, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end57.if.end66_crit_edge
  %26 = and i64 %call29, 688128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %if.end66.if.end78_crit_edge, label %if.then75

if.end66.if.end78_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

if.then75:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %data, align 8
  %or77 = or i64 %29, 64
  store i64 %or77, ptr %data, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end66.if.end78_crit_edge
  %30 = and i64 %call29, 1376256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %if.end78.cleanup_crit_edge, label %if.then87

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then87:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %data, align 8
  %or89 = or i64 %33, 128
  store i64 %or89, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.end78.cleanup_crit_edge, %if.then45, %do.body33, %if.then22, %do.body10, %if.then5, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_safe_mode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ice_get_rss_cfg(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_add_fdir_ethtool(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_del_fdir_ethtool(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_set_rss_hash_opt(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %nfc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call = tail call zeroext i1 @ice_is_safe_mode(ptr noundef %1) #17
  br i1 %call, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_rss_hash_opt.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_rss_hash_opt, %if.then5)) #17
          to label %cleanup [label %if.then5], !srcloc !303

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %vsi_num = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 18
  %4 = ptrtoint ptr %vsi_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vsi_num, align 8
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_set_rss_hash_opt.__UNIQUE_ID_ddebug622, ptr noundef %dev1, ptr noundef nonnull @.str.119, i32 noundef %conv) #17
  br label %cleanup

if.end6:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 2
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data.i, align 8
  %8 = and i64 %7, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %if.end6.if.end27.i_crit_edge, label %if.then.i

if.end6.if.end27.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.i

if.then.i:                                        ; preds = %if.end6
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 1
  %10 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flow_type.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %11, label %if.then.i.if.end27.i_crit_edge [
    i32 1, label %if.then.i.sw.bb.i_crit_edge
    i32 2, label %if.then.i.sw.bb.i_crit_edge111
    i32 3, label %if.then.i.sw.bb.i_crit_edge112
    i32 5, label %if.then.i.sw.bb14.i_crit_edge
    i32 6, label %if.then.i.sw.bb14.i_crit_edge113
    i32 7, label %if.then.i.sw.bb14.i_crit_edge114
  ]

if.then.i.sw.bb14.i_crit_edge114:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14.i

if.then.i.sw.bb14.i_crit_edge113:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14.i

if.then.i.sw.bb14.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14.i

if.then.i.sw.bb.i_crit_edge112:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge111:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.then.i.if.end27.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.i

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge111, %if.then.i.sw.bb.i_crit_edge112
  %and.i = shl i64 %7, 7
  %13 = and i64 %and.i, 6144
  br label %if.end27.i

sw.bb14.i:                                        ; preds = %if.then.i.sw.bb14.i_crit_edge, %if.then.i.sw.bb14.i_crit_edge113, %if.then.i.sw.bb14.i_crit_edge114
  %14 = shl i64 %7, 9
  %15 = and i64 %14, 24576
  br label %if.end27.i

if.end27.i:                                       ; preds = %sw.bb14.i, %sw.bb.i, %if.then.i.if.end27.i_crit_edge, %if.end6.if.end27.i_crit_edge
  %hfld.2.i = phi i64 [ 0, %if.then.i.if.end27.i_crit_edge ], [ 0, %if.end6.if.end27.i_crit_edge ], [ %13, %sw.bb.i ], [ %15, %sw.bb14.i ]
  %16 = and i64 %7, 192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %if.end27.i.ice_parse_hash_flds.exit_crit_edge, label %if.then35.i

if.end27.i.ice_parse_hash_flds.exit_crit_edge:    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_parse_hash_flds.exit

if.then35.i:                                      ; preds = %if.end27.i
  %flow_type36.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 1
  %18 = ptrtoint ptr %flow_type36.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flow_type36.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %19, label %if.then35.i.ice_parse_hash_flds.exit_crit_edge [
    i32 1, label %if.then35.i.sw.bb37.i_crit_edge
    i32 5, label %if.then35.i.sw.bb37.i_crit_edge115
    i32 2, label %if.then35.i.sw.bb50.i_crit_edge
    i32 6, label %if.then35.i.sw.bb50.i_crit_edge116
    i32 3, label %if.then35.i.sw.bb63.i_crit_edge
    i32 7, label %if.then35.i.sw.bb63.i_crit_edge117
  ]

if.then35.i.sw.bb63.i_crit_edge117:               ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb63.i

if.then35.i.sw.bb63.i_crit_edge:                  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb63.i

if.then35.i.sw.bb50.i_crit_edge116:               ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb50.i

if.then35.i.sw.bb50.i_crit_edge:                  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb50.i

if.then35.i.sw.bb37.i_crit_edge115:               ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb37.i

if.then35.i.sw.bb37.i_crit_edge:                  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb37.i

if.then35.i.ice_parse_hash_flds.exit_crit_edge:   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ice_parse_hash_flds.exit

sw.bb37.i:                                        ; preds = %if.then35.i.sw.bb37.i_crit_edge, %if.then35.i.sw.bb37.i_crit_edge115
  %and29.i = shl i64 %7, 9
  %21 = and i64 %and29.i, 98304
  %22 = or i64 %hfld.2.i, %21
  br label %ice_parse_hash_flds.exit

sw.bb50.i:                                        ; preds = %if.then35.i.sw.bb50.i_crit_edge, %if.then35.i.sw.bb50.i_crit_edge116
  %23 = shl i64 %7, 11
  %24 = and i64 %23, 393216
  %25 = or i64 %hfld.2.i, %24
  br label %ice_parse_hash_flds.exit

sw.bb63.i:                                        ; preds = %if.then35.i.sw.bb63.i_crit_edge, %if.then35.i.sw.bb63.i_crit_edge117
  %26 = shl i64 %7, 13
  %27 = and i64 %26, 1572864
  %28 = or i64 %hfld.2.i, %27
  br label %ice_parse_hash_flds.exit

ice_parse_hash_flds.exit:                         ; preds = %sw.bb63.i, %sw.bb50.i, %sw.bb37.i, %if.then35.i.ice_parse_hash_flds.exit_crit_edge, %if.end27.i.ice_parse_hash_flds.exit_crit_edge
  %hfld.6.i = phi i64 [ %hfld.2.i, %if.then35.i.ice_parse_hash_flds.exit_crit_edge ], [ %hfld.2.i, %if.end27.i.ice_parse_hash_flds.exit_crit_edge ], [ %22, %sw.bb37.i ], [ %25, %sw.bb50.i ], [ %28, %sw.bb63.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hfld.6.i)
  %cmp = icmp eq i64 %hfld.6.i, 0
  br i1 %cmp, label %do.body10, label %if.end28

do.body10:                                        ; preds = %ice_parse_hash_flds.exit
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_rss_hash_opt.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_rss_hash_opt, %if.then22)) #17
          to label %cleanup [label %if.then22], !srcloc !303

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #19
  %vsi_num23 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 18
  %29 = ptrtoint ptr %vsi_num23 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vsi_num23, align 8
  %conv24 = zext i16 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_set_rss_hash_opt.__UNIQUE_ID_ddebug623, ptr noundef %dev1, ptr noundef nonnull @.str.123, i32 noundef %conv24) #17
  br label %cleanup

if.end28:                                         ; preds = %ice_parse_hash_flds.exit
  %flow_type.i102 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 1
  %31 = ptrtoint ptr %flow_type.i102 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flow_type.i102, align 4
  %switch.tableidx = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %33 = icmp ult i32 %switch.tableidx, 7
  br i1 %33, label %switch.hole_check, label %if.end28.do.body33_crit_edge

if.end28.do.body33_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body33

do.body33:                                        ; preds = %switch.hole_check.do.body33_crit_edge, %if.end28.do.body33_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_rss_hash_opt.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_rss_hash_opt, %if.then45)) #17
          to label %cleanup [label %if.then45], !srcloc !303

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #19
  %vsi_num46 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 18
  %34 = ptrtoint ptr %vsi_num46 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vsi_num46, align 8
  %conv47 = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_set_rss_hash_opt.__UNIQUE_ID_ddebug624, ptr noundef %dev1, ptr noundef nonnull @.str.120, i32 noundef %conv47) #17
  br label %cleanup

switch.hole_check:                                ; preds = %if.end28
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 119, %switch.maskindex
  %36 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %switch.lobit.not = icmp eq i8 %36, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body33_crit_edge, label %switch.lookup

switch.hole_check.do.body33_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body33

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ice_set_rss_hash_opt, i32 0, i32 %switch.tableidx
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load i32, ptr %switch.gep, align 4
  %hw = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %38 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %idx, align 2
  %call52 = tail call i32 @ice_add_rss_cfg(ptr noundef %hw, i16 noundef zeroext %39, i64 noundef %hfld.6.i, i32 noundef %switch.load) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %switch.lookup.cleanup_crit_edge, label %do.body55

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body55:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_rss_hash_opt.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_rss_hash_opt, %if.then67)) #17
          to label %cleanup [label %if.then67], !srcloc !303

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #19
  %vsi_num68 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 18
  %40 = ptrtoint ptr %vsi_num68 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vsi_num68, align 8
  %conv69 = zext i16 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_set_rss_hash_opt.__UNIQUE_ID_ddebug625, ptr noundef %dev1, ptr noundef nonnull @.str.124, i32 noundef %conv69, i32 noundef %call52) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %do.body55, %switch.lookup.cleanup_crit_edge, %if.then45, %do.body33, %if.then22, %do.body10, %if.then5, %do.body
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -22, %if.then22 ], [ -22, %if.then45 ], [ %call52, %if.then67 ], [ 0, %switch.lookup.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body10 ], [ -22, %do.body33 ], [ %call52, %do.body55 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_add_rss_cfg(ptr noundef, i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_rss_key(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_rss_lut(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_set_rss_key(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fill_rss_lut(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_set_rss_lut(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_recfg_qs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_ptp_clock_index(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_sff_eeprom(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_cfg_phy_fec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !103, !105, !107, !109, !111, !113, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !139, !140, !141, !143, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !173, !175, !177, !179, !180, !181, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !223, !224, !225, !226, !227, !229, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !256, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !276, !277, !278, !280, !282, !283, !284, !286, !287, !288, !289}
!llvm.named.register.sp = !{!291}
!llvm.module.flags = !{!292, !293, !294, !295, !296, !297, !298, !299}
!llvm.ident = !{!300}

!0 = !{ptr @ice_ethtool_safe_mode_ops, !1, !"ice_ethtool_safe_mode_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 4105, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 184, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 190, i32 4}
!6 = distinct !{null, !7, !"ice_regs_dump_list", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 141, i32 18}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3461, i32 23}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3495, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ice_set_wol.__UNIQUE_ID_ddebug643, !11, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!15 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 280, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ice_get_eeprom.__UNIQUE_ID_ddebug613, !18, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 289, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ice_get_eeprom._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @ice_get_eeprom._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 297, i32 3}
!29 = !{ptr @ice_get_eeprom._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ice_get_eeprom._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2709, i32 22}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2718, i32 23}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2722, i32 23}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2728, i32 3}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ice_set_ringparam.__UNIQUE_ID_ddebug629, !38, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2757, i32 3}
!43 = !{ptr @ice_set_ringparam.__UNIQUE_ID_ddebug630, !42, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2765, i32 22}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2793, i32 22}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2823, i32 22}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 891, i32 24}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 892, i32 24}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 896, i32 24}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 897, i32 24}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 908, i32 24}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 909, i32 24}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 912, i32 24}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 913, i32 24}
!66 = !{ptr @ice_gstrings_vsi_stats, !67, !"ice_gstrings_vsi_stats", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 50, i32 31}
!68 = !{ptr @ice_gstrings_pf_stats, !69, !"ice_gstrings_pf_stats", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 96, i32 31}
!70 = !{ptr @ice_gstrings_test, !71, !"ice_gstrings_test", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 77, i32 19}
!72 = !{ptr @ice_gstrings_priv_flags, !73, !"ice_gstrings_priv_flags", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 161, i32 35}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1866, i32 23}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2246, i32 24}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2315, i32 23}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2370, i32 23}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2151, i32 25}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2168, i32 25}
!93 = !{ptr @ice_ethtool_repr_ops, !94, !"ice_ethtool_repr_ops", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 4136, i32 33}
!95 = !{ptr @ice_ethtool_ops, !96, !"ice_ethtool_ops", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 4058, i32 33}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3530, i32 3}
!99 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ice_get_rc_coalesce.__UNIQUE_ID_ddebug644, !98, !"__UNIQUE_ID_ddebug644", i1 false, i1 false}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3790, i32 36}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3794, i32 36}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3762, i32 23}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3644, i32 29}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3651, i32 29}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3669, i32 3}
!113 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ice_set_rc_coalesce.__UNIQUE_ID_ddebug645, !112, !"__UNIQUE_ID_ddebug645", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3676, i32 28}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3682, i32 28}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3003, i32 23}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3031, i32 23}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3039, i32 23}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3043, i32 23}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3061, i32 23}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3065, i32 23}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3069, i32 23}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 812, i32 23}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 817, i32 4}
!137 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ice_self_test._entry, !136, !"_entry", i1 false, i1 false}
!140 = !{ptr @ice_self_test._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 851, i32 5}
!143 = !{ptr @ice_self_test._entry.64, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @ice_self_test._entry_ptr.66, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 857, i32 23}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 871, i32 22}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 343, i32 22}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 346, i32 22}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 369, i32 22}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 779, i32 22}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 692, i32 22}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 696, i32 22}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 750, i32 22}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 754, i32 22}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 757, i32 22}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 761, i32 22}
!169 = distinct !{null, !170, !"__already_done", i1 false, i1 false}
!170 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!171 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 515, i32 27}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 520, i32 27}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 443, i32 2}
!179 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ice_reg_test.__UNIQUE_ID_ddebug614, !178, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!181 = distinct !{null, !182, !"patterns", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 383, i32 19}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 398, i32 3}
!185 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ice_reg_pattern_test._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @ice_reg_pattern_test._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 406, i32 3}
!190 = !{ptr @ice_reg_pattern_test._entry.87, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @ice_reg_pattern_test._entry_ptr.89, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1190, i32 3}
!194 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @ice_set_priv_flags._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @ice_set_priv_flags._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1208, i32 5}
!199 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @ice_set_priv_flags._entry.92, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @ice_set_priv_flags._entry_ptr.95, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1215, i32 5}
!204 = !{ptr @ice_set_priv_flags._entry.96, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @ice_set_priv_flags._entry_ptr.98, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1222, i32 5}
!208 = !{ptr @ice_set_priv_flags._entry.99, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @ice_set_priv_flags._entry_ptr.101, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1232, i32 5}
!212 = !{ptr @ice_set_priv_flags._entry.102, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @ice_set_priv_flags._entry_ptr.104, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1247, i32 5}
!216 = !{ptr @ice_set_priv_flags._entry.105, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @ice_set_priv_flags._entry_ptr.107, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1256, i32 5}
!220 = !{ptr @ice_set_priv_flags.__UNIQUE_ID_ddebug617, !219, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1258, i32 4}
!223 = !{ptr @ice_set_priv_flags._entry.109, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @ice_set_priv_flags._entry_ptr.111, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.112, !222, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.113, !222, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @ice_set_priv_flags.__UNIQUE_ID_ddebug618, !228, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1268, i32 5}
!229 = !{ptr @.str.114, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1273, i32 5}
!231 = !{ptr @ice_set_priv_flags.__UNIQUE_ID_ddebug619, !230, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!232 = !{ptr @.str.116, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1293, i32 3}
!234 = !{ptr @ice_set_priv_flags._entry.115, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @ice_set_priv_flags._entry_ptr.117, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.118, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2561, i32 3}
!238 = !{ptr @.str.119, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @ice_get_rss_hash_opt.__UNIQUE_ID_ddebug626, !237, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!240 = !{ptr @.str.120, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2568, i32 3}
!242 = !{ptr @ice_get_rss_hash_opt.__UNIQUE_ID_ddebug627, !241, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!243 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2575, i32 3}
!245 = !{ptr @ice_get_rss_hash_opt.__UNIQUE_ID_ddebug628, !244, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!246 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2515, i32 3}
!248 = !{ptr @ice_set_rss_hash_opt.__UNIQUE_ID_ddebug622, !247, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!249 = !{ptr @.str.123, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2522, i32 3}
!251 = !{ptr @ice_set_rss_hash_opt.__UNIQUE_ID_ddebug623, !250, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!252 = !{ptr @ice_set_rss_hash_opt.__UNIQUE_ID_ddebug624, !253, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2529, i32 3}
!254 = !{ptr @.str.124, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 2536, i32 3}
!256 = !{ptr @ice_set_rss_hash_opt.__UNIQUE_ID_ddebug625, !255, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!257 = !{ptr @.str.125, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3127, i32 23}
!259 = !{ptr @.str.126, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3182, i32 22}
!261 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3389, i32 19}
!263 = !{ptr @.str.128, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3397, i32 19}
!265 = !{ptr @.str.129, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3402, i32 19}
!267 = !{ptr @.str.130, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3421, i32 19}
!269 = !{ptr @.str.131, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3429, i32 19}
!271 = !{ptr @.str.132, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3434, i32 19}
!273 = !{ptr @.str.133, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3367, i32 3}
!275 = !{ptr @.str.134, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @ice_vsi_set_dflt_rss_lut._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @ice_vsi_set_dflt_rss_lut._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.135, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 3964, i32 23}
!280 = !{ptr @.str.136, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 4037, i32 5}
!282 = !{ptr @.str.137, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @ice_get_module_eeprom.__UNIQUE_ID_ddebug646, !281, !"__UNIQUE_ID_ddebug646", i1 false, i1 false}
!284 = !{ptr @.str.138, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 1029, i32 3}
!286 = !{ptr @.str.139, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @ice_set_fecparam._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @ice_set_fecparam._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.140, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool.c", i32 976, i32 23}
!291 = !{!"sp"}
!292 = !{i32 1, !"wchar_size", i32 2}
!293 = !{i32 1, !"min_enum_size", i32 4}
!294 = !{i32 8, !"branch-target-enforcement", i32 0}
!295 = !{i32 8, !"sign-return-address", i32 0}
!296 = !{i32 8, !"sign-return-address-all", i32 0}
!297 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!298 = !{i32 7, !"uwtable", i32 1}
!299 = !{i32 7, !"frame-pointer", i32 2}
!300 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!301 = !{i64 6858910}
!302 = !{i64 2160222077}
!303 = !{i64 2148839268, i64 2148839273, i64 2148839286, i64 2148839330, i64 2148839364, i64 2148839385}
!304 = !{!"auto-init"}
!305 = !{i64 2149502384}
!306 = !{i64 2149502650}
!307 = !{i8 0, i8 2}
!308 = !{i64 2160242705}
!309 = !{i64 6858492}
!310 = !{!"branch_weights", i32 2000, i32 1}
!311 = !{i64 2160239685}
!312 = !{i64 2160414652}
!313 = !{i64 2160229249}
!314 = !{i64 2160229886}
!315 = !{i64 2160230648}
!316 = !{i64 2160232951}
!317 = !{i64 2160233716}
