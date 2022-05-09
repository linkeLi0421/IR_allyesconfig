; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_base.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ice_ctx_ele = type { i16, i16, i16, i16 }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ice_rlan_ctx = type { i16, i16, i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i16, i8 }
%struct.ice_rx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.212, [96 x i8], %struct.xdp_rxq_info, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_rxq_stats, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.callback_head, ptr, ptr, ptr, ptr, ptr, i32, i64, i8, i8, i8, [125 x i8] }
%union.anon.212 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ice_rxq_stats = type { i64, i64, i64 }
%struct.ice_q_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.196, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.196 = type { ptr }
%struct.ice_q_vector = type { ptr, i16, i16, i8, i8, i8, i8, %struct.napi_struct, %struct.ice_ring_container, %struct.ice_ring_container, %struct.cpumask, %struct.irq_affinity_notify, ptr, [32 x i8], i16, [10 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ice_ring_container = type { %union.anon.201, %struct.dim, i16, i16, i32 }
%union.anon.201 = type { ptr }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.xsk_buff_pool = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, %struct.work_struct, %struct.list_head, i32, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, %struct.spinlock, [0 x ptr], [16 x i8] }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.179 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.179 = type { %struct.devlink_port_pci_vf_attrs }
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
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.210, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.210 = type { ptr }
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
%struct.ice_qs_cfg = type { ptr, ptr, i32, i32, i32, ptr, i16, i8 }
%struct.ice_tx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.ice_txq_stats, %struct.callback_head, [1 x i32], ptr, ptr, %struct.spinlock, i32, i8, i8, i8, [49 x i8] }
%struct.ice_txq_stats = type { i64, i64, i64, i32 }
%struct.ice_tlan_ctx = type { i64, i8, i16, i8, i16, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i8, i16, i8, i8, i8, i8, i8 }
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
%struct.ice_channel = type { %struct.list_head, i8, i16, i16, i16, i16, i16, i8, %struct.ice_aqc_vsi_props, i64, i64, %struct.atomic_t, ptr }
%struct.ice_aqc_add_tx_qgrp = type { i32, i8, [3 x i8], [0 x %struct.ice_aqc_add_txqs_perq] }
%struct.ice_aqc_add_txqs_perq = type { i16, [2 x i8], i32, [22 x i8], [2 x i8], %struct.ice_aqc_txsched_elem }
%struct.ice_aqc_txsched_elem = type { i8, i8, i8, i8, %struct.ice_aqc_elem_info_bw, %struct.ice_aqc_elem_info_bw, i16, i16 }
%struct.ice_aqc_elem_info_bw = type { i16, i16 }
%struct.ice_txq_meta = type { i32, i16, i16, i16, i8 }

@ice_vsi_cfg_rxq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 524, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_vsi_cfg_rxq\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/intel/ice/ice_base.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_vsi_cfg_rxq._entry_ptr = internal global ptr @ice_vsi_cfg_rxq._entry, section ".printk_index", align 4
@ice_vsi_cfg_rxq._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 545, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ice_setup_rx_ctx failed for RxQ %d, err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ice_vsi_cfg_rxq._entry_ptr.8 = internal global ptr @ice_vsi_cfg_rxq._entry.5, section ".printk_index", align 4
@ice_vsi_cfg_rxq._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 554, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"XSK buffer pool does not provide enough addresses to fill %d buffers on Rx ring %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ice_vsi_cfg_rxq._entry_ptr.12 = internal global ptr @ice_vsi_cfg_rxq._entry.9, section ".printk_index", align 4
@ice_vsi_cfg_rxq._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 555, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Change Rx ring/fill queue size to avoid performance issues\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_vsi_cfg_rxq._entry_ptr.15 = internal global ptr @ice_vsi_cfg_rxq._entry.13, section ".printk_index", align 4
@ice_vsi_cfg_rxq._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 565, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Failed to allocate some buffers on XSK buffer pool enabled Rx ring %d (pf_q %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_vsi_cfg_rxq._entry_ptr.18 = internal global ptr @ice_vsi_cfg_rxq._entry.16, section ".printk_index", align 4
@ice_vsi_alloc_q_vectors.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_vsi_alloc_q_vectors\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VSI %d has existing q_vectors\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_vsi_alloc_q_vectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 687, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to allocate %d q_vector for VSI %d, ret=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_vsi_alloc_q_vectors._entry_ptr = internal global ptr @ice_vsi_alloc_q_vectors._entry, section ".printk_index", align 4
@ice_tlan_ctx_info = external dso_local constant [0 x %struct.ice_ctx_ele], align 2
@ice_vsi_cfg_txq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 825, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to set LAN Tx queue context, error: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_vsi_cfg_txq\00", [16 x i8] zeroinitializer }, align 32
@ice_vsi_cfg_txq._entry_ptr = internal global ptr @ice_vsi_cfg_txq._entry, section ".printk_index", align 4
@ice_vsi_stop_tx_ring.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_vsi_stop_tx_ring\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Reset in progress. LAN Tx queues already disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_vsi_stop_tx_ring.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 0, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"LAN Tx queues do not exist, nothing to disable\0A\00", [48 x i8] zeroinitializer }, align 32
@ice_vsi_stop_tx_ring.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to disable LAN Tx queues, error: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_setup_rx_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 465, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Failed to set LAN Rx queue context for absolute Rx queue %d error: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ice_setup_rx_ctx\00", [47 x i8] zeroinitializer }, align 32
@ice_setup_rx_ctx._entry_ptr = internal global ptr @ice_setup_rx_ctx._entry, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@ice_free_q_vector.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_free_q_vector\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Queue vector at index %d not found\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_calc_txq_handle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"XDP ring can't belong to TC other than 0\0A\00", [54 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967280, i64 4294967294]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 523, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 544, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 553, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 555, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 564, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 670, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 686, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 824, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 978, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 980, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 982, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 464, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 108, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 169, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [45 x i8] c"../drivers/net/ethernet/intel/ice/ice_base.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 226, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @ice_setup_rx_ctx._entry, ptr @ice_setup_rx_ctx._entry_ptr, ptr @ice_vsi_alloc_q_vectors._entry, ptr @ice_vsi_alloc_q_vectors._entry_ptr, ptr @ice_vsi_cfg_rxq._entry, ptr @ice_vsi_cfg_rxq._entry.13, ptr @ice_vsi_cfg_rxq._entry.16, ptr @ice_vsi_cfg_rxq._entry.5, ptr @ice_vsi_cfg_rxq._entry.9, ptr @ice_vsi_cfg_rxq._entry_ptr, ptr @ice_vsi_cfg_rxq._entry_ptr.12, ptr @ice_vsi_cfg_rxq._entry_ptr.15, ptr @ice_vsi_cfg_rxq._entry_ptr.18, ptr @ice_vsi_cfg_rxq._entry_ptr.8, ptr @ice_vsi_cfg_txq._entry, ptr @ice_vsi_cfg_txq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vsi_cfg_rxq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vsi_cfg_rxq._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vsi_cfg_rxq._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vsi_cfg_rxq._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vsi_cfg_rxq._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vsi_alloc_q_vectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vsi_cfg_txq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_setup_rx_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_vsi_cfg_rxq(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  %rlan_ctx.i = alloca %struct.ice_rlan_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 4
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 16
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %next_to_clean = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_to_clean, align 8
  %next_to_use = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 13
  %8 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %next_to_use, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp = icmp ugt i16 %7, %9
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %count = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 11
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %count, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i16 [ %11, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %12 = xor i16 %9, -1
  %add = add i16 %7, %12
  %sub9 = add i16 %add, %cond
  %rx_buf_len = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 34
  %13 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rx_buf_len, align 2
  %rx_buf_len12 = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 17
  %15 = ptrtoint ptr %rx_buf_len12 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %rx_buf_len12, align 2
  %type = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %if.then, label %cond.end.if.end61_crit_edge

cond.end.if.end61_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then:                                          ; preds = %cond.end
  %xdp_rxq = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 9
  %call = tail call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %xdp_rxq) #8
  br i1 %call, label %if.then.if.end_crit_edge, label %if.then16

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 3
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  %q_index = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 10
  %20 = ptrtoint ptr %q_index to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %q_index, align 128
  %conv18 = zext i16 %21 to i32
  %q_vector = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 5
  %22 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %q_vector, align 4
  %napi_id = getelementptr inbounds %struct.ice_q_vector, ptr %23, i32 0, i32 7, i32 15
  %24 = ptrtoint ptr %napi_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %napi_id, align 8
  %call19 = tail call i32 @xdp_rxq_info_reg(ptr noundef %xdp_rxq, ptr noundef %19, i32 noundef %conv18, i32 noundef %25) #8
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.then.if.end_crit_edge
  %26 = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 7
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %28) #8
  %29 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vsi, align 16
  %q_index.i = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 10
  %31 = ptrtoint ptr %q_index.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %q_index.i, align 128
  %xdp_prog.i.i = getelementptr inbounds %struct.ice_vsi, ptr %30, i32 0, i32 57
  %33 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xdp_prog.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %34, null
  br i1 %tobool.i.not.i, label %if.end.ice_xsk_pool.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.ice_xsk_pool.exit.thread_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_xsk_pool.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %conv.i = zext i16 %32 to i32
  %af_xdp_zc_qps.i = getelementptr inbounds %struct.ice_vsi, ptr %30, i32 0, i32 59
  %35 = ptrtoint ptr %af_xdp_zc_qps.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %af_xdp_zc_qps.i, align 4
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %36, i32 %div3.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %39 = shl nuw i32 1, %and.i.i
  %40 = and i32 %38, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.ice_xsk_pool.exit.thread_crit_edge, label %ice_xsk_pool.exit

lor.lhs.false.i.ice_xsk_pool.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_xsk_pool.exit.thread

ice_xsk_pool.exit.thread:                         ; preds = %lor.lhs.false.i.ice_xsk_pool.exit.thread_crit_edge, %if.end.ice_xsk_pool.exit.thread_crit_edge
  %xsk_pool204 = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 25
  %41 = ptrtoint ptr %xsk_pool204 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %xsk_pool204, align 4
  br label %if.end7.i.i.i192

ice_xsk_pool.exit:                                ; preds = %lor.lhs.false.i
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %30, align 128
  %call3.i = tail call ptr @xsk_get_pool_from_qid(ptr noundef %43, i16 noundef zeroext %32) #8
  %xsk_pool = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 25
  %44 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call3.i, ptr %xsk_pool, align 4
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %ice_xsk_pool.exit.if.end7.i.i.i192_crit_edge, label %if.end7.i.i.i

