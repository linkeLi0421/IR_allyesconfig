; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_xsk.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_xsk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.129 }
%struct.atomic_t = type { i32 }
%union.anon.129 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.ice_txq_meta = type { i32, i16, i16, i16, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.199, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.199 = type { ptr }
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
%struct.ice_rx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.206, [96 x i8], %struct.xdp_rxq_info, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_rxq_stats, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.callback_head, ptr, ptr, ptr, ptr, ptr, i32, i64, i8, i8, i8, [125 x i8] }
%union.anon.206 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ice_rxq_stats = type { i64, i64, i64 }
%struct.ice_q_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.183 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.183 = type { %struct.devlink_port_pci_vf_attrs }
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
%struct.ice_q_vector = type { ptr, i16, i16, i8, i8, i8, i8, %struct.napi_struct, %struct.ice_ring_container, %struct.ice_ring_container, %struct.cpumask, %struct.irq_affinity_notify, ptr, [32 x i8], i16, [10 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ice_ring_container = type { %union.anon.205, %struct.dim, i16, i16, i32 }
%union.anon.205 = type { ptr }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.msix_entry = type { i32, i16 }
%struct.ice_tx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.ice_txq_stats, %struct.callback_head, [1 x i32], ptr, ptr, %struct.spinlock, i32, i8, i8, i8, [49 x i8] }
%struct.ice_txq_stats = type { i64, i64, i64, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.200, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.200 = type { ptr }
%struct.xsk_buff_pool = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, %struct.work_struct, %struct.list_head, i32, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, %struct.spinlock, [0 x ptr], [16 x i8] }
%struct.xdp_umem = type { ptr, i64, i32, i32, i32, i32, ptr, %struct.refcount_struct, i8, i8, ptr, i32, %struct.list_head, %struct.work_struct }
%struct.ice_aqc_add_tx_qgrp = type { i32, i8, [3 x i8], [0 x %struct.ice_aqc_add_txqs_perq] }
%struct.ice_aqc_add_txqs_perq = type { i16, [2 x i8], i32, [22 x i8], [2 x i8], %struct.ice_aqc_txsched_elem }
%struct.ice_aqc_txsched_elem = type { i8, i8, i8, i8, %struct.ice_aqc_elem_info_bw, %struct.ice_aqc_elem_info_bw, i16, i16 }
%struct.ice_aqc_elem_info_bw = type { i16, i16 }
%union.ice_32b_rx_flex_desc = type { %struct.anon.201 }
%struct.anon.201 = type { i64, i64, i64, i64 }
%struct.xdp_buff_xsk = type { %struct.xdp_buff, i32, i32, ptr, i64, %struct.list_head }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.202 = type { i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, %union.anon.203 }
%union.anon.203 = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.159, [48 x i8], %union.anon.160, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.162, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.159 = type { i64 }
%union.anon.160 = type { %struct.anon.161 }
%struct.anon.161 = type { i32, ptr }
%union.anon.162 = type { %struct.anon.163 }
%struct.anon.163 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.164, i32, i32, i32, i16, i16, %union.anon.166, i32, %union.anon.167, %union.anon.168, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.164 = type { i32 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { %struct.anon.99, [0 x %struct.sock_filter] }
%struct.anon.99 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.xdp_desc = type { i64, i32, i32 }
%struct.ice_tx_desc = type { i64, i64 }
%struct.ice_tx_buf = type { ptr, %union.anon.207, i32, i16, i32, i32, i32 }
%union.anon.207 = type { ptr }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_qp_dis error = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_qp_ena error = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Could not %sable buffer pool, error = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 335, i32 28 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 349, i32 28 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 353, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 354, i32 22 }
@___asan_gen_.23 = private constant [44 x i8] c"../drivers/net/ethernet/intel/ice/ice_xsk.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 354, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 613, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 271, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 28, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 108, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_xsk_pool_setup(ptr noundef %vsi, ptr noundef %pool, i16 noundef zeroext %qid) local_unnamed_addr #0 align 64 {
entry:
  %txq_meta.i = alloca %struct.ice_txq_meta, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end9_crit_edge, label %land.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.end:                                         ; preds = %entry
  %xdp_prog.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 57
  %4 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.i58.not = icmp eq ptr %5, null
  br i1 %tobool.i58.not, label %land.end.if.end9_crit_edge, label %if.then

land.end.if.end9_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %txq_meta.i) #10
  %6 = call ptr @memset(ptr %txq_meta.i, i32 0, i32 12)
  %conv.i = zext i16 %qid to i32
  %num_rxq.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 50
  %7 = ptrtoint ptr %num_rxq.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_rxq.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %qid)
  %cmp.not.i = icmp ugt i16 %8, %qid
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.if.then7.thread_crit_edge

if.then.if.then7.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.thread

lor.lhs.false.i:                                  ; preds = %if.then
  %num_txq.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 48
  %9 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_txq.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %qid)
  %cmp5.not.i = icmp ugt i16 %10, %qid
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false.i.if.then7.thread_crit_edge

lor.lhs.false.i.if.then7.thread_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %tx_rings.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 5
  %11 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_rings.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %conv.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %rx_rings.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 4
  %15 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_rings.i, align 16
  %arrayidx8.i = getelementptr ptr, ptr %16, i32 %conv.i
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx8.i, align 4
  %q_vector9.i = getelementptr inbounds %struct.ice_rx_ring, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %q_vector9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %q_vector9.i, align 4
  %state.i59 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 9
  %call77.i = tail call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %state.i59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool.not78.i = icmp eq i32 %call77.i, 0
  br i1 %tobool.not78.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %if.end12.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %timeout.079.i = phi i32 [ %dec.i, %if.end12.i.while.body.i_crit_edge ], [ 50, %if.end.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.079.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %while.body.i.if.then7_crit_edge, label %if.end12.i

while.body.i.if.then7_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.end12.i:                                       ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %state.i59) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end12.i.while.end.i_crit_edge, label %if.end12.i.while.body.i_crit_edge

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end12.i.while.end.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end12.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %21 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vsi, align 128
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 103
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %24, i32 %conv.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %back.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %25 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %back.i.i, align 8
  %hw1.i.i = getelementptr inbounds %struct.ice_pf, ptr %26, i32 0, i32 58
  %base_vector.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 16
  %27 = ptrtoint ptr %base_vector.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %base_vector.i.i, align 2
  %reg_idx.i.i = getelementptr inbounds %struct.ice_rx_ring, ptr %18, i32 0, i32 12
  %29 = ptrtoint ptr %reg_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %reg_idx.i.i, align 4
  %31 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw1.i.i, align 8
  %conv2.i.i = zext i16 %30 to i32
  %mul.i.i = shl nuw nsw i32 %conv2.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 1376256
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %add.i.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !34
  %34 = and i32 %33, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !35
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw1.i.i, align 8
  %add.ptr8.i.i = getelementptr i8, ptr %36, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %34) #10, !srcloc !36
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %while.end.i.ice_qvec_dis_irq.exit.i_crit_edge, label %if.then.i.i

while.end.i.ice_qvec_dis_irq.exit.i_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_qvec_dis_irq.exit.i

if.then.i.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = zext i16 %28 to i32
  %v_idx9.i.i = getelementptr inbounds %struct.ice_q_vector, ptr %20, i32 0, i32 1
  %37 = ptrtoint ptr %v_idx9.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %v_idx9.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !37
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw1.i.i, align 8
  %reg_idx14.i.i = getelementptr inbounds %struct.ice_q_vector, ptr %20, i32 0, i32 2
  %41 = ptrtoint ptr %reg_idx14.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %reg_idx14.i.i, align 2
  %conv15.i.i = zext i16 %42 to i32
  %mul16.i.i = shl nuw nsw i32 %conv15.i.i, 2
  %add17.i.i = add nuw nsw i32 %mul16.i.i, 1441792
  %add.ptr18.i.i = getelementptr i8, ptr %40, i32 %add17.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 0) #10, !srcloc !36
  %43 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw1.i.i, align 8
  %add.ptr22.i.i = getelementptr i8, ptr %44, i32 745772
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i.i) #10, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !38
  %msix_entries.i.i = getelementptr inbounds %struct.ice_pf, ptr %26, i32 0, i32 5
  %46 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %msix_entries.i.i, align 4
  %conv26.i.i = zext i16 %38 to i32
  %add27.i.i = add nuw nsw i32 %conv26.i.i, %conv.i.i
  %arrayidx.i72.i = getelementptr %struct.msix_entry, ptr %47, i32 %add27.i.i
  %48 = ptrtoint ptr %arrayidx.i72.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i72.i, align 4
  tail call void @synchronize_irq(i32 noundef %49) #10
  br label %ice_qvec_dis_irq.exit.i

