; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_eswitch.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_eswitch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ice_adv_rule_info = type { i32, %struct.ice_sw_act_ctrl, i32, i8, i16, %struct.ice_adv_rule_flags_info }
%struct.ice_sw_act_ctrl = type { i16, i16, i32, %union.anon.217, i16, i8 }
%union.anon.217 = type { i16 }
%struct.ice_adv_rule_flags_info = type { i32, i8 }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ice_ptp = type { %struct.ice_ptp_port, %struct.kthread_delayed_work, %struct.kthread_work, i64, i8, i8, ptr, [4 x %struct.ice_perout_channel], %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, i64 }
%struct.ice_ptp_port = type { %struct.ice_ptp_tx, %struct.kthread_delayed_work, %struct.mutex, i8, i8, i8 }
%struct.ice_ptp_tx = type { %struct.kthread_work, %struct.spinlock, ptr, ptr, i8, i8, i8, i8, i8 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ice_perout_channel = type { i8, i32, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ice_hw_port_stats = type { %struct.ice_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.ice_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.197, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.197 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.ice_link_default_override_tlv = type { i8, i8, i8, i8, i64, i64 }
%struct.ice_switchdev_info = type { ptr, ptr, i8 }
%struct.ice_agg_node = type { i32, i32, i8 }
%struct.ice_adv_lkup_elem = type { i32, %union.ice_prot_hdr, %union.ice_prot_hdr }
%union.ice_prot_hdr = type { %struct.ice_ipv6_hdr }
%struct.ice_ipv6_hdr = type { i32, i16, i8, i8, [16 x i8], [16 x i8] }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.ice_vf = type { ptr, %struct.mutex, i16, i16, i16, %struct.ice_vf_fdir, i32, ptr, %struct.virtchnl_version_info, i32, %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr, %struct.ice_time_mac, [1 x i32], [1 x i32], i16, i8, i16, i32, i32, [1 x i32], i32, i8, i16, i16, %struct.ice_mdd_vf_events, %struct.ice_mdd_vf_events, [2 x i32], ptr, %struct.ice_vc_vf_ops, %struct.devlink_port }
%struct.ice_vf_fdir = type { [28 x [2 x i16]], [28 x [2 x i32]], ptr, %struct.idr, %struct.list_head, %struct.spinlock, %struct.ice_vf_fdir_ctx, %struct.ice_vf_fdir_ctx }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ice_vf_fdir_ctx = type { %struct.timer_list, i32, i32, %union.ice_32b_rx_flex_desc, i32, ptr }
%union.ice_32b_rx_flex_desc = type { %struct.anon.202 }
%struct.anon.202 = type { i64, i64, i64, i64 }
%struct.virtchnl_version_info = type { i32, i32 }
%struct.virtchnl_ether_addr = type { [6 x i8], i8, i8 }
%struct.ice_time_mac = type { i32, [6 x i8] }
%struct.ice_mdd_vf_events = type { i16, i16 }
%struct.ice_vc_vf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ice_repr = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.138, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.138 = type { ptr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.206 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%union.anon.206 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.207, i16, i8, i8, i32, i16, i16 }
%union.anon.207 = type { %struct.anon.209 }
%struct.anon.209 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.hw_port_info = type { ptr, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.ice_q_vector = type { ptr, i16, i16, i8, i8, i8, i8, %struct.napi_struct, %struct.ice_ring_container, %struct.ice_ring_container, %struct.cpumask, %struct.irq_affinity_notify, ptr, [32 x i8], i16, [10 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ice_ring_container = type { %union.anon.199, %struct.dim, i16, i16, i32 }
%union.anon.199 = type { ptr }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
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
%struct.ice_tx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.ice_txq_stats, %struct.callback_head, [1 x i32], ptr, ptr, %struct.spinlock, i32, i8, i8, i8, [49 x i8] }
%struct.ice_q_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ice_txq_stats = type { i64, i64, i64, i32 }
%struct.ice_rx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.201, [96 x i8], %struct.xdp_rxq_info, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_rxq_stats, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.callback_head, ptr, ptr, ptr, ptr, ptr, i32, i64, i8, i8, i8, [125 x i8] }
%union.anon.201 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ice_rxq_stats = type { i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.142, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.196, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.142 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.196 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@ice_eswitch_add_vf_mac_rule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Unable to add VF mac rule in switchdev mode for VF %d\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ice_eswitch_add_vf_mac_rule\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/ice/ice_eswitch.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_eswitch_add_vf_mac_rule._entry_ptr = internal global ptr @ice_eswitch_add_vf_mac_rule._entry, section ".printk_index", align 4
@ice_eswitch_replay_vf_mac_rule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 79, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to add MAC %pM for VF %d\0A, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ice_eswitch_replay_vf_mac_rule\00", [33 x i8] zeroinitializer }, align 32
@ice_eswitch_replay_vf_mac_rule._entry_ptr = internal global ptr @ice_eswitch_replay_vf_mac_rule._entry, section ".printk_index", align 4
@ice_eswitch_update_repr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 324, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to update VF %d port representor\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_eswitch_update_repr\00", [40 x i8] zeroinitializer }, align 32
@ice_eswitch_update_repr._entry_ptr = internal global ptr @ice_eswitch_update_repr._entry, section ".printk_index", align 4
@ice_eswitch_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 523, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Changing eswitch mode is allowed only if there is no VFs created\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_eswitch_mode_set\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ice_eswitch_mode_set._entry_ptr = internal global ptr @ice_eswitch_mode_set._entry, section ".printk_index", align 4
@ice_eswitch_mode_set.__msg = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ice: Changing eswitch mode is allowed only if there is no VFs created\00", [58 x i8] zeroinitializer }, align 32
@ice_eswitch_mode_set._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 531, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PF %d changed eswitch mode to legacy\00", [59 x i8] zeroinitializer }, align 32
@ice_eswitch_mode_set._entry_ptr.14 = internal global ptr @ice_eswitch_mode_set._entry.12, section ".printk_index", align 4
@ice_eswitch_mode_set.__msg.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ice: Changed eswitch mode to legacy\00", [60 x i8] zeroinitializer }, align 32
@ice_eswitch_mode_set._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.2, i32 537, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PF %d changed eswitch mode to switchdev\00", [56 x i8] zeroinitializer }, align 32
@ice_eswitch_mode_set._entry_ptr.18 = internal global ptr @ice_eswitch_mode_set._entry.16, section ".printk_index", align 4
@ice_eswitch_mode_set.__msg.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ice: Changed eswitch mode to switchdev\00", [57 x i8] zeroinitializer }, align 32
@ice_eswitch_mode_set.__msg.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice: Unknown eswitch mode\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 52, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 78, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 324, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 523, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 524, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 530, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 532, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 536, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 538, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.93 = private constant [48 x i8] c"../drivers/net/ethernet/intel/ice/ice_eswitch.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 542, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 231, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1011, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @ice_eswitch_add_vf_mac_rule._entry, ptr @ice_eswitch_add_vf_mac_rule._entry_ptr, ptr @ice_eswitch_mode_set._entry, ptr @ice_eswitch_mode_set._entry.12, ptr @ice_eswitch_mode_set._entry.16, ptr @ice_eswitch_mode_set._entry_ptr, ptr @ice_eswitch_mode_set._entry_ptr.14, ptr @ice_eswitch_mode_set._entry_ptr.18, ptr @ice_eswitch_replay_vf_mac_rule._entry, ptr @ice_eswitch_replay_vf_mac_rule._entry_ptr, ptr @ice_eswitch_update_repr._entry, ptr @ice_eswitch_update_repr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ice_eswitch_mode_set.__msg, ptr @.str.13, ptr @ice_eswitch_mode_set.__msg.15, ptr @.str.17, ptr @ice_eswitch_mode_set.__msg.19, ptr @ice_eswitch_mode_set.__msg.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_add_vf_mac_rule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_replay_vf_mac_rule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_update_repr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_mode_set.__msg to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_mode_set._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_mode_set.__msg.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_mode_set._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_mode_set.__msg.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_mode_set.__msg.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_eswitch_add_vf_mac_rule(ptr noundef %pf, ptr nocapture noundef readonly %vf, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  %rule_info = alloca %struct.ice_adv_rule_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %switchdev = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 75
  %0 = ptrtoint ptr %switchdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switchdev, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rule_info) #8
  %2 = call ptr @memset(ptr %rule_info, i32 0, i32 36)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 84) #11
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %call7.i.i.i, align 8
  %src_addr = getelementptr inbounds %struct.ice_adv_lkup_elem, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mac, align 4
  %7 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %src_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ice_adv_lkup_elem, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %add.ptr1.i, align 2
  %src_addr4 = getelementptr inbounds %struct.ice_adv_lkup_elem, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 2
  %11 = call ptr @memset(ptr %src_addr4, i32 255, i32 6)
  %flag = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flag, align 2
  %14 = or i16 %13, 2
  store i16 %14, ptr %flag, align 2
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %idx, align 2
  %vsi_handle = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %vsi_handle to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vsi_handle, align 2
  %fltr_act = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %fltr_act to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %fltr_act, align 4
  %rx = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 3
  %19 = ptrtoint ptr %rx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %rx, align 4
  %rxq_first_id = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 0, i32 4
  %20 = ptrtoint ptr %rxq_first_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rxq_first_id, align 2
  %rxq_map = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 46
  %22 = ptrtoint ptr %rxq_map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rxq_map, align 4
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %24 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vf_id, align 8
  %idxprom = zext i16 %25 to i32
  %arrayidx10 = getelementptr i16, ptr %23, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx10, align 2
  %add = add i16 %27, %21
  %fwd_id = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %fwd_id, align 4
  %bf.shl = shl i16 %add, 5
  %bf.clear = and i16 %bf.load, 31
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %fwd_id, align 4
  %flags_info = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 5
  %29 = ptrtoint ptr %flags_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags_info, align 4
  %or14 = or i32 %30, 4
  store i32 %or14, ptr %flags_info, align 4
  %act_valid = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %act_valid to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %act_valid, align 4
  %32 = ptrtoint ptr %rule_info to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %rule_info, align 4
  %repr = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 28
  %33 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %repr, align 8
  %mac_rule = getelementptr inbounds %struct.ice_repr, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %mac_rule to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mac_rule, align 4
  %call16 = call i32 @ice_add_adv_rule(ptr noundef %hw1, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 1, ptr noundef nonnull %rule_info, ptr noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vf_id, align 8
  %conv20 = zext i16 %40 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv20) #12
  br label %if.end22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %repr, align 8
  %rule_added = getelementptr inbounds %struct.ice_repr, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %rule_added to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %rule_added, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %do.end
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end22 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rule_info) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_add_adv_rule(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_eswitch_replay_vf_mac_rule(ptr noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %is_running.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 75, i32 2
  %2 = ptrtoint ptr %is_running.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_running.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_lan_addr = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 11
  %4 = ptrtoint ptr %hw_lan_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_lan_addr, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.ice_vf, ptr %vf, i32 0, i32 11, i32 0, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.then2

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %is_valid_ether_addr.exit
  %call7 = tail call i32 @ice_eswitch_add_vf_mac_rule(ptr noundef %1, ptr noundef %vf, ptr noundef %hw_lan_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %13 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %hw_lan_addr, i32 noundef %conv, i32 noundef %call7) #12
  br label %cleanup

if.end13:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %num_mac = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 23
  %15 = ptrtoint ptr %num_mac to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_mac, align 2
  %inc = add i16 %16, 1
  store i16 %inc, ptr %num_mac, align 2
  %dev_lan_addr = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 10
  %17 = ptrtoint ptr %hw_lan_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_lan_addr, align 4
  %19 = ptrtoint ptr %dev_lan_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dev_lan_addr, align 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr %struct.ice_vf, ptr %vf, i32 0, i32 10, i32 0, i32 4
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_eswitch_del_vf_mac_rule(ptr nocapture noundef readonly %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %is_running.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 75, i32 2
  %2 = ptrtoint ptr %is_running.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_running.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %repr = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 28
  %4 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %repr, align 8
  %rule_added = getelementptr inbounds %struct.ice_repr, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rule_added to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rule_added, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %mac_rule = getelementptr inbounds %struct.ice_repr, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %mac_rule to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_rule, align 4
  %call5 = tail call i32 @ice_rem_adv_rule_by_id(ptr noundef %hw, ptr noundef %9) #8
  %10 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %repr, align 8
  %rule_added7 = getelementptr inbounds %struct.ice_repr, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %rule_added7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rule_added7, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_rem_adv_rule_by_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_eswitch_update_repr(ptr noundef %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %is_running.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 75, i32 2
  %2 = ptrtoint ptr %is_running.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_running.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vf1 = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf1, align 4
  %vf_id = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 20
  %6 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vf_id, align 4
  %idxprom = sext i16 %7 to i32
  %repr2 = getelementptr %struct.ice_vf, ptr %5, i32 %idxprom, i32 28
  %8 = ptrtoint ptr %repr2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %repr2, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vsi, ptr %9, align 4
  %vsi_num = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 18
  %11 = ptrtoint ptr %vsi_num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vsi_num, align 8
  %conv = zext i16 %12 to i32
  %dst = getelementptr inbounds %struct.ice_repr, ptr %9, i32 0, i32 4
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst, align 4
  %u = getelementptr inbounds %struct.metadata_dst, ptr %14, i32 0, i32 2
  %port_id = getelementptr inbounds %struct.hw_port_info, ptr %u, i32 0, i32 1
  %15 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %port_id, align 4
  %call3 = tail call i32 @ice_vsi_update_security(ptr noundef %vsi, ptr noundef nonnull @ice_vsi_ctx_clear_antispoof) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hw_lan_addr = getelementptr %struct.ice_vf, ptr %5, i32 %idxprom, i32 11
  %call5 = tail call i32 @ice_fltr_add_mac_and_broadcast(ptr noundef %vsi, ptr noundef %hw_lan_addr, i32 noundef 0) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vf_id, align 4
  %conv7 = sext i16 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_update_security(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_vsi_ctx_clear_antispoof(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_fltr_add_mac_and_broadcast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_eswitch_port_start_xmit(ptr noundef %skb, ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call2 = tail call zeroext i1 @ice_is_reset_in_progress(ptr noundef %state) #8
  br i1 %call2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @ice_netdev_to_repr(ptr noundef %netdev) #8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.skb_dst_drop.exit_crit_edge, label %if.then.i

if.end.skb_dst_drop.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %if.end
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i.i = and i32 %6, -2
  %7 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %7) #8
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %4, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end.skb_dst_drop.exit_crit_edge
  %dst = getelementptr inbounds %struct.ice_repr, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst, align 4
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %10, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #8, !srcloc !55
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end10.i, label %atomic_inc_not_zero.exit.thread.i

atomic_inc_not_zero.exit.thread.i:                ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  br label %dst_hold.exit

do.end10.i:                                       ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 231, i32 noundef 9, ptr noundef null) #8
  br label %dst_hold.exit

dst_hold.exit:                                    ; preds = %do.end10.i, %atomic_inc_not_zero.exit.thread.i
  %12 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst, align 4
  %tobool.not.i15 = icmp eq ptr %13, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %14 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i15, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %15 = ptrtoint ptr %13 to i32
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %4, align 8
  %vf = getelementptr inbounds %struct.ice_repr, ptr %call3, i32 0, i32 1
  %17 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vf, align 4
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vf_id, align 8
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %21 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %queue_mapping, align 8
  %call5 = tail call i32 @ice_start_xmit(ptr noundef %skb, ptr noundef %netdev) #8
  br label %cleanup

cleanup:                                          ; preds = %dst_hold.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %dst_hold.exit ], [ 16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_reset_in_progress(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_netdev_to_repr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_start_xmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_eswitch_set_target_vsi(ptr nocapture noundef readonly %skb, ptr nocapture noundef %off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

entry.skb_dst.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !57

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %entry.skb_dst.exit.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i, label %skb_dst.exit.i.if.then_crit_edge, label %land.lhs.true.i

skb_dst.exit.i.if.then_crit_edge:                 ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.i:                                  ; preds = %skb_dst.exit.i
  %5 = inttoptr i32 %and25.i.i to ptr
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 4
  %8 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then_crit_edge, label %if.else

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %skb_dst.exit.i.if.then_crit_edge
  %9 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %off, align 8
  %or1 = or i64 %10, 257
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %u = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 2
  %port_id = getelementptr inbounds %struct.hw_port_info, ptr %u, i32 0, i32 1
  %11 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_id, align 4
  %conv = zext i32 %12 to i64
  %shl = shl i64 %conv, 50
  %and = and i64 %shl, 1151795604700004352
  %or3 = or i64 %and, 769
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i64 [ %or1, %if.then ], [ %or3, %if.else ]
  %13 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %storemerge, ptr %off, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_eswitch_mode_set(ptr noundef %devlink, i16 noundef zeroext %mode, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %eswitch_mode = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eswitch_mode, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %mode)
  %cmp = icmp eq i16 %1, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_alloc_vfs = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_alloc_vfs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_eswitch_mode_set.__msg) #8
  %tobool5.not = icmp eq ptr %extack, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.then6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ice_eswitch_mode_set.__msg, ptr %extack, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %7 = zext i16 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %mode, label %do.body43 [
    i16 0, label %do.end14
    i16 1, label %do.end29
  ]

do.end14:                                         ; preds = %if.end10
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %pf_id = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 13
  %10 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pf_id, align 1
  %conv17 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.13, i32 noundef %conv17) #12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_eswitch_mode_set.__msg.15) #8
  %tobool20.not = icmp eq ptr %extack, null
  br i1 %tobool20.not, label %do.end14.sw.epilog_crit_edge, label %do.end14.sw.epilog.sink.split_crit_edge

do.end14.sw.epilog.sink.split_crit_edge:          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end14.sw.epilog_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end29:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %pf_id33 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 13
  %14 = ptrtoint ptr %pf_id33 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pf_id33, align 1
  %conv34 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef nonnull @.str.17, i32 noundef %conv34) #12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_eswitch_mode_set.__msg.19) #8
  %tobool37.not = icmp eq ptr %extack, null
  br i1 %tobool37.not, label %do.end29.sw.epilog_crit_edge, label %do.end29.sw.epilog.sink.split_crit_edge

do.end29.sw.epilog.sink.split_crit_edge:          ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end29.sw.epilog_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body43:                                        ; preds = %if.end10
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_eswitch_mode_set.__msg.20) #8
  %tobool45.not = icmp eq ptr %extack, null
  br i1 %tobool45.not, label %do.body43.cleanup_crit_edge, label %if.then46

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then46:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ice_eswitch_mode_set.__msg.20, ptr %extack, align 4
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %do.end29.sw.epilog.sink.split_crit_edge, %do.end14.sw.epilog.sink.split_crit_edge
  %ice_eswitch_mode_set.__msg.19.sink = phi ptr [ @ice_eswitch_mode_set.__msg.15, %do.end14.sw.epilog.sink.split_crit_edge ], [ @ice_eswitch_mode_set.__msg.19, %do.end29.sw.epilog.sink.split_crit_edge ]
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ice_eswitch_mode_set.__msg.19.sink, ptr %extack, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end29.sw.epilog_crit_edge, %do.end14.sw.epilog_crit_edge
  %18 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %mode, ptr %eswitch_mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then46, %do.body43.cleanup_crit_edge, %if.then6, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ -95, %if.then6 ], [ -95, %do.end.cleanup_crit_edge ], [ -22, %if.then46 ], [ -22, %do.body43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_eswitch_mode_get(ptr noundef %devlink, ptr nocapture noundef writeonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %eswitch_mode = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eswitch_mode, align 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %mode, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_is_eswitch_mode_switchdev(ptr nocapture noundef readonly %pf) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch_mode = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 11
  %0 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eswitch_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp eq i16 %1, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_eswitch_release(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch_mode = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 11
  %0 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eswitch_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %switchdev.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 75
  %2 = ptrtoint ptr %switchdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %switchdev.i, align 4
  %num_alloc_vfs.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 13
  %4 = ptrtoint ptr %num_alloc_vfs.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_alloc_vfs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp6.not.i.i = icmp eq i16 %5, 0
  br i1 %cmp6.not.i.i, label %if.end.ice_eswitch_napi_disable.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end.ice_eswitch_napi_disable.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_napi_disable.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %vf.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf.i.i, align 4
  %repr.i.i = getelementptr %struct.ice_vf, ptr %7, i32 %i.07.i.i, i32 28
  %8 = ptrtoint ptr %repr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %repr.i.i, align 8
  %q_vector.i.i = getelementptr inbounds %struct.ice_repr, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %q_vector.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q_vector.i.i, align 4
  %napi.i.i = getelementptr inbounds %struct.ice_q_vector, ptr %11, i32 0, i32 7
  tail call void @napi_disable(ptr noundef %napi.i.i) #8
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %12 = ptrtoint ptr %num_alloc_vfs.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_alloc_vfs.i.i, align 8
  %conv.i.i = zext i16 %13 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.ice_eswitch_napi_disable.exit.i_crit_edge

for.body.i.i.ice_eswitch_napi_disable.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_napi_disable.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

ice_eswitch_napi_disable.exit.i:                  ; preds = %for.body.i.i.ice_eswitch_napi_disable.exit.i_crit_edge, %if.end.ice_eswitch_napi_disable.exit.i_crit_edge
  %uplink_vsi1.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 75, i32 1
  %14 = ptrtoint ptr %uplink_vsi1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %uplink_vsi1.i.i, align 4
  %16 = ptrtoint ptr %switchdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %switchdev.i, align 4
  %call.i.i = tail call i32 @ice_vsi_update_security(ptr noundef %17, ptr noundef nonnull @ice_vsi_ctx_clear_allow_override) #8
  %call3.i.i = tail call i32 @ice_vsi_update_security(ptr noundef %15, ptr noundef nonnull @ice_vsi_ctx_clear_allow_override) #8
  %vsw.i.i = getelementptr inbounds %struct.ice_vsi, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %vsw.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vsw.i.i, align 4
  %call4.i.i = tail call i32 @ice_clear_dflt_vsi(ptr noundef %19) #8
  %port_info.i.i = getelementptr inbounds %struct.ice_vsi, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %port_info.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port_info.i.i, align 4
  %perm_addr.i.i = getelementptr inbounds %struct.ice_port_info, ptr %21, i32 0, i32 12, i32 1
  %call5.i.i = tail call i32 @ice_fltr_add_mac_and_broadcast(ptr noundef %15, ptr noundef %perm_addr.i.i, i32 noundef 0) #8
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %idx.i = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 19
  %22 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %idx.i, align 2
  %call.i = tail call i32 @ice_rem_adv_rule_for_vsi(ptr noundef %hw.i, i16 noundef zeroext %23) #8
  %24 = ptrtoint ptr %num_alloc_vfs.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_alloc_vfs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp2.not.i.i = icmp eq i16 %25, 0
  br i1 %cmp2.not.i.i, label %ice_eswitch_napi_disable.exit.i.ice_eswitch_disable_switchdev.exit_crit_edge, label %for.body.lr.ph.i11.i

ice_eswitch_napi_disable.exit.i.ice_eswitch_disable_switchdev.exit_crit_edge: ; preds = %ice_eswitch_napi_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_disable_switchdev.exit

for.body.lr.ph.i11.i:                             ; preds = %ice_eswitch_napi_disable.exit.i
  %vf.i10.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  br label %for.body.i19.i

for.body.i19.i:                                   ; preds = %for.body.i19.i.for.body.i19.i_crit_edge, %for.body.lr.ph.i11.i
  %i.03.i.i = phi i32 [ 0, %for.body.lr.ph.i11.i ], [ %inc.i16.i, %for.body.i19.i.for.body.i19.i_crit_edge ]
  %26 = ptrtoint ptr %vf.i10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vf.i10.i, align 4
  %repr.i12.i = getelementptr %struct.ice_vf, ptr %27, i32 %i.03.i.i, i32 28
  %28 = ptrtoint ptr %repr.i12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %repr.i12.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call.i13.i = tail call i32 @ice_vsi_update_security(ptr noundef %31, ptr noundef nonnull @ice_vsi_ctx_set_antispoof) #8
  %32 = ptrtoint ptr %repr.i12.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %repr.i12.i, align 8
  %dst.i.i = getelementptr inbounds %struct.ice_repr, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dst.i.i, align 4
  tail call void @metadata_dst_free(ptr noundef %35) #8
  %hw_lan_addr.i.i = getelementptr %struct.ice_vf, ptr %27, i32 %i.03.i.i, i32 11
  %call6.i.i = tail call i32 @ice_fltr_add_mac_and_broadcast(ptr noundef %31, ptr noundef %hw_lan_addr.i.i, i32 noundef 0) #8
  %36 = ptrtoint ptr %repr.i12.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %repr.i12.i, align 8
  %q_vector.i14.i = getelementptr inbounds %struct.ice_repr, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %q_vector.i14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %q_vector.i14.i, align 4
  %napi.i15.i = getelementptr inbounds %struct.ice_q_vector, ptr %39, i32 0, i32 7
  tail call void @__netif_napi_del(ptr noundef %napi.i15.i) #8
  tail call void @synchronize_net() #8
  %inc.i16.i = add nuw nsw i32 %i.03.i.i, 1
  %40 = ptrtoint ptr %num_alloc_vfs.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %num_alloc_vfs.i.i, align 8
  %conv.i17.i = zext i16 %41 to i32
  %cmp.i18.i = icmp ult i32 %inc.i16.i, %conv.i17.i
  br i1 %cmp.i18.i, label %for.body.i19.i.for.body.i19.i_crit_edge, label %for.body.i19.i.ice_eswitch_disable_switchdev.exit_crit_edge

for.body.i19.i.ice_eswitch_disable_switchdev.exit_crit_edge: ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_disable_switchdev.exit

for.body.i19.i.for.body.i19.i_crit_edge:          ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i19.i

ice_eswitch_disable_switchdev.exit:               ; preds = %for.body.i19.i.ice_eswitch_disable_switchdev.exit_crit_edge, %ice_eswitch_napi_disable.exit.i.ice_eswitch_disable_switchdev.exit_crit_edge
  %call1.i = tail call i32 @ice_vsi_release(ptr noundef %3) #8
  tail call void @ice_repr_rem_from_all_vfs(ptr noundef %pf) #8
  %is_running = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 75, i32 2
  %42 = ptrtoint ptr %is_running to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %is_running, align 4
  br label %return

return:                                           ; preds = %ice_eswitch_disable_switchdev.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_eswitch_configure(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch_mode = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 11
  %0 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eswitch_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %is_running = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 75, i32 2
  %2 = ptrtoint ptr %is_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_running, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %port_info.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 3
  %4 = ptrtoint ptr %port_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_info.i, align 4
  %call.i.i = tail call ptr @ice_vsi_setup(ptr noundef %pf, ptr noundef %5, i32 noundef 7, i16 noundef zeroext 256, ptr noundef null) #8
  %switchdev.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 75
  %6 = ptrtoint ptr %switchdev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %switchdev.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %vsi.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %7 = ptrtoint ptr %vsi.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vsi.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %ice_get_main_vsi.exit.thread.i, label %ice_get_main_vsi.exit.i

ice_get_main_vsi.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %uplink_vsi47.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 75, i32 1
  %9 = ptrtoint ptr %uplink_vsi47.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %uplink_vsi47.i, align 4
  br label %err_vsi.i

ice_get_main_vsi.exit.i:                          ; preds = %if.end.i
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %8, align 4
  %uplink_vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 75, i32 1
  %12 = ptrtoint ptr %uplink_vsi.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %uplink_vsi.i, align 4
  %tobool9.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i, label %ice_get_main_vsi.exit.i.err_vsi.i_crit_edge, label %if.end11.i

ice_get_main_vsi.exit.i.err_vsi.i_crit_edge:      ; preds = %ice_get_main_vsi.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_vsi.i

if.end11.i:                                       ; preds = %ice_get_main_vsi.exit.i
  %call12.i = tail call fastcc i32 @ice_eswitch_setup_env(ptr noundef %pf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.err_vsi.i_crit_edge

if.end11.i.err_vsi.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_vsi.i

if.end15.i:                                       ; preds = %if.end11.i
  %call16.i = tail call i32 @ice_repr_add_for_all_vfs(ptr noundef %pf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.err_repr_add.i_crit_edge

if.end15.i.err_repr_add.i_crit_edge:              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_repr_add.i

if.end19.i:                                       ; preds = %if.end15.i
  %call20.i = tail call fastcc i32 @ice_eswitch_setup_reprs(ptr noundef %pf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end19.i.err_setup_reprs.i_crit_edge

if.end19.i.err_setup_reprs.i_crit_edge:           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_setup_reprs.i

if.end23.i:                                       ; preds = %if.end19.i
  %13 = ptrtoint ptr %switchdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %switchdev.i, align 4
  %num_txq.i.i = getelementptr inbounds %struct.ice_vsi, ptr %14, i32 0, i32 48
  %15 = ptrtoint ptr %num_txq.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_txq.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp41.not.i.i = icmp eq i16 %16, 0
  br i1 %cmp41.not.i.i, label %if.end23.i.ice_eswitch_remap_rings_to_vectors.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end23.i.ice_eswitch_remap_rings_to_vectors.exit.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_remap_rings_to_vectors.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end23.i
  %vf.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  %tx_rings.i.i = getelementptr inbounds %struct.ice_vsi, ptr %14, i32 0, i32 5
  %rx_rings.i.i = getelementptr inbounds %struct.ice_vsi, ptr %14, i32 0, i32 4
  %q_vectors.i.i = getelementptr inbounds %struct.ice_vsi, ptr %14, i32 0, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %q_id.042.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %17 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vf.i.i, align 4
  %repr2.i.i = getelementptr %struct.ice_vf, ptr %18, i32 %q_id.042.i.i, i32 28
  %19 = ptrtoint ptr %repr2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %repr2.i.i, align 8
  %q_vector3.i.i = getelementptr inbounds %struct.ice_repr, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %q_vector3.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %q_vector3.i.i, align 4
  %23 = ptrtoint ptr %tx_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_rings.i.i, align 4
  %arrayidx4.i.i = getelementptr ptr, ptr %24, i32 %q_id.042.i.i
  %25 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx4.i.i, align 4
  %27 = ptrtoint ptr %rx_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_rings.i.i, align 16
  %arrayidx5.i.i = getelementptr ptr, ptr %28, i32 %q_id.042.i.i
  %29 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx5.i.i, align 4
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %14, ptr %22, align 128
  %32 = ptrtoint ptr %q_vectors.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %q_vectors.i.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %reg_idx.i.i = getelementptr inbounds %struct.ice_q_vector, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %reg_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %reg_idx.i.i, align 2
  %reg_idx8.i.i = getelementptr inbounds %struct.ice_q_vector, ptr %22, i32 0, i32 2
  %38 = ptrtoint ptr %reg_idx8.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %reg_idx8.i.i, align 2
  %num_ring_tx.i.i = getelementptr inbounds %struct.ice_q_vector, ptr %22, i32 0, i32 4
  %39 = ptrtoint ptr %num_ring_tx.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %num_ring_tx.i.i, align 1
  %tx.i.i = getelementptr inbounds %struct.ice_q_vector, ptr %22, i32 0, i32 9
  %40 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %26, ptr %tx.i.i, align 128
  %q_vector9.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %26, i32 0, i32 5
  %41 = ptrtoint ptr %q_vector9.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %22, ptr %q_vector9.i.i, align 4
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %26, align 128
  %netdev.i.i = getelementptr inbounds %struct.ice_repr, ptr %20, i32 0, i32 3
  %43 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev.i.i, align 4
  %netdev10.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %26, i32 0, i32 6
  %45 = ptrtoint ptr %netdev10.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %netdev10.i.i, align 8
  %q_index.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %26, i32 0, i32 17
  %46 = ptrtoint ptr %q_index.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %q_index.i.i, align 2
  %num_ring_rx.i.i = getelementptr inbounds %struct.ice_q_vector, ptr %22, i32 0, i32 3
  %47 = ptrtoint ptr %num_ring_rx.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %num_ring_rx.i.i, align 8
  %rx.i.i = getelementptr inbounds %struct.ice_q_vector, ptr %22, i32 0, i32 8
  %48 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %30, ptr %rx.i.i, align 16
  %q_vector11.i.i = getelementptr inbounds %struct.ice_rx_ring, ptr %30, i32 0, i32 5
  %49 = ptrtoint ptr %q_vector11.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %22, ptr %q_vector11.i.i, align 4
  %50 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %30, align 128
  %51 = load ptr, ptr %netdev.i.i, align 4
  %netdev14.i.i = getelementptr inbounds %struct.ice_rx_ring, ptr %30, i32 0, i32 3
  %52 = ptrtoint ptr %netdev14.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %netdev14.i.i, align 4
  %inc.i.i = add nuw nsw i32 %q_id.042.i.i, 1
  %53 = ptrtoint ptr %num_txq.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %num_txq.i.i, align 2
  %conv.i.i = zext i16 %54 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.ice_eswitch_remap_rings_to_vectors.exit.i_crit_edge

for.body.i.i.ice_eswitch_remap_rings_to_vectors.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_remap_rings_to_vectors.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

ice_eswitch_remap_rings_to_vectors.exit.i:        ; preds = %for.body.i.i.ice_eswitch_remap_rings_to_vectors.exit.i_crit_edge, %if.end23.i.ice_eswitch_remap_rings_to_vectors.exit.i_crit_edge
  %call24.i = tail call i32 @ice_vsi_open(ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end5, label %ice_eswitch_remap_rings_to_vectors.exit.i.err_setup_reprs.i_crit_edge

ice_eswitch_remap_rings_to_vectors.exit.i.err_setup_reprs.i_crit_edge: ; preds = %ice_eswitch_remap_rings_to_vectors.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_setup_reprs.i

err_setup_reprs.i:                                ; preds = %ice_eswitch_remap_rings_to_vectors.exit.i.err_setup_reprs.i_crit_edge, %if.end19.i.err_setup_reprs.i_crit_edge
  tail call void @ice_repr_rem_from_all_vfs(ptr noundef %pf) #8
  br label %err_repr_add.i

err_repr_add.i:                                   ; preds = %err_setup_reprs.i, %if.end15.i.err_repr_add.i_crit_edge
  %55 = ptrtoint ptr %uplink_vsi.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %uplink_vsi.i, align 4
  %57 = ptrtoint ptr %switchdev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %switchdev.i, align 4
  %call.i45.i = tail call i32 @ice_vsi_update_security(ptr noundef %58, ptr noundef nonnull @ice_vsi_ctx_clear_allow_override) #8
  %call3.i.i = tail call i32 @ice_vsi_update_security(ptr noundef %56, ptr noundef nonnull @ice_vsi_ctx_clear_allow_override) #8
  %vsw.i.i = getelementptr inbounds %struct.ice_vsi, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %vsw.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vsw.i.i, align 4
  %call4.i.i = tail call i32 @ice_clear_dflt_vsi(ptr noundef %60) #8
  %port_info.i.i = getelementptr inbounds %struct.ice_vsi, ptr %56, i32 0, i32 3
  %61 = ptrtoint ptr %port_info.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %port_info.i.i, align 4
  %perm_addr.i.i = getelementptr inbounds %struct.ice_port_info, ptr %62, i32 0, i32 12, i32 1
  %call5.i.i = tail call i32 @ice_fltr_add_mac_and_broadcast(ptr noundef %56, ptr noundef %perm_addr.i.i, i32 noundef 0) #8
  br label %err_vsi.i

err_vsi.i:                                        ; preds = %err_repr_add.i, %if.end11.i.err_vsi.i_crit_edge, %ice_get_main_vsi.exit.i.err_vsi.i_crit_edge, %ice_get_main_vsi.exit.thread.i
  %call28.i = tail call i32 @ice_vsi_release(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

if.end5:                                          ; preds = %ice_eswitch_remap_rings_to_vectors.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ice_eswitch_napi_enable(ptr noundef %pf) #8
  %63 = ptrtoint ptr %is_running to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %is_running, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %err_vsi.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -19, %err_vsi.i ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_eswitch_stop_all_tx_queues(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_alloc_vfs = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 13
  %3 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_alloc_vfs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp13.not = icmp eq i16 %4, 0
  br i1 %cmp13.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vf = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vf, align 4
  %repr2 = getelementptr %struct.ice_vf, ptr %6, i32 %i.014, i32 28
  %7 = ptrtoint ptr %repr2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %repr2, align 8
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ice_repr_stop_tx_queues(ptr noundef nonnull %8) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %9 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_alloc_vfs, align 8
  %conv = zext i16 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_repr_stop_tx_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_eswitch_rebuild(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %switchdev = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 75
  %0 = ptrtoint ptr %switchdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switchdev, align 4
  %num_alloc_vfs.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 13
  %2 = ptrtoint ptr %num_alloc_vfs.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_alloc_vfs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp6.not.i = icmp eq i16 %3, 0
  br i1 %cmp6.not.i, label %entry.ice_eswitch_napi_del.exit_crit_edge, label %for.body.lr.ph.i

entry.ice_eswitch_napi_del.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_napi_del.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %vf.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf.i, align 4
  %repr.i = getelementptr %struct.ice_vf, ptr %5, i32 %i.07.i, i32 28
  %6 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %repr.i, align 8
  %q_vector.i = getelementptr inbounds %struct.ice_repr, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %q_vector.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q_vector.i, align 4
  %napi.i = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 7
  tail call void @napi_disable(ptr noundef %napi.i) #8
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %10 = ptrtoint ptr %num_alloc_vfs.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_alloc_vfs.i, align 8
  %conv.i = zext i16 %11 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %ice_eswitch_napi_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ice_eswitch_napi_disable.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp6.not.i24 = icmp eq i16 %11, 0
  br i1 %cmp6.not.i24, label %ice_eswitch_napi_disable.exit.ice_eswitch_napi_del.exit_crit_edge, label %ice_eswitch_napi_disable.exit.for.body.i34_crit_edge

ice_eswitch_napi_disable.exit.for.body.i34_crit_edge: ; preds = %ice_eswitch_napi_disable.exit
  br label %for.body.i34

ice_eswitch_napi_disable.exit.ice_eswitch_napi_del.exit_crit_edge: ; preds = %ice_eswitch_napi_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_napi_del.exit

for.body.i34:                                     ; preds = %for.body.i34.for.body.i34_crit_edge, %ice_eswitch_napi_disable.exit.for.body.i34_crit_edge
  %i.07.i27 = phi i32 [ %inc.i31, %for.body.i34.for.body.i34_crit_edge ], [ 0, %ice_eswitch_napi_disable.exit.for.body.i34_crit_edge ]
  %12 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vf.i, align 4
  %repr.i28 = getelementptr %struct.ice_vf, ptr %13, i32 %i.07.i27, i32 28
  %14 = ptrtoint ptr %repr.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %repr.i28, align 8
  %q_vector.i29 = getelementptr inbounds %struct.ice_repr, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %q_vector.i29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %q_vector.i29, align 4
  %napi.i30 = getelementptr inbounds %struct.ice_q_vector, ptr %17, i32 0, i32 7
  tail call void @__netif_napi_del(ptr noundef %napi.i30) #8
  tail call void @synchronize_net() #8
  %inc.i31 = add nuw nsw i32 %i.07.i27, 1
  %18 = ptrtoint ptr %num_alloc_vfs.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_alloc_vfs.i, align 8
  %conv.i32 = zext i16 %19 to i32
  %cmp.i33 = icmp ult i32 %inc.i31, %conv.i32
  br i1 %cmp.i33, label %for.body.i34.for.body.i34_crit_edge, label %for.body.i34.ice_eswitch_napi_del.exit_crit_edge

for.body.i34.ice_eswitch_napi_del.exit_crit_edge: ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_napi_del.exit

for.body.i34.for.body.i34_crit_edge:              ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i34

ice_eswitch_napi_del.exit:                        ; preds = %for.body.i34.ice_eswitch_napi_del.exit_crit_edge, %ice_eswitch_napi_disable.exit.ice_eswitch_napi_del.exit_crit_edge, %entry.ice_eswitch_napi_del.exit_crit_edge
  %call = tail call fastcc i32 @ice_eswitch_setup_env(ptr noundef %pf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %ice_eswitch_napi_del.exit.cleanup_crit_edge

ice_eswitch_napi_del.exit.cleanup_crit_edge:      ; preds = %ice_eswitch_napi_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ice_eswitch_napi_del.exit
  %call1 = tail call fastcc i32 @ice_eswitch_setup_reprs(ptr noundef %pf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %20 = ptrtoint ptr %switchdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %switchdev, align 4
  %num_txq.i = getelementptr inbounds %struct.ice_vsi, ptr %21, i32 0, i32 48
  %22 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_txq.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp41.not.i = icmp eq i16 %23, 0
  br i1 %cmp41.not.i, label %if.end4.ice_eswitch_remap_rings_to_vectors.exit_crit_edge, label %for.body.lr.ph.i36

if.end4.ice_eswitch_remap_rings_to_vectors.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_remap_rings_to_vectors.exit

for.body.lr.ph.i36:                               ; preds = %if.end4
  %vf.i35 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  %tx_rings.i = getelementptr inbounds %struct.ice_vsi, ptr %21, i32 0, i32 5
  %rx_rings.i = getelementptr inbounds %struct.ice_vsi, ptr %21, i32 0, i32 4
  %q_vectors.i = getelementptr inbounds %struct.ice_vsi, ptr %21, i32 0, i32 6
  br label %for.body.i40

for.body.i40:                                     ; preds = %for.body.i40.for.body.i40_crit_edge, %for.body.lr.ph.i36
  %q_id.042.i = phi i32 [ 0, %for.body.lr.ph.i36 ], [ %inc.i37, %for.body.i40.for.body.i40_crit_edge ]
  %24 = ptrtoint ptr %vf.i35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vf.i35, align 4
  %repr2.i = getelementptr %struct.ice_vf, ptr %25, i32 %q_id.042.i, i32 28
  %26 = ptrtoint ptr %repr2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %repr2.i, align 8
  %q_vector3.i = getelementptr inbounds %struct.ice_repr, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %q_vector3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %q_vector3.i, align 4
  %30 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_rings.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %31, i32 %q_id.042.i
  %32 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx4.i, align 4
  %34 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_rings.i, align 16
  %arrayidx5.i = getelementptr ptr, ptr %35, i32 %q_id.042.i
  %36 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx5.i, align 4
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %21, ptr %29, align 128
  %39 = ptrtoint ptr %q_vectors.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %q_vectors.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %reg_idx.i = getelementptr inbounds %struct.ice_q_vector, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %reg_idx.i, align 2
  %reg_idx8.i = getelementptr inbounds %struct.ice_q_vector, ptr %29, i32 0, i32 2
  %45 = ptrtoint ptr %reg_idx8.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %reg_idx8.i, align 2
  %num_ring_tx.i = getelementptr inbounds %struct.ice_q_vector, ptr %29, i32 0, i32 4
  %46 = ptrtoint ptr %num_ring_tx.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %num_ring_tx.i, align 1
  %tx.i = getelementptr inbounds %struct.ice_q_vector, ptr %29, i32 0, i32 9
  %47 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %33, ptr %tx.i, align 128
  %q_vector9.i = getelementptr inbounds %struct.ice_tx_ring, ptr %33, i32 0, i32 5
  %48 = ptrtoint ptr %q_vector9.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %29, ptr %q_vector9.i, align 4
  %49 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %33, align 128
  %netdev.i = getelementptr inbounds %struct.ice_repr, ptr %27, i32 0, i32 3
  %50 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev.i, align 4
  %netdev10.i = getelementptr inbounds %struct.ice_tx_ring, ptr %33, i32 0, i32 6
  %52 = ptrtoint ptr %netdev10.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %netdev10.i, align 8
  %q_index.i = getelementptr inbounds %struct.ice_tx_ring, ptr %33, i32 0, i32 17
  %53 = ptrtoint ptr %q_index.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %q_index.i, align 2
  %num_ring_rx.i = getelementptr inbounds %struct.ice_q_vector, ptr %29, i32 0, i32 3
  %54 = ptrtoint ptr %num_ring_rx.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %num_ring_rx.i, align 8
  %rx.i = getelementptr inbounds %struct.ice_q_vector, ptr %29, i32 0, i32 8
  %55 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %37, ptr %rx.i, align 16
  %q_vector11.i = getelementptr inbounds %struct.ice_rx_ring, ptr %37, i32 0, i32 5
  %56 = ptrtoint ptr %q_vector11.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %29, ptr %q_vector11.i, align 4
  %57 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %37, align 128
  %58 = load ptr, ptr %netdev.i, align 4
  %netdev14.i = getelementptr inbounds %struct.ice_rx_ring, ptr %37, i32 0, i32 3
  %59 = ptrtoint ptr %netdev14.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %netdev14.i, align 4
  %inc.i37 = add nuw nsw i32 %q_id.042.i, 1
  %60 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %num_txq.i, align 2
  %conv.i38 = zext i16 %61 to i32
  %cmp.i39 = icmp ult i32 %inc.i37, %conv.i38
  br i1 %cmp.i39, label %for.body.i40.for.body.i40_crit_edge, label %for.body.i40.ice_eswitch_remap_rings_to_vectors.exit_crit_edge

for.body.i40.ice_eswitch_remap_rings_to_vectors.exit_crit_edge: ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_remap_rings_to_vectors.exit

for.body.i40.for.body.i40_crit_edge:              ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i40

ice_eswitch_remap_rings_to_vectors.exit:          ; preds = %for.body.i40.ice_eswitch_remap_rings_to_vectors.exit_crit_edge, %if.end4.ice_eswitch_remap_rings_to_vectors.exit_crit_edge
  tail call void @ice_replay_tc_fltrs(ptr noundef %pf) #8
  %call5 = tail call i32 @ice_vsi_open(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %ice_eswitch_remap_rings_to_vectors.exit.cleanup_crit_edge

ice_eswitch_remap_rings_to_vectors.exit.cleanup_crit_edge: ; preds = %ice_eswitch_remap_rings_to_vectors.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %ice_eswitch_remap_rings_to_vectors.exit
  %62 = ptrtoint ptr %num_alloc_vfs.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %num_alloc_vfs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp6.not.i42 = icmp eq i16 %63, 0
  br i1 %cmp6.not.i42, label %if.end8.ice_eswitch_napi_enable.exit_crit_edge, label %for.body.lr.ph.i44

if.end8.ice_eswitch_napi_enable.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_napi_enable.exit

for.body.lr.ph.i44:                               ; preds = %if.end8
  %vf.i43 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  br label %for.body.i52

for.body.i52:                                     ; preds = %for.body.i52.for.body.i52_crit_edge, %for.body.lr.ph.i44
  %i.07.i45 = phi i32 [ 0, %for.body.lr.ph.i44 ], [ %inc.i49, %for.body.i52.for.body.i52_crit_edge ]
  %64 = ptrtoint ptr %vf.i43 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vf.i43, align 4
  %repr.i46 = getelementptr %struct.ice_vf, ptr %65, i32 %i.07.i45, i32 28
  %66 = ptrtoint ptr %repr.i46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %repr.i46, align 8
  %q_vector.i47 = getelementptr inbounds %struct.ice_repr, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %q_vector.i47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %q_vector.i47, align 4
  %napi.i48 = getelementptr inbounds %struct.ice_q_vector, ptr %69, i32 0, i32 7
  tail call void @napi_enable(ptr noundef %napi.i48) #8
  %inc.i49 = add nuw nsw i32 %i.07.i45, 1
  %70 = ptrtoint ptr %num_alloc_vfs.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %num_alloc_vfs.i, align 8
  %conv.i50 = zext i16 %71 to i32
  %cmp.i51 = icmp ult i32 %inc.i49, %conv.i50
  br i1 %cmp.i51, label %for.body.i52.for.body.i52_crit_edge, label %for.body.i52.ice_eswitch_napi_enable.exit_crit_edge

for.body.i52.ice_eswitch_napi_enable.exit_crit_edge: ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_napi_enable.exit

for.body.i52.for.body.i52_crit_edge:              ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i52

ice_eswitch_napi_enable.exit:                     ; preds = %for.body.i52.ice_eswitch_napi_enable.exit_crit_edge, %if.end8.ice_eswitch_napi_enable.exit_crit_edge
  %state.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 20
  %72 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %state.i, align 4
  %74 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %ice_eswitch_napi_enable.exit.cleanup_crit_edge

ice_eswitch_napi_enable.exit.cleanup_crit_edge:   ; preds = %ice_eswitch_napi_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %ice_eswitch_napi_enable.exit
  %75 = ptrtoint ptr %num_alloc_vfs.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %num_alloc_vfs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp13.not.i = icmp eq i16 %76, 0
  br i1 %cmp13.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i55

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i55:                               ; preds = %for.cond.preheader.i
  %vf.i54 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  br label %for.body.i57

for.body.i57:                                     ; preds = %for.inc.i.for.body.i57_crit_edge, %for.body.lr.ph.i55
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i55 ], [ %inc.i58, %for.inc.i.for.body.i57_crit_edge ]
  %77 = ptrtoint ptr %vf.i54 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vf.i54, align 4
  %repr2.i56 = getelementptr %struct.ice_vf, ptr %78, i32 %i.014.i, i32 28
  %79 = ptrtoint ptr %repr2.i56 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %repr2.i56, align 8
  %tobool3.not.i = icmp eq ptr %80, null
  br i1 %tobool3.not.i, label %for.body.i57.for.inc.i_crit_edge, label %if.then4.i

for.body.i57.for.inc.i_crit_edge:                 ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ice_repr_start_tx_queues(ptr noundef nonnull %80) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i57.for.inc.i_crit_edge
  %inc.i58 = add nuw nsw i32 %i.014.i, 1
  %81 = ptrtoint ptr %num_alloc_vfs.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %num_alloc_vfs.i, align 8
  %conv.i59 = zext i16 %82 to i32
  %cmp.i60 = icmp ult i32 %inc.i58, %conv.i59
  br i1 %cmp.i60, label %for.inc.i.for.body.i57_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.i.for.body.i57_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i57

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %ice_eswitch_napi_enable.exit.cleanup_crit_edge, %ice_eswitch_remap_rings_to_vectors.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ice_eswitch_napi_del.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %ice_eswitch_napi_del.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %ice_eswitch_remap_rings_to_vectors.exit.cleanup_crit_edge ], [ 0, %ice_eswitch_napi_enable.exit.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_eswitch_setup_env(ptr noundef %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %switchdev = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 75
  %uplink_vsi1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 75, i32 1
  %0 = ptrtoint ptr %uplink_vsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uplink_vsi1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = ptrtoint ptr %switchdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %switchdev, align 4
  %call = tail call i32 @ice_vsi_manage_vlan_stripping(ptr noundef %5, i1 noundef zeroext false) #8
  %hw = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idx, align 2
  tail call void @ice_remove_vsi_fltr(ptr noundef %hw, i16 noundef zeroext %7) #8
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 73
  %8 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #8
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 63
  %conv.i = zext i8 %9 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #8
  %uc.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 65
  tail call void @__hw_addr_unsync_dev(ptr noundef %uc.i, ptr noundef %3, ptr noundef null) #8
  %mc.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 66
  tail call void @__hw_addr_unsync_dev(ptr noundef %mc.i, ptr noundef %3, ptr noundef null) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #8
  %call3 = tail call i32 @ice_vsi_add_vlan(ptr noundef %1, i16 noundef zeroext 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.err_def_rx_crit_edge

entry.err_def_rx_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_def_rx

if.end:                                           ; preds = %entry
  %vsw = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %vsw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vsw, align 4
  %call4 = tail call zeroext i1 @ice_is_dflt_vsi_in_use(ptr noundef %11) #8
  br i1 %call4, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %12 = ptrtoint ptr %vsw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vsw, align 4
  %call7 = tail call i32 @ice_set_dflt_vsi(ptr noundef %13, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then5.err_def_rx_crit_edge

if.then5.err_def_rx_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_def_rx

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = tail call i32 @ice_vsi_update_security(ptr noundef %1, ptr noundef nonnull @ice_vsi_ctx_set_allow_override) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.err_override_uplink_crit_edge

if.end11.err_override_uplink_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_override_uplink

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @ice_vsi_update_security(ptr noundef %5, ptr noundef nonnull @ice_vsi_ctx_set_allow_override) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %err_override_control

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_override_control:                             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 @ice_vsi_update_security(ptr noundef %1, ptr noundef nonnull @ice_vsi_ctx_clear_allow_override) #8
  br label %err_override_uplink

err_override_uplink:                              ; preds = %err_override_control, %if.end11.err_override_uplink_crit_edge
  br i1 %call4, label %err_override_uplink.err_def_rx_crit_edge, label %if.then22

err_override_uplink.err_def_rx_crit_edge:         ; preds = %err_override_uplink
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_def_rx

if.then22:                                        ; preds = %err_override_uplink
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %vsw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vsw, align 4
  %call24 = tail call i32 @ice_clear_dflt_vsi(ptr noundef %15) #8
  br label %err_def_rx

err_def_rx:                                       ; preds = %if.then22, %err_override_uplink.err_def_rx_crit_edge, %if.then5.err_def_rx_crit_edge, %entry.err_def_rx_crit_edge
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port_info, align 4
  %perm_addr = getelementptr inbounds %struct.ice_port_info, ptr %17, i32 0, i32 12, i32 1
  %call26 = tail call i32 @ice_fltr_add_mac_and_broadcast(ptr noundef %1, ptr noundef %perm_addr, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %err_def_rx, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %err_def_rx ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_eswitch_setup_reprs(ptr noundef %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %switchdev = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 75
  %0 = ptrtoint ptr %switchdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switchdev, align 4
  %num_alloc_vfs = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 13
  %2 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_alloc_vfs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp153.not = icmp eq i16 %3, 0
  br i1 %cmp153.not, label %entry.cleanup84_crit_edge, label %for.body.lr.ph

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup84

for.body.lr.ph:                                   ; preds = %entry
  %vf = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  %hw = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  br label %for.body

for.cond42.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp45157.not = icmp eq i16 %39, 0
  br i1 %cmp45157.not, label %for.cond42.preheader.cleanup84_crit_edge, label %for.body47.lr.ph

for.cond42.preheader.cleanup84_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup84

for.body47.lr.ph:                                 ; preds = %for.cond42.preheader
  %vf49 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  br label %for.body47

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf, align 4
  %repr = getelementptr %struct.ice_vf, ptr %5, i32 %i.0154, i32 28
  %6 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %repr, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idx, align 2
  tail call void @ice_remove_vsi_fltr(ptr noundef %hw, i16 noundef zeroext %11) #8
  %call = tail call ptr @metadata_dst_alloc(i8 noundef zeroext 0, i32 noundef 1, i32 noundef 3264) #8
  %12 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %repr, align 8
  %dst = getelementptr inbounds %struct.ice_repr, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %dst, align 4
  %15 = load ptr, ptr %repr, align 8
  %dst7 = getelementptr inbounds %struct.ice_repr, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %dst7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst7, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %hw_lan_addr = getelementptr %struct.ice_vf, ptr %5, i32 %i.0154, i32 11
  %call8 = tail call i32 @ice_fltr_add_mac_and_broadcast(ptr noundef %9, ptr noundef %hw_lan_addr, i32 noundef 0) #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call9 = tail call i32 @ice_vsi_update_security(ptr noundef %9, ptr noundef nonnull @ice_vsi_ctx_clear_antispoof) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end18, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hw_lan_addr12 = getelementptr %struct.ice_vf, ptr %5, i32 %i.0154, i32 11
  %call15 = tail call i32 @ice_fltr_add_mac_and_broadcast(ptr noundef %9, ptr noundef %hw_lan_addr12, i32 noundef 0) #8
  %18 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %repr, align 8
  %dst17 = getelementptr inbounds %struct.ice_repr, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %dst17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst17, align 4
  tail call void @metadata_dst_free(ptr noundef %21) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = tail call i32 @ice_vsi_add_vlan(ptr noundef %9, i16 noundef zeroext 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.inc, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %hw_lan_addr22 = getelementptr %struct.ice_vf, ptr %5, i32 %i.0154, i32 11
  %call25 = tail call i32 @ice_fltr_add_mac_and_broadcast(ptr noundef %9, ptr noundef %hw_lan_addr22, i32 noundef 0) #8
  %22 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %repr, align 8
  %dst27 = getelementptr inbounds %struct.ice_repr, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %dst27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst27, align 4
  tail call void @metadata_dst_free(ptr noundef %25) #8
  %call28 = tail call i32 @ice_vsi_update_security(ptr noundef %9, ptr noundef nonnull @ice_vsi_ctx_set_antispoof) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.then11, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0154)
  %cmp64160.not = icmp eq i32 %i.0154, 0
  br i1 %cmp64160.not, label %cleanup.cleanup84_crit_edge, label %cleanup.for.body66_crit_edge

cleanup.for.body66_crit_edge:                     ; preds = %cleanup
  br label %for.body66

cleanup.cleanup84_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup84

for.inc:                                          ; preds = %if.end18
  %26 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %repr, align 8
  %netdev = getelementptr inbounds %struct.ice_repr, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev, align 4
  %q_vector = getelementptr inbounds %struct.ice_repr, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %q_vector, align 4
  %napi = getelementptr inbounds %struct.ice_q_vector, ptr %31, i32 0, i32 7
  tail call void @netif_napi_add(ptr noundef %29, ptr noundef %napi, ptr noundef nonnull @ice_napi_poll, i32 noundef 64) #8
  %32 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %repr, align 8
  %netdev40 = getelementptr inbounds %struct.ice_repr, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %netdev40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev40, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %37, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  %inc = add nuw nsw i32 %i.0154, 1
  %38 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_alloc_vfs, align 8
  %conv = zext i16 %39 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.cond42.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.body47.lr.ph
  %i.1158 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc61, %for.body47.for.body47_crit_edge ]
  %40 = ptrtoint ptr %vf49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vf49, align 4
  %repr51 = getelementptr %struct.ice_vf, ptr %41, i32 %i.1158, i32 28
  %42 = ptrtoint ptr %repr51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %repr51, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %dst55 = getelementptr inbounds %struct.ice_repr, ptr %43, i32 0, i32 4
  %46 = ptrtoint ptr %dst55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dst55, align 4
  %vsi_num56 = getelementptr inbounds %struct.ice_vsi, ptr %45, i32 0, i32 18
  %48 = ptrtoint ptr %vsi_num56 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vsi_num56, align 8
  %conv57 = zext i16 %49 to i32
  %u = getelementptr inbounds %struct.metadata_dst, ptr %47, i32 0, i32 2
  %port_id = getelementptr inbounds %struct.hw_port_info, ptr %u, i32 0, i32 1
  %50 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv57, ptr %port_id, align 4
  %netdev58 = getelementptr inbounds %struct.ice_repr, ptr %43, i32 0, i32 3
  %51 = ptrtoint ptr %netdev58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %netdev58, align 4
  %53 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %u, align 8
  tail call void @ice_repr_set_traffic_vsi(ptr noundef %43, ptr noundef %1) #8
  %inc61 = add nuw nsw i32 %i.1158, 1
  %54 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %num_alloc_vfs, align 8
  %conv44 = zext i16 %55 to i32
  %cmp45 = icmp ult i32 %inc61, %conv44
  br i1 %cmp45, label %for.body47.for.body47_crit_edge, label %for.body47.cleanup84_crit_edge

for.body47.cleanup84_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup84

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body47

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %cleanup.for.body66_crit_edge
  %i.2161.in = phi i32 [ %i.2161, %for.body66.for.body66_crit_edge ], [ %i.0154, %cleanup.for.body66_crit_edge ]
  %i.2161 = add nsw i32 %i.2161.in, -1
  %56 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vf, align 4
  %repr70 = getelementptr %struct.ice_vf, ptr %57, i32 %i.2161, i32 28
  %58 = ptrtoint ptr %repr70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %repr70, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call75 = tail call i32 @ice_vsi_update_security(ptr noundef %61, ptr noundef nonnull @ice_vsi_ctx_set_antispoof) #8
  %62 = ptrtoint ptr %repr70 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %repr70, align 8
  %dst77 = getelementptr inbounds %struct.ice_repr, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %dst77 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dst77, align 4
  tail call void @metadata_dst_free(ptr noundef %65) #8
  %hw_lan_addr78 = getelementptr %struct.ice_vf, ptr %57, i32 %i.2161, i32 11
  %call81 = tail call i32 @ice_fltr_add_mac_and_broadcast(ptr noundef %61, ptr noundef %hw_lan_addr78, i32 noundef 0) #8
  %cmp64 = icmp sgt i32 %i.2161.in, 1
  br i1 %cmp64, label %for.body66.for.body66_crit_edge, label %for.body66.cleanup84_crit_edge

for.body66.cleanup84_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup84

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body66

cleanup84:                                        ; preds = %for.body66.cleanup84_crit_edge, %for.body47.cleanup84_crit_edge, %cleanup.cleanup84_crit_edge, %for.cond42.preheader.cleanup84_crit_edge, %entry.cleanup84_crit_edge
  %retval.0 = phi i32 [ -19, %cleanup.cleanup84_crit_edge ], [ 0, %for.cond42.preheader.cleanup84_crit_edge ], [ 0, %entry.cleanup84_crit_edge ], [ -19, %for.body66.cleanup84_crit_edge ], [ 0, %for.body47.cleanup84_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_replay_tc_fltrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_eswitch_napi_enable(ptr nocapture noundef readonly %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_alloc_vfs = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 13
  %0 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_alloc_vfs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp6.not = icmp eq i16 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vf = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf, align 4
  %repr = getelementptr %struct.ice_vf, ptr %3, i32 %i.07, i32 28
  %4 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %repr, align 8
  %q_vector = getelementptr inbounds %struct.ice_repr, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q_vector, align 4
  %napi = getelementptr inbounds %struct.ice_q_vector, ptr %7, i32 0, i32 7
  tail call void @napi_enable(ptr noundef %napi) #8
  %inc = add nuw nsw i32 %i.07, 1
  %8 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_alloc_vfs, align 8
  %conv = zext i16 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_rem_adv_rule_for_vsi(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_repr_rem_from_all_vfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_vsi_ctx_clear_allow_override(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_clear_dflt_vsi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_vsi_ctx_set_antispoof(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @metadata_dst_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_repr_add_for_all_vfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_vsi_setup(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_manage_vlan_stripping(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_remove_vsi_fltr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_add_vlan(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_dflt_vsi_in_use(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_set_dflt_vsi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_vsi_ctx_set_allow_override(ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hw_addr_unsync_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_napi_poll(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_repr_set_traffic_vsi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_repr_start_tx_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_eswitch.c", i32 52, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ice_eswitch_add_vf_mac_rule._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ice_eswitch_add_vf_mac_rule._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ice/ice_eswitch.c", i32 78, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ice_eswitch_replay_vf_mac_rule._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ice_eswitch_replay_vf_mac_rule._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ice/ice_eswitch.c", i32 324, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ice_eswitch_update_repr._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @ice_eswitch_update_repr._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ice/ice_eswitch.c", i32 523, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ice_eswitch_mode_set._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @ice_eswitch_mode_set._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ice_eswitch_mode_set.__msg, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ice/ice_eswitch.c", i32 524, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ice/ice_eswitch.c", i32 530, i32 3}
!28 = !{ptr @ice_eswitch_mode_set._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ice_eswitch_mode_set._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ice_eswitch_mode_set.__msg.15, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ice/ice_eswitch.c", i32 532, i32 3}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ice/ice_eswitch.c", i32 536, i32 3}
!34 = !{ptr @ice_eswitch_mode_set._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ice_eswitch_mode_set._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ice_eswitch_mode_set.__msg.19, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ice/ice_eswitch.c", i32 538, i32 3}
!38 = !{ptr @ice_eswitch_mode_set.__msg.20, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ice/ice_eswitch.c", i32 542, i32 3}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/net/dst.h", i32 231, i32 2}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
!54 = !{i64 2148253452}
!55 = !{i64 738275, i64 738300, i64 738322, i64 738338, i64 738350, i64 738370, i64 738394, i64 738410, i64 738422}
!56 = !{i64 2148253640}
!57 = !{!"branch_weights", i32 1, i32 2000}