ice_xsk_pool.exit.if.end7.i.i.i192_crit_edge:     ; preds = %ice_xsk_pool.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i.i192

if.end7.i.i.i:                                    ; preds = %ice_xsk_pool.exit
  %count.i = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 11
  %45 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %count.i, align 2
  %conv.i160 = zext i16 %46 to i32
  %47 = shl nuw nsw i32 %conv.i160, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #11
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call8.i.i.i, ptr %26, align 4
  %tobool.i.not = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.i.not, label %if.end7.i.i.i.cleanup102_crit_edge, label %if.end25

if.end7.i.i.i.cleanup102_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup102

if.end25:                                         ; preds = %if.end7.i.i.i
  tail call void @xdp_rxq_info_unreg_mem_model(ptr noundef %xdp_rxq) #8
  %49 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xsk_pool, align 4
  %chunk_size.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %50, i32 0, i32 20
  %51 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chunk_size.i.i, align 16
  %headroom.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %50, i32 0, i32 19
  %53 = ptrtoint ptr %headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %headroom.i.i, align 4
  %add.i.neg.i = add i32 %52, 65280
  %sub.i = sub i32 %add.i.neg.i, %54
  %conv29 = trunc i32 %sub.i to i16
  %55 = ptrtoint ptr %rx_buf_len12 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv29, ptr %rx_buf_len12, align 2
  %call32 = tail call i32 @xdp_rxq_info_reg_mem_model(ptr noundef %xdp_rxq, i32 noundef 3, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end25.cleanup102_crit_edge

if.end25.cleanup102_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup102

if.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xsk_pool, align 4
  tail call void @xp_set_rxq_info(ptr noundef %57, ptr noundef %xdp_rxq) #8
  %58 = ptrtoint ptr %q_index.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %q_index.i, align 128
  %conv39 = zext i16 %59 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %conv39) #12
  br label %if.end61

if.end7.i.i.i192:                                 ; preds = %ice_xsk_pool.exit.if.end7.i.i.i192_crit_edge, %ice_xsk_pool.exit.thread
  %count.i161 = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 11
  %60 = ptrtoint ptr %count.i161 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %count.i161, align 2
  %conv.i162 = zext i16 %61 to i32
  %62 = shl nuw nsw i32 %conv.i162, 4
  %call8.i.i.i191 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %62, i32 noundef 3520) #11
  %63 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call8.i.i.i191, ptr %26, align 4
  %tobool.i194.not = icmp eq ptr %call8.i.i.i191, null
  br i1 %tobool.i194.not, label %if.end7.i.i.i192.cleanup102_crit_edge, label %if.end42

if.end7.i.i.i192.cleanup102_crit_edge:            ; preds = %if.end7.i.i.i192
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup102

if.end42:                                         ; preds = %if.end7.i.i.i192
  %call44 = tail call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %xdp_rxq) #8
  br i1 %call44, label %if.end42.if.end54_crit_edge, label %if.then45

if.end42.if.end54_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %netdev47 = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 3
  %64 = ptrtoint ptr %netdev47 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %netdev47, align 4
  %66 = ptrtoint ptr %q_index.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %q_index.i, align 128
  %conv49 = zext i16 %67 to i32
  %q_vector50 = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 5
  %68 = ptrtoint ptr %q_vector50 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %q_vector50, align 4
  %napi_id52 = getelementptr inbounds %struct.ice_q_vector, ptr %69, i32 0, i32 7, i32 15
  %70 = ptrtoint ptr %napi_id52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %napi_id52, align 8
  %call53 = tail call i32 @xdp_rxq_info_reg(ptr noundef %xdp_rxq, ptr noundef %65, i32 noundef %conv49, i32 noundef %71) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %if.end42.if.end54_crit_edge
  %call56 = tail call i32 @xdp_rxq_info_reg_mem_model(ptr noundef %xdp_rxq, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end54.if.end61_crit_edge, label %if.end54.cleanup102_crit_edge

if.end54.cleanup102_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup102

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.end61:                                         ; preds = %if.end54.if.end61_crit_edge, %if.end35, %cond.end.if.end61_crit_edge
  %72 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vsi, align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rlan_ctx.i) #8
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %back.i, align 8
  %hw2.i = getelementptr inbounds %struct.ice_pf, ptr %75, i32 0, i32 58
  %rxq_map.i = getelementptr inbounds %struct.ice_vsi, ptr %73, i32 0, i32 46
  %76 = ptrtoint ptr %rxq_map.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rxq_map.i, align 4
  %q_index.i196 = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 10
  %78 = ptrtoint ptr %q_index.i196 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %q_index.i196, align 128
  %idxprom.i = zext i16 %79 to i32
  %arrayidx.i = getelementptr i16, ptr %77, i32 %idxprom.i
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx.i, align 2
  %82 = call ptr @memset(ptr %rlan_ctx.i, i32 0, i32 48)
  %dma.i = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 27
  %83 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dma.i, align 4
  %shr.i = lshr i32 %84, 7
  %conv.i197 = zext i32 %shr.i to i64
  %base.i = getelementptr inbounds %struct.ice_rlan_ctx, ptr %rlan_ctx.i, i32 0, i32 2
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv.i197, ptr %base.i, align 8
  %count.i198 = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 11
  %86 = ptrtoint ptr %count.i198 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %count.i198, align 2
  %qlen.i = getelementptr inbounds %struct.ice_rlan_ctx, ptr %rlan_ctx.i, i32 0, i32 3
  %88 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %qlen.i, align 8
  %89 = ptrtoint ptr %rx_buf_len12 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %rx_buf_len12, align 2
  %91 = lshr i16 %90, 7
  %dbuf.i = getelementptr inbounds %struct.ice_rlan_ctx, ptr %rlan_ctx.i, i32 0, i32 4
  %92 = ptrtoint ptr %dbuf.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %dbuf.i, align 2
  %dsize.i = getelementptr inbounds %struct.ice_rlan_ctx, ptr %rlan_ctx.i, i32 0, i32 7
  %93 = ptrtoint ptr %dsize.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %dsize.i, align 1
  %crcstrip.i = getelementptr inbounds %struct.ice_rlan_ctx, ptr %rlan_ctx.i, i32 0, i32 8
  %94 = ptrtoint ptr %crcstrip.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %crcstrip.i, align 8
  %l2tsel.i = getelementptr inbounds %struct.ice_rlan_ctx, ptr %rlan_ctx.i, i32 0, i32 9
  %95 = ptrtoint ptr %l2tsel.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %l2tsel.i, align 1
  %showiv.i = getelementptr inbounds %struct.ice_rlan_ctx, ptr %rlan_ctx.i, i32 0, i32 12
  %96 = ptrtoint ptr %showiv.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %showiv.i, align 4
  %xsk_pool.i = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 25
  %97 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %xsk_pool.i, align 4
  %tobool.not.i199 = icmp eq ptr %98, null
  %spec.select.i = select i1 %tobool.not.i199, i32 5, i32 1
  %max_frame.i = getelementptr inbounds %struct.ice_vsi, ptr %73, i32 0, i32 33
  %99 = ptrtoint ptr %max_frame.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %max_frame.i, align 4
  %conv6.i = zext i16 %100 to i32
  %conv8.i = zext i16 %90 to i32
  %mul.i = mul nuw nsw i32 %spec.select.i, %conv8.i
  %101 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 %conv6.i) #8
  %rxmax.i = getelementptr inbounds %struct.ice_rlan_ctx, ptr %rlan_ctx.i, i32 0, i32 13
  %102 = ptrtoint ptr %rxmax.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %rxmax.i, align 8
  %lrxqthresh.i = getelementptr inbounds %struct.ice_rlan_ctx, ptr %rlan_ctx.i, i32 0, i32 18
  %103 = ptrtoint ptr %lrxqthresh.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 1, ptr %lrxqthresh.i, align 8
  %type.i = getelementptr inbounds %struct.ice_vsi, ptr %73, i32 0, i32 17
  %104 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp10.not.i = icmp eq i32 %105, 1
  br i1 %cmp10.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ice_write_qrxflxp_cntxt(ptr noundef %hw2.i, i16 noundef zeroext %81, i32 noundef 2, i32 noundef 3, i1 noundef zeroext true) #8
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ice_write_qrxflxp_cntxt(ptr noundef %hw2.i, i16 noundef zeroext %81, i32 noundef 1, i32 noundef 3, i1 noundef zeroext false) #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then12.i
  %conv14.i = zext i16 %81 to i32
  %call.i = call i32 @ice_write_rxq_ctx(ptr noundef %hw2.i, ptr noundef nonnull %rlan_ctx.i, i32 noundef %conv14.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool15.not.i, label %if.end19.i, label %do.end67

if.end19.i:                                       ; preds = %if.end13.i
  %106 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp21.i = icmp eq i32 %107, 1
  br i1 %cmp21.i, label %if.end19.i.if.end70_crit_edge, label %if.end24.i

if.end19.i.if.end70_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end24.i:                                       ; preds = %if.end19.i
  %108 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %73, align 128
  %tobool25.not.i = icmp eq ptr %109, null
  br i1 %tobool25.not.i, label %if.end24.i.if.then29.i_crit_edge, label %lor.lhs.false.i200

if.end24.i.if.then29.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

lor.lhs.false.i200:                               ; preds = %if.end24.i
  %110 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %back.i, align 8
  %flags.i = getelementptr inbounds %struct.ice_pf, ptr %111, i32 0, i32 21
  %112 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %flags.i, align 4
  %114 = and i32 %113, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool28.not.i = icmp eq i32 %114, 0
  br i1 %tobool28.not.i, label %if.else30.i, label %lor.lhs.false.i200.if.then29.i_crit_edge

lor.lhs.false.i200.if.then29.i_crit_edge:         ; preds = %lor.lhs.false.i200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.then29.i:                                      ; preds = %lor.lhs.false.i200.if.then29.i_crit_edge, %if.end24.i.if.then29.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 31
  %115 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %flags.i.i, align 2
  %117 = and i8 %116, -3
  store i8 %117, ptr %flags.i.i, align 2
  br label %if.end31.i

if.else30.i:                                      ; preds = %lor.lhs.false.i200
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i75.i = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 31
  %118 = ptrtoint ptr %flags.i75.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %flags.i75.i, align 2
  %120 = or i8 %119, 2
  store i8 %120, ptr %flags.i75.i, align 2
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else30.i, %if.then29.i
  %flags.i.i.i = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 31
  %121 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %flags.i.i.i, align 2
  %123 = and i8 %122, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.i.not.i.i = icmp eq i8 %123, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.end31.i.ice_rx_offset.exit.i_crit_edge

if.end31.i.ice_rx_offset.exit.i_crit_edge:        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_rx_offset.exit.i

if.else.i.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vsi, align 16
  %xdp_prog.i.i.i = getelementptr inbounds %struct.ice_vsi, ptr %125, i32 0, i32 57
  %126 = ptrtoint ptr %xdp_prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %xdp_prog.i.i.i, align 4
  %tobool.i6.not.i.i = icmp eq ptr %127, null
  %phi.cast.i = select i1 %tobool.i6.not.i.i, i16 0, i16 256
  br label %ice_rx_offset.exit.i

ice_rx_offset.exit.i:                             ; preds = %if.else.i.i, %if.end31.i.ice_rx_offset.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %phi.cast.i, %if.else.i.i ], [ 258, %if.end31.i.ice_rx_offset.exit.i_crit_edge ]
  %rx_offset.i = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 16
  %128 = ptrtoint ptr %rx_offset.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %retval.0.i.i, ptr %rx_offset.i, align 4
  %129 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hw2.i, align 8
  %mul35.i = shl nuw nsw i32 %conv14.i, 2
  %add.i = add nuw nsw i32 %mul35.i, 2686976
  %add.ptr.i = getelementptr i8, ptr %130, i32 %add.i
  %tail.i = getelementptr inbounds %struct.ice_rx_ring, ptr %ring, i32 0, i32 6
  %131 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %add.ptr.i, ptr %tail.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  call void @arm_heavy_mb() #8
  %132 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tail.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 0) #8, !srcloc !75
  br label %if.end70