ice_qvec_dis_irq.exit.i:                          ; preds = %if.then.i.i, %while.end.i.ice_qvec_dis_irq.exit.i_crit_edge
  call void @ice_fill_txq_meta(ptr noundef %vsi, ptr noundef %14, ptr noundef nonnull %txq_meta.i) #10
  %call15.i = call i32 @ice_vsi_stop_tx_ring(ptr noundef %vsi, i32 noundef 0, i16 noundef zeroext 0, ptr noundef %14, ptr noundef nonnull %txq_meta.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %ice_qvec_dis_irq.exit.i.if.then7_crit_edge

ice_qvec_dis_irq.exit.i.if.then7_crit_edge:       ; preds = %ice_qvec_dis_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.end18.i:                                       ; preds = %ice_qvec_dis_irq.exit.i
  %50 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.i.not.i = icmp eq ptr %51, null
  br i1 %tobool.i.not.i, label %if.end18.i.if.end27.i_crit_edge, label %if.then20.i

if.end18.i.if.end27.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then20.i:                                      ; preds = %if.end18.i
  %xdp_rings.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 58
  %52 = ptrtoint ptr %xdp_rings.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xdp_rings.i, align 8
  %arrayidx22.i = getelementptr ptr, ptr %53, i32 %conv.i
  %54 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx22.i, align 4
  %56 = call ptr @memset(ptr %txq_meta.i, i32 0, i32 12)
  call void @ice_fill_txq_meta(ptr noundef %vsi, ptr noundef %55, ptr noundef nonnull %txq_meta.i) #10
  %call23.i = call i32 @ice_vsi_stop_tx_ring(ptr noundef %vsi, i32 noundef 0, i16 noundef zeroext 0, ptr noundef %55, ptr noundef nonnull %txq_meta.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then20.i.if.end27.i_crit_edge, label %if.then20.i.if.then7_crit_edge

if.then20.i.if.then7_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then20.i.if.end27.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then20.i.if.end27.i_crit_edge, %if.end18.i.if.end27.i_crit_edge
  %call28.i = call i32 @ice_vsi_ctrl_one_rx_ring(ptr noundef %vsi, i1 noundef zeroext false, i16 noundef zeroext %qid, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end27.i.if.then7_crit_edge

if.end27.i.if.then7_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.end31.i:                                       ; preds = %if.end27.i
  %57 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vsi, align 128
  %tobool.not.i73.i = icmp eq ptr %58, null
  %or.cond.i.i = or i1 %tobool.not.i.i, %tobool.not.i73.i
  br i1 %or.cond.i.i, label %if.end31.i.ice_qvec_toggle_napi.exit.i_crit_edge, label %if.end.i.i

if.end31.i.ice_qvec_toggle_napi.exit.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_qvec_toggle_napi.exit.i

if.end.i.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %napi.i.i = getelementptr inbounds %struct.ice_q_vector, ptr %20, i32 0, i32 7
  call void @napi_disable(ptr noundef %napi.i.i) #10
  br label %ice_qvec_toggle_napi.exit.i

ice_qvec_toggle_napi.exit.i:                      ; preds = %if.end.i.i, %if.end31.i.ice_qvec_toggle_napi.exit.i_crit_edge
  call fastcc void @ice_qp_clean_rings(ptr noundef %vsi, i16 noundef zeroext %qid) #10
  %59 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_rings.i, align 16
  %arrayidx.i74.i = getelementptr ptr, ptr %60, i32 %conv.i
  %61 = ptrtoint ptr %arrayidx.i74.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i74.i, align 4
  %rx_stats.i.i = getelementptr inbounds %struct.ice_rx_ring, ptr %62, i32 0, i32 18
  %63 = call ptr @memset(ptr %rx_stats.i.i, i32 0, i32 24)
  %64 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_rings.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %65, i32 %conv.i
  %66 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx2.i.i, align 4
  %stats.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %67, i32 0, i32 18
  %68 = call ptr @memset(ptr %stats.i.i, i32 0, i32 16)
  %69 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.i.not.i.i, label %ice_qvec_toggle_napi.exit.i.ice_qp_dis.exit_crit_edge, label %if.then.i75.i

ice_qvec_toggle_napi.exit.i.ice_qp_dis.exit_crit_edge: ; preds = %ice_qvec_toggle_napi.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_qp_dis.exit

if.then.i75.i:                                    ; preds = %ice_qvec_toggle_napi.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %xdp_rings.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 58
  %71 = ptrtoint ptr %xdp_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %xdp_rings.i.i, align 8
  %arrayidx4.i.i = getelementptr ptr, ptr %72, i32 %conv.i
  %73 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx4.i.i, align 4
  %stats5.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %74, i32 0, i32 18
  %75 = call ptr @memset(ptr %stats5.i.i, i32 0, i32 16)
  br label %ice_qp_dis.exit

ice_qp_dis.exit:                                  ; preds = %if.then.i75.i, %ice_qvec_toggle_napi.exit.i.ice_qp_dis.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %txq_meta.i) #10
  br label %if.end9

if.then7.thread:                                  ; preds = %lor.lhs.false.i.if.then7.thread_crit_edge, %if.then.if.then7.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %txq_meta.i) #10
  %76 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vsi, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %77, ptr noundef nonnull @.str, i32 noundef -22) #13
  br label %if.then14

if.then7:                                         ; preds = %if.end27.i.if.then7_crit_edge, %if.then20.i.if.then7_crit_edge, %ice_qvec_dis_irq.exit.i.if.then7_crit_edge, %while.body.i.if.then7_crit_edge
  %retval.1.i.ph = phi i32 [ %call28.i, %if.end27.i.if.then7_crit_edge ], [ %call15.i, %ice_qvec_dis_irq.exit.i.if.then7_crit_edge ], [ %call23.i, %if.then20.i.if.then7_crit_edge ], [ -16, %while.body.i.if.then7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %txq_meta.i) #10
  %78 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vsi, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %79, ptr noundef nonnull @.str, i32 noundef %retval.1.i.ph) #13
  br label %if.then14

if.end9:                                          ; preds = %ice_qp_dis.exit, %land.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %80 = phi i1 [ true, %ice_qp_dis.exit ], [ false, %land.end.if.end9_crit_edge ], [ false, %entry.if.end9_crit_edge ]
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end9
  %type.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 17
  %81 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.not.i60 = icmp eq i32 %82, 0
  br i1 %cmp.not.i60, label %if.end.i62, label %cond.true.xsk_pool_if_up_crit_edge

cond.true.xsk_pool_if_up_crit_edge:               ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %xsk_pool_if_up

if.end.i62:                                       ; preds = %cond.true
  %conv.i61 = zext i16 %qid to i32
  %83 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vsi, align 128
  %real_num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 89
  %85 = ptrtoint ptr %real_num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %real_num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %conv.i61)
  %cmp1.not.i = icmp ugt i32 %86, %conv.i61
  br i1 %cmp1.not.i, label %lor.lhs.false.i64, label %if.end.i62.xsk_pool_if_up_crit_edge

if.end.i62.xsk_pool_if_up_crit_edge:              ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %xsk_pool_if_up

lor.lhs.false.i64:                                ; preds = %if.end.i62
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 105
  %87 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %real_num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %conv.i61)
  %cmp5.not.i63 = icmp ugt i32 %88, %conv.i61
  br i1 %cmp5.not.i63, label %if.end8.i, label %lor.lhs.false.i64.xsk_pool_if_up_crit_edge

lor.lhs.false.i64.xsk_pool_if_up_crit_edge:       ; preds = %lor.lhs.false.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %xsk_pool_if_up

if.end8.i:                                        ; preds = %lor.lhs.false.i64
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %89 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %back.i, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  %umem1.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 5
  %93 = ptrtoint ptr %umem1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %umem1.i.i, align 64
  %pgs.i.i = getelementptr inbounds %struct.xdp_umem, ptr %94, i32 0, i32 10
  %95 = ptrtoint ptr %pgs.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pgs.i.i, align 4
  %npgs.i.i = getelementptr inbounds %struct.xdp_umem, ptr %94, i32 0, i32 5
  %97 = ptrtoint ptr %npgs.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %npgs.i.i, align 4
  %call.i.i = call i32 @xp_dma_map(ptr noundef nonnull %pool, ptr noundef %dev.i, i32 noundef 34, ptr noundef %96, i32 noundef %98) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i65 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i65, label %if.end10.i, label %if.end8.i.xsk_pool_if_up_crit_edge

if.end8.i.xsk_pool_if_up_crit_edge:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xsk_pool_if_up

if.end10.i:                                       ; preds = %if.end8.i
  %af_xdp_zc_qps.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 59
  %99 = ptrtoint ptr %af_xdp_zc_qps.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %af_xdp_zc_qps.i, align 4
  call void @_set_bit(i32 noundef %conv.i61, ptr noundef %100) #10
  br i1 %80, label %if.end10.i.if.then14_crit_edge, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.i.if.then14_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

cond.false:                                       ; preds = %if.end9
  %101 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %vsi, align 128
  %call.i66 = call ptr @xsk_get_pool_from_qid(ptr noundef %102, i16 noundef zeroext %qid) #10
  %tobool.not.i67 = icmp eq ptr %call.i66, null
  br i1 %tobool.not.i67, label %cond.false.xsk_pool_if_up_crit_edge, label %if.end.i70

cond.false.xsk_pool_if_up_crit_edge:              ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %xsk_pool_if_up

if.end.i70:                                       ; preds = %cond.false
  %conv.i68 = zext i16 %qid to i32
  %af_xdp_zc_qps.i69 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 59
  %103 = ptrtoint ptr %af_xdp_zc_qps.i69 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %af_xdp_zc_qps.i69, align 4
  call void @_clear_bit(i32 noundef %conv.i68, ptr noundef %104) #10
  call void @xp_dma_unmap(ptr noundef nonnull %call.i66, i32 noundef 34) #10
  br i1 %80, label %if.end.i70.if.then14_crit_edge, label %if.end.i70.cleanup_crit_edge

if.end.i70.cleanup_crit_edge:                     ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i70.if.then14_crit_edge:                   ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

xsk_pool_if_up:                                   ; preds = %cond.false.xsk_pool_if_up_crit_edge, %if.end8.i.xsk_pool_if_up_crit_edge, %lor.lhs.false.i64.xsk_pool_if_up_crit_edge, %if.end.i62.xsk_pool_if_up_crit_edge, %cond.true.xsk_pool_if_up_crit_edge
  %pool_failure.0 = phi i32 [ -22, %cond.true.xsk_pool_if_up_crit_edge ], [ -22, %lor.lhs.false.i64.xsk_pool_if_up_crit_edge ], [ -22, %if.end.i62.xsk_pool_if_up_crit_edge ], [ %call.i.i, %if.end8.i.xsk_pool_if_up_crit_edge ], [ -22, %cond.false.xsk_pool_if_up_crit_edge ]
  br i1 %80, label %xsk_pool_if_up.if.then14_crit_edge, label %xsk_pool_if_up.if.then26_crit_edge

xsk_pool_if_up.if.then26_crit_edge:               ; preds = %xsk_pool_if_up
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

xsk_pool_if_up.if.then14_crit_edge:               ; preds = %xsk_pool_if_up
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = zext i16 %qid to i32
  br label %if.then14

if.then14:                                        ; preds = %xsk_pool_if_up.if.then14_crit_edge, %if.end.i70.if.then14_crit_edge, %if.end10.i.if.then14_crit_edge, %if.then7, %if.then7.thread
  %conv.i72.pre-phi = phi i32 [ %.pre, %xsk_pool_if_up.if.then14_crit_edge ], [ %conv.i, %if.then7.thread ], [ %conv.i68, %if.end.i70.if.then14_crit_edge ], [ %conv.i61, %if.end10.i.if.then14_crit_edge ], [ %conv.i, %if.then7 ]
  %pool_failure.0105 = phi i32 [ %pool_failure.0, %xsk_pool_if_up.if.then14_crit_edge ], [ 0, %if.then7.thread ], [ 0, %if.end.i70.if.then14_crit_edge ], [ 0, %if.end10.i.if.then14_crit_edge ], [ 0, %if.then7 ]
  %num_rxq.i73 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 50
  %105 = ptrtoint ptr %num_rxq.i73 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %num_rxq.i73, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %106, i16 %qid)
  %cmp.not.i74 = icmp ugt i16 %106, %qid
  br i1 %cmp.not.i74, label %lor.lhs.false.i77, label %if.then14.if.then20_crit_edge

if.then14.if.then20_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false.i77:                                ; preds = %if.then14
  %num_txq.i75 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 48
  %107 = ptrtoint ptr %num_txq.i75 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %num_txq.i75, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %108, i16 %qid)
  %cmp5.not.i76 = icmp ugt i16 %108, %qid
  br i1 %cmp5.not.i76, label %kzalloc.exit.i, label %lor.lhs.false.i77.if.then20_crit_edge

lor.lhs.false.i77.if.then20_crit_edge:            ; preds = %lor.lhs.false.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

kzalloc.exit.i:                                   ; preds = %lor.lhs.false.i77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %109 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %109, i32 noundef 3520, i32 noundef 56) #14
  %tobool.not.i78 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i78, label %kzalloc.exit.i.if.then20_crit_edge, label %if.end11.i

kzalloc.exit.i.if.then20_crit_edge:               ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end11.i:                                       ; preds = %kzalloc.exit.i
  %num_txqs.i = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %call7.i.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %num_txqs.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %num_txqs.i, align 4
  %tx_rings.i79 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 5
  %111 = ptrtoint ptr %tx_rings.i79 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tx_rings.i79, align 4
  %arrayidx.i80 = getelementptr ptr, ptr %112, i32 %conv.i72.pre-phi
  %113 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i80, align 4
  %rx_rings.i81 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 4
  %115 = ptrtoint ptr %rx_rings.i81 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rx_rings.i81, align 16
  %arrayidx13.i = getelementptr ptr, ptr %116, i32 %conv.i72.pre-phi
  %117 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx13.i, align 4
  %q_vector14.i = getelementptr inbounds %struct.ice_rx_ring, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %q_vector14.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %q_vector14.i, align 4
  %call15.i82 = call i32 @ice_vsi_cfg_txq(ptr noundef %vsi, ptr noundef %114, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i82)
  %tobool16.not.i83 = icmp eq i32 %call15.i82, 0
  br i1 %tobool16.not.i83, label %if.end18.i86, label %if.end11.i.ice_qp_ena.exit_crit_edge

if.end11.i.ice_qp_ena.exit_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_qp_ena.exit

if.end18.i86:                                     ; preds = %if.end11.i
  %xdp_prog.i.i84 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 57
  %121 = ptrtoint ptr %xdp_prog.i.i84 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %xdp_prog.i.i84, align 4
  %tobool.i.not.i85 = icmp eq ptr %122, null
  br i1 %tobool.i.not.i85, label %if.end18.i86.if.end30.i_crit_edge, label %if.then20.i89

if.end18.i86.if.end30.i_crit_edge:                ; preds = %if.end18.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then20.i89:                                    ; preds = %if.end18.i86
  %xdp_rings.i87 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 58
  %123 = ptrtoint ptr %xdp_rings.i87 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %xdp_rings.i87, align 8
  %arrayidx22.i88 = getelementptr ptr, ptr %124, i32 %conv.i72.pre-phi
  %125 = ptrtoint ptr %arrayidx22.i88 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx22.i88, align 4
  %127 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 56)
  %128 = ptrtoint ptr %num_txqs.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %num_txqs.i, align 4
  %call25.i = call i32 @ice_vsi_cfg_txq(ptr noundef %vsi, ptr noundef %126, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %cleanup.thread.i, label %if.then20.i89.ice_qp_ena.exit_crit_edge

if.then20.i89.ice_qp_ena.exit_crit_edge:          ; preds = %if.then20.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_qp_ena.exit

cleanup.thread.i:                                 ; preds = %if.then20.i89
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %126, i32 0, i32 27
  %129 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %flags.i.i, align 4
  %131 = or i8 %130, 1
  store i8 %131, ptr %flags.i.i, align 4
  %call29.i = call fastcc ptr @ice_tx_xsk_pool(ptr noundef %126) #10
  %xsk_pool.i = getelementptr inbounds %struct.ice_tx_ring, ptr %126, i32 0, i32 9
  %132 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call29.i, ptr %xsk_pool.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %cleanup.thread.i, %if.end18.i86.if.end30.i_crit_edge
  %call31.i = call i32 @ice_vsi_cfg_rxq(ptr noundef %118) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.ice_qp_ena.exit_crit_edge

if.end30.i.ice_qp_ena.exit_crit_edge:             ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_qp_ena.exit

if.end34.i:                                       ; preds = %if.end30.i
  call fastcc void @ice_qvec_cfg_msix(ptr noundef %vsi, ptr noundef %120) #10
  %call35.i = call i32 @ice_vsi_ctrl_one_rx_ring(ptr noundef %vsi, i1 noundef zeroext true, i16 noundef zeroext %qid, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end34.i.ice_qp_ena.exit_crit_edge

if.end34.i.ice_qp_ena.exit_crit_edge:             ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_qp_ena.exit

if.end38.i:                                       ; preds = %if.end34.i
  %state.i90 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 9
  call void @_clear_bit(i32 noundef 21, ptr noundef %state.i90) #10
  %133 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %vsi, align 128
  %tobool.not.i.i91 = icmp eq ptr %134, null
  %tobool1.not.i.i = icmp eq ptr %120, null
  %or.cond.i.i92 = or i1 %tobool1.not.i.i, %tobool.not.i.i91
  br i1 %or.cond.i.i92, label %if.end38.i.ice_qvec_toggle_napi.exit.i97_crit_edge, label %if.end.i.i94

if.end38.i.ice_qvec_toggle_napi.exit.i97_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_qvec_toggle_napi.exit.i97

if.end.i.i94:                                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  %napi.i.i93 = getelementptr inbounds %struct.ice_q_vector, ptr %120, i32 0, i32 7
  call void @napi_enable(ptr noundef %napi.i.i93) #10
  br label %ice_qvec_toggle_napi.exit.i97

ice_qvec_toggle_napi.exit.i97:                    ; preds = %if.end.i.i94, %if.end38.i.ice_qvec_toggle_napi.exit.i97_crit_edge
  call fastcc void @ice_qvec_ena_irq(ptr noundef %vsi, ptr noundef %120) #10
  %135 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %vsi, align 128
  %_tx.i.i95 = getelementptr inbounds %struct.net_device, ptr %136, i32 0, i32 103
  %137 = ptrtoint ptr %_tx.i.i95 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %_tx.i.i95, align 128
  %state.i.i96 = getelementptr %struct.netdev_queue, ptr %138, i32 %conv.i72.pre-phi, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i96) #10
  br label %ice_qp_ena.exit

ice_qp_ena.exit:                                  ; preds = %ice_qvec_toggle_napi.exit.i97, %if.end34.i.ice_qp_ena.exit_crit_edge, %if.end30.i.ice_qp_ena.exit_crit_edge, %if.then20.i89.ice_qp_ena.exit_crit_edge, %if.end11.i.ice_qp_ena.exit_crit_edge
  %err.0.i = phi i32 [ %call15.i82, %if.end11.i.ice_qp_ena.exit_crit_edge ], [ %call31.i, %if.end30.i.ice_qp_ena.exit_crit_edge ], [ %call35.i, %if.end34.i.ice_qp_ena.exit_crit_edge ], [ 0, %ice_qvec_toggle_napi.exit.i97 ], [ %call25.i, %if.then20.i89.ice_qp_ena.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool16.not = icmp eq i32 %err.0.i, 0
  %tobool16.not.not = xor i1 %tobool16.not, true
  %brmerge = or i1 %tobool.not, %tobool16.not.not
  br i1 %brmerge, label %if.else, label %if.then18

if.then18:                                        ; preds = %ice_qp_ena.exit
  %xdp_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 58
  %139 = ptrtoint ptr %xdp_rings to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %xdp_rings, align 8
  %arrayidx = getelementptr ptr, ptr %140, i32 %conv.i72.pre-phi
  %141 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx, align 4
  %q_vector = getelementptr inbounds %struct.ice_tx_ring, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %q_vector, align 4
  %napi = getelementptr inbounds %struct.ice_q_vector, ptr %144, i32 0, i32 7
  %call.i99 = call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call.i99, label %if.then.i, label %if.then18.if.end24_crit_edge

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  call void @__napi_schedule(ptr noundef %napi) #10
  br label %if.end24

if.else:                                          ; preds = %ice_qp_ena.exit
  br i1 %tobool16.not, label %if.else.if.end24_crit_edge, label %if.else.if.then20_crit_edge

if.else.if.then20_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %if.else.if.then20_crit_edge, %kzalloc.exit.i.if.then20_crit_edge, %lor.lhs.false.i77.if.then20_crit_edge, %if.then14.if.then20_crit_edge
  %retval.0.i98110114 = phi i32 [ %err.0.i, %if.else.if.then20_crit_edge ], [ -12, %kzalloc.exit.i.if.then20_crit_edge ], [ -22, %if.then14.if.then20_crit_edge ], [ -22, %lor.lhs.false.i77.if.then20_crit_edge ]
  %145 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %vsi, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %146, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i98110114) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.else.if.end24_crit_edge, %if.then.i, %if.then18.if.end24_crit_edge
  %ret.2 = phi i32 [ %retval.0.i98110114, %if.then20 ], [ 0, %if.else.if.end24_crit_edge ], [ 0, %if.then18.if.end24_crit_edge ], [ 0, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pool_failure.0105)
  %tobool25.not = icmp eq i32 %pool_failure.0105, 0
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.end24.if.then26_crit_edge

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %if.end24.if.then26_crit_edge, %xsk_pool_if_up.if.then26_crit_edge
  %pool_failure.0104122 = phi i32 [ %pool_failure.0105, %if.end24.if.then26_crit_edge ], [ %pool_failure.0, %xsk_pool_if_up.if.then26_crit_edge ]
  %147 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %vsi, align 128
  %cond29 = select i1 %tobool.not, ptr @.str.4, ptr @.str.3
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %148, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond29, i32 noundef %pool_failure.0104122) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end24.cleanup_crit_edge, %if.end.i70.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %pool_failure.0104122, %if.then26 ], [ %ret.2, %if.end24.cleanup_crit_edge ], [ 0, %if.end.i70.cleanup_crit_edge ], [ 0, %if.end10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_alloc_rx_bufs_zc(ptr noundef %rx_ring, i16 noundef zeroext %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 13
  %0 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use, align 2
  %desc = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %idxprom = zext i16 %1 to i32
  %4 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %idxprom
  %count1 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %7 = ptrtoint ptr %count1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count1, align 2
  %sub = sub i16 %8, %1
  %conv5 = zext i16 %count to i32
  %9 = tail call i16 @llvm.umin.i16(i16 %sub, i16 %count)
  %10 = zext i16 %9 to i32
  %xsk_pool = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 25
  %11 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xsk_pool, align 4
  %call.i = tail call i32 @xp_alloc_batch(ptr noundef %12, ptr noundef %arrayidx.i, i32 noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %arrayidx = getelementptr %union.ice_32b_rx_flex_desc, ptr %3, i32 %idxprom
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %i.058 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %call.i, %while.body.preheader ]
  %xdp.057 = phi ptr [ %incdec.ptr14, %while.body.while.body_crit_edge ], [ %arrayidx.i, %while.body.preheader ]
  %rx_desc.056 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %arrayidx, %while.body.preheader ]
  %dec = add i32 %i.058, -1
  %13 = ptrtoint ptr %xdp.057 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xdp.057, align 4
  %dma.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma.i.i, align 4
  %conv13 = zext i32 %16 to i64
  %17 = tail call i64 @llvm.bswap.i64(i64 %conv13)
  %18 = ptrtoint ptr %rx_desc.056 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %rx_desc.056, align 8
  %status_error0 = getelementptr inbounds %struct.anon.202, ptr %rx_desc.056, i32 0, i32 5
  %19 = ptrtoint ptr %status_error0 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %status_error0, align 8
  %incdec.ptr = getelementptr %union.ice_32b_rx_flex_desc, ptr %rx_desc.056, i32 1
  %incdec.ptr14 = getelementptr ptr, ptr %xdp.057, i32 1
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = trunc i32 %call.i to i16
  %conv16 = add i16 %1, %20
  %21 = ptrtoint ptr %count1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %count1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv16, i16 %22)
  %cmp20 = icmp eq i16 %conv16, %22
  %spec.store.select = select i1 %cmp20, i16 0, i16 %conv16
  tail call void @ice_release_rx_desc(ptr noundef %rx_ring, i16 noundef zeroext %spec.store.select) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv5)
  %cmp25 = icmp eq i32 %call.i, %conv5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp25, %while.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_release_rx_desc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_clean_rx_irq_zc(ptr noundef %rx_ring, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp_prog1 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 23
  %0 = ptrtoint ptr %xdp_prog1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xdp_prog1, align 4
  %xdp_ring2 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 24
  %2 = ptrtoint ptr %xdp_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp_ring2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp192.not = icmp eq i32 %budget, 0
  br i1 %cmp192.not, label %entry.while.end_crit_edge, label %while.body.lr.ph, !prof !39

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %desc = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 1
  %next_to_clean = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 14
  %4 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 7
  %xsk_pool = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 25
  %count.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %q_vector.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %xdp_xmit.0197 = phi i32 [ 0, %while.body.lr.ph ], [ %xdp_xmit.2, %cleanup.while.body_crit_edge ]
  %total_rx_packets.0195 = phi i32 [ 0, %while.body.lr.ph ], [ %total_rx_packets.1, %cleanup.while.body_crit_edge ]
  %total_rx_bytes.0193 = phi i32 [ 0, %while.body.lr.ph ], [ %total_rx_bytes.1, %cleanup.while.body_crit_edge ]
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc, align 4
  %7 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %next_to_clean, align 8
  %idxprom = zext i16 %8 to i32
  %arrayidx = getelementptr %union.ice_32b_rx_flex_desc, ptr %6, i32 %idxprom
  %status_error0.i = getelementptr inbounds %struct.anon.202, ptr %arrayidx, i32 0, i32 5
  %9 = ptrtoint ptr %status_error0.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status_error0.i, align 8
  %and3.i = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3.i)
  %tobool.i.not = icmp eq i16 %and3.i, 0
  br i1 %tobool.i.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !40
  %11 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %next_to_clean, align 8
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %conv
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %pkt_len = getelementptr inbounds %struct.anon.202, ptr %arrayidx, i32 0, i32 3
  %17 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pkt_len, align 4
  %19 = and i16 %18, -193
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %and = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool7.not = icmp eq i16 %19, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = call ptr @memset(ptr %16, i32 0, i32 16)
  br label %construct_skb