do.end67:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %134 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %back.i, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %137, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %conv14.i, i32 noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rlan_ctx.i) #8
  %138 = ptrtoint ptr %q_index.i196 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %q_index.i196, align 128
  %conv69 = zext i16 %139 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %conv69, i32 noundef -5) #12
  br label %cleanup102

if.end70:                                         ; preds = %ice_rx_offset.exit.i, %if.end19.i.if.end70_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rlan_ctx.i) #8
  %140 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %xsk_pool.i, align 4
  %tobool72.not = icmp eq ptr %141, null
  br i1 %tobool72.not, label %if.end100, label %if.then73

if.then73:                                        ; preds = %if.end70
  %conv75 = zext i16 %sub9 to i32
  %call.i202 = call zeroext i1 @xp_can_alloc(ptr noundef nonnull %141, i32 noundef %conv75) #8
  br i1 %call.i202, label %if.end87, label %do.end80

do.end80:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %q_index.i196 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %q_index.i196, align 128
  %conv83 = zext i16 %143 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %conv75, i32 noundef %conv83) #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.14) #12
  br label %cleanup102

if.end87:                                         ; preds = %if.then73
  %call88 = call zeroext i1 @ice_alloc_rx_bufs_zc(ptr noundef %ring, i16 noundef zeroext %sub9) #8
  br i1 %call88, label %if.end87.cleanup102_crit_edge, label %if.then90

if.end87.cleanup102_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup102

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %vsi, align 16
  %rxq_map = getelementptr inbounds %struct.ice_vsi, ptr %145, i32 0, i32 46
  %146 = ptrtoint ptr %rxq_map to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rxq_map, align 4
  %148 = ptrtoint ptr %q_index.i196 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %q_index.i196, align 128
  %idxprom = zext i16 %149 to i32
  %arrayidx = getelementptr i16, ptr %147, i32 %idxprom
  %150 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %arrayidx, align 2
  %conv98 = zext i16 %151 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %idxprom, i32 noundef %conv98) #12
  br label %cleanup102

if.end100:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %call101 = call zeroext i1 @ice_alloc_rx_bufs(ptr noundef %ring, i16 noundef zeroext %sub9) #8
  br label %cleanup102

cleanup102:                                       ; preds = %if.end100, %if.then90, %if.end87.cleanup102_crit_edge, %do.end80, %do.end67, %if.end54.cleanup102_crit_edge, %if.end7.i.i.i192.cleanup102_crit_edge, %if.end25.cleanup102_crit_edge, %if.end7.i.i.i.cleanup102_crit_edge
  %retval.1 = phi i32 [ -5, %do.end67 ], [ 0, %if.end100 ], [ -12, %if.end7.i.i.i.cleanup102_crit_edge ], [ %call32, %if.end25.cleanup102_crit_edge ], [ -12, %if.end7.i.i.i192.cleanup102_crit_edge ], [ %call56, %if.end54.cleanup102_crit_edge ], [ 0, %if.end87.cleanup102_crit_edge ], [ 0, %if.then90 ], [ 0, %do.end80 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xdp_rxq_info_is_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg_mem_model(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg_mem_model(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_alloc_rx_bufs_zc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_alloc_rx_bufs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ice_vsi_get_qs(ptr nocapture noundef %qs_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qs_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qs_cfg, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %pf_map.i = getelementptr inbounds %struct.ice_qs_cfg, ptr %qs_cfg, i32 0, i32 1
  %2 = ptrtoint ptr %pf_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf_map.i, align 4
  %pf_map_size.i = getelementptr inbounds %struct.ice_qs_cfg, ptr %qs_cfg, i32 0, i32 2
  %4 = ptrtoint ptr %pf_map_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pf_map_size.i, align 4
  %q_count.i = getelementptr inbounds %struct.ice_qs_cfg, ptr %qs_cfg, i32 0, i32 3
  %6 = ptrtoint ptr %q_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q_count.i, align 4
  %call.i.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %3, i32 noundef %5, i32 noundef 0, i32 noundef %7, i32 noundef 0, i32 noundef 0) #8
  %8 = ptrtoint ptr %pf_map_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pf_map_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %9)
  %cmp.not.i = icmp ult i32 %call.i.i, %9
  br i1 %cmp.not.i, label %if.end.i, label %if.then

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %pf_map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf_map.i, align 4
  %12 = ptrtoint ptr %q_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q_count.i, align 4
  tail call void @__bitmap_set(ptr noundef %11, i32 noundef %call.i.i, i32 noundef %13) #8
  %14 = ptrtoint ptr %q_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %q_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp627.not.i = icmp eq i32 %15, 0
  br i1 %cmp627.not.i, label %if.end.i.if.end_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %vsi_map.i = getelementptr inbounds %struct.ice_qs_cfg, ptr %qs_cfg, i32 0, i32 5
  %vsi_map_offset.i = getelementptr inbounds %struct.ice_qs_cfg, ptr %qs_cfg, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add i32 %i.028.i, %call.i.i
  %conv.i = trunc i32 %add.i to i16
  %16 = ptrtoint ptr %vsi_map.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vsi_map.i, align 4
  %18 = ptrtoint ptr %vsi_map_offset.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vsi_map_offset.i, align 4
  %conv7.i = zext i16 %19 to i32
  %add8.i = add i32 %i.028.i, %conv7.i
  %arrayidx.i = getelementptr i16, ptr %17, i32 %add8.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %arrayidx.i, align 2
  %inc.i = add nuw i32 %i.028.i, 1
  %21 = ptrtoint ptr %q_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %q_count.i, align 4
  %cmp6.i = icmp ult i32 %inc.i, %22
  br i1 %cmp6.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then:                                          ; preds = %entry
  %23 = ptrtoint ptr %qs_cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qs_cfg, align 4
  tail call void @mutex_unlock(ptr noundef %24) #8
  %mapping_mode = getelementptr inbounds %struct.ice_qs_cfg, ptr %qs_cfg, i32 0, i32 7
  %25 = ptrtoint ptr %mapping_mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %mapping_mode, align 2
  %26 = ptrtoint ptr %q_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %q_count.i, align 4
  %scatter_count = getelementptr inbounds %struct.ice_qs_cfg, ptr %qs_cfg, i32 0, i32 4
  %28 = ptrtoint ptr %scatter_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scatter_count, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %27, i32 %29)
  %31 = ptrtoint ptr %q_count.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %q_count.i, align 4
  %32 = ptrtoint ptr %qs_cfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %qs_cfg, align 4
  tail call void @mutex_lock_nested(ptr noundef %33, i32 noundef 0) #8
  %34 = ptrtoint ptr %q_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %q_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp48.not.i = icmp eq i32 %35, 0
  br i1 %cmp48.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i17

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i17:                               ; preds = %if.then
  %vsi_map.i15 = getelementptr inbounds %struct.ice_qs_cfg, ptr %qs_cfg, i32 0, i32 5
  %vsi_map_offset.i16 = getelementptr inbounds %struct.ice_qs_cfg, ptr %qs_cfg, i32 0, i32 6
  br label %for.body.i18

for.body.i18:                                     ; preds = %if.end.i23.for.body.i18_crit_edge, %for.body.lr.ph.i17
  %index.050.i = phi i32 [ 0, %for.body.lr.ph.i17 ], [ %call.i, %if.end.i23.for.body.i18_crit_edge ]
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i17 ], [ %inc.i22, %if.end.i23.for.body.i18_crit_edge ]
  %36 = ptrtoint ptr %pf_map.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pf_map.i, align 4
  %38 = ptrtoint ptr %pf_map_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pf_map_size.i, align 4
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %37, i32 noundef %39, i32 noundef %index.050.i) #8
  %40 = ptrtoint ptr %pf_map_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pf_map_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %41)
  %cmp2.not.i = icmp ult i32 %call.i, %41
  br i1 %cmp2.not.i, label %if.end.i23, label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.049.i)
  %cmp751.not.i = icmp eq i32 %i.049.i, 0
  br i1 %cmp751.not.i, label %for.cond6.preheader.i.if.end_crit_edge, label %for.cond6.preheader.i.for.body9.i_crit_edge

for.cond6.preheader.i.for.body9.i_crit_edge:      ; preds = %for.cond6.preheader.i
  br label %for.body9.i