if.end9:                                          ; preds = %if.end
  %data_hard_start.i = getelementptr inbounds %struct.xdp_buff, ptr %16, i32 0, i32 3
  %22 = ptrtoint ptr %data_hard_start.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data_hard_start.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 256
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %16, align 4
  %data_meta.i = getelementptr inbounds %struct.xdp_buff, ptr %16, i32 0, i32 2
  %25 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %data_meta.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %and
  %data_end.i = getelementptr inbounds %struct.xdp_buff, ptr %16, i32 0, i32 1
  %26 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr3.i, ptr %data_end.i, align 4
  %27 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xsk_pool, align 4
  %dma_need_sync.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %28, i32 0, i32 25
  %29 = ptrtoint ptr %dma_need_sync.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dma_need_sync.i, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end9.xsk_buff_dma_sync_for_cpu.exit_crit_edge, label %if.end.i

if.end9.xsk_buff_dma_sync_for_cpu.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %xsk_buff_dma_sync_for_cpu.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xp_dma_sync_for_cpu_slow(ptr noundef %16) #10
  br label %xsk_buff_dma_sync_for_cpu.exit

xsk_buff_dma_sync_for_cpu.exit:                   ; preds = %if.end.i, %if.end9.xsk_buff_dma_sync_for_cpu.exit_crit_edge
  %call10 = tail call fastcc i32 @ice_run_xdp_zc(ptr noundef %rx_ring, ptr noundef %16, ptr noundef %1, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %xsk_buff_dma_sync_for_cpu.exit.construct_skb_crit_edge, label %if.then12

xsk_buff_dma_sync_for_cpu.exit.construct_skb_crit_edge: ; preds = %xsk_buff_dma_sync_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %construct_skb

if.then12:                                        ; preds = %xsk_buff_dma_sync_for_cpu.exit
  %and13 = and i32 %call10, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %call10, %xdp_xmit.0197
  br label %if.end16

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xp_free(ptr noundef %16) #10
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %xdp_xmit.1 = phi i32 [ %or, %if.then15 ], [ %xdp_xmit.0197, %if.else ]
  %add = add i32 %total_rx_bytes.0193, %and
  %inc = add nuw i32 %total_rx_packets.0195, 1
  %31 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %next_to_clean, align 8
  %conv.i = zext i16 %32 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %count.i, align 2
  %conv1.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv1.i)
  %cmp.i = icmp ult i32 %add.i, %conv1.i
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 0
  %conv3.i = trunc i32 %spec.select.i to i16
  %35 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv3.i, ptr %next_to_clean, align 8
  %36 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc, align 4
  %arrayidx.i147 = getelementptr %union.ice_32b_rx_flex_desc, ptr %37, i32 %spec.select.i
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx.i147) #10, !srcloc !42
  br label %cleanup

construct_skb:                                    ; preds = %xsk_buff_dma_sync_for_cpu.exit.construct_skb_crit_edge, %if.then8
  %data_end.i148 = getelementptr inbounds %struct.xdp_buff, ptr %16, i32 0, i32 1
  %38 = ptrtoint ptr %data_end.i148 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data_end.i148, align 4
  %data_hard_start.i149 = getelementptr inbounds %struct.xdp_buff, ptr %16, i32 0, i32 3
  %40 = ptrtoint ptr %data_hard_start.i149 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data_hard_start.i149, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %42 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %16, align 4
  %data_meta.i150 = getelementptr inbounds %struct.xdp_buff, ptr %16, i32 0, i32 2
  %44 = ptrtoint ptr %data_meta.i150 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data_meta.i150, align 4
  %sub.ptr.lhs.cast1.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast2.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub3.i = sub i32 %sub.ptr.lhs.cast1.i, %sub.ptr.rhs.cast2.i
  %46 = ptrtoint ptr %q_vector.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %q_vector.i, align 4
  %napi.i = getelementptr inbounds %struct.ice_q_vector, ptr %47, i32 0, i32 7
  %call.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi.i, i32 noundef %sub.ptr.sub.i, i32 noundef 10784) #10
  %tobool.not.i151 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i151, label %if.then20, label %if.end.i152, !prof !39

if.end.i152:                                      ; preds = %construct_skb
  %48 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %16, align 4
  %50 = ptrtoint ptr %data_hard_start.i149 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data_hard_start.i149, align 4
  %sub.ptr.lhs.cast14.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast15.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub16.i = sub i32 %sub.ptr.lhs.cast14.i, %sub.ptr.rhs.cast15.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %sub.ptr.sub16.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %54 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %55, i32 %sub.ptr.sub16.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %56 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !43

do.body3.i.i:                                     ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !44
  unreachable

__skb_put.exit.i:                                 ; preds = %if.end.i152
  %sub.ptr.sub8.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.lhs.cast1.i
  %add.ptr.i40.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %sub.ptr.sub8.i
  %58 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i40.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %59 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %60, %sub.ptr.sub8.i
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %61 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %16, align 4
  %63 = call ptr @memcpy(ptr %add.ptr1.i.i, ptr %62, i32 %sub.ptr.sub8.i)
  %tobool19.not.i = icmp eq ptr %43, %45
  br i1 %tobool19.not.i, label %__skb_put.exit.i.if.end22_crit_edge, label %if.then20.i

__skb_put.exit.i.if.end22_crit_edge:              ; preds = %__skb_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then20.i:                                      ; preds = %__skb_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i153 = trunc i32 %sub.ptr.sub3.i to i8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %64 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end.i.i.i, align 4
  %meta_len1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %meta_len1.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv.i153, ptr %meta_len1.i.i, align 1
  br label %if.end22

if.then20:                                        ; preds = %construct_skb
  call void @__sanitizer_cov_trace_pc() #12
  %alloc_buf_failed = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 18, i32 2
  %67 = ptrtoint ptr %alloc_buf_failed to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %alloc_buf_failed, align 16
  %inc21 = add i64 %68, 1
  store i64 %inc21, ptr %alloc_buf_failed, align 16
  br label %while.end

if.end22:                                         ; preds = %if.then20.i, %__skb_put.exit.i.if.end22_crit_edge
  tail call void @xp_free(ptr noundef %16) #10
  %69 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %next_to_clean, align 8
  %conv.i155 = zext i16 %70 to i32
  %add.i156 = add nuw nsw i32 %conv.i155, 1
  %71 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %count.i, align 2
  %conv1.i158 = zext i16 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i156, i32 %conv1.i158)
  %cmp.i159 = icmp ult i32 %add.i156, %conv1.i158
  %spec.select.i160 = select i1 %cmp.i159, i32 %add.i156, i32 0
  %conv3.i161 = trunc i32 %spec.select.i160 to i16
  %73 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv3.i161, ptr %next_to_clean, align 8
  %74 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %desc, align 4
  %arrayidx.i163 = getelementptr %union.ice_32b_rx_flex_desc, ptr %75, i32 %spec.select.i160
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx.i163) #10, !srcloc !42
  %76 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %77)
  %cmp.i.i.i = icmp ult i32 %77, 60
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end22.if.end26_crit_edge, !prof !39

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then.i.i.i:                                    ; preds = %if.end22
  %sub.i.i.i = sub nuw nsw i32 60, %77
  %call.i.i.i = tail call i32 @__skb_pad(ptr noundef nonnull %call.i, i32 noundef %sub.i.i.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i.cleanup_crit_edge

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %78 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i.not.i.i.i.i = icmp eq i32 %79, 0
  br i1 %tobool.i.not.i.i.i.i, label %__skb_put.exit.i.i.i, label %do.body3.i.i.i.i, !prof !43

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !44
  unreachable

__skb_put.exit.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %81, i32 %sub.i.i.i
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i, align 8
  %82 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len9.i.i, align 4
  %add.i.i.i.i = add i32 %83, %sub.i.i.i
  store i32 %add.i.i.i.i, ptr %len9.i.i, align 4
  br label %if.end26

if.end26:                                         ; preds = %__skb_put.exit.i.i.i, %if.end22.if.end26_crit_edge
  %84 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len9.i.i, align 4
  %add27 = add i32 %85, %total_rx_bytes.0193
  %inc28 = add nuw i32 %total_rx_packets.0195, 1
  %86 = ptrtoint ptr %status_error0.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %status_error0.i, align 8
  %and3.i165 = and i16 %87, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3.i165)
  %tobool.i166.not = icmp eq i16 %and3.i165, 0
  br i1 %tobool.i166.not, label %if.end26.if.end31_crit_edge, label %if.then30

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %l2tag1 = getelementptr inbounds %struct.anon.202, ptr %arrayidx, i32 0, i32 6
  %88 = ptrtoint ptr %l2tag1 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %l2tag1, align 2
  %90 = tail call i16 @llvm.bswap.i16(i16 %89)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26.if.end31_crit_edge
  %vlan_tag.0 = phi i16 [ %90, %if.then30 ], [ 0, %if.end26.if.end31_crit_edge ]
  %ptype_flex_flags0 = getelementptr inbounds %struct.anon.202, ptr %arrayidx, i32 0, i32 2
  %91 = ptrtoint ptr %ptype_flex_flags0 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %ptype_flex_flags0, align 2
  %93 = and i16 %92, -253
  %94 = tail call i16 @llvm.bswap.i16(i16 %93)
  tail call void @ice_process_skb_fields(ptr noundef %rx_ring, ptr noundef %arrayidx, ptr noundef nonnull %call.i, i16 noundef zeroext %94) #10
  tail call void @ice_receive_skb(ptr noundef %rx_ring, ptr noundef nonnull %call.i, i16 noundef zeroext %vlan_tag.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then.i.i.i.cleanup_crit_edge, %if.end16
  %total_rx_bytes.1 = phi i32 [ %add, %if.end16 ], [ %add27, %if.end31 ], [ %total_rx_bytes.0193, %if.then.i.i.i.cleanup_crit_edge ]
  %total_rx_packets.1 = phi i32 [ %inc, %if.end16 ], [ %inc28, %if.end31 ], [ %total_rx_packets.0195, %if.then.i.i.i.cleanup_crit_edge ]
  %xdp_xmit.2 = phi i32 [ %xdp_xmit.1, %if.end16 ], [ %xdp_xmit.0197, %if.end31 ], [ %xdp_xmit.0197, %if.then.i.i.i.cleanup_crit_edge ]
  %cmp = icmp ult i32 %total_rx_packets.1, %budget
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge, !prof !43

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then20, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %total_rx_bytes.0191 = phi i32 [ %total_rx_bytes.0193, %if.then20 ], [ 0, %entry.while.end_crit_edge ], [ %total_rx_bytes.1, %cleanup.while.end_crit_edge ], [ %total_rx_bytes.0193, %while.body.while.end_crit_edge ]
  %total_rx_packets.0186 = phi i32 [ %total_rx_packets.0195, %if.then20 ], [ 0, %entry.while.end_crit_edge ], [ %total_rx_packets.1, %cleanup.while.end_crit_edge ], [ %total_rx_packets.0195, %while.body.while.end_crit_edge ]
  %xdp_xmit.0182 = phi i32 [ %xdp_xmit.0197, %if.then20 ], [ 0, %entry.while.end_crit_edge ], [ %xdp_xmit.2, %cleanup.while.end_crit_edge ], [ %xdp_xmit.0197, %while.body.while.end_crit_edge ]
  %next_to_clean42 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 14
  %95 = ptrtoint ptr %next_to_clean42 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %next_to_clean42, align 8
  %next_to_use = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 13
  %97 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %next_to_use, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %96, i16 %98)
  %cmp45 = icmp ugt i16 %96, %98
  br i1 %cmp45, label %while.end.cond.end_crit_edge, label %cond.false

while.end.cond.end_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %count = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %99 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %count, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %while.end.cond.end_crit_edge
  %cond = phi i16 [ %100, %cond.false ], [ 0, %while.end.cond.end_crit_edge ]
  %101 = xor i16 %98, -1
  %add50 = add i16 %96, %101
  %sub53 = add i16 %add50, %cond
  %desc.i167 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 1
  %102 = ptrtoint ptr %desc.i167 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %desc.i167, align 4
  %idxprom.i = zext i16 %98 to i32
  %104 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 7
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %106, i32 %idxprom.i
  %count1.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %107 = ptrtoint ptr %count1.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %count1.i, align 2
  %sub.i = sub i16 %108, %98
  %conv5.i = zext i16 %sub53 to i32
  %109 = tail call i16 @llvm.umin.i16(i16 %sub.i, i16 %sub53) #10
  %110 = zext i16 %109 to i32
  %xsk_pool.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 25
  %111 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %xsk_pool.i, align 4
  %call.i.i = tail call i32 @xp_alloc_batch(ptr noundef %112, ptr noundef %arrayidx.i.i, i32 noundef %110) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i168 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i168, label %cond.end.ice_alloc_rx_bufs_zc.exit_crit_edge, label %while.body.preheader.i

cond.end.ice_alloc_rx_bufs_zc.exit_crit_edge:     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_alloc_rx_bufs_zc.exit

while.body.preheader.i:                           ; preds = %cond.end
  %arrayidx.i169 = getelementptr %union.ice_32b_rx_flex_desc, ptr %103, i32 %idxprom.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %i.058.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %call.i.i, %while.body.preheader.i ]
  %xdp.057.i = phi ptr [ %incdec.ptr14.i, %while.body.i.while.body.i_crit_edge ], [ %arrayidx.i.i, %while.body.preheader.i ]
  %rx_desc.056.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %arrayidx.i169, %while.body.preheader.i ]
  %dec.i = add i32 %i.058.i, -1
  %113 = ptrtoint ptr %xdp.057.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %xdp.057.i, align 4
  %dma.i.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dma.i.i.i, align 4
  %conv13.i = zext i32 %116 to i64
  %117 = tail call i64 @llvm.bswap.i64(i64 %conv13.i) #10
  %118 = ptrtoint ptr %rx_desc.056.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %rx_desc.056.i, align 8
  %status_error0.i170 = getelementptr inbounds %struct.anon.202, ptr %rx_desc.056.i, i32 0, i32 5
  %119 = ptrtoint ptr %status_error0.i170 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %status_error0.i170, align 8
  %incdec.ptr.i = getelementptr %union.ice_32b_rx_flex_desc, ptr %rx_desc.056.i, i32 1
  %incdec.ptr14.i = getelementptr ptr, ptr %xdp.057.i, i32 1
  %tobool11.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool11.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %120 = trunc i32 %call.i.i to i16
  %conv16.i = add i16 %98, %120
  %121 = ptrtoint ptr %count1.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %count1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv16.i, i16 %122)
  %cmp20.i = icmp eq i16 %conv16.i, %122
  %spec.store.select.i = select i1 %cmp20.i, i16 0, i16 %conv16.i
  tail call void @ice_release_rx_desc(ptr noundef %rx_ring, i16 noundef zeroext %spec.store.select.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %conv5.i)
  %cmp25.i = icmp eq i32 %call.i.i, %conv5.i
  br label %ice_alloc_rx_bufs_zc.exit

ice_alloc_rx_bufs_zc.exit:                        ; preds = %while.end.i, %cond.end.ice_alloc_rx_bufs_zc.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp25.i, %while.end.i ], [ false, %cond.end.ice_alloc_rx_bufs_zc.exit_crit_edge ]
  tail call void @ice_finalize_xdp_rx(ptr noundef %3, i32 noundef %xdp_xmit.0182) #10
  %conv58 = zext i32 %total_rx_packets.0186 to i64
  %conv59 = zext i32 %total_rx_bytes.0191 to i64
  tail call void @ice_update_rx_ring_stats(ptr noundef %rx_ring, i64 noundef %conv58, i64 noundef %conv59) #10
  %123 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %xsk_pool.i, align 4
  %call61 = tail call zeroext i1 @xsk_uses_need_wakeup(ptr noundef %124) #10
  br i1 %call61, label %if.then62, label %if.end76

if.then62:                                        ; preds = %ice_alloc_rx_bufs_zc.exit
  br i1 %retval.0.i, label %lor.lhs.false, label %if.then62.if.then71_crit_edge

if.then62.if.then71_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

lor.lhs.false:                                    ; preds = %if.then62
  %125 = ptrtoint ptr %next_to_clean42 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %next_to_clean42, align 8
  %127 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %next_to_use, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %126, i16 %128)
  %cmp69 = icmp eq i16 %126, %128
  br i1 %cmp69, label %lor.lhs.false.if.then71_crit_edge, label %if.else73

lor.lhs.false.if.then71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

if.then71:                                        ; preds = %lor.lhs.false.if.then71_crit_edge, %if.then62.if.then71_crit_edge
  %129 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %xsk_pool.i, align 4
  tail call void @xsk_set_rx_need_wakeup(ptr noundef %130) #10
  br label %cleanup83

if.else73:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %xsk_pool.i, align 4
  tail call void @xsk_clear_rx_need_wakeup(ptr noundef %132) #10
  br label %cleanup83