for.cond6.preheader.i.if.end_crit_edge:           ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i23:                                       ; preds = %for.body.i18
  %42 = ptrtoint ptr %pf_map.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pf_map.i, align 4
  tail call void @_set_bit(i32 noundef %call.i, ptr noundef %43) #8
  %conv.i19 = trunc i32 %call.i to i16
  %44 = ptrtoint ptr %vsi_map.i15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vsi_map.i15, align 4
  %46 = ptrtoint ptr %vsi_map_offset.i16 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vsi_map_offset.i16, align 4
  %conv4.i = zext i16 %47 to i32
  %add.i20 = add i32 %i.049.i, %conv4.i
  %arrayidx.i21 = getelementptr i16, ptr %45, i32 %add.i20
  %48 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i19, ptr %arrayidx.i21, align 2
  %inc.i22 = add nuw i32 %i.049.i, 1
  %49 = ptrtoint ptr %q_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %q_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i22, %50
  br i1 %cmp.i, label %if.end.i23.for.body.i18_crit_edge, label %if.end.i23.if.end_crit_edge

if.end.i23.if.end_crit_edge:                      ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i23.for.body.i18_crit_edge:                ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i18

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %for.cond6.preheader.i.for.body9.i_crit_edge
  %index.152.i = phi i32 [ %inc20.i, %for.body9.i.for.body9.i_crit_edge ], [ 0, %for.cond6.preheader.i.for.body9.i_crit_edge ]
  %51 = ptrtoint ptr %vsi_map.i15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vsi_map.i15, align 4
  %arrayidx11.i = getelementptr i16, ptr %52, i32 %index.152.i
  %53 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %pf_map.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pf_map.i, align 4
  tail call void @_clear_bit(i32 noundef %conv12.i, ptr noundef %56) #8
  %57 = ptrtoint ptr %vsi_map.i15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vsi_map.i15, align 4
  %59 = ptrtoint ptr %vsi_map_offset.i16 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vsi_map_offset.i16, align 4
  %conv16.i = zext i16 %60 to i32
  %add17.i = add i32 %index.152.i, %conv16.i
  %arrayidx18.i = getelementptr i16, ptr %58, i32 %add17.i
  %61 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %arrayidx18.i, align 2
  %inc20.i = add nuw i32 %index.152.i, 1
  %exitcond.not.i = icmp eq i32 %inc20.i, %i.049.i
  br i1 %exitcond.not.i, label %for.body9.i.if.end_crit_edge, label %for.body9.i.for.body9.i_crit_edge

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.i

for.body9.i.if.end_crit_edge:                     ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body9.i.if.end_crit_edge, %if.end.i23.if.end_crit_edge, %for.cond6.preheader.i.if.end_crit_edge, %if.then.if.end_crit_edge, %for.body.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.i.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ -12, %for.cond6.preheader.i.if.end_crit_edge ], [ 0, %for.body.i.if.end_crit_edge ], [ -12, %for.body9.i.if.end_crit_edge ], [ 0, %if.end.i23.if.end_crit_edge ]
  %62 = ptrtoint ptr %qs_cfg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %qs_cfg, align 4
  tail call void @mutex_unlock(ptr noundef %63) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_vsi_ctrl_one_rx_ring(ptr nocapture noundef readonly %vsi, i1 noundef zeroext %ena, i16 noundef zeroext %rxq_idx, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq_map = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 46
  %0 = ptrtoint ptr %rxq_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxq_map, align 4
  %idxprom = zext i16 %rxq_idx to i32
  %arrayidx = getelementptr i16, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 8
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 58
  %6 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw2, align 8
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 1179648
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !76
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  %cmp = xor i1 %11, %ena
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and10 = and i32 %9, -2
  %masksel = zext i1 %ena to i32
  %rx_reg.0 = or i32 %and10, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %rx_reg.0)
  %13 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw2, align 8
  %add.ptr15 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %12) #8, !srcloc !75
  br i1 %wait, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %15 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw2, align 8
  %add.ptr22 = getelementptr i8, ptr %16, i32 745772
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #8, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end18
  %i.07.i = phi i32 [ 0, %if.end18 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw2, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %21 = and i32 %20, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  %cmp4.i = xor i1 %22, %ena
  br i1 %cmp4.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -110, %if.end.i.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_vsi_wait_one_rx_ring(ptr nocapture noundef readonly %vsi, i1 noundef zeroext %ena, i16 noundef zeroext %rxq_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq_map = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 46
  %0 = ptrtoint ptr %rxq_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxq_map, align 4
  %idxprom = zext i16 %rxq_idx to i32
  %arrayidx = getelementptr i16, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 8
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 58
  %mul.i = shl nuw nsw i32 %conv, 2
  %add.i = add nuw nsw i32 %mul.i, 1179648
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.07.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %9 = and i32 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  %cmp4.i = xor i1 %10, %ena
  br i1 %cmp4.i, label %for.body.i.ice_pf_rxq_wait.exit_crit_edge, label %if.end.i

for.body.i.ice_pf_rxq_wait.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_pf_rxq_wait.exit

if.end.i:                                         ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end.i.ice_pf_rxq_wait.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.ice_pf_rxq_wait.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_pf_rxq_wait.exit

ice_pf_rxq_wait.exit:                             ; preds = %if.end.i.ice_pf_rxq_wait.exit_crit_edge, %for.body.i.ice_pf_rxq_wait.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.i.ice_pf_rxq_wait.exit_crit_edge ], [ -110, %if.end.i.ice_pf_rxq_wait.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_vsi_alloc_q_vectors(ptr noundef %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %q_vectors = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 6
  %4 = ptrtoint ptr %q_vectors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q_vectors, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.cond.preheader, label %do.body

for.cond.preheader:                               ; preds = %entry
  %num_q_vectors = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 15
  %8 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_q_vectors, align 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp47.not = icmp eq i16 %9, 0
  br i1 %cmp47.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %type19.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 17
  br label %for.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vsi_alloc_q_vectors.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vsi_alloc_q_vectors, %if.then5)) #8
          to label %cleanup [label %if.then5], !srcloc !81

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %vsi_num = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 18
  %10 = ptrtoint ptr %vsi_num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vsi_num, align 8
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vsi_alloc_q_vectors.__UNIQUE_ID_ddebug618, ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %conv) #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %back, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 640, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %while.cond.preheader, label %if.end.i

while.cond.preheader:                             ; preds = %for.body
  %16 = trunc i32 %indvars.iv to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool14.not49 = icmp eq i16 %16, 0
  br i1 %tobool14.not49, label %while.cond.preheader.do.end18_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.do.end18_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.end.i:                                         ; preds = %for.body
  %17 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vsi, ptr %call.i.i, align 128
  %v_idx2.i = getelementptr inbounds %struct.ice_q_vector, ptr %call.i.i, i32 0, i32 1
  %18 = trunc i32 %indvars.iv to i16
  %19 = ptrtoint ptr %v_idx2.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %v_idx2.i, align 4
  %itr_setting.i = getelementptr inbounds %struct.ice_q_vector, ptr %call.i.i, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %itr_setting.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %itr_setting.i, align 2
  %bf.clear.i = and i16 %bf.load.i, 6
  %itr_setting3.i = getelementptr inbounds %struct.ice_q_vector, ptr %call.i.i, i32 0, i32 8, i32 3
  %21 = ptrtoint ptr %itr_setting3.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load4.i = load i16, ptr %itr_setting3.i, align 2
  %bf.clear5.i = and i16 %bf.load4.i, 6
  %bf.set10.i = or i16 %bf.clear.i, 401
  store i16 %bf.set10.i, ptr %itr_setting.i, align 2
  %bf.set15.i = or i16 %bf.clear5.i, 401
  store i16 %bf.set15.i, ptr %itr_setting3.i, align 2
  %type.i = getelementptr inbounds %struct.ice_q_vector, ptr %call.i.i, i32 0, i32 9, i32 4
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type.i, align 4
  %type18.i = getelementptr inbounds %struct.ice_q_vector, ptr %call.i.i, i32 0, i32 8, i32 4
  %23 = ptrtoint ptr %type18.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %type18.i, align 4
  %24 = ptrtoint ptr %type19.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i = icmp eq i32 %25, 1
  br i1 %cmp.i, label %if.end.i.for.inc_crit_edge, label %if.end21.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end21.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %indvars.iv)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %26, %indvars.iv
  br i1 %cmp.not.i.i.i.i.i, label %if.end21.i.cpu_online.exit.i_crit_edge, label %land.rhs.i.i.i.i.i

if.end21.i.cpu_online.exit.i_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit.i

land.rhs.i.i.i.i.i:                               ; preds = %if.end21.i
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, label %if.then.i.i.i.i.i, !prof !82

land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit.i

cpu_online.exit.i:                                ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, %if.end21.i.cpu_online.exit.i_crit_edge
  %div3.i.i.i.i = lshr i32 %indvars.iv, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i.i
  %27 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %indvars.iv, 31
  %29 = shl nuw i32 1, %and.i.i.i.i
  %30 = and i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i, label %cpu_online.exit.i.if.end25.i_crit_edge, label %if.then23.i

cpu_online.exit.i.if.end25.i_crit_edge:           ; preds = %cpu_online.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then23.i:                                      ; preds = %cpu_online.exit.i
  %affinity_mask.i = getelementptr inbounds %struct.ice_q_vector, ptr %call.i.i, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %indvars.iv)
  %cmp.not.i.i.i.i = icmp ugt i32 %31, %indvars.iv
  br i1 %cmp.not.i.i.i.i, label %if.then23.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.then23.i.cpumask_set_cpu.exit.i_crit_edge:     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.then23.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.then23.i.cpumask_set_cpu.exit.i_crit_edge
  tail call void @_set_bit(i32 noundef %indvars.iv, ptr noundef %affinity_mask.i) #8
  br label %if.end25.i

if.end25.i:                                       ; preds = %cpumask_set_cpu.exit.i, %cpu_online.exit.i.if.end25.i_crit_edge
  %32 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vsi, align 128
  %tobool26.not.i = icmp eq ptr %33, null
  br i1 %tobool26.not.i, label %if.end25.i.for.inc_crit_edge, label %if.then27.i