if.end76:                                         ; preds = %ice_alloc_rx_bufs_zc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %total_rx_packets.2.budget = select i1 %retval.0.i, i32 %total_rx_packets.0186, i32 %budget
  br label %cleanup83

cleanup83:                                        ; preds = %if.end76, %if.else73, %if.then71
  %retval.0 = phi i32 [ %total_rx_packets.2.budget, %if.end76 ], [ %total_rx_packets.0186, %if.else73 ], [ %total_rx_packets.0186, %if.then71 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_run_xdp_zc(ptr nocapture noundef readonly %rx_ring, ptr noundef %xdp, ptr noundef %xdp_prog, ptr noundef %xdp_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__cant_migrate(ptr noundef nonnull @.str.5, i32 noundef 613) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@ice_run_xdp_zc, %if.then.i.i)) #10
          to label %if.else.i.i [label %if.then.i.i], !srcloc !45

if.then.i.i:                                      ; preds = %entry
  %call3.i.i = tail call i64 @sched_clock() #10
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %xdp_prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %xdp_prog, i32 0, i32 9
  %0 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi.i.i, ptr noundef %1) #10
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %xdp_prog, i32 0, i32 7
  %2 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats9.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, %4
  %11 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %11, i32 0, i32 3
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !46
  %and.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %14 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  %18 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %23, ptrtoint (ptr @lockdep_recursion to i32)
  %24 = inttoptr i32 %add.i.i.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  %27 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i7.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool20.not.i.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %31 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %35 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i9.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !49
  %39 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %42, ptrtoint (ptr @hardirqs_enabled to i32)
  %43 = inttoptr i32 %add47.i.i.i.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !50
  %46 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i12.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool54.not.i.i.i.i = icmp eq i32 %45, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %50 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %11, i32 0, i32 3, i32 0, i32 1
  %52 = tail call ptr @llvm.returnaddress(i32 0) #10
  %53 = ptrtoint ptr %52 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %53) #10
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %11, align 8
  %inc.i.i.i = add i64 %55, 1
  store i64 %inc.i.i.i, ptr %11, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %11, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #10
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %56 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %57
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %53) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !52
  %58 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !53
  %and.i.i.i3.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !39

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #10, !srcloc !54
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %xdp_prog, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %xdp_prog, i32 0, i32 9
  %61 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi15.i.i, ptr noundef %62) #10
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@ice_run_xdp_zc, %l_yes.i.i)) #10
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !45

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %rxq.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %63 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rxq.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %68, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.sw.bb_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.sw.bb_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 15
  %69 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %70, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.sw.bb_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.sw.bb_crit_edge:       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @xdp_master_redirect(ptr noundef %xdp) #10
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %71 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %act.0.i, label %sw.default [
    i32 4, label %if.then
    i32 2, label %bpf_prog_run_xdp.exit.cleanup_crit_edge
    i32 3, label %bpf_prog_run_xdp.exit.sw.bb_crit_edge
    i32 0, label %bpf_prog_run_xdp.exit.out_failure_crit_edge
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb13_crit_edge
  ], !prof !55

bpf_prog_run_xdp.exit.sw.bb13_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

bpf_prog_run_xdp.exit.out_failure_crit_edge:      ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failure

bpf_prog_run_xdp.exit.sw.bb_crit_edge:            ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

bpf_prog_run_xdp.exit.cleanup_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %bpf_prog_run_xdp.exit
  %netdev = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 3
  %72 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %netdev, align 4
  %call2 = tail call i32 @xdp_do_redirect(ptr noundef %73, ptr noundef %xdp, ptr noundef %xdp_prog) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.out_failure_crit_edge

if.then.out_failure_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failure

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %bpf_prog_run_xdp.exit.sw.bb_crit_edge, %netif_is_bond_slave.exit.i.sw.bb_crit_edge, %land.lhs.true.i.sw.bb_crit_edge
  %call6 = tail call i32 @ice_xmit_xdp_buff(ptr noundef %xdp, ptr noundef %xdp_ring) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 1
  br i1 %cmp7, label %sw.bb.out_failure_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.out_failure_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failure

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %netdev10 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 3
  %74 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %netdev10, align 4
  tail call void @bpf_warn_invalid_xdp_action(ptr noundef %75, ptr noundef %xdp_prog, i32 noundef %act.0.i) #10
  br label %out_failure

out_failure:                                      ; preds = %sw.default, %sw.bb.out_failure_crit_edge, %if.then.out_failure_crit_edge, %bpf_prog_run_xdp.exit.out_failure_crit_edge
  %act.0.i28 = phi i32 [ %act.0.i, %bpf_prog_run_xdp.exit.out_failure_crit_edge ], [ %act.0.i, %sw.default ], [ 3, %sw.bb.out_failure_crit_edge ], [ 4, %if.then.out_failure_crit_edge ]
  %netdev12 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 3
  %76 = ptrtoint ptr %netdev12 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %netdev12, align 4
  tail call fastcc void @trace_xdp_exception(ptr noundef %77, ptr noundef %xdp_prog, i32 noundef %act.0.i28)
  br label %sw.bb13

sw.bb13:                                          ; preds = %out_failure, %bpf_prog_run_xdp.exit.sw.bb13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge, %bpf_prog_run_xdp.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %if.then.cleanup_crit_edge ], [ 1, %sw.bb13 ], [ %call6, %sw.bb.cleanup_crit_edge ], [ 0, %bpf_prog_run_xdp.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_process_skb_fields(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_receive_skb(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_finalize_xdp_rx(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_update_rx_ring_stats(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xsk_uses_need_wakeup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_set_rx_need_wakeup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_clear_rx_need_wakeup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_clean_tx_irq_zc(ptr noundef %xdp_ring, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.xdp_desc, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 11
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 2
  %desc = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr %struct.ice_tx_desc, ptr %3, i32 %idxprom
  %tx_buf1 = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 4
  %4 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_buf1, align 16
  %arrayidx3 = getelementptr %struct.ice_tx_buf, ptr %5, i32 %idxprom
  %count = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 16
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count, align 4
  %sub = sub i16 %1, %7
  %dev.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end26.do.body_crit_edge, %entry
  %budget.addr.0 = phi i32 [ %budget, %entry ], [ %dec, %if.end26.do.body_crit_edge ]
  %total_packets.0 = phi i32 [ 0, %entry ], [ %inc, %if.end26.do.body_crit_edge ]
  %total_bytes.0 = phi i32 [ 0, %entry ], [ %add, %if.end26.do.body_crit_edge ]
  %ntc.0 = phi i16 [ %sub, %entry ], [ %ntc.1, %if.end26.do.body_crit_edge ]
  %tx_desc.0 = phi ptr [ %arrayidx, %entry ], [ %tx_desc.1, %if.end26.do.body_crit_edge ]
  %tx_buf.0 = phi ptr [ %arrayidx3, %entry ], [ %tx_buf.1, %if.end26.do.body_crit_edge ]
  %xsk_frames.0 = phi i32 [ 0, %entry ], [ %xsk_frames.1, %if.end26.do.body_crit_edge ]
  %cmd_type_offset_bsz = getelementptr inbounds %struct.ice_tx_desc, ptr %tx_desc.0, i32 0, i32 1
  %8 = ptrtoint ptr %cmd_type_offset_bsz to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cmd_type_offset_bsz, align 8
  %and = and i64 %9, 1080863910568919040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %do.body
  %bytecount = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.0, i32 0, i32 2
  %10 = ptrtoint ptr %bytecount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytecount, align 4
  %add = add i32 %11, %total_bytes.0
  %inc = add i32 %total_packets.0, 1
  %12 = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.0, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xdp_return_frame(ptr noundef nonnull %14) #10
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  %dma.i = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.0, i32 0, i32 6
  %17 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma.i, align 4
  %len.i = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.0, i32 0, i32 5
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef 1, i32 noundef 0) #10
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %len.i, align 4
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %12, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc8 = add i32 %xsk_frames.0, 1
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %xsk_frames.1 = phi i32 [ %xsk_frames.0, %if.then7 ], [ %inc8, %if.else ]
  %23 = ptrtoint ptr %cmd_type_offset_bsz to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %cmd_type_offset_bsz, align 8
  %incdec.ptr = getelementptr %struct.ice_tx_buf, ptr %tx_buf.0, i32 1
  %incdec.ptr11 = getelementptr %struct.ice_tx_desc, ptr %tx_desc.0, i32 1
  %inc12 = add i16 %ntc.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc12)
  %tobool13.not = icmp eq i16 %inc12, 0
  br i1 %tobool13.not, label %if.then17, label %if.end9.if.end26_crit_edge, !prof !39

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %count, align 4
  %sub21 = sub i16 0, %25
  %26 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_buf1, align 16
  %28 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %if.end9.if.end26_crit_edge
  %ntc.1 = phi i16 [ %sub21, %if.then17 ], [ %inc12, %if.end9.if.end26_crit_edge ]
  %tx_desc.1 = phi ptr [ %29, %if.then17 ], [ %incdec.ptr11, %if.end9.if.end26_crit_edge ]
  %tx_buf.1 = phi ptr [ %27, %if.then17 ], [ %incdec.ptr, %if.end9.if.end26_crit_edge ]
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %tx_desc.1) #10, !srcloc !42
  %dec = add i32 %budget.addr.0, -1
  %tobool27.not = icmp eq i32 %dec, 0
  br i1 %tobool27.not, label %if.end26.do.end_crit_edge, label %if.end26.do.body_crit_edge, !prof !39

if.end26.do.body_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end26.do.end_crit_edge, %do.body.do.end_crit_edge
  %budget.addr.1 = phi i32 [ 0, %if.end26.do.end_crit_edge ], [ %budget.addr.0, %do.body.do.end_crit_edge ]
  %total_packets.1 = phi i32 [ %budget, %if.end26.do.end_crit_edge ], [ %total_packets.0, %do.body.do.end_crit_edge ]
  %total_bytes.1 = phi i32 [ %add, %if.end26.do.end_crit_edge ], [ %total_bytes.0, %do.body.do.end_crit_edge ]
  %ntc.2 = phi i16 [ %ntc.1, %if.end26.do.end_crit_edge ], [ %ntc.0, %do.body.do.end_crit_edge ]
  %xsk_frames.2 = phi i32 [ %xsk_frames.1, %if.end26.do.end_crit_edge ], [ %xsk_frames.0, %do.body.do.end_crit_edge ]
  %30 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %count, align 4
  %add37 = add i16 %31, %ntc.2
  %32 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %add37, ptr %next_to_clean, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xsk_frames.2)
  %tobool40.not = icmp eq i32 %xsk_frames.2, 0
  br i1 %tobool40.not, label %do.end.if.end42_crit_edge, label %if.then41

do.end.if.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then41:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %xsk_pool = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 9
  %33 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xsk_pool, align 4
  tail call void @xsk_tx_completed(ptr noundef %34, i32 noundef %xsk_frames.2) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %do.end.if.end42_crit_edge
  %xsk_pool43 = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 9
  %35 = ptrtoint ptr %xsk_pool43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xsk_pool43, align 4
  %call = tail call zeroext i1 @xsk_uses_need_wakeup(ptr noundef %36) #10
  br i1 %call, label %if.then44, label %if.end42.if.end46_crit_edge

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %xsk_pool43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xsk_pool43, align 4
  tail call void @xsk_set_tx_need_wakeup(ptr noundef %38) #10
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end42.if.end46_crit_edge
  %conv47 = sext i32 %total_packets.1 to i64
  %conv48 = sext i32 %total_bytes.1 to i64
  tail call void @ice_update_tx_ring_stats(ptr noundef %xdp_ring, i64 noundef %conv47, i64 noundef %conv48) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #10
  %39 = getelementptr inbounds %struct.xdp_desc, ptr %desc.i, i32 0, i32 1
  %next_to_use.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 10
  %40 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end46
  %dec15.i = phi i32 [ 255, %if.end46 ], [ %dec.i, %cleanup.i.while.body.i_crit_edge ]
  %tx_desc.014.i = phi ptr [ null, %if.end46 ], [ %arrayidx32.i, %cleanup.i.while.body.i_crit_edge ]
  %41 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %next_to_clean, align 2
  %43 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %next_to_use.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %44)
  %cmp3.i = icmp ugt i16 %42, %44
  br i1 %cmp3.i, label %while.body.i.cond.end.i_crit_edge, label %cond.false.i

while.body.i.cond.end.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %count, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %while.body.i.cond.end.i_crit_edge
  %cond.i = phi i16 [ %46, %cond.false.i ], [ 0, %while.body.i.cond.end.i_crit_edge ]
  %add.i = add i16 %cond.i, %42
  %.neg.i = add i16 %44, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i, i16 %.neg.i)
  %tobool12.not.i = icmp eq i16 %add.i, %.neg.i
  br i1 %tobool12.not.i, label %if.then.i, label %if.end.i, !prof !39

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_busy.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 20, i32 1
  %47 = ptrtoint ptr %tx_busy.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %tx_busy.i, align 8
  %inc.i = add i64 %48, 1
  store i64 %inc.i, ptr %tx_busy.i, align 8
  br label %while.end.i