if.end25.i.for.inc_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %napi.i = getelementptr inbounds %struct.ice_q_vector, ptr %call.i.i, i32 0, i32 7
  tail call void @netif_napi_add(ptr noundef nonnull %33, ptr noundef %napi.i, ptr noundef nonnull @ice_napi_poll, i32 noundef 64) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then27.i, %if.end25.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %34 = ptrtoint ptr %q_vectors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %q_vectors, align 8
  %arrayidx.i = getelementptr ptr, ptr %35, i32 %indvars.iv
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %37 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %num_q_vectors, align 64
  %39 = zext i16 %38 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %39
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %indvars.iv52 = phi i32 [ %40, %while.body.while.body_crit_edge ], [ %indvars.iv, %while.cond.preheader.while.body_crit_edge ]
  %40 = add nsw i32 %indvars.iv52, -1
  tail call fastcc void @ice_free_q_vector(ptr noundef %vsi, i32 noundef %40)
  %tobool14.not.wide = icmp eq i32 %40, 0
  br i1 %tobool14.not.wide, label %while.body.do.end18_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.do.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end18:                                         ; preds = %while.body.do.end18_crit_edge, %while.cond.preheader.do.end18_crit_edge
  %41 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_q_vectors, align 64
  %conv20 = zext i16 %42 to i32
  %vsi_num21 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 18
  %43 = ptrtoint ptr %vsi_num21 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vsi_num21, align 8
  %conv22 = zext i16 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %conv20, i32 noundef %conv22, i32 noundef -12) #12
  %45 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %num_q_vectors, align 64
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %for.inc.cleanup_crit_edge, %if.then5, %do.body, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end18 ], [ -17, %if.then5 ], [ -17, %do.body ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_free_q_vector(ptr nocapture noundef readonly %vsi, i32 noundef %v_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %q_vectors = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 6
  %4 = ptrtoint ptr %q_vectors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q_vectors, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %v_idx
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_free_q_vector.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_free_q_vector, %if.then5)) #8
          to label %cleanup [label %if.then5], !srcloc !81

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_free_q_vector.__UNIQUE_ID_ddebug613, ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %v_idx) #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %tx = getelementptr inbounds %struct.ice_q_vector, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %tx_ring.043 = load ptr, ptr %tx, align 128
  %tobool9.not44 = icmp eq ptr %tx_ring.043, null
  br i1 %tobool9.not44, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %tx_ring.045 = phi ptr [ %tx_ring.0, %for.body.for.body_crit_edge ], [ %tx_ring.043, %if.end6.for.body_crit_edge ]
  %q_vector10 = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.045, i32 0, i32 5
  %9 = ptrtoint ptr %q_vector10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %q_vector10, align 4
  %10 = ptrtoint ptr %tx_ring.045 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tx_ring.0 = load ptr, ptr %tx_ring.045, align 128
  %tobool9.not = icmp eq ptr %tx_ring.0, null
  br i1 %tobool9.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %rx = getelementptr inbounds %struct.ice_q_vector, ptr %7, i32 0, i32 8
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %rx_ring.046 = load ptr, ptr %rx, align 16
  %tobool12.not47 = icmp eq ptr %rx_ring.046, null
  br i1 %tobool12.not47, label %for.end.for.end17_crit_edge, label %for.end.for.body13_crit_edge

for.end.for.body13_crit_edge:                     ; preds = %for.end
  br label %for.body13

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.end.for.body13_crit_edge
  %rx_ring.048 = phi ptr [ %rx_ring.0, %for.body13.for.body13_crit_edge ], [ %rx_ring.046, %for.end.for.body13_crit_edge ]
  %q_vector14 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring.048, i32 0, i32 5
  %12 = ptrtoint ptr %q_vector14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %q_vector14, align 4
  %13 = ptrtoint ptr %rx_ring.048 to i32
  call void @__asan_load4_noabort(i32 %13)
  %rx_ring.0 = load ptr, ptr %rx_ring.048, align 16
  %tobool12.not = icmp eq ptr %rx_ring.0, null
  br i1 %tobool12.not, label %for.body13.for.end17_crit_edge, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

for.body13.for.end17_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.end17:                                        ; preds = %for.body13.for.end17_crit_edge, %for.end.for.end17_crit_edge
  %14 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vsi, align 128
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %for.end17.if.end20_crit_edge, label %if.then19

for.end17.if.end20_crit_edge:                     ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #10
  %napi = getelementptr inbounds %struct.ice_q_vector, ptr %7, i32 0, i32 7
  tail call void @__netif_napi_del(ptr noundef %napi) #8
  tail call void @synchronize_net() #8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %for.end17.if.end20_crit_edge
  tail call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %7) #8
  %16 = ptrtoint ptr %q_vectors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %q_vectors, align 8
  %arrayidx22 = getelementptr ptr, ptr %17, i32 %v_idx
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then5, %do.body
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_vsi_map_rings_to_vectors(ptr nocapture noundef readonly %vsi) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_q_vectors = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 15
  %0 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_q_vectors, align 64
  %conv = zext i16 %1 to i32
  %num_txq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 48
  %num_rxq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 50
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp124.not = icmp eq i16 %1, 0
  br i1 %cmp124.not, label %entry.for.end66_crit_edge, label %for.body.lr.ph

entry.for.end66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end66

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_rxq, align 2
  %4 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_txq, align 2
  %q_vectors2 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 6
  %tx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 5
  %rx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.end59.for.body_crit_edge, %for.body.lr.ph
  %tx_rings_rem.0127 = phi i16 [ %5, %for.body.lr.ph ], [ %conv28, %for.end59.for.body_crit_edge ]
  %v_id.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %inc65, %for.end59.for.body_crit_edge ]
  %rx_rings_rem.0125 = phi i16 [ %3, %for.body.lr.ph ], [ %conv63, %for.end59.for.body_crit_edge ]
  %6 = ptrtoint ptr %q_vectors2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q_vectors2, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %v_id.0126
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %conv3 = zext i16 %tx_rings_rem.0127 to i32
  %sub = sub nsw i32 %conv, %v_id.0126
  %add = add nsw i32 %sub, -1
  %sub4 = add i32 %add, %conv3
  %div = sdiv i32 %sub4, %sub
  %conv6 = trunc i32 %div to i8
  %num_ring_tx = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %num_ring_tx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %num_ring_tx, align 1
  %tx = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 9
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx, align 128
  %itr_idx = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %itr_idx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %itr_idx, align 8
  %13 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_txq, align 2
  %sub11 = sub i16 %14, %tx_rings_rem.0127
  %conv15 = zext i16 %sub11 to i32
  %conv16 = and i32 %div, 255
  %add17 = add nuw nsw i32 %conv16, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16)
  %cmp18116.not = icmp eq i32 %conv16, 0
  br i1 %cmp18116.not, label %for.body.for.end_crit_edge, label %for.body.for.body20_crit_edge

for.body.for.body20_crit_edge:                    ; preds = %for.body
  br label %for.body20

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body.for.body20_crit_edge
  %conv14118 = phi i32 [ %conv14, %for.body20.for.body20_crit_edge ], [ %conv15, %for.body.for.body20_crit_edge ]
  %q_id.0117 = phi i16 [ %inc, %for.body20.for.body20_crit_edge ], [ %sub11, %for.body.for.body20_crit_edge ]
  %15 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_rings, align 4
  %arrayidx21 = getelementptr ptr, ptr %16, i32 %conv14118
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx21, align 4
  %q_vector22 = getelementptr inbounds %struct.ice_tx_ring, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %q_vector22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %9, ptr %q_vector22, align 4
  %20 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx, align 128
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %18, align 128
  store ptr %18, ptr %tx, align 128
  %inc = add i16 %q_id.0117, 1
  %conv14 = zext i16 %inc to i32
  %cmp18 = icmp ugt i32 %add17, %conv14
  br i1 %cmp18, label %for.body20.for.body20_crit_edge, label %for.body20.for.end_crit_edge

for.body20.for.end_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20

for.end:                                          ; preds = %for.body20.for.end_crit_edge, %for.body.for.end_crit_edge
  %23 = trunc i32 %conv16 to i16
  %conv28 = sub i16 %tx_rings_rem.0127, %23
  %conv29 = zext i16 %rx_rings_rem.0125 to i32
  %sub32 = add i32 %add, %conv29
  %div34 = sdiv i32 %sub32, %sub
  %conv35 = trunc i32 %div34 to i8
  %num_ring_rx = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 3
  %24 = ptrtoint ptr %num_ring_rx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv35, ptr %num_ring_rx, align 8
  %rx = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 8
  %25 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rx, align 16
  %itr_idx37 = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 8, i32 2
  %26 = ptrtoint ptr %itr_idx37 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %itr_idx37, align 8
  %27 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_rxq, align 2
  %sub41 = sub i16 %28, %rx_rings_rem.0125
  %conv45 = zext i16 %sub41 to i32
  %conv46 = and i32 %div34, 255
  %add47 = add nuw nsw i32 %conv46, %conv45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv46)
  %cmp48120.not = icmp eq i32 %conv46, 0
  br i1 %cmp48120.not, label %for.end.for.end59_crit_edge, label %for.end.for.body50_crit_edge

for.end.for.body50_crit_edge:                     ; preds = %for.end
  br label %for.body50

for.end.for.end59_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end59

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.end.for.body50_crit_edge
  %conv44122 = phi i32 [ %conv44, %for.body50.for.body50_crit_edge ], [ %conv45, %for.end.for.body50_crit_edge ]
  %q_id.1121 = phi i16 [ %inc58, %for.body50.for.body50_crit_edge ], [ %sub41, %for.end.for.body50_crit_edge ]
  %29 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_rings, align 16
  %arrayidx52 = getelementptr ptr, ptr %30, i32 %conv44122
  %31 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx52, align 4
  %q_vector53 = getelementptr inbounds %struct.ice_rx_ring, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %q_vector53 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %9, ptr %q_vector53, align 4
  %34 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx, align 16
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %32, align 128
  store ptr %32, ptr %rx, align 16
  %inc58 = add i16 %q_id.1121, 1
  %conv44 = zext i16 %inc58 to i32
  %cmp48 = icmp ugt i32 %add47, %conv44
  br i1 %cmp48, label %for.body50.for.body50_crit_edge, label %for.body50.for.end59_crit_edge

for.body50.for.end59_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end59

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body50

for.end59:                                        ; preds = %for.body50.for.end59_crit_edge, %for.end.for.end59_crit_edge
  %37 = trunc i32 %conv46 to i16
  %conv63 = sub i16 %rx_rings_rem.0125, %37
  %inc65 = add nuw nsw i32 %v_id.0126, 1
  %exitcond.not = icmp eq i32 %inc65, %conv
  br i1 %exitcond.not, label %for.end59.for.end66_crit_edge, label %for.end59.for.body_crit_edge

for.end59.for.body_crit_edge:                     ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end59.for.end66_crit_edge:                    ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end66

for.end66:                                        ; preds = %for.end59.for.end66_crit_edge, %entry.for.end66_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_vsi_free_q_vectors(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_q_vectors = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 15
  %0 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_q_vectors, align 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp6.not = icmp eq i16 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %v_idx.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call fastcc void @ice_free_q_vector(ptr noundef %vsi, i32 noundef %v_idx.07)
  %inc = add nuw nsw i32 %v_idx.07, 1
  %2 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_q_vectors, align 64
  %conv = zext i16 %3 to i32
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_vsi_cfg_txq(ptr nocapture noundef readonly %vsi, ptr noundef %ring, ptr noundef %qg_buf) local_unnamed_addr #0 align 64 {
entry:
  %tlan_ctx = alloca %struct.ice_tlan_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tlan_ctx) #8
  %0 = getelementptr inbounds i8, ptr %tlan_ctx, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %ch1 = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 23
  %2 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch1, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 8
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 58
  %q_vector.i = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %q_vector.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q_vector.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.ice_cfg_xps_tx_ring.exit_crit_edge, label %lor.lhs.false.i

entry.ice_cfg_xps_tx_ring.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_cfg_xps_tx_ring.exit

lor.lhs.false.i:                                  ; preds = %entry
  %netdev.i = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 6
  %8 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev.i, align 8
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ice_cfg_xps_tx_ring.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ice_cfg_xps_tx_ring.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_cfg_xps_tx_ring.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %xps_state.i = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 22
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %xps_state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.ice_cfg_xps_tx_ring.exit_crit_edge

if.end.i.ice_cfg_xps_tx_ring.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_cfg_xps_tx_ring.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev.i, align 8
  %12 = ptrtoint ptr %q_vector.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %q_vector.i, align 4
  %affinity_mask.i = getelementptr inbounds %struct.ice_q_vector, ptr %13, i32 0, i32 10
  %q_index.i = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 17
  %14 = ptrtoint ptr %q_index.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %q_index.i, align 2
  %call7.i = tail call i32 @netif_set_xps_queue(ptr noundef %11, ptr noundef %affinity_mask.i, i16 noundef zeroext %15) #8
  br label %ice_cfg_xps_tx_ring.exit

ice_cfg_xps_tx_ring.exit:                         ; preds = %if.end4.i, %if.end.i.ice_cfg_xps_tx_ring.exit_crit_edge, %lor.lhs.false.i.ice_cfg_xps_tx_ring.exit_crit_edge, %entry.ice_cfg_xps_tx_ring.exit_crit_edge
  %reg_idx = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 15
  %16 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg_idx, align 2
  %vsi1.i = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 7
  %18 = ptrtoint ptr %vsi1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vsi1.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %back.i, align 8
  %hw2.i = getelementptr inbounds %struct.ice_pf, ptr %21, i32 0, i32 58
  %dma.i = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 8
  %22 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma.i, align 32
  %shr.i = lshr i32 %23, 7
  %conv.i = zext i32 %shr.i to i64
  %24 = ptrtoint ptr %tlan_ctx to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv.i, ptr %tlan_ctx, align 8
  %port_info.i = getelementptr inbounds %struct.ice_vsi, ptr %19, i32 0, i32 3
  %25 = ptrtoint ptr %port_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port_info.i, align 4
  %lport.i = getelementptr inbounds %struct.ice_port_info, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %lport.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lport.i, align 1
  %port_num.i = getelementptr inbounds %struct.ice_tlan_ctx, ptr %tlan_ctx, i32 0, i32 1
  %29 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %port_num.i, align 8
  %count.i = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 16
  %30 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %count.i, align 4
  %conv3.i = zext i16 %31 to i32
  %qlen.i = getelementptr inbounds %struct.ice_tlan_ctx, ptr %tlan_ctx, i32 0, i32 19
  %32 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv3.i, ptr %qlen.i, align 4
  %dcb_tc.i = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 28
  %33 = ptrtoint ptr %dcb_tc.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dcb_tc.i, align 1
  %conv.i.i = zext i8 %34 to i16
  %cgd_num.i.i = getelementptr inbounds %struct.ice_tlan_ctx, ptr %tlan_ctx, i32 0, i32 2
  %35 = ptrtoint ptr %cgd_num.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i, ptr %cgd_num.i.i, align 2
  %pf_id.i = getelementptr inbounds %struct.ice_pf, ptr %21, i32 0, i32 58, i32 13
  %36 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pf_id.i, align 1
  %pf_num.i = getelementptr inbounds %struct.ice_tlan_ctx, ptr %tlan_ctx, i32 0, i32 3
  %38 = ptrtoint ptr %pf_num.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %pf_num.i, align 4
  %type.i = getelementptr inbounds %struct.ice_vsi, ptr %19, i32 0, i32 17
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %ice_cfg_xps_tx_ring.exit.ice_setup_tx_ctx.exit_crit_edge [
    i32 6, label %ice_cfg_xps_tx_ring.exit.sw.bb.i_crit_edge
    i32 3, label %ice_cfg_xps_tx_ring.exit.sw.bb.i_crit_edge104
    i32 0, label %ice_cfg_xps_tx_ring.exit.sw.bb.i_crit_edge105
    i32 1, label %sw.bb5.i
    i32 7, label %ice_cfg_xps_tx_ring.exit.sw.epilog.i_crit_edge
  ]

ice_cfg_xps_tx_ring.exit.sw.epilog.i_crit_edge:   ; preds = %ice_cfg_xps_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

ice_cfg_xps_tx_ring.exit.sw.bb.i_crit_edge105:    ; preds = %ice_cfg_xps_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

ice_cfg_xps_tx_ring.exit.sw.bb.i_crit_edge104:    ; preds = %ice_cfg_xps_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

ice_cfg_xps_tx_ring.exit.sw.bb.i_crit_edge:       ; preds = %ice_cfg_xps_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

ice_cfg_xps_tx_ring.exit.ice_setup_tx_ctx.exit_crit_edge: ; preds = %ice_cfg_xps_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_setup_tx_ctx.exit

sw.bb.i:                                          ; preds = %ice_cfg_xps_tx_ring.exit.sw.bb.i_crit_edge, %ice_cfg_xps_tx_ring.exit.sw.bb.i_crit_edge104, %ice_cfg_xps_tx_ring.exit.sw.bb.i_crit_edge105
  %42 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ch1, align 4
  %tobool.not.i81 = icmp eq ptr %43, null
  %vmvf_type4.i = getelementptr inbounds %struct.ice_tlan_ctx, ptr %tlan_ctx, i32 0, i32 5
  br i1 %tobool.not.i81, label %sw.epilog.i.thread, label %sw.epilog.i.thread90

sw.epilog.i.thread90:                             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %vmvf_type4.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %vmvf_type4.i, align 8
  br label %if.then13.i

sw.epilog.i.thread:                               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %vmvf_type4.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %vmvf_type4.i, align 8
  br label %if.else15.i

sw.bb5.i:                                         ; preds = %ice_cfg_xps_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #10
  %vf_base_id.i = getelementptr inbounds %struct.ice_pf, ptr %21, i32 0, i32 58, i32 28, i32 2
  %46 = ptrtoint ptr %vf_base_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vf_base_id.i, align 4
  %vf_id.i = getelementptr inbounds %struct.ice_vsi, ptr %19, i32 0, i32 20
  %48 = ptrtoint ptr %vf_id.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vf_id.i, align 4
  %50 = trunc i32 %47 to i16
  %conv7.i = add i16 %49, %50
  %vmvf_num.i = getelementptr inbounds %struct.ice_tlan_ctx, ptr %tlan_ctx, i32 0, i32 4
  %51 = ptrtoint ptr %vmvf_num.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv7.i, ptr %vmvf_num.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %ice_cfg_xps_tx_ring.exit.sw.epilog.i_crit_edge
  %.sink = phi i8 [ 0, %sw.bb5.i ], [ 1, %ice_cfg_xps_tx_ring.exit.sw.epilog.i_crit_edge ]
  %vmvf_type10.i = getelementptr inbounds %struct.ice_tlan_ctx, ptr %tlan_ctx, i32 0, i32 5
  %52 = ptrtoint ptr %vmvf_type10.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %.sink, ptr %vmvf_type10.i, align 8
  %53 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load ptr, ptr %ch1, align 4
  %tobool12.not.i = icmp eq ptr %.pr, null
  br i1 %tobool12.not.i, label %sw.epilog.i.if.else15.i_crit_edge, label %sw.epilog.i.if.then13.i_crit_edge

sw.epilog.i.if.then13.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

sw.epilog.i.if.else15.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15.i

if.then13.i:                                      ; preds = %sw.epilog.i.if.then13.i_crit_edge, %sw.epilog.i.thread90
  %54 = phi ptr [ %43, %sw.epilog.i.thread90 ], [ %.pr, %sw.epilog.i.if.then13.i_crit_edge ]
  %vsi_num.i = getelementptr inbounds %struct.ice_channel, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %vsi_num.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vsi_num.i, align 2
  br label %if.end17.i

if.else15.i:                                      ; preds = %sw.epilog.i.if.else15.i_crit_edge, %sw.epilog.i.thread
  %idx.i = getelementptr inbounds %struct.ice_vsi, ptr %19, i32 0, i32 19
  %57 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %idx.i, align 2
  %call.i82 = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw2.i, i16 noundef zeroext %58) #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else15.i, %if.then13.i
  %.sink.i = phi i16 [ %call.i82, %if.else15.i ], [ %56, %if.then13.i ]
  %59 = getelementptr inbounds %struct.ice_tlan_ctx, ptr %tlan_ctx, i32 0, i32 6
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %.sink.i, ptr %59, align 2
  %61 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cond.i = icmp eq i32 %62, 0
  br i1 %cond.i, label %sw.bb19.i, label %if.end17.i.sw.epilog21.i_crit_edge

if.end17.i.sw.epilog21.i_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21.i

sw.bb19.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %tsyn_ena.i = getelementptr inbounds %struct.ice_tlan_ctx, ptr %tlan_ctx, i32 0, i32 7
  %63 = ptrtoint ptr %tsyn_ena.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %tsyn_ena.i, align 4
  br label %sw.epilog21.i

sw.epilog21.i:                                    ; preds = %sw.bb19.i, %if.end17.i.sw.epilog21.i_crit_edge
  %tso_ena.i = getelementptr inbounds %struct.ice_tlan_ctx, ptr %tlan_ctx, i32 0, i32 21
  %64 = ptrtoint ptr %tso_ena.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %tso_ena.i, align 1
  %tso_qnum.i = getelementptr inbounds %struct.ice_tlan_ctx, ptr %tlan_ctx, i32 0, i32 22
  %65 = ptrtoint ptr %tso_qnum.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %17, ptr %tso_qnum.i, align 2
  %legacy_int.i = getelementptr inbounds %struct.ice_tlan_ctx, ptr %tlan_ctx, i32 0, i32 23
  %66 = ptrtoint ptr %legacy_int.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %legacy_int.i, align 4
  br label %ice_setup_tx_ctx.exit