if.end.i:                                         ; preds = %cond.end.i
  %49 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_buf1, align 16
  %51 = ptrtoint ptr %xsk_pool43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xsk_pool43, align 4
  %call.i = call zeroext i1 @xsk_tx_peek_desc(ptr noundef %52, ptr noundef nonnull %desc.i) #10
  br i1 %call.i, label %if.end24.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end24.i:                                       ; preds = %if.end.i
  %conv9.i = zext i16 %44 to i32
  %53 = ptrtoint ptr %xsk_pool43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xsk_pool43, align 4
  %55 = ptrtoint ptr %desc.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %desc.i, align 8
  %call.i.i = call i32 @xp_raw_get_dma(ptr noundef %54, i64 noundef %56) #10
  %57 = ptrtoint ptr %xsk_pool43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %xsk_pool43, align 4
  %dma_need_sync.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %58, i32 0, i32 25
  %59 = ptrtoint ptr %dma_need_sync.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dma_need_sync.i.i.i, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i.i.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i.i.i, label %if.end24.i.cleanup.i_crit_edge, label %if.end.i.i.i

if.end24.i.cleanup.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %39, align 8
  call void @xp_dma_sync_for_device_slow(ptr noundef %58, i32 noundef %call.i.i, i32 noundef %62) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %if.end24.i.cleanup.i_crit_edge
  %63 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %39, align 8
  %bytecount.i = getelementptr %struct.ice_tx_buf, ptr %50, i32 %conv9.i, i32 2
  %65 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %bytecount.i, align 4
  %66 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %desc, align 4
  %68 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %next_to_use.i, align 8
  %idxprom31.i = zext i16 %69 to i32
  %arrayidx32.i = getelementptr %struct.ice_tx_desc, ptr %67, i32 %idxprom31.i
  %conv33.i = zext i32 %call.i.i to i64
  %70 = call i64 @llvm.bswap.i64(i64 %conv33.i) #10
  %71 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %arrayidx32.i, align 8
  %72 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %39, align 8
  %conv.i.i = zext i32 %73 to i64
  %shl3.i.i = shl i64 %conv.i.i, 34
  %or4.i.i = or i64 %shl3.i.i, 48
  %74 = call i64 @llvm.bswap.i64(i64 %or4.i.i) #10
  %cmd_type_offset_bsz.i = getelementptr %struct.ice_tx_desc, ptr %67, i32 %idxprom31.i, i32 1
  %75 = ptrtoint ptr %cmd_type_offset_bsz.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %cmd_type_offset_bsz.i, align 8
  %76 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %next_to_use.i, align 8
  %inc37.i = add i16 %77, 1
  %78 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc37.i, i16 %79)
  %cmp42.i = icmp eq i16 %inc37.i, %79
  %spec.store.select.i = select i1 %cmp42.i, i16 0, i16 %inc37.i
  %80 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %spec.store.select.i, ptr %next_to_use.i, align 8
  %dec.i = add nsw i32 %dec15.i, -1
  %cmp.not.i = icmp eq i32 %dec15.i, 0
  br i1 %cmp.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge, !prof !39

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge, %if.then.i
  %tx_desc.013.i = phi ptr [ %tx_desc.014.i, %if.then.i ], [ %tx_desc.014.i, %if.end.i.while.end.i_crit_edge ], [ %arrayidx32.i, %cleanup.i.while.end.i_crit_edge ]
  %dec11.i = phi i32 [ %dec15.i, %if.then.i ], [ %dec15.i, %if.end.i.while.end.i_crit_edge ], [ -1, %cleanup.i.while.end.i_crit_edge ]
  %tobool47.not.i = icmp eq ptr %tx_desc.013.i, null
  br i1 %tobool47.not.i, label %while.end.i.ice_xmit_zc.exit_crit_edge, label %if.then48.i

while.end.i.ice_xmit_zc.exit_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_xmit_zc.exit

if.then48.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %81 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %next_to_use.i, align 8
  %conv.i5.i = zext i16 %82 to i32
  %83 = call i32 @llvm.bswap.i32(i32 %conv.i5.i) #10
  %tail.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 3
  %84 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tail.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #10, !srcloc !36
  %86 = ptrtoint ptr %xsk_pool43 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %xsk_pool43, align 4
  call void @xsk_tx_release(ptr noundef %87) #10
  br label %ice_xmit_zc.exit