ice_setup_tx_ctx.exit:                            ; preds = %sw.epilog21.i, %ice_cfg_xps_tx_ring.exit.ice_setup_tx_ctx.exit_crit_edge
  %67 = tail call i16 @llvm.bswap.i16(i16 %17)
  %txqs = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %qg_buf, i32 0, i32 3
  %68 = ptrtoint ptr %txqs to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %txqs, align 4
  %txq_ctx = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %qg_buf, i32 2
  %call5 = call i32 @ice_set_ctx(ptr noundef %hw2, ptr noundef nonnull %tlan_ctx, ptr noundef %txq_ctx, ptr noundef nonnull @ice_tlan_ctx_info) #8
  %69 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw2, align 8
  %conv6 = zext i16 %17 to i32
  %mul = shl nuw nsw i32 %conv6, 2
  %add = or i32 %mul, 2883584
  %add.ptr = getelementptr i8, ptr %70, i32 %add
  %tail = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 3
  %71 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr, ptr %tail, align 4
  %72 = ptrtoint ptr %dcb_tc.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dcb_tc.i, align 1
  %type = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 17
  %74 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %75)
  %cmp = icmp eq i32 %75, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %ice_setup_tx_ctx.exit
  %76 = ptrtoint ptr %vsi1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vsi1.i, align 4
  %num_txq.i = getelementptr inbounds %struct.ice_vsi, ptr %77, i32 0, i32 48
  %78 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %num_txq.i, align 2
  %conv.i84 = zext i16 %79 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %cmp13.not.i = icmp eq i16 %79, 0
  br i1 %cmp13.not.i, label %if.then.ice_eswitch_calc_txq_handle.exit.thread_crit_edge, label %for.body.lr.ph.i

if.then.ice_eswitch_calc_txq_handle.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_calc_txq_handle.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.then
  %tx_rings.i = getelementptr inbounds %struct.ice_vsi, ptr %77, i32 0, i32 5
  %80 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tx_rings.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %81, i32 %i.014.i
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i, align 4
  %cmp3.i = icmp eq ptr %83, %ring
  br i1 %cmp3.i, label %ice_eswitch_calc_txq_handle.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i84
  br i1 %exitcond.not.i, label %for.inc.i.ice_eswitch_calc_txq_handle.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.ice_eswitch_calc_txq_handle.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_calc_txq_handle.exit.thread

ice_eswitch_calc_txq_handle.exit.thread:          ; preds = %for.inc.i.ice_eswitch_calc_txq_handle.exit.thread_crit_edge, %if.then.ice_eswitch_calc_txq_handle.exit.thread_crit_edge
  %q_handle93 = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 14
  %84 = ptrtoint ptr %q_handle93 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 -1, ptr %q_handle93, align 16
  br label %cleanup

ice_eswitch_calc_txq_handle.exit:                 ; preds = %for.body.i
  %conv5.i = trunc i32 %i.014.i to i16
  %q_handle = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 14
  %85 = ptrtoint ptr %q_handle to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv5.i, ptr %q_handle, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv5.i)
  %cmp11 = icmp eq i16 %conv5.i, -1
  br i1 %cmp11, label %ice_eswitch_calc_txq_handle.exit.cleanup_crit_edge, label %ice_eswitch_calc_txq_handle.exit.if.end16_crit_edge

ice_eswitch_calc_txq_handle.exit.if.end16_crit_edge: ; preds = %ice_eswitch_calc_txq_handle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

ice_eswitch_calc_txq_handle.exit.cleanup_crit_edge: ; preds = %ice_eswitch_calc_txq_handle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %ice_setup_tx_ctx.exit
  %flags.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 27
  %86 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %flags.i.i, align 4
  %88 = and i8 %87, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.i.i = icmp ne i8 %88, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.i = icmp ne i8 %73, 0
  %spec.select.i = and i1 %tobool.i, %tobool.i.i
  br i1 %spec.select.i, label %land.rhs4.i, label %if.else.ice_calc_txq_handle.exit_crit_edge

if.else.ice_calc_txq_handle.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_calc_txq_handle.exit

land.rhs4.i:                                      ; preds = %if.else
  %.b58.i = load i1, ptr @ice_calc_txq_handle.__already_done, align 1
  br i1 %.b58.i, label %land.rhs4.i.ice_calc_txq_handle.exit_crit_edge, label %if.then.i86, !prof !82

land.rhs4.i.ice_calc_txq_handle.exit_crit_edge:   ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_calc_txq_handle.exit

if.then.i86:                                      ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ice_calc_txq_handle.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 226, i32 noundef 9, ptr noundef nonnull @.str.34) #8
  br label %ice_calc_txq_handle.exit

ice_calc_txq_handle.exit:                         ; preds = %if.then.i86, %land.rhs4.i.ice_calc_txq_handle.exit_crit_edge, %if.else.ice_calc_txq_handle.exit_crit_edge
  %89 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ch1, align 4
  %tobool39.not.i = icmp eq ptr %90, null
  %q_index46.i = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 17
  %91 = ptrtoint ptr %q_index46.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %q_index46.i, align 2
  %idxprom.i = zext i8 %73 to i32
  %arrayidx.i88 = getelementptr %struct.ice_vsi, ptr %vsi, i32 0, i32 56, i32 2, i32 %idxprom.i
  %base_q.i = getelementptr inbounds %struct.ice_channel, ptr %90, i32 0, i32 3
  %arrayidx.sink.i = select i1 %tobool39.not.i, ptr %arrayidx.i88, ptr %base_q.i
  %93 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx.sink.i, align 4
  %sub49.i = sub i16 %92, %94
  %q_handle15 = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 14
  %95 = ptrtoint ptr %q_handle15 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %sub49.i, ptr %q_handle15, align 16
  br label %if.end16