ice_xmit_zc.exit:                                 ; preds = %if.then48.i, %while.end.i.ice_xmit_zc.exit_crit_edge
  %88 = xor i1 %tobool12.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec11.i)
  %cmp51.i = icmp sgt i32 %dec11.i, 0
  %spec.select.i = and i1 %cmp51.i, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.addr.1)
  %cmp = icmp sgt i32 %budget.addr.1, 0
  %spec.select = select i1 %cmp, i1 %spec.select.i, i1 false
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_tx_completed(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_set_tx_need_wakeup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_update_tx_ring_stats(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_xsk_wakeup(ptr nocapture noundef readonly %netdev, i32 noundef %queue_id, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %state = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %xdp_prog.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 57
  %5 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.i.not = icmp eq ptr %6, null
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %num_txq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 48
  %7 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_txq, align 2
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %queue_id)
  %cmp.not = icmp ugt i32 %conv, %queue_id
  br i1 %cmp.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %xdp_rings = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 58
  %9 = ptrtoint ptr %xdp_rings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xdp_rings, align 8
  %arrayidx = getelementptr ptr, ptr %10, i32 %queue_id
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %xsk_pool = getelementptr inbounds %struct.ice_tx_ring, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xsk_pool, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %q_vector14 = getelementptr inbounds %struct.ice_tx_ring, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %q_vector14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %q_vector14, align 4
  %state.i = getelementptr inbounds %struct.ice_q_vector, ptr %16, i32 0, i32 7, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %if.end11
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 8
  %and.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %do.body.i
  %and2.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then16, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %or.i = or i32 %18, 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end5.i
  %19 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i, i32 %18, i32 %or.i) #10, !srcloc !58
  %asmresult.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %19, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  %cmp.not.i = icmp eq i32 %asmresult1.i.i, %18
  br i1 %cmp.not.i, label %__cmpxchg.exit.i.cleanup_crit_edge, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

__cmpxchg.exit.i.cleanup_crit_edge:               ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %back, align 8
  %hw = getelementptr inbounds %struct.ice_pf, ptr %21, i32 0, i32 58
  tail call void @ice_trigger_sw_intr(ptr noundef %hw, ptr noundef %16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %__cmpxchg.exit.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -100, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -6, %if.end5.cleanup_crit_edge ], [ -6, %if.end8.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %do.body.i.cleanup_crit_edge ], [ 0, %__cmpxchg.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_trigger_sw_intr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_xsk_any_rx_ring_ena(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rxq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 50
  %0 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_rxq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp7.not = icmp eq i16 %1, 0
  br i1 %cmp7.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.08, 1
  %2 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_rxq, align 2
  %conv = zext i16 %3 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup.loopexit_crit_edge

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsi, align 128
  %conv2 = trunc i32 %i.08 to i16
  %call = tail call ptr @xsk_get_pool_from_qid(ptr noundef %5, i16 noundef zeroext %conv2) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup.loopexit_crit_edge

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.body.cleanup.loopexit_crit_edge, %for.cond.cleanup.loopexit_crit_edge
  %6 = xor i1 %tobool.not, true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ %6, %cleanup.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xsk_get_pool_from_qid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_xsk_clean_rx_ring(ptr nocapture noundef readonly %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 2
  %sub = add i16 %1, -1
  %next_to_clean = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 14
  %2 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_clean, align 8
  %next_to_use = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 13
  %4 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_to_use, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not14 = icmp eq i16 %3, %5
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %6 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ntc.015 = phi i16 [ %3, %for.body.lr.ph ], [ %and, %for.body.for.body_crit_edge ]
  %conv2 = zext i16 %ntc.015 to i32
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %conv2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  tail call void @xp_free(ptr noundef %10) #10
  %add = add i16 %ntc.015, 1
  %and = and i16 %add, %sub
  %cmp.not = icmp eq i16 %and, %5
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_xsk_clean_xdp_ring(ptr nocapture noundef readonly %xdp_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 11
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 10
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_use, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not26 = icmp eq i16 %1, %3
  br i1 %cmp.not26, label %entry.if.end13_crit_edge, label %while.body.lr.ph

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

while.body.lr.ph:                                 ; preds = %entry
  %tx_buf3 = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 4
  %dev.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 2
  %count = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %xsk_frames.028 = phi i32 [ 0, %while.body.lr.ph ], [ %xsk_frames.1, %if.end.while.body_crit_edge ]
  %ntc.027 = phi i16 [ %1, %while.body.lr.ph ], [ %spec.store.select, %if.end.while.body_crit_edge ]
  %conv = zext i16 %ntc.027 to i32
  %4 = ptrtoint ptr %tx_buf3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_buf3, align 16
  %6 = getelementptr %struct.ice_tx_buf, ptr %5, i32 %conv, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  tail call void @xdp_return_frame(ptr noundef %10) #10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  %dma.i = getelementptr %struct.ice_tx_buf, ptr %5, i32 %conv, i32 6
  %13 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma.i, align 4
  %len.i = getelementptr %struct.ice_tx_buf, ptr %5, i32 %conv, i32 5
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef 1, i32 noundef 0) #10
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %len.i, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %xsk_frames.028, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %xsk_frames.1 = phi i32 [ %xsk_frames.028, %if.then ], [ %inc, %if.else ]
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %6, align 4
  %inc4 = add i16 %ntc.027, 1
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc4, i16 %20)
  %cmp7.not = icmp ult i16 %inc4, %20
  %spec.store.select = select i1 %cmp7.not, i16 %inc4, i16 0
  %cmp.not = icmp eq i16 %spec.store.select, %3
  br i1 %cmp.not, label %while.end, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xsk_frames.1)
  %tobool11.not = icmp eq i32 %xsk_frames.1, 0
  br i1 %tobool11.not, label %while.end.if.end13_crit_edge, label %if.then12

while.end.if.end13_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %xsk_pool = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 9
  %21 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xsk_pool, align 4
  tail call void @xsk_tx_completed(ptr noundef %22, i32 noundef %xsk_frames.1) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %while.end.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fill_txq_meta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_stop_tx_ring(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_ctrl_one_rx_ring(ptr noundef, i1 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_qp_clean_rings(ptr nocapture noundef readonly %vsi, i16 noundef zeroext %q_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 5
  %0 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_rings, align 4
  %idxprom = zext i16 %q_idx to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @ice_clean_tx_ring(ptr noundef %3) #10
  %xdp_prog.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 57
  %4 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.i.not = icmp eq ptr %5, null
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %xdp_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 58
  %6 = ptrtoint ptr %xdp_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp_rings, align 8
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  tail call void @ice_clean_tx_ring(ptr noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 4
  %10 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_rings, align 16
  %arrayidx4 = getelementptr ptr, ptr %11, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  tail call void @ice_clean_rx_ring(ptr noundef %13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_clean_tx_ring(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_clean_rx_ring(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_dma_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_unmap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_cfg_txq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ice_tx_xsk_pool(ptr nocapture noundef readonly %ring) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %vsi1 = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 7
  %0 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi1, align 4
  %q_index = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 17
  %2 = ptrtoint ptr %q_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %q_index, align 2
  %num_xdp_txq = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %num_xdp_txq to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_xdp_txq, align 16
  %sub = sub i16 %3, %5
  %xdp_prog.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 57
  %6 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv4 = zext i16 %sub to i32
  %af_xdp_zc_qps = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 59
  %8 = ptrtoint ptr %af_xdp_zc_qps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %af_xdp_zc_qps, align 4
  %div3.i = lshr i32 %conv4, 5
  %arrayidx.i = getelementptr i32, ptr %9, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv4, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %call6 = tail call ptr @xsk_get_pool_from_qid(ptr noundef %15, i16 noundef zeroext %sub) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %if.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_cfg_rxq(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_qvec_cfg_msix(ptr noundef %vsi, ptr noundef %q_vector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_idx1 = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 2
  %0 = ptrtoint ptr %reg_idx1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %reg_idx1, align 2
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  tail call void @ice_cfg_itr(ptr noundef %hw2, ptr noundef %q_vector) #10
  %tx = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 9
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %tx_ring.028 = load ptr, ptr %tx, align 128
  %tobool.not29 = icmp eq ptr %tx_ring.028, null
  br i1 %tobool.not29, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %itr_idx = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 9, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %tx_ring.030 = phi ptr [ %tx_ring.028, %for.body.lr.ph ], [ %tx_ring.0, %for.body.for.body_crit_edge ]
  %reg_idx3 = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.030, i32 0, i32 15
  %5 = ptrtoint ptr %reg_idx3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg_idx3, align 2
  %7 = ptrtoint ptr %itr_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %itr_idx, align 8
  tail call void @ice_cfg_txq_interrupt(ptr noundef %vsi, i16 noundef zeroext %6, i16 noundef zeroext %1, i16 noundef zeroext %8) #10
  %9 = ptrtoint ptr %tx_ring.030 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tx_ring.0 = load ptr, ptr %tx_ring.030, align 128
  %tobool.not = icmp eq ptr %tx_ring.0, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rx = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 8
  %10 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %rx_ring.031 = load ptr, ptr %rx, align 16
  %tobool6.not32 = icmp eq ptr %rx_ring.031, null
  br i1 %tobool6.not32, label %for.end.for.end13_crit_edge, label %for.body7.lr.ph

for.end.for.end13_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13

for.body7.lr.ph:                                  ; preds = %for.end
  %itr_idx10 = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 8, i32 2
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.lr.ph
  %rx_ring.033 = phi ptr [ %rx_ring.031, %for.body7.lr.ph ], [ %rx_ring.0, %for.body7.for.body7_crit_edge ]
  %reg_idx8 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring.033, i32 0, i32 12
  %11 = ptrtoint ptr %reg_idx8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg_idx8, align 4
  %13 = ptrtoint ptr %itr_idx10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %itr_idx10, align 8
  tail call void @ice_cfg_rxq_interrupt(ptr noundef %vsi, i16 noundef zeroext %12, i16 noundef zeroext %1, i16 noundef zeroext %14) #10
  %15 = ptrtoint ptr %rx_ring.033 to i32
  call void @__asan_load4_noabort(i32 %15)
  %rx_ring.0 = load ptr, ptr %rx_ring.033, align 16
  %tobool6.not = icmp eq ptr %rx_ring.0, null
  br i1 %tobool6.not, label %for.body7.for.end13_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7

for.body7.for.end13_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13

for.end13:                                        ; preds = %for.body7.for.end13_crit_edge, %for.end.for.end13_crit_edge
  %16 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw2, align 8
  %add.ptr = getelementptr i8, ptr %17, i32 745772
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_qvec_ena_irq(ptr noundef %vsi, ptr noundef readonly %q_vector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %tobool.not.i = icmp eq ptr %vsi, null
  %tobool1.not.i = icmp eq ptr %q_vector, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %reg_idx.i = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 2
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %back.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58, i32 1
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 4
  %oicr_idx.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 41
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.in.in.i = phi ptr [ %reg_idx.i, %cond.true.i ], [ %oicr_idx.i, %cond.false.i ]
  %4 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %cond.in.i = load i16, ptr %cond.in.in.i, align 2
  %cond.i = zext i16 %cond.in.i to i32
  br i1 %tobool.not.i, label %cond.end.i.do.body.i_crit_edge, label %if.then.i

cond.end.i.do.body.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then.i:                                        ; preds = %cond.end.i
  %state.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 9
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool4.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool4.not.i, label %if.then.i.do.body.i_crit_edge, label %if.then.i.ice_irq_dynamic_ena.exit_crit_edge

if.then.i.ice_irq_dynamic_ena.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_irq_dynamic_ena.exit

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.do.body.i_crit_edge, %cond.end.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1, align 8
  %mul.i = shl nuw nsw i32 %cond.i, 2
  %add.i = add nuw nsw i32 %mul.i, 1441792
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 452984832) #10, !srcloc !36
  br label %ice_irq_dynamic_ena.exit

ice_irq_dynamic_ena.exit:                         ; preds = %do.body.i, %if.then.i.ice_irq_dynamic_ena.exit_crit_edge
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 745772
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_cfg_itr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_cfg_txq_interrupt(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_cfg_rxq_interrupt(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_alloc_batch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_sync_for_cpu_slow(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_xmit_xdp_buff(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !45

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !64
  %13 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 51, ptr noundef nonnull @.str.8) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  %31 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xsk_tx_peek_desc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_tx_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_raw_get_dma(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_sync_for_device_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !22}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_xsk.c", i32 335, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ice/ice_xsk.c", i32 349, i32 28}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ice/ice_xsk.c", i32 353, i32 27}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_xsk.c", i32 354, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ice/ice_xsk.c", i32 354, i32 29}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/filter.h", i32 613, i32 2}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 6556698}
!34 = !{i64 2160675990}
!35 = !{i64 2160676435}
!36 = !{i64 6556280}
!37 = !{i64 2160677056}
!38 = !{i64 2160677930}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2160686628}
!41 = !{i8 0, i8 2}
!42 = !{i64 1009249}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2154966001, i64 2154966489, i64 2154966038, i64 2154966094, i64 2154966128, i64 2154966152, i64 2154966193, i64 2154966214, i64 2154966242, i64 2154966276}
!45 = !{i64 2149068226, i64 2149068231, i64 2149068244, i64 2149068288, i64 2149068322, i64 2149068343}
!46 = !{i64 914661, i64 914722}
!47 = !{i64 2150261283}
!48 = !{i64 2150266217}
!49 = !{i64 2150287935}
!50 = !{i64 2150292829}
!51 = !{i64 2150369356}
!52 = !{i64 2150369681}
!53 = !{i64 917393}
!54 = !{i64 917678}
!55 = !{!"branch_weights", i32 1, i32 10000, i32 1, i32 1, i32 1, i32 1}
!56 = !{i64 2160670796}
!57 = !{i64 2155625075}
!58 = !{i64 1020453, i64 1020474, i64 1020497, i64 1020516, i64 1020535}
!59 = !{i64 2155625480}
!60 = !{i64 2160678762}
!61 = !{i64 2160662619}
!62 = !{i64 2160679406}
!63 = !{i64 2157105726}
!64 = !{i64 2157105941}
!65 = !{i64 2149625545}
!66 = !{i64 2149626581}