if.end16:                                         ; preds = %ice_calc_txq_handle.exit, %ice_eswitch_calc_txq_handle.exit.if.end16_crit_edge
  %tobool.not = icmp eq ptr %3, null
  %port_info22 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 3
  %96 = ptrtoint ptr %port_info22 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %port_info22, align 4
  br i1 %tobool.not, label %if.end16.if.end27_crit_edge, label %if.then17

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %ch_vsi = getelementptr inbounds %struct.ice_channel, ptr %3, i32 0, i32 12
  %98 = ptrtoint ptr %ch_vsi to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ch_vsi, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then17, %if.end16.if.end27_crit_edge
  %vsi.sink = phi ptr [ %99, %if.then17 ], [ %vsi, %if.end16.if.end27_crit_edge ]
  %.sink99 = phi i8 [ 0, %if.then17 ], [ %73, %if.end16.if.end27_crit_edge ]
  %idx23 = getelementptr inbounds %struct.ice_vsi, ptr %vsi.sink, i32 0, i32 19
  %100 = ptrtoint ptr %idx23 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %idx23, align 2
  %q_handle24 = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 14
  %102 = ptrtoint ptr %q_handle24 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %q_handle24, align 16
  %call26 = call i32 @ice_ena_vsi_txq(ptr noundef %97, i16 noundef zeroext %101, i8 noundef zeroext %.sink99, i16 noundef zeroext %103, i8 noundef zeroext 1, ptr noundef %qg_buf, i16 noundef zeroext 56, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.end30, label %do.end

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call26) #12
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  %106 = ptrtoint ptr %txqs to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %txqs, align 4
  %108 = call i16 @llvm.bswap.i16(i16 %107)
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %108)
  %cmp36 = icmp eq i16 %17, %108
  br i1 %cmp36, label %if.then38, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %q_teid = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %qg_buf, i32 1, i32 1
  %109 = ptrtoint ptr %q_teid to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %q_teid, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  %txq_teid = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 26
  %112 = ptrtoint ptr %txq_teid to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %txq_teid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end30.cleanup_crit_edge, %do.end, %ice_eswitch_calc_txq_handle.exit.cleanup_crit_edge, %ice_eswitch_calc_txq_handle.exit.thread
  %retval.0 = phi i32 [ %call26, %do.end ], [ -19, %ice_eswitch_calc_txq_handle.exit.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %if.end30.cleanup_crit_edge ], [ -19, %ice_eswitch_calc_txq_handle.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tlan_ctx) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_set_ctx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_ena_vsi_txq(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_cfg_itr(ptr nocapture noundef readonly %hw, ptr noundef %q_vector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1494100
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  %3 = and i32 %2, 16842751
  call void @__sanitizer_cov_trace_const_cmp4(i32 8738, i32 %3)
  %4 = icmp eq i32 %3, 8738
  br i1 %4, label %entry.ice_cfg_itr_gran.exit_crit_edge, label %if.end.i

entry.ice_cfg_itr_gran.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_cfg_itr_gran.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr16.i = getelementptr i8, ptr %6, i32 1494100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 8738) #8, !srcloc !75
  br label %ice_cfg_itr_gran.exit

ice_cfg_itr_gran.exit:                            ; preds = %if.end.i, %entry.ice_cfg_itr_gran.exit_crit_edge
  %num_ring_rx = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 3
  %7 = ptrtoint ptr %num_ring_rx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_ring_rx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %ice_cfg_itr_gran.exit.if.end_crit_edge, label %if.then

ice_cfg_itr_gran.exit.if.end_crit_edge:           ; preds = %ice_cfg_itr_gran.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %ice_cfg_itr_gran.exit
  call void @__sanitizer_cov_trace_pc() #10
  %rx = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 8
  %itr_setting = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 8, i32 3
  %9 = ptrtoint ptr %itr_setting to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %itr_setting, align 2
  %bf.lshr = lshr i16 %bf.load, 3
  tail call void @ice_write_itr(ptr noundef %rx, i16 noundef zeroext %bf.lshr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %ice_cfg_itr_gran.exit.if.end_crit_edge
  %num_ring_tx = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 4
  %10 = ptrtoint ptr %num_ring_tx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_ring_tx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tx = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 9
  %itr_setting5 = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %itr_setting5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load6 = load i16, ptr %itr_setting5, align 2
  %bf.lshr7 = lshr i16 %bf.load6, 3
  tail call void @ice_write_itr(ptr noundef %tx, i16 noundef zeroext %bf.lshr7) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %intrl = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 6
  %13 = ptrtoint ptr %intrl to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %intrl, align 1
  tail call void @ice_write_intrl(ptr noundef %q_vector, i8 noundef zeroext %14) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_write_itr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_write_intrl(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_cfg_txq_interrupt(ptr nocapture noundef readonly %vsi, i16 noundef zeroext %txq, i16 noundef zeroext %msix_idx, i16 noundef zeroext %itr_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %shl = shl i16 %itr_idx, 11
  %and = and i16 %shl, 6144
  %2 = and i16 %msix_idx, 2047
  %or35 = or i16 %and, %2
  %or = zext i16 %or35 to i32
  %or7 = or i32 %or, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 8
  %txq_map = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 45
  %6 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txq_map, align 8
  %idxprom = zext i16 %txq to i32
  %arrayidx = getelementptr i16, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv8 = zext i16 %9 to i32
  %mul = shl nuw nsw i32 %conv8, 2
  %add = or i32 %mul, 1310720
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !75
  %xdp_prog.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 57
  %10 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.i.not = icmp eq ptr %11, null
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_xdp_txq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 60
  %12 = ptrtoint ptr %num_xdp_txq to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_xdp_txq, align 16
  %conv10 = zext i16 %13 to i32
  %add11 = add nuw nsw i32 %conv10, %idxprom
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw1, align 8
  %16 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txq_map, align 8
  %arrayidx17 = getelementptr i16, ptr %17, i32 %add11
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %19 to i32
  %mul19 = shl nuw nsw i32 %conv18, 2
  %add20 = or i32 %mul19, 1310720
  %add.ptr21 = getelementptr i8, ptr %15, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %3) #8, !srcloc !75
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1, align 8
  %add.ptr23 = getelementptr i8, ptr %21, i32 745772
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_cfg_rxq_interrupt(ptr nocapture noundef readonly %vsi, i16 noundef zeroext %rxq, i16 noundef zeroext %msix_idx, i16 noundef zeroext %itr_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %shl = shl i16 %itr_idx, 11
  %and = and i16 %shl, 6144
  %2 = and i16 %msix_idx, 2047
  %or15 = or i16 %and, %2
  %or = zext i16 %or15 to i32
  %or7 = or i32 %or, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 8
  %rxq_map = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 46
  %6 = ptrtoint ptr %rxq_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxq_map, align 4
  %idxprom = zext i16 %rxq to i32
  %arrayidx = getelementptr i16, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv8 = zext i16 %9 to i32
  %mul = shl nuw nsw i32 %conv8, 2
  %add = add nuw nsw i32 %mul, 1376256
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !75
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1, align 8
  %add.ptr10 = getelementptr i8, ptr %11, i32 745772
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_trigger_sw_intr(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %q_vector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %reg_idx = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 2
  %2 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg_idx, align 2
  %conv = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 1441792
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 486539264) #8, !srcloc !75
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_vsi_stop_tx_ring(ptr nocapture noundef readonly %vsi, i32 noundef %rst_src, i16 noundef zeroext %rel_vmvf_num, ptr nocapture noundef readonly %ring, ptr noundef %txq_meta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 8
  %reg_idx = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 15
  %4 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg_idx, align 2
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = or i32 %mul, 1310720
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  %7 = and i32 %6, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1, align 8
  %10 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %reg_idx, align 2
  %conv5 = zext i16 %11 to i32
  %mul6 = shl nuw nsw i32 %conv5, 2
  %add7 = or i32 %mul6, 1310720
  %add.ptr8 = getelementptr i8, ptr %9, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #8, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #8
  %q_vector9 = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 5
  %13 = ptrtoint ptr %q_vector9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %q_vector9, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw1, align 8
  %reg_idx.i = getelementptr inbounds %struct.ice_q_vector, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %reg_idx.i, align 2
  %conv.i = zext i16 %18 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 1441792
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 486539264) #8, !srcloc !75
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 3
  %19 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port_info, align 4
  %vsi_idx = getelementptr inbounds %struct.ice_txq_meta, ptr %txq_meta, i32 0, i32 3
  %21 = ptrtoint ptr %vsi_idx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vsi_idx, align 4
  %tc = getelementptr inbounds %struct.ice_txq_meta, ptr %txq_meta, i32 0, i32 4
  %23 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tc, align 2
  %q_handle = getelementptr inbounds %struct.ice_txq_meta, ptr %txq_meta, i32 0, i32 2
  %q_id = getelementptr inbounds %struct.ice_txq_meta, ptr %txq_meta, i32 0, i32 1
  %call10 = tail call i32 @ice_dis_vsi_txq(ptr noundef %20, i16 noundef zeroext %22, i8 noundef zeroext %24, i8 noundef zeroext 1, ptr noundef %q_handle, ptr noundef %q_id, ptr noundef %txq_meta, i32 noundef %rst_src, i16 noundef zeroext %rel_vmvf_num, ptr noundef null) #8
  %25 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call10, label %do.body49 [
    i32 -16, label %do.body13
    i32 -2, label %do.body27
    i32 0, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vsi_stop_tx_ring.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vsi_stop_tx_ring, %if.then19)) #8
          to label %cleanup [label %if.then19], !srcloc !81

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %back, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vsi_stop_tx_ring.__UNIQUE_ID_ddebug619, ptr noundef %dev, ptr noundef nonnull @.str.26) #8
  br label %cleanup

do.body27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vsi_stop_tx_ring.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vsi_stop_tx_ring, %if.then39)) #8
          to label %cleanup [label %if.then39], !srcloc !81

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %back, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vsi_stop_tx_ring.__UNIQUE_ID_ddebug620, ptr noundef %dev42, ptr noundef nonnull @.str.27) #8
  br label %cleanup

do.body49:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vsi_stop_tx_ring.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vsi_stop_tx_ring, %if.then61)) #8
          to label %cleanup [label %if.then61], !srcloc !81

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %back, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vsi_stop_tx_ring.__UNIQUE_ID_ddebug621, ptr noundef %dev64, ptr noundef nonnull @.str.28, i32 noundef %call10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body49, %if.then39, %do.body27, %if.then19, %do.body13, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then61 ], [ %call10, %if.end.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %if.then19 ], [ 0, %do.body13 ], [ 0, %do.body27 ], [ %call10, %do.body49 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_dis_vsi_txq(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ice_fill_txq_meta(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %ring, ptr nocapture noundef writeonly %txq_meta) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ch1 = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 23
  %0 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch1, align 4
  %dcb_tc = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 28
  %2 = ptrtoint ptr %dcb_tc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dcb_tc, align 1
  %reg_idx = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 15
  %4 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg_idx, align 2
  %q_id = getelementptr inbounds %struct.ice_txq_meta, ptr %txq_meta, i32 0, i32 1
  %6 = ptrtoint ptr %q_id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %q_id, align 4
  %txq_teid = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 26
  %7 = ptrtoint ptr %txq_teid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %txq_teid, align 8
  %9 = ptrtoint ptr %txq_meta to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %txq_meta, align 4
  %q_handle = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 14
  %10 = ptrtoint ptr %q_handle to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %q_handle, align 16
  %q_handle2 = getelementptr inbounds %struct.ice_txq_meta, ptr %txq_meta, i32 0, i32 2
  %12 = ptrtoint ptr %q_handle2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %q_handle2, align 2
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ch_vsi = getelementptr inbounds %struct.ice_channel, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %ch_vsi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ch_vsi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vsi.pn = phi ptr [ %14, %if.then ], [ %vsi, %entry.if.end_crit_edge ]
  %.sink = phi i8 [ 0, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %.sink18.in = getelementptr inbounds %struct.ice_vsi, ptr %vsi.pn, i32 0, i32 19
  %15 = ptrtoint ptr %.sink18.in to i32
  call void @__asan_load2_noabort(i32 %15)
  %.sink18 = load i16, ptr %.sink18.in, align 2
  %16 = getelementptr inbounds %struct.ice_txq_meta, ptr %txq_meta, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %.sink18, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ice_txq_meta, ptr %txq_meta, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %18, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xsk_get_pool_from_qid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_set_rxq_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_write_qrxflxp_cntxt(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_write_rxq_ctx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xp_can_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_napi_poll(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_xps_queue(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ice_get_hw_vsi_num(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 523, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ice_vsi_cfg_rxq._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ice_vsi_cfg_rxq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 544, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ice_vsi_cfg_rxq._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ice_vsi_cfg_rxq._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 553, i32 4}
!15 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ice_vsi_cfg_rxq._entry.9, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @ice_vsi_cfg_rxq._entry_ptr.12, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 555, i32 4}
!20 = !{ptr @ice_vsi_cfg_rxq._entry.13, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ice_vsi_cfg_rxq._entry_ptr.15, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 564, i32 4}
!24 = !{ptr @ice_vsi_cfg_rxq._entry.16, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ice_vsi_cfg_rxq._entry_ptr.18, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 670, i32 3}
!28 = !{ptr @.str.20, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.21, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ice_vsi_alloc_q_vectors.__UNIQUE_ID_ddebug618, !27, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!31 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 686, i32 2}
!33 = !{ptr @ice_vsi_alloc_q_vectors._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ice_vsi_alloc_q_vectors._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 824, i32 3}
!37 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ice_vsi_cfg_txq._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ice_vsi_cfg_txq._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 978, i32 3}
!42 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ice_vsi_stop_tx_ring.__UNIQUE_ID_ddebug619, !41, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 980, i32 3}
!46 = !{ptr @ice_vsi_stop_tx_ring.__UNIQUE_ID_ddebug620, !45, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 982, i32 3}
!49 = !{ptr @ice_vsi_stop_tx_ring.__UNIQUE_ID_ddebug621, !48, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 464, i32 3}
!52 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ice_setup_rx_ctx._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ice_setup_rx_ctx._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 169, i32 3}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ice_free_q_vector.__UNIQUE_ID_ddebug613, !59, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ice/ice_base.c", i32 226, i32 2}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2160115409}
!75 = !{i64 6763456}
!76 = !{i64 6763874}
!77 = !{i64 2160128721}
!78 = !{i64 2160129337}
!79 = !{i64 2160130213}
!80 = !{i64 2160104346}
!81 = !{i64 2149280274, i64 2149280279, i64 2149280292, i64 2149280336, i64 2149280370, i64 2149280391}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2160107892}
!84 = !{i64 2160109364}
!85 = !{i64 2160138709}
!86 = !{i64 2160139361}
!87 = !{i64 2160140245}
!88 = !{i64 2160140809}
!89 = !{i64 2160141689}
!90 = !{i64 2160142412}
!91 = !{i64 2160143650}
!92 = !{i64 2160144126}
