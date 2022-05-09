; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ice_time_ref_info_e822 = type { i64, i64, i8 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.ice_tx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.ice_txq_stats, %struct.callback_head, [1 x i32], ptr, ptr, %struct.spinlock, i32, i8, i8, i8, [49 x i8] }
%struct.ice_q_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ice_txq_stats = type { i64, i64, i64, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ice_rx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.201, [96 x i8], %struct.xdp_rxq_info, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_rxq_stats, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.callback_head, ptr, ptr, ptr, ptr, ptr, i32, i64, i8, i8, i8, [125 x i8] }
%union.anon.201 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ice_rxq_stats = type { i64, i64, i64 }
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
%struct.ifreq = type { %union.anon.143, %union.anon.144 }
%union.anon.143 = type { [16 x i8] }
%union.anon.144 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.203 = type { i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, %union.anon.204 }
%union.anon.204 = type { i32 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ice_tx_tstamp = type { ptr, i32, i64 }
%struct.timespec64 = type { i64, i32 }
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
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.ptp_clock_request = type { i32, %union.anon.210 }
%union.anon.210 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.211, %struct.ptp_clock_time, i32, i32, %union.anon.212 }
%union.anon.211 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.212 = type { %struct.ptp_clock_time }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }
%struct.ptp_clock_event = type { i32, i32, %union.anon.219 }
%union.anon.219 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }

@ice_get_ptp_clock_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Failed to read PTP clock index parameter, err %d aq_err %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_get_ptp_clock_index\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/intel/ice/ice_ptp.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_get_ptp_clock_index._entry_ptr = internal global ptr @ice_get_ptp_clock_index._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ice_ptp_reset.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(&(&ptp->port.ov_work)->timer)\00", [33 x i8] zeroinitializer }, align 32
@ice_ptp_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 2415, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PTP reset successful\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ice_ptp_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ice_ptp_reset._entry_ptr = internal global ptr @ice_ptp_reset._entry, section ".printk_index", align 4
@ice_ptp_reset._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 2419, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PTP reset failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ice_ptp_reset._entry_ptr.11 = internal global ptr @ice_ptp_reset._entry.9, section ".printk_index", align 4
@ice_ptp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 2610, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PTP init successful\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ice_ptp_init\00", [19 x i8] zeroinitializer }, align 32
@ice_ptp_init._entry_ptr = internal global ptr @ice_ptp_init._entry, section ".printk_index", align 4
@ice_ptp_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 2620, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PTP failed %d\0A\00", [17 x i8] zeroinitializer }, align 32
@ice_ptp_init._entry_ptr.16 = internal global ptr @ice_ptp_init._entry.14, section ".printk_index", align 4
@ice_ptp_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 2661, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Removed PTP clock\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_ptp_release\00", [16 x i8] zeroinitializer }, align 32
@ice_ptp_release._entry_ptr = internal global ptr @ice_ptp_release._entry, section ".printk_index", align 4
@ice_ptp_port_phy_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 981, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PTP failed to set PHY port %d up, err %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_ptp_port_phy_restart\00", [39 x i8] zeroinitializer }, align 32
@ice_ptp_port_phy_restart._entry_ptr = internal global ptr @ice_ptp_port_phy_restart._entry, section ".printk_index", align 4
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ice_base_incval.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_base_incval\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"PTP: using base increment value of 0x%016llx\0A\00", [50 x i8] zeroinitializer }, align 32
@e822_time_ref = external dso_local local_unnamed_addr constant [6 x %struct.ice_time_ref_info_e822], align 8
@ice_ptp_tx_ena_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1070, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PTP failed in intr ena, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_ptp_tx_ena_intr\00", [44 x i8] zeroinitializer }, align 32
@ice_ptp_tx_ena_intr._entry_ptr = internal global ptr @ice_ptp_tx_ena_intr._entry, section ".printk_index", align 4
@ice_ptp_alloc_tx_tracker.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&tx->lock\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ice_ptp_wait_for_offset_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 904, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to exit bypass mode for PHY port %u, err %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ice_ptp_wait_for_offset_valid\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ice_ptp_wait_for_offset_valid._entry_ptr = internal global ptr @ice_ptp_wait_for_offset_valid._entry, section ".printk_index", align 4
@ice_ptp_check_tx_offset_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 807, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to read TX_OV_STATUS for port %d, err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ice_ptp_check_tx_offset_valid\00", [34 x i8] zeroinitializer }, align 32
@ice_ptp_check_tx_offset_valid._entry_ptr = internal global ptr @ice_ptp_check_tx_offset_valid._entry, section ".printk_index", align 4
@ice_ptp_check_tx_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 752, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PTP failed to check port %d Tx FIFO, err %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_ptp_check_tx_fifo\00", [42 x i8] zeroinitializer }, align 32
@ice_ptp_check_tx_fifo._entry_ptr = internal global ptr @ice_ptp_check_tx_fifo._entry, section ".printk_index", align 4
@ice_ptp_check_tx_fifo.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Try %d, port %d FIFO not empty\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_ptp_check_tx_fifo.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Port %d Tx FIFO still not empty; resetting quad %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_ptp_check_rx_offset_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 837, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to read RX_OV_STATUS for port %d, err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ice_ptp_check_rx_offset_valid\00", [34 x i8] zeroinitializer }, align 32
@ice_ptp_check_rx_offset_valid._entry_ptr = internal global ptr @ice_ptp_check_rx_offset_valid._entry, section ".printk_index", align 4
@ice_ptp_cfg_clkout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1280, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CLK Period must be an even value\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_ptp_cfg_clkout\00", [45 x i8] zeroinitializer }, align 32
@ice_ptp_cfg_clkout._entry_ptr = internal global ptr @ice_ptp_cfg_clkout._entry, section ".printk_index", align 4
@ice_ptp_cfg_clkout._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 1291, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CLK Period must be > %d && < 2^33\00", [62 x i8] zeroinitializer }, align 32
@ice_ptp_cfg_clkout._entry_ptr.45 = internal global ptr @ice_ptp_cfg_clkout._entry.43, section ".printk_index", align 4
@ice_ptp_cfg_clkout._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 1335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PTP failed to cfg per_clk\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_ptp_cfg_clkout._entry_ptr.48 = internal global ptr @ice_ptp_cfg_clkout._entry.46, section ".printk_index", align 4
@ice_ptp_init_owner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 2473, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to initialize PHC, err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_ptp_init_owner\00", [45 x i8] zeroinitializer }, align 32
@ice_ptp_init_owner._entry_ptr = internal global ptr @ice_ptp_init_owner._entry, section ".printk_index", align 4
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-%s-clk\00", [22 x i8] zeroinitializer }, align 32
@ice_ptp_adjtime.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 1, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_ptp_adjtime\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"delta = %lld, adjtime non-atomic\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_ptp_adjtime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 1571, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PTP failed to acquire semaphore in adjtime\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_ptp_adjtime._entry_ptr = internal global ptr @ice_ptp_adjtime._entry, section ".printk_index", align 4
@ice_ptp_adjtime._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.52, ptr @.str.2, i32 1586, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PTP failed to adjust time, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_ptp_adjtime._entry_ptr.57 = internal global ptr @ice_ptp_adjtime._entry.55, section ".printk_index", align 4
@ice_ptp_adjfine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 1126, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PTP failed to set incval, err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_ptp_adjfine\00", [16 x i8] zeroinitializer }, align 32
@ice_ptp_adjfine._entry_ptr = internal global ptr @ice_ptp_adjfine._entry, section ".printk_index", align 4
@ice_ptp_gettimex64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1467, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PTP failed to get time\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_ptp_gettimex64\00", [45 x i8] zeroinitializer }, align 32
@ice_ptp_gettimex64._entry_ptr = internal global ptr @ice_ptp_gettimex64._entry, section ".printk_index", align 4
@ice_ptp_settime64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1521, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PTP failed to set time %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_ptp_settime64\00", [46 x i8] zeroinitializer }, align 32
@ice_ptp_settime64._entry_ptr = internal global ptr @ice_ptp_settime64._entry, section ".printk_index", align 4
@ice_pin_desc_e810t = internal constant { [5 x %struct.ptp_pin_desc], [96 x i8] } { [5 x %struct.ptp_pin_desc] [%struct.ptp_pin_desc { [64 x i8] c"GNSS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"SMA1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 1, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"U.FL1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 1, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"SMA2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 0, i32 2, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"U.FL2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0, i32 2, [5 x i32] zeroinitializer }], [96 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@ice_ptp_set_sma_config_e810t._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 131, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SMA1 + U.FL1 disabled\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ice_ptp_set_sma_config_e810t\00", [35 x i8] zeroinitializer }, align 32
@ice_ptp_set_sma_config_e810t._entry_ptr = internal global ptr @ice_ptp_set_sma_config_e810t._entry, section ".printk_index", align 4
@ice_ptp_set_sma_config_e810t._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 135, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMA1 RX\00", [24 x i8] zeroinitializer }, align 32
@ice_ptp_set_sma_config_e810t._entry_ptr.69 = internal global ptr @ice_ptp_set_sma_config_e810t._entry.67, section ".printk_index", align 4
@ice_ptp_set_sma_config_e810t._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 140, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SMA1 RX + U.FL1 TX\00", [45 x i8] zeroinitializer }, align 32
@ice_ptp_set_sma_config_e810t._entry_ptr.72 = internal global ptr @ice_ptp_set_sma_config_e810t._entry.70, section ".printk_index", align 4
@ice_ptp_set_sma_config_e810t._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 143, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ice_ptp_set_sma_config_e810t._entry_ptr.74 = internal global ptr @ice_ptp_set_sma_config_e810t._entry.73, section ".printk_index", align 4
@ice_ptp_set_sma_config_e810t._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.66, ptr @.str.2, i32 146, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMA1 TX\00", [24 x i8] zeroinitializer }, align 32
@ice_ptp_set_sma_config_e810t._entry_ptr.77 = internal global ptr @ice_ptp_set_sma_config_e810t._entry.75, section ".printk_index", align 4
@ice_ptp_set_sma_config_e810t._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.66, ptr @.str.2, i32 153, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SMA2 + U.FL2 disabled\00", [42 x i8] zeroinitializer }, align 32
@ice_ptp_set_sma_config_e810t._entry_ptr.80 = internal global ptr @ice_ptp_set_sma_config_e810t._entry.78, section ".printk_index", align 4
@ice_ptp_set_sma_config_e810t._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.66, ptr @.str.2, i32 157, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMA2 RX\00", [24 x i8] zeroinitializer }, align 32
@ice_ptp_set_sma_config_e810t._entry_ptr.83 = internal global ptr @ice_ptp_set_sma_config_e810t._entry.81, section ".printk_index", align 4
@ice_ptp_set_sma_config_e810t._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.66, ptr @.str.2, i32 162, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UFL2 RX\00", [24 x i8] zeroinitializer }, align 32
@ice_ptp_set_sma_config_e810t._entry_ptr.86 = internal global ptr @ice_ptp_set_sma_config_e810t._entry.84, section ".printk_index", align 4
@ice_ptp_set_sma_config_e810t._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.66, ptr @.str.2, i32 166, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMA2 TX\00", [24 x i8] zeroinitializer }, align 32
@ice_ptp_set_sma_config_e810t._entry_ptr.89 = internal global ptr @ice_ptp_set_sma_config_e810t._entry.87, section ".printk_index", align 4
@ice_ptp_set_sma_config_e810t._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.66, ptr @.str.2, i32 171, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SMA2 TX + U.FL2 RX\00", [45 x i8] zeroinitializer }, align 32
@ice_ptp_set_sma_config_e810t._entry_ptr.92 = internal global ptr @ice_ptp_set_sma_config_e810t._entry.90, section ".printk_index", align 4
@ice_ptp_disable_sma_pins_e810t._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1834, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to configure E810-T SMA pin control\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ice_ptp_disable_sma_pins_e810t\00", [33 x i8] zeroinitializer }, align 32
@ice_ptp_disable_sma_pins_e810t._entry_ptr = internal global ptr @ice_ptp_disable_sma_pins_e810t._entry, section ".printk_index", align 4
@ice_set_ptp_clock_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 409, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PTP Clock index is too large to store\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_set_ptp_clock_index\00", [40 x i8] zeroinitializer }, align 32
@ice_set_ptp_clock_index._entry_ptr = internal global ptr @ice_set_ptp_clock_index._entry, section ".printk_index", align 4
@ice_set_ptp_clock_index._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failed to set PTP clock index parameter, err %d aq_err %s\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_set_ptp_clock_index._entry_ptr.99 = internal global ptr @ice_set_ptp_clock_index._entry.97, section ".printk_index", align 4
@ice_ptp_init_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ptp_port->ps_lock\00", [45 x i8] zeroinitializer }, align 32
@ice_ptp_init_port.__key.101 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(&(&ptp_port->ov_work)->timer)\00", [33 x i8] zeroinitializer }, align 32
@ice_ptp_init_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&(&ptp->work)->timer)\00", [41 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ice-ptp-%s\00", [21 x i8] zeroinitializer }, align 32
@ice_ptp_port_phy_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 931, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PTP failed to set PHY port %d down, err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_ptp_port_phy_stop\00", [42 x i8] zeroinitializer }, align 32
@ice_ptp_port_phy_stop._entry_ptr = internal global ptr @ice_ptp_port_phy_stop._entry, section ".printk_index", align 4
@ice_clear_ptp_clock_index.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.107, ptr @.str.2, ptr @.str.108, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_clear_ptp_clock_index\00", [38 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Failed to clear PTP clock index parameter, err %d aq_err %s\0A\00", [35 x i8] zeroinitializer }, align 32
@switch.table.ice_get_sma_config_e810t = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 1, i32 0], [16 x i8] zeroinitializer }, align 32
@switch.table.ice_get_sma_config_e810t.109 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.110 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.122 = internal global [6 x i64] [i64 4, i64 8, i64 64, i64 72, i64 136, i64 192]
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 364, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 2402, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 2415, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 2419, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 2610, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 2620, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 2661, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 980, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 174, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 704, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 1069, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 2181, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 903, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 806, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 751, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 768, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 772, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 836, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 1280, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 1290, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 1335, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 2472, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 1960, i32 47 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 1566, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 1571, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 1586, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 1125, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 1467, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 1521, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [19 x i8] c"ice_pin_desc_e810t\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 11, i32 34 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 42, i32 5 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 131, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 135, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 140, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 143, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 146, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 153, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 157, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 162, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 166, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 171, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 1834, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 409, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 416, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 2560, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 2565, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 2534, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 2540, i32 37 }
@___asan_gen_.459 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 930, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.472 = private constant [44 x i8] c"../drivers/net/ethernet/intel/ice/ice_ptp.c\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 449, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant [38 x i8] c"switch.table.ice_get_sma_config_e810t\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [42 x i8] c"switch.table.ice_get_sma_config_e810t.109\00", align 1
@llvm.compiler.used = appending global [154 x ptr] [ptr @ice_get_ptp_clock_index._entry, ptr @ice_get_ptp_clock_index._entry_ptr, ptr @ice_ptp_adjfine._entry, ptr @ice_ptp_adjfine._entry_ptr, ptr @ice_ptp_adjtime._entry, ptr @ice_ptp_adjtime._entry.55, ptr @ice_ptp_adjtime._entry_ptr, ptr @ice_ptp_adjtime._entry_ptr.57, ptr @ice_ptp_cfg_clkout._entry, ptr @ice_ptp_cfg_clkout._entry.43, ptr @ice_ptp_cfg_clkout._entry.46, ptr @ice_ptp_cfg_clkout._entry_ptr, ptr @ice_ptp_cfg_clkout._entry_ptr.45, ptr @ice_ptp_cfg_clkout._entry_ptr.48, ptr @ice_ptp_check_rx_offset_valid._entry, ptr @ice_ptp_check_rx_offset_valid._entry_ptr, ptr @ice_ptp_check_tx_fifo._entry, ptr @ice_ptp_check_tx_fifo._entry_ptr, ptr @ice_ptp_check_tx_offset_valid._entry, ptr @ice_ptp_check_tx_offset_valid._entry_ptr, ptr @ice_ptp_disable_sma_pins_e810t._entry, ptr @ice_ptp_disable_sma_pins_e810t._entry_ptr, ptr @ice_ptp_gettimex64._entry, ptr @ice_ptp_gettimex64._entry_ptr, ptr @ice_ptp_init._entry, ptr @ice_ptp_init._entry.14, ptr @ice_ptp_init._entry_ptr, ptr @ice_ptp_init._entry_ptr.16, ptr @ice_ptp_init_owner._entry, ptr @ice_ptp_init_owner._entry_ptr, ptr @ice_ptp_port_phy_restart._entry, ptr @ice_ptp_port_phy_restart._entry_ptr, ptr @ice_ptp_port_phy_stop._entry, ptr @ice_ptp_port_phy_stop._entry_ptr, ptr @ice_ptp_release._entry, ptr @ice_ptp_release._entry_ptr, ptr @ice_ptp_reset._entry, ptr @ice_ptp_reset._entry.9, ptr @ice_ptp_reset._entry_ptr, ptr @ice_ptp_reset._entry_ptr.11, ptr @ice_ptp_set_sma_config_e810t._entry, ptr @ice_ptp_set_sma_config_e810t._entry.67, ptr @ice_ptp_set_sma_config_e810t._entry.70, ptr @ice_ptp_set_sma_config_e810t._entry.73, ptr @ice_ptp_set_sma_config_e810t._entry.75, ptr @ice_ptp_set_sma_config_e810t._entry.78, ptr @ice_ptp_set_sma_config_e810t._entry.81, ptr @ice_ptp_set_sma_config_e810t._entry.84, ptr @ice_ptp_set_sma_config_e810t._entry.87, ptr @ice_ptp_set_sma_config_e810t._entry.90, ptr @ice_ptp_set_sma_config_e810t._entry_ptr, ptr @ice_ptp_set_sma_config_e810t._entry_ptr.69, ptr @ice_ptp_set_sma_config_e810t._entry_ptr.72, ptr @ice_ptp_set_sma_config_e810t._entry_ptr.74, ptr @ice_ptp_set_sma_config_e810t._entry_ptr.77, ptr @ice_ptp_set_sma_config_e810t._entry_ptr.80, ptr @ice_ptp_set_sma_config_e810t._entry_ptr.83, ptr @ice_ptp_set_sma_config_e810t._entry_ptr.86, ptr @ice_ptp_set_sma_config_e810t._entry_ptr.89, ptr @ice_ptp_set_sma_config_e810t._entry_ptr.92, ptr @ice_ptp_settime64._entry, ptr @ice_ptp_settime64._entry_ptr, ptr @ice_ptp_tx_ena_intr._entry, ptr @ice_ptp_tx_ena_intr._entry_ptr, ptr @ice_ptp_wait_for_offset_valid._entry, ptr @ice_ptp_wait_for_offset_valid._entry_ptr, ptr @ice_set_ptp_clock_index._entry, ptr @ice_set_ptp_clock_index._entry.97, ptr @ice_set_ptp_clock_index._entry_ptr, ptr @ice_set_ptp_clock_index._entry_ptr.99, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ice_ptp_reset.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @ice_ptp_alloc_tx_tracker.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @ice_pin_desc_e810t, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @ice_ptp_init_port.__key, ptr @.str.100, ptr @ice_ptp_init_port.__key.101, ptr @.str.102, ptr @ice_ptp_init_work.__key, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @switch.table.ice_get_sma_config_e810t, ptr @switch.table.ice_get_sma_config_e810t.109], section "llvm.metadata"
@0 = internal global [119 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_get_ptp_clock_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_reset.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_reset._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_port_phy_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_tx_ena_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_alloc_tx_tracker.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_wait_for_offset_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_check_tx_offset_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_check_tx_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_check_rx_offset_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_cfg_clkout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_cfg_clkout._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_cfg_clkout._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_init_owner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_adjtime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_adjtime._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_adjfine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_gettimex64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_settime64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_pin_desc_e810t to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_set_sma_config_e810t._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_set_sma_config_e810t._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_set_sma_config_e810t._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_set_sma_config_e810t._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_set_sma_config_e810t._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_set_sma_config_e810t._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_set_sma_config_e810t._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_set_sma_config_e810t._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_set_sma_config_e810t._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_set_sma_config_e810t._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_disable_sma_pins_e810t._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_set_ptp_clock_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_set_ptp_clock_index._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_init_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_init_port.__key.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_init_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptp_port_phy_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_get_sma_config_e810t to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_get_sma_config_e810t.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_ptp_cfg_timestamp(ptr nocapture noundef %pf, i1 noundef zeroext %ena) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool.i = zext i1 %ena to i8
  %vsi.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %0 = ptrtoint ptr %vsi.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ice_set_rx_tstamp.exit_crit_edge, label %ice_get_main_vsi.exit.i

entry.ice_set_rx_tstamp.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_set_rx_tstamp.exit

ice_get_main_vsi.exit.i:                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %ice_get_main_vsi.exit.i.ice_set_rx_tstamp.exit_crit_edge, label %for.cond.preheader.i

ice_get_main_vsi.exit.i.ice_set_rx_tstamp.exit_crit_edge: ; preds = %ice_get_main_vsi.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_set_rx_tstamp.exit

for.cond.preheader.i:                             ; preds = %ice_get_main_vsi.exit.i
  %num_txq.i = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_txq.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp38.not.i = icmp eq i16 %5, 0
  br i1 %cmp38.not.i, label %for.cond.preheader.i.ice_set_tx_tstamp.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.ice_set_tx_tstamp.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_set_tx_tstamp.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %tx_rings.i = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_rings.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %indvars.iv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %ptp_tx.i = getelementptr inbounds %struct.ice_tx_ring, ptr %9, i32 0, i32 29
  %10 = ptrtoint ptr %ptp_tx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool.i, ptr %ptp_tx.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %11 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_txq.i, align 2
  %13 = zext i16 %12 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %13
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ice_set_tx_tstamp.exit_crit_edge

for.inc.i.ice_set_tx_tstamp.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_set_tx_tstamp.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ice_set_tx_tstamp.exit:                           ; preds = %for.inc.i.ice_set_tx_tstamp.exit_crit_edge, %for.cond.preheader.i.ice_set_tx_tstamp.exit_crit_edge
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 1493248
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  %17 = and i32 %16, -524289
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  %masksel.i = select i1 %ena, i32 2048, i32 0
  %val.0.i = or i32 %18, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #10
  %20 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw.i, align 8
  %add.ptr18.i = getelementptr i8, ptr %21, i32 1493248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %19) #10, !srcloc !225
  %cond.i = zext i1 %ena to i32
  %tx_type.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 10, i32 1
  %22 = ptrtoint ptr %tx_type.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond.i, ptr %tx_type.i, align 4
  %23 = ptrtoint ptr %vsi.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load ptr, ptr %vsi.i.i, align 8
  %tobool.not.i.i6 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.i6, label %ice_set_tx_tstamp.exit.ice_set_rx_tstamp.exit_crit_edge, label %ice_get_main_vsi.exit.i8

ice_set_tx_tstamp.exit.ice_set_rx_tstamp.exit_crit_edge: ; preds = %ice_set_tx_tstamp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_set_rx_tstamp.exit

ice_get_main_vsi.exit.i8:                         ; preds = %ice_set_tx_tstamp.exit
  %24 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr24 = load ptr, ptr %.pr, align 4
  %tobool.not.i7 = icmp eq ptr %.pr24, null
  br i1 %tobool.not.i7, label %ice_get_main_vsi.exit.i8.ice_set_rx_tstamp.exit_crit_edge, label %for.cond.preheader.i9

ice_get_main_vsi.exit.i8.ice_set_rx_tstamp.exit_crit_edge: ; preds = %ice_get_main_vsi.exit.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_set_rx_tstamp.exit

for.cond.preheader.i9:                            ; preds = %ice_get_main_vsi.exit.i8
  %num_rxq.i = getelementptr inbounds %struct.ice_vsi, ptr %.pr24, i32 0, i32 50
  %25 = ptrtoint ptr %num_rxq.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_rxq.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp24.not.i = icmp eq i16 %26, 0
  br i1 %cmp24.not.i, label %for.cond.preheader.i9.for.end.i20_crit_edge, label %for.body.lr.ph.i10

for.cond.preheader.i9.for.end.i20_crit_edge:      ; preds = %for.cond.preheader.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i20

for.body.lr.ph.i10:                               ; preds = %for.cond.preheader.i9
  %rx_rings.i = getelementptr inbounds %struct.ice_vsi, ptr %.pr24, i32 0, i32 4
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.inc.i18.for.body.i14_crit_edge, %for.body.lr.ph.i10
  %indvars.iv.i11 = phi i32 [ 0, %for.body.lr.ph.i10 ], [ %indvars.iv.next.i16, %for.inc.i18.for.body.i14_crit_edge ]
  %27 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_rings.i, align 16
  %arrayidx.i12 = getelementptr ptr, ptr %28, i32 %indvars.iv.i11
  %29 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i12, align 4
  %tobool3.not.i13 = icmp eq ptr %30, null
  br i1 %tobool3.not.i13, label %for.body.i14.for.inc.i18_crit_edge, label %if.end5.i15

for.body.i14.for.inc.i18_crit_edge:               ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i18

if.end5.i15:                                      ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #12
  %ptp_rx.i = getelementptr inbounds %struct.ice_rx_ring, ptr %30, i32 0, i32 30
  %31 = ptrtoint ptr %ptp_rx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool.i, ptr %ptp_rx.i, align 1
  br label %for.inc.i18

for.inc.i18:                                      ; preds = %if.end5.i15, %for.body.i14.for.inc.i18_crit_edge
  %indvars.iv.next.i16 = add nuw nsw i32 %indvars.iv.i11, 1
  %32 = ptrtoint ptr %num_rxq.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_rxq.i, align 2
  %34 = zext i16 %33 to i32
  %cmp.i17 = icmp ult i32 %indvars.iv.next.i16, %34
  br i1 %cmp.i17, label %for.inc.i18.for.body.i14_crit_edge, label %for.inc.i18.for.end.i20_crit_edge

for.inc.i18.for.end.i20_crit_edge:                ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i20

for.inc.i18.for.body.i14_crit_edge:               ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i14

for.end.i20:                                      ; preds = %for.inc.i18.for.end.i20_crit_edge, %for.cond.preheader.i9.for.end.i20_crit_edge
  %rx_filter.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 10, i32 2
  %35 = ptrtoint ptr %rx_filter.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond.i, ptr %rx_filter.i, align 8
  br label %ice_set_rx_tstamp.exit

ice_set_rx_tstamp.exit:                           ; preds = %for.end.i20, %ice_get_main_vsi.exit.i8.ice_set_rx_tstamp.exit_crit_edge, %ice_set_tx_tstamp.exit.ice_set_rx_tstamp.exit_crit_edge, %ice_get_main_vsi.exit.i.ice_set_rx_tstamp.exit_crit_edge, %entry.ice_set_rx_tstamp.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_ptp_clock_index(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !226
  %clock = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 9
  %3 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clock, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @ptp_clock_index(ptr noundef nonnull %4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %tmr_index_assoc = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 6, i32 3
  %5 = ptrtoint ptr %tmr_index_assoc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmr_index_assoc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp ne i8 %6, 0
  %. = zext i1 %tobool5.not to i32
  %call8 = call i32 @ice_aq_get_driver_param(ptr noundef %hw2, i32 noundef %., ptr noundef nonnull %value, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 30, i32 8
  %7 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sq_last_status, align 4
  %call11 = call ptr @ice_aq_str(i32 noundef %8) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %call8, ptr noundef %call11) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool13.not = icmp sgt i32 %10, -1
  %and16 = and i32 %10, 2147483647
  %spec.select = select i1 %tobool13.not, i32 -1, i32 %and16
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -1, %do.end ], [ %spec.select, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_get_driver_param(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_aq_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_ptp_link_change(ptr noundef %pf, i8 noundef zeroext %port, i1 noundef zeroext %linkup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %linkup to i8
  %flags = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %port)
  %cmp = icmp ugt i8 %port, 7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ptp = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32
  %port_num = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 5
  %3 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_num, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %port)
  %cmp7.not = icmp eq i8 %4, %port
  br i1 %cmp7.not, label %if.end10, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %link_up = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 3
  %5 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %link_up, align 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %if.end10.cleanup_crit_edge, label %if.end18

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call fastcc i32 @ice_ptp_port_phy_restart(ptr noundef %ptp)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end10.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end18 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -11, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_port_phy_restart(ptr noundef %ptp_port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %ptp_port, i32 -848
  %port_num = getelementptr inbounds %struct.ice_ptp_port, ptr %ptp_port, i32 0, i32 5
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 2
  %hw4 = getelementptr i8, ptr %ptp_port, i32 2112
  %call = tail call zeroext i1 @ice_is_e810(ptr noundef %hw4) #10
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_up = getelementptr inbounds %struct.ice_ptp_port, ptr %ptp_port, i32 0, i32 3
  %2 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_up, align 4, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call fastcc i32 @ice_ptp_port_phy_stop(ptr noundef %ptp_port)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ps_lock = getelementptr inbounds %struct.ice_ptp_port, ptr %ptp_port, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %ps_lock, i32 noundef 0) #10
  %ov_work = getelementptr inbounds %struct.ice_ptp_port, ptr %ptp_port, i32 0, i32 1
  %call8 = tail call zeroext i1 @kthread_cancel_delayed_work_sync(ptr noundef %ov_work) #10
  %calibrating = getelementptr inbounds %struct.ice_ptp_tx, ptr %ptp_port, i32 0, i32 8
  %4 = ptrtoint ptr %calibrating to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %calibrating, align 4
  %tx_fifo_busy_cnt = getelementptr inbounds %struct.ice_ptp_port, ptr %ptp_port, i32 0, i32 4
  %5 = ptrtoint ptr %tx_fifo_busy_cnt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tx_fifo_busy_cnt, align 1
  %call9 = tail call i32 @ice_start_phy_timer_e822(ptr noundef %hw4, i8 noundef zeroext %1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end.critedge

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %calibrating to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %calibrating, align 4
  %kworker = getelementptr inbounds %struct.ice_ptp, ptr %ptp_port, i32 0, i32 6
  %7 = ptrtoint ptr %kworker to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kworker, align 4
  %call16 = tail call zeroext i1 @kthread_queue_delayed_work(ptr noundef %8, ptr noundef %ov_work, i32 noundef 0) #10
  br label %if.end19

do.end.critedge:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %call9) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end.critedge, %if.end12
  tail call void @mutex_unlock(ptr noundef %ps_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end19 ], [ %call6, %if.then5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_ptp_get_ts_config(ptr noundef %pf, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tstamp_config = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 10
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %3 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 12, i32 -1226833920) #14, !srcloc !228
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tstamp_config, i32 noundef 12) #10
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %tstamp_config, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool2.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_ptp_set_ts_config(ptr noundef %pf, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #10
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !226
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !226
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !226
  %flags = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %8 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 12, i32 -1226833920) #14, !srcloc !229
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !230

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #10
  %11 = call i32 @llvm.read_register.i32(metadata !212) #10
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !231
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !232
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %9, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !232
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !230

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end4.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end4
  %vsi.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %18 = ptrtoint ptr %vsi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vsi.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %ice_get_main_vsi.exit.i.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

ice_get_main_vsi.exit.i.i:                        ; preds = %sw.bb.i
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %ice_get_main_vsi.exit.i.i.sw.epilog.i_crit_edge, label %for.cond.preheader.i.i

ice_get_main_vsi.exit.i.i.sw.epilog.i_crit_edge:  ; preds = %ice_get_main_vsi.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

for.cond.preheader.i.i:                           ; preds = %ice_get_main_vsi.exit.i.i
  %num_txq.i.i = getelementptr inbounds %struct.ice_vsi, ptr %21, i32 0, i32 48
  %22 = ptrtoint ptr %num_txq.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_txq.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp38.not.i.i = icmp eq i16 %23, 0
  br i1 %cmp38.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %tx_rings.i.i = getelementptr inbounds %struct.ice_vsi, ptr %21, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %tx_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_rings.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %25, i32 %indvars.iv.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %27, null
  br i1 %tobool3.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end5.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ptp_tx.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %27, i32 0, i32 29
  %28 = ptrtoint ptr %ptp_tx.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ptp_tx.i.i, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end5.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %29 = ptrtoint ptr %num_txq.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_txq.i.i, align 2
  %31 = zext i16 %30 to i32
  %cmp.i.i26 = icmp ult i32 %indvars.iv.next.i.i, %31
  br i1 %cmp.i.i26, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %hw.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %32 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw.i.i, align 8
  %add.ptr.i.i27 = getelementptr i8, ptr %33, i32 1493248
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  %35 = and i32 %34, -524289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw.i.i, align 8
  %add.ptr18.i.i = getelementptr i8, ptr %37, i32 1493248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 %35) #10, !srcloc !225
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %if.end4
  %vsi.i.i10.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %38 = ptrtoint ptr %vsi.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vsi.i.i10.i, align 8
  %tobool.not.i.i11.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i11.i, label %sw.bb1.i.sw.epilog.i_crit_edge, label %ice_get_main_vsi.exit.i13.i

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

ice_get_main_vsi.exit.i13.i:                      ; preds = %sw.bb1.i
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool.not.i12.i = icmp eq ptr %41, null
  br i1 %tobool.not.i12.i, label %ice_get_main_vsi.exit.i13.i.sw.epilog.i_crit_edge, label %for.cond.preheader.i16.i

ice_get_main_vsi.exit.i13.i.sw.epilog.i_crit_edge: ; preds = %ice_get_main_vsi.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

for.cond.preheader.i16.i:                         ; preds = %ice_get_main_vsi.exit.i13.i
  %num_txq.i14.i = getelementptr inbounds %struct.ice_vsi, ptr %41, i32 0, i32 48
  %42 = ptrtoint ptr %num_txq.i14.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_txq.i14.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp38.not.i15.i = icmp eq i16 %43, 0
  br i1 %cmp38.not.i15.i, label %for.cond.preheader.i16.i.for.end.i32.i_crit_edge, label %for.body.lr.ph.i18.i

for.cond.preheader.i16.i.for.end.i32.i_crit_edge: ; preds = %for.cond.preheader.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i32.i

for.body.lr.ph.i18.i:                             ; preds = %for.cond.preheader.i16.i
  %tx_rings.i17.i = getelementptr inbounds %struct.ice_vsi, ptr %41, i32 0, i32 5
  br label %for.body.i22.i

for.body.i22.i:                                   ; preds = %for.inc.i27.i.for.body.i22.i_crit_edge, %for.body.lr.ph.i18.i
  %indvars.iv.i19.i = phi i32 [ 0, %for.body.lr.ph.i18.i ], [ %indvars.iv.next.i25.i, %for.inc.i27.i.for.body.i22.i_crit_edge ]
  %44 = ptrtoint ptr %tx_rings.i17.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_rings.i17.i, align 4
  %arrayidx.i20.i = getelementptr ptr, ptr %45, i32 %indvars.iv.i19.i
  %46 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i20.i, align 4
  %tobool3.not.i21.i = icmp eq ptr %47, null
  br i1 %tobool3.not.i21.i, label %for.body.i22.i.for.inc.i27.i_crit_edge, label %if.end5.i24.i

for.body.i22.i.for.inc.i27.i_crit_edge:           ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i27.i

if.end5.i24.i:                                    ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  %ptp_tx.i23.i = getelementptr inbounds %struct.ice_tx_ring, ptr %47, i32 0, i32 29
  %48 = ptrtoint ptr %ptp_tx.i23.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %ptp_tx.i23.i, align 2
  br label %for.inc.i27.i

for.inc.i27.i:                                    ; preds = %if.end5.i24.i, %for.body.i22.i.for.inc.i27.i_crit_edge
  %indvars.iv.next.i25.i = add nuw nsw i32 %indvars.iv.i19.i, 1
  %49 = ptrtoint ptr %num_txq.i14.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %num_txq.i14.i, align 2
  %51 = zext i16 %50 to i32
  %cmp.i26.i = icmp ult i32 %indvars.iv.next.i25.i, %51
  br i1 %cmp.i26.i, label %for.inc.i27.i.for.body.i22.i_crit_edge, label %for.inc.i27.i.for.end.i32.i_crit_edge

for.inc.i27.i.for.end.i32.i_crit_edge:            ; preds = %for.inc.i27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i32.i

for.inc.i27.i.for.body.i22.i_crit_edge:           ; preds = %for.inc.i27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i22.i

for.end.i32.i:                                    ; preds = %for.inc.i27.i.for.end.i32.i_crit_edge, %for.cond.preheader.i16.i.for.end.i32.i_crit_edge
  %hw.i28.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %52 = ptrtoint ptr %hw.i28.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw.i28.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %53, i32 1493248
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  %55 = or i32 %54, 524288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %hw.i28.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw.i28.i, align 8
  %add.ptr18.i30.i = getelementptr i8, ptr %57, i32 1493248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i30.i, i32 %55) #10, !srcloc !225
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %for.end.i32.i, %for.end.i.i
  %tx_type.i31.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 10, i32 1
  %58 = ptrtoint ptr %tx_type.i31.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %16, ptr %tx_type.i31.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %ice_get_main_vsi.exit.i13.i.sw.epilog.i_crit_edge, %sw.bb1.i.sw.epilog.i_crit_edge, %ice_get_main_vsi.exit.i.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %3, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %60, label %sw.epilog.i.cleanup_crit_edge [
    i32 0, label %sw.bb2.i
    i32 3, label %sw.epilog.i.sw.bb3.i_crit_edge
    i32 4, label %sw.epilog.i.sw.bb3.i_crit_edge39
    i32 5, label %sw.epilog.i.sw.bb3.i_crit_edge40
    i32 12, label %sw.epilog.i.sw.bb3.i_crit_edge41
    i32 9, label %sw.epilog.i.sw.bb3.i_crit_edge42
    i32 6, label %sw.epilog.i.sw.bb3.i_crit_edge43
    i32 13, label %sw.epilog.i.sw.bb3.i_crit_edge44
    i32 10, label %sw.epilog.i.sw.bb3.i_crit_edge45
    i32 7, label %sw.epilog.i.sw.bb3.i_crit_edge46
    i32 14, label %sw.epilog.i.sw.bb3.i_crit_edge47
    i32 11, label %sw.epilog.i.sw.bb3.i_crit_edge48
    i32 8, label %sw.epilog.i.sw.bb3.i_crit_edge49
    i32 15, label %sw.epilog.i.sw.bb3.i_crit_edge50
    i32 1, label %sw.epilog.i.sw.bb3.i_crit_edge51
  ]

sw.epilog.i.sw.bb3.i_crit_edge51:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge50:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge49:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge48:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge47:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge46:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge45:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge44:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge43:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge42:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge41:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge40:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge39:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.sw.bb3.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.epilog.i
  %vsi.i.i34.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %62 = ptrtoint ptr %vsi.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vsi.i.i34.i, align 8
  %tobool.not.i.i35.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i35.i, label %sw.bb2.i.if.end8_crit_edge, label %ice_get_main_vsi.exit.i37.i

sw.bb2.i.if.end8_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

ice_get_main_vsi.exit.i37.i:                      ; preds = %sw.bb2.i
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %tobool.not.i36.i = icmp eq ptr %65, null
  br i1 %tobool.not.i36.i, label %ice_get_main_vsi.exit.i37.i.if.end8_crit_edge, label %for.cond.preheader.i38.i

ice_get_main_vsi.exit.i37.i.if.end8_crit_edge:    ; preds = %ice_get_main_vsi.exit.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

for.cond.preheader.i38.i:                         ; preds = %ice_get_main_vsi.exit.i37.i
  %num_rxq.i.i = getelementptr inbounds %struct.ice_vsi, ptr %65, i32 0, i32 50
  %66 = ptrtoint ptr %num_rxq.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %num_rxq.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp24.not.i.i = icmp eq i16 %67, 0
  br i1 %cmp24.not.i.i, label %for.cond.preheader.i38.i.return.sink.split.i_crit_edge, label %for.body.lr.ph.i39.i

for.cond.preheader.i38.i.return.sink.split.i_crit_edge: ; preds = %for.cond.preheader.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

for.body.lr.ph.i39.i:                             ; preds = %for.cond.preheader.i38.i
  %rx_rings.i.i = getelementptr inbounds %struct.ice_vsi, ptr %65, i32 0, i32 4
  br label %for.body.i43.i

for.body.i43.i:                                   ; preds = %for.inc.i47.i.for.body.i43.i_crit_edge, %for.body.lr.ph.i39.i
  %indvars.iv.i40.i = phi i32 [ 0, %for.body.lr.ph.i39.i ], [ %indvars.iv.next.i45.i, %for.inc.i47.i.for.body.i43.i_crit_edge ]
  %68 = ptrtoint ptr %rx_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_rings.i.i, align 16
  %arrayidx.i41.i = getelementptr ptr, ptr %69, i32 %indvars.iv.i40.i
  %70 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i41.i, align 4
  %tobool3.not.i42.i = icmp eq ptr %71, null
  br i1 %tobool3.not.i42.i, label %for.body.i43.i.for.inc.i47.i_crit_edge, label %if.end5.i44.i

for.body.i43.i.for.inc.i47.i_crit_edge:           ; preds = %for.body.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i47.i

if.end5.i44.i:                                    ; preds = %for.body.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  %ptp_rx.i.i = getelementptr inbounds %struct.ice_rx_ring, ptr %71, i32 0, i32 30
  %72 = ptrtoint ptr %ptp_rx.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %ptp_rx.i.i, align 1
  br label %for.inc.i47.i

for.inc.i47.i:                                    ; preds = %if.end5.i44.i, %for.body.i43.i.for.inc.i47.i_crit_edge
  %indvars.iv.next.i45.i = add nuw nsw i32 %indvars.iv.i40.i, 1
  %73 = ptrtoint ptr %num_rxq.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %num_rxq.i.i, align 2
  %75 = zext i16 %74 to i32
  %cmp.i46.i = icmp ult i32 %indvars.iv.next.i45.i, %75
  br i1 %cmp.i46.i, label %for.inc.i47.i.for.body.i43.i_crit_edge, label %for.inc.i47.i.return.sink.split.i_crit_edge

for.inc.i47.i.return.sink.split.i_crit_edge:      ; preds = %for.inc.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

for.inc.i47.i.for.body.i43.i_crit_edge:           ; preds = %for.inc.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i43.i

sw.bb3.i:                                         ; preds = %sw.epilog.i.sw.bb3.i_crit_edge, %sw.epilog.i.sw.bb3.i_crit_edge39, %sw.epilog.i.sw.bb3.i_crit_edge40, %sw.epilog.i.sw.bb3.i_crit_edge41, %sw.epilog.i.sw.bb3.i_crit_edge42, %sw.epilog.i.sw.bb3.i_crit_edge43, %sw.epilog.i.sw.bb3.i_crit_edge44, %sw.epilog.i.sw.bb3.i_crit_edge45, %sw.epilog.i.sw.bb3.i_crit_edge46, %sw.epilog.i.sw.bb3.i_crit_edge47, %sw.epilog.i.sw.bb3.i_crit_edge48, %sw.epilog.i.sw.bb3.i_crit_edge49, %sw.epilog.i.sw.bb3.i_crit_edge50, %sw.epilog.i.sw.bb3.i_crit_edge51
  %vsi.i.i49.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %76 = ptrtoint ptr %vsi.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vsi.i.i49.i, align 8
  %tobool.not.i.i50.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i50.i, label %sw.bb3.i.if.end8_crit_edge, label %ice_get_main_vsi.exit.i52.i

sw.bb3.i.if.end8_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

ice_get_main_vsi.exit.i52.i:                      ; preds = %sw.bb3.i
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %tobool.not.i51.i = icmp eq ptr %79, null
  br i1 %tobool.not.i51.i, label %ice_get_main_vsi.exit.i52.i.if.end8_crit_edge, label %for.cond.preheader.i55.i

ice_get_main_vsi.exit.i52.i.if.end8_crit_edge:    ; preds = %ice_get_main_vsi.exit.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

for.cond.preheader.i55.i:                         ; preds = %ice_get_main_vsi.exit.i52.i
  %num_rxq.i53.i = getelementptr inbounds %struct.ice_vsi, ptr %79, i32 0, i32 50
  %80 = ptrtoint ptr %num_rxq.i53.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %num_rxq.i53.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp24.not.i54.i = icmp eq i16 %81, 0
  br i1 %cmp24.not.i54.i, label %for.cond.preheader.i55.i.return.sink.split.i_crit_edge, label %for.body.lr.ph.i57.i

for.cond.preheader.i55.i.return.sink.split.i_crit_edge: ; preds = %for.cond.preheader.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

for.body.lr.ph.i57.i:                             ; preds = %for.cond.preheader.i55.i
  %rx_rings.i56.i = getelementptr inbounds %struct.ice_vsi, ptr %79, i32 0, i32 4
  br label %for.body.i61.i

for.body.i61.i:                                   ; preds = %for.inc.i66.i.for.body.i61.i_crit_edge, %for.body.lr.ph.i57.i
  %indvars.iv.i58.i = phi i32 [ 0, %for.body.lr.ph.i57.i ], [ %indvars.iv.next.i64.i, %for.inc.i66.i.for.body.i61.i_crit_edge ]
  %82 = ptrtoint ptr %rx_rings.i56.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rx_rings.i56.i, align 16
  %arrayidx.i59.i = getelementptr ptr, ptr %83, i32 %indvars.iv.i58.i
  %84 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i59.i, align 4
  %tobool3.not.i60.i = icmp eq ptr %85, null
  br i1 %tobool3.not.i60.i, label %for.body.i61.i.for.inc.i66.i_crit_edge, label %if.end5.i63.i

for.body.i61.i.for.inc.i66.i_crit_edge:           ; preds = %for.body.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i66.i

if.end5.i63.i:                                    ; preds = %for.body.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  %ptp_rx.i62.i = getelementptr inbounds %struct.ice_rx_ring, ptr %85, i32 0, i32 30
  %86 = ptrtoint ptr %ptp_rx.i62.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %ptp_rx.i62.i, align 1
  br label %for.inc.i66.i

for.inc.i66.i:                                    ; preds = %if.end5.i63.i, %for.body.i61.i.for.inc.i66.i_crit_edge
  %indvars.iv.next.i64.i = add nuw nsw i32 %indvars.iv.i58.i, 1
  %87 = ptrtoint ptr %num_rxq.i53.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %num_rxq.i53.i, align 2
  %89 = zext i16 %88 to i32
  %cmp.i65.i = icmp ult i32 %indvars.iv.next.i64.i, %89
  br i1 %cmp.i65.i, label %for.inc.i66.i.for.body.i61.i_crit_edge, label %for.inc.i66.i.return.sink.split.i_crit_edge

for.inc.i66.i.return.sink.split.i_crit_edge:      ; preds = %for.inc.i66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

for.inc.i66.i.for.body.i61.i_crit_edge:           ; preds = %for.inc.i66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i61.i

return.sink.split.i:                              ; preds = %for.inc.i66.i.return.sink.split.i_crit_edge, %for.cond.preheader.i55.i.return.sink.split.i_crit_edge, %for.inc.i47.i.return.sink.split.i_crit_edge, %for.cond.preheader.i38.i.return.sink.split.i_crit_edge
  %.sink70.i = phi i32 [ 0, %for.cond.preheader.i38.i.return.sink.split.i_crit_edge ], [ 1, %for.cond.preheader.i55.i.return.sink.split.i_crit_edge ], [ 0, %for.inc.i47.i.return.sink.split.i_crit_edge ], [ 1, %for.inc.i66.i.return.sink.split.i_crit_edge ]
  %rx_filter.i67.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 10, i32 2
  %90 = ptrtoint ptr %rx_filter.i67.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %.sink70.i, ptr %rx_filter.i67.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %return.sink.split.i, %ice_get_main_vsi.exit.i52.i.if.end8_crit_edge, %sw.bb3.i.if.end8_crit_edge, %ice_get_main_vsi.exit.i37.i.if.end8_crit_edge, %sw.bb2.i.if.end8_crit_edge
  %tstamp_config = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 10
  %91 = call ptr @memcpy(ptr %config, ptr %tstamp_config, i32 12)
  %92 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #10
  %call.i.i19 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i19, label %if.end8.cleanup_crit_edge, label %if.end.i.i23

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i23:                                     ; preds = %if.end8
  %94 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %93, i32 12, i32 -1226833920) #14, !srcloc !228
  %asmresult.i.i21 = extractvalue { i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i21)
  %cmp.i.i22 = icmp eq i32 %asmresult.i.i21, 0
  br i1 %cmp.i.i22, label %copy_to_user.exit, label %if.end.i.i23.cleanup_crit_edge

if.end.i.i23.cleanup_crit_edge:                   ; preds = %if.end.i.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i23
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i24 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #10
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %93, ptr noundef nonnull %config, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool11.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool11.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i23.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ -34, %if.end4.cleanup_crit_edge ], [ -34, %sw.epilog.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end8.cleanup_crit_edge ], [ -14, %if.end.i.i23.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ice_ptp_rx_hwtstamp(ptr nocapture noundef readonly %rx_ring, ptr nocapture noundef readonly %rx_desc, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %time_stamp_low = getelementptr inbounds %struct.anon.203, ptr %rx_desc, i32 0, i32 11
  %0 = ptrtoint ptr %time_stamp_low to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %time_stamp_low, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %flex_ts = getelementptr inbounds %struct.anon.203, ptr %rx_desc, i32 0, i32 16
  %3 = ptrtoint ptr %flex_ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flex_ts, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %cached_phctime = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 28
  %6 = ptrtoint ptr %cached_phctime to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cached_phctime, align 8
  %conv.i = trunc i64 %7 to i32
  %sub.i = sub i32 %5, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %sub2.i = sub i32 %conv.i, %5
  %conv3.i = zext i32 %sub2.i to i64
  %sub4.i = sub i64 %7, %conv3.i
  br label %ice_ptp_extend_32b_ts.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv5.i = zext i32 %sub.i to i64
  %add.i = add i64 %7, %conv5.i
  br label %ice_ptp_extend_32b_ts.exit

ice_ptp_extend_32b_ts.exit:                       ; preds = %if.else.i, %if.then.i
  %ns.0.i = phi i64 [ %sub4.i, %if.then.i ], [ %add.i, %if.else.i ]
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %ns.0.i, ptr %hwtstamps.i, align 8
  br label %if.end

if.end:                                           ; preds = %ice_ptp_extend_32b_ts.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i8 @ice_ptp_request_ts(ptr noundef %tx, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %init = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 7
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %calibrating = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 8
  %2 = ptrtoint ptr %calibrating to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %calibrating, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %in_use = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 3
  %4 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_use, align 4
  %len = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 2
  %conv2 = zext i8 %7 to i32
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %5, i32 noundef %conv2) #10
  %conv4 = and i32 %call, 255
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len, align 2
  %conv6 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %conv6)
  %cmp = icmp ult i32 %conv4, %conv6
  br i1 %cmp, label %if.then8, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then8:                                         ; preds = %if.end
  %10 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in_use, align 4
  tail call void @_set_bit(i32 noundef %conv4, ptr noundef %11) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %tstamps = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 2
  %13 = ptrtoint ptr %tstamps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tstamps, align 4
  %start = getelementptr %struct.ice_tx_tstamp, ptr %14, i32 %conv4, i32 1
  %15 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %start, align 4
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !234
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !235

if.then8.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !230

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #10
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %18 = ptrtoint ptr %tstamps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tstamps, align 4
  %arrayidx14 = getelementptr %struct.ice_tx_tstamp, ptr %19, i32 %conv4
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %skb, ptr %arrayidx14, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tx_flags, align 1
  %25 = or i8 %24, 4
  store i8 %25, ptr %tx_flags, align 1
  br label %if.end19

if.end19:                                         ; preds = %skb_get.exit, %if.end.if.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %len, align 2
  %conv23 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %conv23)
  %cmp24.not = icmp ult i32 %conv4, %conv23
  br i1 %cmp24.not, label %if.else, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %quad_offset = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 5
  %28 = ptrtoint ptr %quad_offset to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %quad_offset, align 1
  %30 = trunc i32 %call to i8
  %conv29 = add i8 %29, %30
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv29, %if.else ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end19.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_ptp_process_ts(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %init = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 0, i32 7
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ptp = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32
  %kworker = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 6
  %2 = ptrtoint ptr %kworker to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kworker, align 4
  %call = tail call zeroext i1 @kthread_queue_work(ptr noundef %3, ptr noundef %ptp) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_ptp_reset(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp22 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %state = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.pfr_crit_edge

entry.pfr_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pfr

if.end:                                           ; preds = %entry
  %src_tmr_owned = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 6, i32 6
  %3 = ptrtoint ptr %src_tmr_owned to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %src_tmr_owned, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.reset_ts_crit_edge, label %if.end5

if.end.reset_ts_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_ts

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @ice_ptp_init_phc(ptr noundef %hw2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.do.end73_crit_edge

if.end5.do.end73_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

if.end9:                                          ; preds = %if.end5
  %call10 = tail call zeroext i1 @ice_ptp_lock(ptr noundef %hw2) #10
  br i1 %call10, label %if.end12, label %if.end9.do.end73_crit_edge

if.end9.do.end73_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

if.end12:                                         ; preds = %if.end9
  %call.i = tail call zeroext i1 @ice_is_e810(ptr noundef %hw2) #10
  br i1 %call.i, label %if.end12.do.body.i_crit_edge, label %if.else.i

if.end12.do.body.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.else.i:                                        ; preds = %if.end12
  %ts_func_info.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 6
  %5 = ptrtoint ptr %ts_func_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ts_func_info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp.i = icmp ult i32 %6, 6
  br i1 %cmp.i, label %if.then3.i, label %if.else.i.do.body.i_crit_edge

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %nominal_incval.i.i = getelementptr [6 x %struct.ice_time_ref_info_e822], ptr @e822_time_ref, i32 0, i32 %6, i32 1
  %7 = ptrtoint ptr %nominal_incval.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %nominal_incval.i.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then3.i, %if.else.i.do.body.i_crit_edge, %if.end12.do.body.i_crit_edge
  %incval.0.i = phi i64 [ %8, %if.then3.i ], [ 5286113595, %if.end12.do.body.i_crit_edge ], [ 4294967296, %if.else.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_base_incval.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_reset, %if.then11.i)) #10
          to label %ice_base_incval.exit [label %if.then11.i], !srcloc !236

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pf, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_base_incval.__UNIQUE_ID_ddebug616, ptr noundef %dev.i, ptr noundef nonnull @.str.26, i64 noundef %incval.0.i) #10
  br label %ice_base_incval.exit

ice_base_incval.exit:                             ; preds = %if.then11.i, %do.body.i
  %call14 = tail call i32 @ice_ptp_write_incval(ptr noundef %hw2, i64 noundef %incval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %ice_base_incval.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ice_ptp_unlock(ptr noundef %hw2) #10
  br label %do.end73

if.end17:                                         ; preds = %ice_base_incval.exit
  %cached_phc_time = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 3
  %11 = ptrtoint ptr %cached_phc_time to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cached_phc_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool18.not = icmp eq i64 %12, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  %reset_time = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 11
  %13 = ptrtoint ptr %reset_time to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %reset_time, align 8
  %sub = sub i64 %call.i.i, %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  %15 = ptrtoint ptr %cached_phc_time to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cached_phc_time, align 8
  %add = add i64 %sub, %16
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %add) #10
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %17)
  %ts.sroa.0.0.copyload119 = load i64, ptr %tmp, align 8
  %ts.sroa.6.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %18 = ptrtoint ptr %ts.sroa.6.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %ts.sroa.6.0.copyload121 = load i32, ptr %ts.sroa.6.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  br label %if.end24

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp22) #10
  %call.i116 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp22, i64 noundef %call.i116) #10
  %19 = ptrtoint ptr %tmp22 to i32
  call void @__asan_load8_noabort(i32 %19)
  %ts.sroa.0.0.copyload120 = load i64, ptr %tmp22, align 8
  %ts.sroa.6.0.tmp22.sroa_idx = getelementptr inbounds i8, ptr %tmp22, i32 8
  %20 = ptrtoint ptr %ts.sroa.6.0.tmp22.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %ts.sroa.6.0.copyload122 = load i32, ptr %ts.sroa.6.0.tmp22.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp22) #10
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19
  %ts.sroa.6.0 = phi i32 [ %ts.sroa.6.0.copyload122, %if.else ], [ %ts.sroa.6.0.copyload121, %if.then19 ]
  %ts.sroa.0.0 = phi i64 [ %ts.sroa.0.0.copyload120, %if.else ], [ %ts.sroa.0.0.copyload119, %if.then19 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %ts.sroa.0.0)
  %cmp.i.i = icmp sgt i64 %ts.sroa.0.0, 9223372035
  br i1 %cmp.i.i, label %if.end24.ice_ptp_write_init.exit_crit_edge, label %if.end.i.i

if.end24.ice_ptp_write_init.exit_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_write_init.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %ts.sroa.0.0)
  %cmp2.i.i = icmp slt i64 %ts.sroa.0.0, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.ice_ptp_write_init.exit_crit_edge, label %if.end4.i.i

if.end.i.i.ice_ptp_write_init.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_write_init.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.i = mul nsw i64 %ts.sroa.0.0, 1000000000
  %conv.i.i = sext i32 %ts.sroa.6.0 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %ice_ptp_write_init.exit

ice_ptp_write_init.exit:                          ; preds = %if.end4.i.i, %if.end.i.i.ice_ptp_write_init.exit_crit_edge, %if.end24.ice_ptp_write_init.exit_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end4.i.i ], [ 9223372036854775807, %if.end24.ice_ptp_write_init.exit_crit_edge ], [ -9223372036854775808, %if.end.i.i.ice_ptp_write_init.exit_crit_edge ]
  %call2.i = call i32 @ice_ptp_init_time(ptr noundef %hw2, i64 noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool26.not = icmp eq i32 %call2.i, 0
  call void @ice_ptp_unlock(ptr noundef %hw2) #10
  br i1 %tobool26.not, label %if.end28, label %ice_ptp_write_init.exit.do.end73_crit_edge

ice_ptp_write_init.exit.do.end73_crit_edge:       ; preds = %ice_ptp_write_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

if.end28:                                         ; preds = %ice_ptp_write_init.exit
  %call29 = call zeroext i1 @ice_is_e810(ptr noundef %hw2) #10
  br i1 %call29, label %if.end28.reset_ts_crit_edge, label %if.then30

if.end28.reset_ts_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_ts

if.then30:                                        ; preds = %if.end28
  %call31 = call fastcc i32 @ice_ptp_tx_ena_intr(ptr noundef %pf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.reset_ts_crit_edge, label %if.then30.do.end73_crit_edge

if.then30.do.end73_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

if.then30.reset_ts_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_ts

reset_ts:                                         ; preds = %if.then30.reset_ts_crit_edge, %if.end28.reset_ts_crit_edge, %if.end.reset_ts_crit_edge
  %call.i118 = call fastcc i32 @ice_ptp_port_phy_restart(ptr noundef %ptp1) #10
  br label %pfr

pfr:                                              ; preds = %reset_ts, %entry.pfr_crit_edge
  %call37 = call zeroext i1 @ice_is_e810(ptr noundef %hw2) #10
  br i1 %call37, label %if.then38, label %do.body41

if.then38:                                        ; preds = %pfr
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = call fastcc i32 @ice_ptp_init_tx_e810(ptr noundef %pf, ptr noundef %ptp1)
  br label %if.end60

do.body41:                                        ; preds = %pfr
  call void @__sanitizer_cov_trace_pc() #12
  %ov_work = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 1
  %21 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 1, i32 0, i32 1
  %22 = call ptr @memset(ptr %21, i32 0, i32 12)
  %23 = ptrtoint ptr %ov_work to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %ov_work, ptr %ov_work, align 4
  %prev.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 1, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ov_work, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ice_ptp_wait_for_offset_valid, ptr %func, align 8
  %timer = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 1, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @kthread_delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @ice_ptp_reset.__key) #10
  %port_num = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 5
  %26 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port_num, align 2
  %call59 = call fastcc i32 @ice_ptp_init_tx_e822(ptr noundef %ptp1, i8 noundef zeroext %27)
  br label %if.end60

if.end60:                                         ; preds = %do.body41, %if.then38
  %err.0 = phi i32 [ %call39, %if.then38 ], [ %call59, %do.body41 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool61.not = icmp eq i32 %err.0, 0
  br i1 %tobool61.not, label %if.end63, label %if.end60.do.end73_crit_edge

if.end60.do.end73_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

if.end63:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  call void @_set_bit(i32 noundef 9, ptr noundef %flags) #10
  %kworker = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 6
  %28 = ptrtoint ptr %kworker to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %kworker, align 4
  %work65 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 1
  %call66 = call zeroext i1 @kthread_queue_delayed_work(ptr noundef %29, ptr noundef %work65, i32 noundef 0) #10
  %30 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6) #13
  br label %cleanup

do.end73:                                         ; preds = %if.end60.do.end73_crit_edge, %if.then30.do.end73_crit_edge, %ice_ptp_write_init.exit.do.end73_crit_edge, %if.then16, %if.end9.do.end73_crit_edge, %if.end5.do.end73_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end60.do.end73_crit_edge ], [ %call6, %if.end5.do.end73_crit_edge ], [ %call14, %if.then16 ], [ %call31, %if.then30.do.end73_crit_edge ], [ -16, %if.end9.do.end73_crit_edge ], [ %call2.i, %ice_ptp_write_init.exit.do.end73_crit_edge ]
  %32 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pf, align 8
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev75, ptr noundef nonnull @.str.10, i32 noundef %err.1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %if.end63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_ptp_init_phc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_ptp_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_ptp_write_incval(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_ptp_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_e810(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_tx_ena_intr(ptr noundef %pf) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !226
  %port_info.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 3
  %1 = ptrtoint ptr %port_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port_info.i, align 4
  %lport.i = getelementptr inbounds %struct.ice_port_info, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %lport.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lport.i, align 1
  %5 = lshr i8 %4, 2
  %call.i.i = tail call i32 @ice_write_quad_reg_e822(ptr noundef %hw1, i8 noundef zeroext %5, i16 noundef zeroext 1560, i32 noundef 1) #10
  %call3.i.i = tail call i32 @ice_write_quad_reg_e822(ptr noundef %hw1, i8 noundef zeroext %5, i16 noundef zeroext 1560, i32 noundef -2) #10
  %call = call i32 @ice_read_quad_reg_e822(ptr noundef %hw1, i8 noundef zeroext 0, i16 noundef zeroext 3080, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond:                                         ; preds = %if.then3
  %call.1 = call i32 @ice_read_quad_reg_e822(ptr noundef %hw1, i8 noundef zeroext 1, i16 noundef zeroext 3080, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.then3.1, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then3.1:                                       ; preds = %for.cond
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %or.1 = and i32 %7, -65025
  %or5.1 = or i32 %or.1, 33280
  store i32 %or5.1, ptr %val, align 4
  %call9.1 = call i32 @ice_write_quad_reg_e822(ptr noundef %hw1, i8 noundef zeroext 1, i16 noundef zeroext 3080, i32 noundef %or5.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %tobool10.not.1 = icmp eq i32 %call9.1, 0
  br i1 %tobool10.not.1, label %if.then3.1.if.end15_crit_edge, label %if.then3.1.do.end_crit_edge

if.then3.1.do.end_crit_edge:                      ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then3.1.if.end15_crit_edge:                    ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then3:                                         ; preds = %entry
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %or = and i32 %9, -65025
  %or5 = or i32 %or, 33280
  store i32 %or5, ptr %val, align 4
  %call9 = call i32 @ice_write_quad_reg_e822(ptr noundef %hw1, i8 noundef zeroext 0, i16 noundef zeroext 3080, i32 noundef %or5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.cond, label %if.then3.do.end_crit_edge

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.then3.do.end_crit_edge, %if.then3.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %err.1.ph = phi i32 [ %call9, %if.then3.do.end_crit_edge ], [ %call, %entry.do.end_crit_edge ], [ %call.1, %for.cond.do.end_crit_edge ], [ %call9.1, %if.then3.1.do.end_crit_edge ]
  %10 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %err.1.ph) #13
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then3.1.if.end15_crit_edge
  %err.14 = phi i32 [ %err.1.ph, %do.end ], [ 0, %if.then3.1.if.end15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %err.14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_init_tx_e810(ptr nocapture noundef readonly %pf, ptr noundef %tx) unnamed_addr #0 align 64 {
kcalloc.exit.i:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 3
  %0 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_info, align 4
  %lport = getelementptr inbounds %struct.ice_port_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lport, align 1
  %quad = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 4
  %4 = ptrtoint ptr %quad to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %quad, align 4
  %quad_offset = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 5
  %5 = ptrtoint ptr %quad_offset to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %quad_offset, align 1
  %len = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %len, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1024) #15
  %tstamps.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 2
  %8 = ptrtoint ptr %tstamps.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i.i, ptr %tstamps.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %kcalloc.exit.i.ice_ptp_alloc_tx_tracker.exit_crit_edge, label %if.end.i

kcalloc.exit.i.ice_ptp_alloc_tx_tracker.exit_crit_edge: ; preds = %kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_alloc_tx_tracker.exit

if.end.i:                                         ; preds = %kcalloc.exit.i
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len, align 2
  %conv3.i = zext i8 %10 to i32
  %call4.i = tail call ptr @bitmap_zalloc(i32 noundef %conv3.i, i32 noundef 3264) #10
  %in_use.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 3
  %11 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4.i, ptr %in_use.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %do.body.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %tstamps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tstamps.i, align 4
  tail call void @kfree(ptr noundef %13) #10
  %14 = ptrtoint ptr %tstamps.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %tstamps.i, align 4
  br label %ice_ptp_alloc_tx_tracker.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @ice_ptp_alloc_tx_tracker.__key, i16 noundef signext 3) #10
  %15 = getelementptr inbounds i8, ptr %tx, i32 12
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %15, align 4
  %17 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %tx, ptr %tx, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tx, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tx, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.kthread_work, ptr %tx, i32 0, i32 1
  %19 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ice_ptp_tx_tstamp_work, ptr %func.i, align 4
  %init.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 7
  %20 = ptrtoint ptr %init.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %init.i, align 1
  br label %ice_ptp_alloc_tx_tracker.exit

ice_ptp_alloc_tx_tracker.exit:                    ; preds = %do.body.i, %if.then7.i, %kcalloc.exit.i.ice_ptp_alloc_tx_tracker.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.i ], [ -12, %if.then7.i ], [ -12, %kcalloc.exit.i.ice_ptp_alloc_tx_tracker.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_ptp_wait_for_offset_valid(ptr noundef %work) #0 align 64 {
entry:
  %val.i5.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -80
  %add.ptr6 = getelementptr i8, ptr %work, i32 -928
  %0 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr6, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %2 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i.i, align 4, !annotation !226
  %call.i.i = tail call fastcc i32 @ice_ptp_check_tx_fifo(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.ice_ptp_check_tx_offset_valid.exit.i_crit_edge

entry.ice_ptp_check_tx_offset_valid.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_check_tx_offset_valid.exit.i

if.end.i.i:                                       ; preds = %entry
  %hw5.i.i = getelementptr i8, ptr %work, i32 2032
  %port_num.i.i = getelementptr i8, ptr %work, i32 162
  %3 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_num.i.i, align 2
  %call6.i.i = call i32 @ice_read_phy_reg_e822(ptr noundef %hw5.i.i, i8 noundef zeroext %4, i16 noundef zeroext 1236, ptr noundef nonnull %val.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end10.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port_num.i.i, align 2
  %conv.i.i = zext i8 %6 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.33, i32 noundef %conv.i.i, i32 noundef %call6.i.i) #13
  br label %ice_ptp_check_tx_offset_valid.exit.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool11.not.i.i, i32 -11, i32 0
  br label %ice_ptp_check_tx_offset_valid.exit.i

ice_ptp_check_tx_offset_valid.exit.i:             ; preds = %if.end10.i.i, %do.end.i.i, %entry.ice_ptp_check_tx_offset_valid.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -11, %do.end.i.i ], [ %call.i.i, %entry.ice_ptp_check_tx_offset_valid.exit.i_crit_edge ], [ %..i.i, %if.end10.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  %9 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr6, align 8
  %hw5.i7.i = getelementptr i8, ptr %work, i32 2032
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i5.i) #10
  %11 = ptrtoint ptr %val.i5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i5.i, align 4, !annotation !226
  %port_num.i8.i = getelementptr i8, ptr %work, i32 162
  %12 = ptrtoint ptr %port_num.i8.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_num.i8.i, align 2
  %call.i9.i = call i32 @ice_read_phy_reg_e822(ptr noundef %hw5.i7.i, i8 noundef zeroext %13, i16 noundef zeroext 1272, ptr noundef nonnull %val.i5.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool.not.i10.i, label %ice_ptp_check_offset_valid.exit, label %ice_ptp_check_offset_valid.exit.thread

ice_ptp_check_offset_valid.exit.thread:           ; preds = %ice_ptp_check_tx_offset_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev4.i11.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %14 = ptrtoint ptr %port_num.i8.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_num.i8.i, align 2
  %conv.i12.i = zext i8 %15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i11.i, ptr noundef nonnull @.str.39, i32 noundef %conv.i12.i, i32 noundef %call.i9.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i5.i) #10
  br label %if.then

ice_ptp_check_offset_valid.exit:                  ; preds = %ice_ptp_check_tx_offset_valid.exit.i
  %16 = ptrtoint ptr %val.i5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i5.i, align 4
  %and.i14.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i)
  %tobool7.not.i15.i = icmp ne i32 %and.i14.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i5.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool7.not.i15.i, i1 false
  br i1 %or.cond.i, label %if.end, label %ice_ptp_check_offset_valid.exit.if.then_crit_edge

ice_ptp_check_offset_valid.exit.if.then_crit_edge: ; preds = %ice_ptp_check_offset_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %ice_ptp_check_offset_valid.exit.if.then_crit_edge, %ice_ptp_check_offset_valid.exit.thread
  %kworker = getelementptr i8, ptr %work, i32 268
  %18 = ptrtoint ptr %kworker to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kworker, align 4
  %call10 = call zeroext i1 @kthread_queue_delayed_work(ptr noundef %19, ptr noundef %work, i32 noundef 10) #10
  br label %cleanup

if.end:                                           ; preds = %ice_ptp_check_offset_valid.exit
  %20 = ptrtoint ptr %port_num.i8.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_num.i8.i, align 2
  %call11 = call i32 @ice_phy_exit_bypass_e822(ptr noundef %hw5.i7.i, i8 noundef zeroext %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %port_num.i8.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_num.i8.i, align 2
  %conv = zext i8 %23 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %call11) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_init_tx_e822(ptr noundef %tx, i8 noundef zeroext %port) unnamed_addr #0 align 64 {
kcalloc.exit.i:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i8 %port, 2
  %quad = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 4
  %1 = ptrtoint ptr %quad to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %0, ptr %quad, align 4
  %mul = shl i8 %0, 4
  %quad_offset = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 5
  %2 = ptrtoint ptr %quad_offset to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %mul, ptr %quad_offset, align 1
  %len = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %len, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #15
  %tstamps.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 2
  %5 = ptrtoint ptr %tstamps.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i.i, ptr %tstamps.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %kcalloc.exit.i.ice_ptp_alloc_tx_tracker.exit_crit_edge, label %if.end.i

kcalloc.exit.i.ice_ptp_alloc_tx_tracker.exit_crit_edge: ; preds = %kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_alloc_tx_tracker.exit

if.end.i:                                         ; preds = %kcalloc.exit.i
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 2
  %conv3.i = zext i8 %7 to i32
  %call4.i = tail call ptr @bitmap_zalloc(i32 noundef %conv3.i, i32 noundef 3264) #10
  %in_use.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 3
  %8 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4.i, ptr %in_use.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %do.body.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %tstamps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tstamps.i, align 4
  tail call void @kfree(ptr noundef %10) #10
  %11 = ptrtoint ptr %tstamps.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tstamps.i, align 4
  br label %ice_ptp_alloc_tx_tracker.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @ice_ptp_alloc_tx_tracker.__key, i16 noundef signext 3) #10
  %12 = getelementptr inbounds i8, ptr %tx, i32 12
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %12, align 4
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %tx, ptr %tx, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tx, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tx, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.kthread_work, ptr %tx, i32 0, i32 1
  %16 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ice_ptp_tx_tstamp_work, ptr %func.i, align 4
  %init.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 7
  %17 = ptrtoint ptr %init.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %init.i, align 1
  br label %ice_ptp_alloc_tx_tracker.exit

ice_ptp_alloc_tx_tracker.exit:                    ; preds = %do.body.i, %if.then7.i, %kcalloc.exit.i.ice_ptp_alloc_tx_tracker.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.i ], [ -12, %if.then7.i ], [ -12, %kcalloc.exit.i.ice_ptp_alloc_tx_tracker.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_ptp_prepare_for_reset(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %flags) #10
  tail call void @ice_ptp_cfg_timestamp(ptr noundef %pf, i1 noundef zeroext false)
  %work = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 1
  %call = tail call zeroext i1 @kthread_cancel_delayed_work_sync(ptr noundef %work) #10
  %extts_work = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 2
  %call2 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %extts_work) #10
  %state = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ptp1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32
  tail call fastcc void @ice_ptp_release_tx_tracker(ptr noundef %pf, ptr noundef %ptp1)
  tail call fastcc void @ice_ptp_disable_all_clkout(ptr noundef %pf)
  %hw = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %call6 = tail call zeroext i8 @ice_get_ptp_src_clock_index(ptr noundef %hw) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %conv = zext i8 %call6 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 559112
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777217) #10, !srcloc !225
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  %reset_time = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 11
  %5 = ptrtoint ptr %reset_time to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i.i, ptr %reset_time, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_ptp_release_tx_tracker(ptr noundef %pf, ptr noundef %tx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %init = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 7
  %0 = ptrtoint ptr %init to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %init, align 1
  %call = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %tx) #10
  %len.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 6
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp35.not.i = icmp eq i8 %2, 0
  br i1 %cmp35.not.i, label %entry.ice_ptp_flush_tx_tracker.exit_crit_edge, label %for.body.lr.ph.i

entry.ice_ptp_flush_tx_tracker.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_flush_tx_tracker.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %quad_offset.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 1
  %tstamps.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 2
  %in_use.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 3
  %reset_ongoing.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 24
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %quad.i = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end19.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end19.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %quad_offset.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %quad_offset.i, align 1
  %5 = trunc i32 %indvars.iv.i to i8
  %add.i = add i8 %4, %5
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %6 = ptrtoint ptr %tstamps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tstamps.i, align 4
  %arrayidx.i = getelementptr %struct.ice_tx_tstamp, ptr %7, i32 %indvars.iv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #10
  %10 = ptrtoint ptr %tstamps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tstamps.i, align 4
  %arrayidx12.i = getelementptr %struct.ice_tx_tstamp, ptr %11, i32 %indvars.iv.i
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx12.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %13 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_use.i, align 4
  tail call void @_clear_bit(i32 noundef %indvars.iv.i, ptr noundef %14) #10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %15 = ptrtoint ptr %reset_ongoing.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reset_ongoing.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not.i = icmp eq i8 %16, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %quad.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %quad.i, align 4
  %call.i = tail call i32 @ice_clear_phy_tstamp(ptr noundef %hw.i, i8 noundef zeroext %18, i8 noundef zeroext %add.i) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end.i.if.end19.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %len.i, align 2
  %21 = zext i8 %20 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %21
  br i1 %cmp.i, label %if.end19.i.for.body.i_crit_edge, label %if.end19.i.ice_ptp_flush_tx_tracker.exit_crit_edge

if.end19.i.ice_ptp_flush_tx_tracker.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_flush_tx_tracker.exit

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ice_ptp_flush_tx_tracker.exit:                    ; preds = %if.end19.i.ice_ptp_flush_tx_tracker.exit_crit_edge, %entry.ice_ptp_flush_tx_tracker.exit_crit_edge
  %tstamps = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 2
  %22 = ptrtoint ptr %tstamps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tstamps, align 4
  tail call void @kfree(ptr noundef %23) #10
  %24 = ptrtoint ptr %tstamps to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %tstamps, align 4
  %in_use = getelementptr inbounds %struct.ice_ptp_tx, ptr %tx, i32 0, i32 3
  %25 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %in_use, align 4
  tail call void @bitmap_free(ptr noundef %26) #10
  %27 = ptrtoint ptr %in_use to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %in_use, align 4
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %len.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_ptp_disable_all_clkout(ptr nocapture noundef readonly %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %n_per_out = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 5
  %0 = ptrtoint ptr %n_per_out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_per_out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hw1.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %tmr_index_owned.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 6, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 7, i32 %i.08
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 8, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %tmr_index_owned.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tmr_index_owned.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1.i, align 8
  %conv.i = zext i8 %5 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %mul2.i = shl i32 %i.08, 3
  %add.i = add i32 %mul.i, %mul2.i
  %add3.i = add i32 %add.i, 559512
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1.i, align 8
  %add13.i = add i32 %add.i, 559544
  %add.ptr14.i = getelementptr i8, ptr %9, i32 %add13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 0) #10, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1.i, align 8
  %mul22.i = shl i32 %i.08, 4
  %add21.i = add i32 %mul.i, %mul22.i
  %add23.i = add i32 %add21.i, 559400
  %add.ptr24.i = getelementptr i8, ptr %11, i32 %add23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 0) #10, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1.i, align 8
  %add33.i = add i32 %add21.i, 559408
  %add.ptr34.i = getelementptr i8, ptr %13, i32 %add33.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 0) #10, !srcloc !225
  %gpio_pin35.i = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 7, i32 %i.08, i32 1
  %14 = ptrtoint ptr %gpio_pin35.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_pin35.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1.i, align 8
  %mul40.i = shl i32 %15, 2
  %add41.i = add i32 %mul40.i, 557256
  %add.ptr42.i = getelementptr i8, ptr %17, i32 %add41.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 268435456) #10, !srcloc !225
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.08, 1
  %18 = ptrtoint ptr %n_per_out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_per_out, align 8
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ice_get_ptp_src_clock_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_ptp_init(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32
  %src_tmr_owned = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 6, i32 6
  %0 = ptrtoint ptr %src_tmr_owned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src_tmr_owned, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @ice_ptp_init_owner(ptr noundef %pf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.err15_crit_edge

if.then.err15_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %err15

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %pf_id = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 13
  %2 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pf_id, align 1
  %port_num = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 5
  %4 = ptrtoint ptr %port_num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %port_num, align 2
  %ps_lock.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %ps_lock.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @ice_ptp_init_port.__key) #10
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %call.i = tail call zeroext i1 @ice_is_e810(ptr noundef %hw.i) #10
  br i1 %call.i, label %if.then.i, label %do.body3.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call fastcc i32 @ice_ptp_init_tx_e810(ptr noundef %pf, ptr noundef %ptp1) #10
  br label %ice_ptp_init_port.exit

do.body3.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %ov_work.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %5, align 4
  %7 = ptrtoint ptr %ov_work.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %ov_work.i, ptr %ov_work.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ov_work.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ice_ptp_wait_for_offset_valid, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @kthread_delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.102, ptr noundef nonnull @ice_ptp_init_port.__key.101) #10
  %10 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_num, align 2
  %call14.i = tail call fastcc i32 @ice_ptp_init_tx_e822(ptr noundef %ptp1, i8 noundef zeroext %11) #10
  br label %ice_ptp_init_port.exit

ice_ptp_init_port.exit:                           ; preds = %do.body3.i, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call14.i, %do.body3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool8.not, label %if.end10, label %ice_ptp_init_port.exit.err15_crit_edge

ice_ptp_init_port.exit.err15_crit_edge:           ; preds = %ice_ptp_init_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err15

if.end10:                                         ; preds = %ice_ptp_init_port.exit
  %call.i51 = tail call fastcc i32 @ice_ptp_port_phy_restart(ptr noundef %ptp1) #10
  %flags = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags) #10
  %work.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 1
  %12 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %12, align 4
  %14 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %work.i, ptr %work.i, align 4
  %prev.i.i52 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i52 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %work.i, ptr %prev.i.i52, align 4
  %func.i53 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %func.i53 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ice_ptp_periodic_work, ptr %func.i53, align 4
  %timer.i54 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i54, ptr noundef nonnull @kthread_delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.103, ptr noundef nonnull @ice_ptp_init_work.__key) #10
  %extts_work.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 2
  %17 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 2, i32 1
  %18 = call ptr @memset(ptr %17, i32 0, i32 12)
  %19 = ptrtoint ptr %extts_work.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %extts_work.i, ptr %extts_work.i, align 4
  %prev.i38.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i38.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %extts_work.i, ptr %prev.i38.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ice_ptp_extts_work, ptr %17, align 8
  %22 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pf, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44, i32 3
  %24 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end10.dev_name.exit.i_crit_edge

if.end10.dev_name.exit.i_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end10.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %27, %if.end.i.i ], [ %25, %if.end10.dev_name.exit.i_crit_edge ]
  %call20.i = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.104, ptr noundef %retval.0.i.i) #10
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ice_ptp_init_work.exit, label %ice_ptp_init_work.exit.thread

ice_ptp_init_work.exit.thread:                    ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %kworker23.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 6
  %28 = ptrtoint ptr %kworker23.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call20.i, ptr %kworker23.i, align 4
  %call26.i = tail call zeroext i1 @kthread_queue_delayed_work(ptr noundef %call20.i, ptr noundef %work.i, i32 noundef 0) #10
  %29 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  br label %cleanup

ice_ptp_init_work.exit:                           ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %call20.i to i32
  br label %err15

err15:                                            ; preds = %ice_ptp_init_work.exit, %ice_ptp_init_port.exit.err15_crit_edge, %if.then.err15_crit_edge
  %err.0 = phi i32 [ %call, %if.then.err15_crit_edge ], [ %retval.0.i, %ice_ptp_init_port.exit.err15_crit_edge ], [ %31, %ice_ptp_init_work.exit ]
  %clock = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 9
  %32 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clock, align 4
  %tobool17.not = icmp eq ptr %33, null
  br i1 %tobool17.not, label %err15.if.end23_crit_edge, label %if.then18

err15.if.end23_crit_edge:                         ; preds = %err15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then18:                                        ; preds = %err15
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %33) #10
  %34 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %clock, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %err15.if.end23_crit_edge
  %flags24 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %flags24) #10
  %35 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pf, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.15, i32 noundef %err.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %ice_ptp_init_work.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_init_owner(ptr noundef %pf) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %call = tail call i32 @ice_ptp_init_phc(ptr noundef %hw1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @ice_ptp_lock(ptr noundef %hw1) #10
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = tail call zeroext i1 @ice_is_e810(ptr noundef %hw1) #10
  br i1 %call.i, label %if.end4.do.body.i_crit_edge, label %if.else.i

if.end4.do.body.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.else.i:                                        ; preds = %if.end4
  %ts_func_info.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 6
  %2 = ptrtoint ptr %ts_func_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ts_func_info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.i = icmp ult i32 %3, 6
  br i1 %cmp.i, label %if.then3.i, label %if.else.i.do.body.i_crit_edge

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %nominal_incval.i.i = getelementptr [6 x %struct.ice_time_ref_info_e822], ptr @e822_time_ref, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %nominal_incval.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nominal_incval.i.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then3.i, %if.else.i.do.body.i_crit_edge, %if.end4.do.body.i_crit_edge
  %incval.0.i = phi i64 [ %5, %if.then3.i ], [ 5286113595, %if.end4.do.body.i_crit_edge ], [ 4294967296, %if.else.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_base_incval.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_init_owner, %if.then11.i)) #10
          to label %ice_base_incval.exit [label %if.then11.i], !srcloc !236

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pf, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_base_incval.__UNIQUE_ID_ddebug616, ptr noundef %dev.i, ptr noundef nonnull @.str.26, i64 noundef %incval.0.i) #10
  br label %ice_base_incval.exit

ice_base_incval.exit:                             ; preds = %if.then11.i, %do.body.i
  %call6 = tail call i32 @ice_ptp_write_incval(ptr noundef %hw1, i64 noundef %incval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %ice_base_incval.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ice_ptp_unlock(ptr noundef %hw1) #10
  br label %cleanup

if.end9:                                          ; preds = %ice_base_incval.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  %call.i49 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %call.i49) #10
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %8)
  %ts.sroa.0.0.copyload53 = load i64, ptr %tmp, align 8
  %ts.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %9 = ptrtoint ptr %ts.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %ts.sroa.5.0.copyload54 = load i32, ptr %ts.sroa.5.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %ts.sroa.0.0.copyload53)
  %cmp.i.i = icmp sgt i64 %ts.sroa.0.0.copyload53, 9223372035
  br i1 %cmp.i.i, label %if.end9.ice_ptp_write_init.exit_crit_edge, label %if.end.i.i

if.end9.ice_ptp_write_init.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_write_init.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %ts.sroa.0.0.copyload53)
  %cmp2.i.i = icmp slt i64 %ts.sroa.0.0.copyload53, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.ice_ptp_write_init.exit_crit_edge, label %if.end4.i.i

if.end.i.i.ice_ptp_write_init.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_write_init.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.i = mul nsw i64 %ts.sroa.0.0.copyload53, 1000000000
  %conv.i.i = sext i32 %ts.sroa.5.0.copyload54 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %ice_ptp_write_init.exit

ice_ptp_write_init.exit:                          ; preds = %if.end4.i.i, %if.end.i.i.ice_ptp_write_init.exit_crit_edge, %if.end9.ice_ptp_write_init.exit_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end4.i.i ], [ 9223372036854775807, %if.end9.ice_ptp_write_init.exit_crit_edge ], [ -9223372036854775808, %if.end.i.i.ice_ptp_write_init.exit_crit_edge ]
  %call2.i = call i32 @ice_ptp_init_time(ptr noundef %hw1, i64 noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool12.not = icmp eq i32 %call2.i, 0
  call void @ice_ptp_unlock(ptr noundef %hw1) #10
  br i1 %tobool12.not, label %if.end14, label %ice_ptp_write_init.exit.cleanup_crit_edge

ice_ptp_write_init.exit.cleanup_crit_edge:        ; preds = %ice_ptp_write_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %ice_ptp_write_init.exit
  %call15 = call zeroext i1 @ice_is_e810(ptr noundef %hw1) #10
  br i1 %call15, label %if.end14.if.end21_crit_edge, label %if.then16

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  %call17 = call fastcc i32 @ice_ptp_tx_ena_intr(ptr noundef %pf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end21_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  %clock1.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 9
  %10 = ptrtoint ptr %clock1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock1.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end.i:                                         ; preds = %if.end21
  %info1.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8
  %12 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pf, align 8
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %name.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 1
  %call.i.i = call ptr @dev_driver_string(ptr noundef %dev2.i.i) #10
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.dev_name.exit.i.i_crit_edge

if.end.i.dev_name.exit.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %17, %if.end.i.i.i ], [ %15, %if.end.i.dev_name.exit.i.i_crit_edge ]
  %call4.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i, i32 noundef 31, ptr noundef nonnull @.str.51, ptr noundef %call.i.i, ptr noundef %retval.0.i.i.i) #10
  %18 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %info1.i.i, align 4
  %max_adj.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 2
  %19 = ptrtoint ptr %max_adj.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 999999999, ptr %max_adj.i.i, align 4
  %adjtime.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 12
  %20 = ptrtoint ptr %adjtime.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ice_ptp_adjtime, ptr %adjtime.i.i, align 4
  %adjfine.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 9
  %21 = ptrtoint ptr %adjfine.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ice_ptp_adjfine, ptr %adjfine.i.i, align 4
  %gettimex64.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 14
  %22 = ptrtoint ptr %gettimex64.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ice_ptp_gettimex64, ptr %gettimex64.i.i, align 4
  %settime64.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 16
  %23 = ptrtoint ptr %settime64.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ice_ptp_settime64, ptr %settime64.i.i, align 4
  %call5.i.i = call zeroext i1 @ice_is_e810(ptr noundef %hw1) #10
  br i1 %call5.i.i, label %if.then.i.i, label %dev_name.exit.i.i.ice_ptp_set_caps.exit.i_crit_edge

dev_name.exit.i.i.ice_ptp_set_caps.exit.i_crit_edge: ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_set_caps.exit.i

if.then.i.i:                                      ; preds = %dev_name.exit.i.i
  %enable.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 17
  %24 = ptrtoint ptr %enable.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ice_ptp_gpio_enable_e810, ptr %enable.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @ice_is_e810t(ptr noundef %hw1) #10
  br i1 %call.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %call.i.i.i.i = call zeroext i1 @ice_is_feature_supported(ptr noundef %pf, i32 noundef 1) #10
  br i1 %call.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.then.i.i.i.if.end.i.i.i.i_crit_edge

if.then.i.i.i.if.end.i.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %call1.i.i.i.i = call zeroext i1 @ice_is_pca9575_present(ptr noundef %hw1) #10
  br i1 %call1.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ice_clear_feature_support(ptr noundef %pf, i32 noundef 1) #10
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.then.i.i.i.if.end.i.i.i.i_crit_edge
  %call2.i.i.i.i = call zeroext i1 @ice_is_feature_supported(ptr noundef %pf, i32 noundef 1) #10
  br i1 %call2.i.i.i.i, label %devm_kcalloc.exit.i.i.i.i.i, label %if.then3.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %n_ext_ts.i.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 4
  %25 = ptrtoint ptr %n_ext_ts.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %n_ext_ts.i.i.i.i, align 4
  %n_per_out.i.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 5
  %26 = ptrtoint ptr %n_per_out.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %n_per_out.i.i.i.i, align 4
  br label %ice_ptp_set_caps.exit.i

devm_kcalloc.exit.i.i.i.i.i:                      ; preds = %if.end.i.i.i.i
  %n_per_out5.i.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 5
  %27 = ptrtoint ptr %n_per_out5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %n_per_out5.i.i.i.i, align 4
  %n_ext_ts6.i.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 4
  %28 = ptrtoint ptr %n_ext_ts6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %n_ext_ts6.i.i.i.i, align 4
  %n_pins.i.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 6
  %29 = ptrtoint ptr %n_pins.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %n_pins.i.i.i.i, align 4
  %verify.i.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 18
  %30 = ptrtoint ptr %verify.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ice_verify_pin_e810t, ptr %verify.i.i.i.i, align 4
  %31 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pf, align 8
  %dev1.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %call5.i.i.i.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i.i.i.i.i, i32 noundef 480, i32 noundef 3520) #10
  %pin_config.i.i.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 8
  %33 = ptrtoint ptr %pin_config.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call5.i.i.i.i.i.i.i, ptr %pin_config.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %call5.i.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %devm_kcalloc.exit.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

devm_kcalloc.exit.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge: ; preds = %devm_kcalloc.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %devm_kcalloc.exit.i.i.i.i.i
  %call4.i.i.i.i.i = call fastcc i32 @ice_get_sma_config_e810t(ptr noundef %hw1, ptr noundef nonnull %call5.i.i.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i.i)
  %tobool5.not.i.i.i.i.i = icmp eq i32 %call4.i.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i.i, label %if.end.i.i.i.i.i.ice_ptp_set_caps.exit.i_crit_edge, label %if.end.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge

if.end.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i.i.i.i

if.end.i.i.i.i.i.ice_ptp_set_caps.exit.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_set_caps.exit.i

cleanup.sink.split.i.i.i.i.i:                     ; preds = %if.end.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge, %devm_kcalloc.exit.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge
  %34 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pf, align 8
  %dev1.i17.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i17.i.i.i.i.i, ptr noundef nonnull @.str.93) #13
  %36 = ptrtoint ptr %enable.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %enable.i.i.i, align 4
  %37 = ptrtoint ptr %verify.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %verify.i.i.i.i, align 4
  %38 = ptrtoint ptr %n_pins.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %n_pins.i.i.i.i, align 4
  %39 = ptrtoint ptr %n_ext_ts6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %n_ext_ts6.i.i.i.i, align 4
  %40 = ptrtoint ptr %n_per_out5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %n_per_out5.i.i.i.i, align 4
  br label %ice_ptp_set_caps.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %n_per_out.i4.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 5
  %41 = ptrtoint ptr %n_per_out.i4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %n_per_out.i4.i.i.i, align 4
  %n_ext_ts.i5.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 8, i32 4
  %42 = ptrtoint ptr %n_ext_ts.i5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %n_ext_ts.i5.i.i.i, align 4
  br label %ice_ptp_set_caps.exit.i

ice_ptp_set_caps.exit.i:                          ; preds = %if.else.i.i.i, %cleanup.sink.split.i.i.i.i.i, %if.end.i.i.i.i.i.ice_ptp_set_caps.exit.i_crit_edge, %if.then3.i.i.i.i, %dev_name.exit.i.i.ice_ptp_set_caps.exit.i_crit_edge
  %43 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pf, align 8
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %call.i51 = call ptr @ptp_clock_register(ptr noundef %info1.i.i, ptr noundef %dev4.i) #10
  %cmp.i.i52 = icmp ugt ptr %call.i51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i52, label %err_clk, label %if.end8.i

if.end8.i:                                        ; preds = %ice_ptp_set_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %clock1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i51, ptr %clock1.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end8.i, %if.end21.if.end25_crit_edge
  call fastcc void @ice_set_ptp_clock_index(ptr noundef %pf)
  br label %cleanup

err_clk:                                          ; preds = %ice_ptp_set_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %call.i51 to i32
  %47 = ptrtoint ptr %clock1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %clock1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end25, %if.then16.cleanup_crit_edge, %ice_ptp_write_init.exit.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end25 ], [ %call6, %if.then8 ], [ %46, %err_clk ], [ %call17, %if.then16.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call2.i, %ice_ptp_write_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_ptp_release(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ice_ptp_cfg_timestamp(ptr noundef %pf, i1 noundef zeroext false)
  %ptp = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32
  tail call fastcc void @ice_ptp_release_tx_tracker(ptr noundef %pf, ptr noundef %ptp)
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %flags) #10
  %work = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 1
  %call4 = tail call zeroext i1 @kthread_cancel_delayed_work_sync(ptr noundef %work) #10
  %call7 = tail call fastcc i32 @ice_ptp_port_phy_stop(ptr noundef %ptp)
  %ps_lock = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %ps_lock) #10
  %kworker = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 6
  %3 = ptrtoint ptr %kworker to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kworker, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %if.end.if.end17_crit_edge, label %if.then12

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kthread_destroy_worker(ptr noundef nonnull %4) #10
  %5 = ptrtoint ptr %kworker to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %kworker, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end.if.end17_crit_edge
  %clock = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 9
  %6 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock, align 4
  %tobool19.not = icmp eq ptr %7, null
  br i1 %tobool19.not, label %if.end17.return_crit_edge, label %if.end21

if.end17.return_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end21:                                         ; preds = %if.end17
  tail call fastcc void @ice_ptp_disable_all_clkout(ptr noundef %pf)
  %8 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pf, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %src_tmr_owned.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 6, i32 6
  %10 = ptrtoint ptr %src_tmr_owned.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %src_tmr_owned.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end21.ice_clear_ptp_clock_index.exit_crit_edge, label %if.end.i

if.end21.ice_clear_ptp_clock_index.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_clear_ptp_clock_index.exit

if.end.i:                                         ; preds = %if.end21
  %hw2.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %tmr_index_assoc.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 6, i32 3
  %12 = ptrtoint ptr %tmr_index_assoc.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmr_index_assoc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i = icmp ne i8 %13, 0
  %..i = zext i1 %tobool5.not.i to i32
  %call.i = tail call i32 @ice_aq_set_driver_param(ptr noundef %hw2.i, i32 noundef %..i, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end.i.ice_clear_ptp_clock_index.exit_crit_edge, label %do.body.i

if.end.i.ice_clear_ptp_clock_index.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_clear_ptp_clock_index.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_clear_ptp_clock_index.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_release, %if.then14.i)) #10
          to label %ice_clear_ptp_clock_index.exit [label %if.then14.i], !srcloc !236

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sq_last_status.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 30, i32 8
  %14 = ptrtoint ptr %sq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sq_last_status.i, align 4
  %call15.i = tail call ptr @ice_aq_str(i32 noundef %15) #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_clear_ptp_clock_index.__UNIQUE_ID_ddebug613, ptr noundef %dev1.i, ptr noundef nonnull @.str.108, i32 noundef %call.i, ptr noundef %call15.i) #10
  br label %ice_clear_ptp_clock_index.exit

ice_clear_ptp_clock_index.exit:                   ; preds = %if.then14.i, %do.body.i, %if.end.i.ice_clear_ptp_clock_index.exit_crit_edge, %if.end21.ice_clear_ptp_clock_index.exit_crit_edge
  %16 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clock, align 4
  %call24 = tail call i32 @ptp_clock_unregister(ptr noundef %17) #10
  %18 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %clock, align 4
  %19 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17) #13
  br label %return

return:                                           ; preds = %ice_clear_ptp_clock_index.exit, %if.end17.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_port_phy_stop(ptr noundef %ptp_port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %ptp_port, i32 -848
  %port_num = getelementptr inbounds %struct.ice_ptp_port, ptr %ptp_port, i32 0, i32 5
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 2
  %hw4 = getelementptr i8, ptr %ptp_port, i32 2112
  %call = tail call zeroext i1 @ice_is_e810(ptr noundef %hw4) #10
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ps_lock = getelementptr inbounds %struct.ice_ptp_port, ptr %ptp_port, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %ps_lock, i32 noundef 0) #10
  %ov_work = getelementptr inbounds %struct.ice_ptp_port, ptr %ptp_port, i32 0, i32 1
  %call5 = tail call zeroext i1 @kthread_cancel_delayed_work_sync(ptr noundef %ov_work) #10
  %call6 = tail call i32 @ice_stop_phy_timer_e822(ptr noundef %hw4, i8 noundef zeroext %1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %do.end

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.105, i32 noundef %conv, i32 noundef %call6) #13
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %ps_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_start_phy_timer_e822(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_ptp_init_time(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_read_quad_reg_e822(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_write_quad_reg_e822(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_ptp_tx_tstamp_work(ptr noundef %work) #0 align 64 {
entry:
  %shhwtstamps = alloca %struct.skb_shared_hwtstamps, align 8
  %raw_tstamp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %init = getelementptr inbounds %struct.ice_ptp_tx, ptr %work, i32 0, i32 7
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup70_crit_edge, label %if.end

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

if.end:                                           ; preds = %entry
  %hw10 = getelementptr i8, ptr %work, i32 2112
  %in_use = getelementptr inbounds %struct.ice_ptp_tx, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_use, align 4
  %len = getelementptr inbounds %struct.ice_ptp_tx, ptr %work, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 2
  %conv = zext i8 %5 to i32
  %call = tail call i32 @_find_next_bit_be(ptr noundef %3, i32 noundef %conv, i32 noundef 0) #10
  %conv12109 = and i32 %call, 255
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 2
  %conv14110 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12109, i32 %conv14110)
  %cmp111 = icmp ult i32 %conv12109, %conv14110
  br i1 %cmp111, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %quad_offset = getelementptr inbounds %struct.ice_ptp_tx, ptr %work, i32 0, i32 5
  %quad = getelementptr inbounds %struct.ice_ptp_tx, ptr %work, i32 0, i32 4
  %tstamps = getelementptr inbounds %struct.ice_ptp_tx, ptr %work, i32 0, i32 2
  %lock = getelementptr inbounds %struct.ice_ptp_tx, ptr %work, i32 0, i32 1
  %cached_phc_time.i = getelementptr i8, ptr %work, i32 336
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %conv12113 = phi i32 [ %conv12109, %for.body.lr.ph ], [ %conv12, %cleanup.for.body_crit_edge ]
  %idx.0.in112 = phi i32 [ %call, %for.body.lr.ph ], [ %call58, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps) #10
  %8 = ptrtoint ptr %shhwtstamps to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %shhwtstamps, align 8
  %9 = ptrtoint ptr %quad_offset to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %quad_offset, align 1
  %11 = trunc i32 %idx.0.in112 to i8
  %conv18 = add i8 %10, %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %raw_tstamp) #10
  %12 = ptrtoint ptr %raw_tstamp to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %raw_tstamp, align 8, !annotation !226
  %13 = ptrtoint ptr %quad to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %quad, align 4
  %call19 = call i32 @ice_read_phy_tstamp(ptr noundef %hw10, i8 noundef zeroext %14, i8 noundef zeroext %conv18, ptr noundef nonnull %raw_tstamp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %for.body
  %15 = ptrtoint ptr %raw_tstamp to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %raw_tstamp, align 8
  %and = and i64 %16, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool23.not = icmp eq i64 %and, 0
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %lor.lhs.false

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end22
  %17 = ptrtoint ptr %tstamps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tstamps, align 4
  %cached_tstamp = getelementptr %struct.ice_tx_tstamp, ptr %18, i32 %conv12113, i32 2
  %19 = ptrtoint ptr %cached_tstamp to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %cached_tstamp, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %20)
  %cmp24 = icmp eq i64 %16, %20
  br i1 %cmp24, label %lor.lhs.false.cleanup_crit_edge, label %if.end27

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false
  call void @_raw_spin_lock(ptr noundef %lock) #10
  %21 = ptrtoint ptr %raw_tstamp to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %raw_tstamp, align 8
  %23 = ptrtoint ptr %tstamps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tstamps, align 4
  %cached_tstamp31 = getelementptr %struct.ice_tx_tstamp, ptr %24, i32 %conv12113, i32 2
  %25 = ptrtoint ptr %cached_tstamp31 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %22, ptr %cached_tstamp31, align 8
  %26 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in_use, align 4
  call void @_clear_bit(i32 noundef %conv12113, ptr noundef %27) #10
  %28 = ptrtoint ptr %tstamps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tstamps, align 4
  %arrayidx36 = getelementptr %struct.ice_tx_tstamp, ptr %29, i32 %conv12113
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx36, align 8
  store ptr null, ptr %arrayidx36, align 8
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  %tobool43.not = icmp eq ptr %31, null
  br i1 %tobool43.not, label %if.end27.cleanup_crit_edge, label %if.end45

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %if.end27
  %32 = ptrtoint ptr %raw_tstamp to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %raw_tstamp, align 8
  %34 = ptrtoint ptr %cached_phc_time.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %cached_phc_time.i, align 8
  %shr.i = lshr i64 %33, 8
  %conv.i = trunc i64 %shr.i to i32
  %conv.i.i = trunc i64 %35 to i32
  %sub.i.i = sub i32 %conv.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %sub2.i.i = sub i32 %conv.i.i, %conv.i
  %conv3.i.i = zext i32 %sub2.i.i to i64
  %sub4.i.i = sub i64 %35, %conv3.i.i
  br label %ice_ptp_extend_40b_ts.exit

if.else.i.i:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %conv5.i.i = zext i32 %sub.i.i to i64
  %add.i.i = add i64 %35, %conv5.i.i
  br label %ice_ptp_extend_40b_ts.exit

ice_ptp_extend_40b_ts.exit:                       ; preds = %if.else.i.i, %if.then.i.i
  %ns.0.i.i = phi i64 [ %sub4.i.i, %if.then.i.i ], [ %add.i.i, %if.else.i.i ]
  %36 = ptrtoint ptr %shhwtstamps to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %ns.0.i.i, ptr %shhwtstamps, align 8
  call void @skb_tstamp_tx(ptr noundef nonnull %31, ptr noundef nonnull %shhwtstamps) #10
  call void @__dev_kfree_skb_any(ptr noundef nonnull %31, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %ice_ptp_extend_40b_ts.exit, %if.end27.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %raw_tstamp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps) #10
  %37 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %in_use, align 4
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %len, align 2
  %conv55 = zext i8 %40 to i32
  %add57 = add nuw nsw i32 %conv12113, 1
  %call58 = call i32 @_find_next_bit_be(ptr noundef %38, i32 noundef %conv55, i32 noundef %add57) #10
  %conv12 = and i32 %call58, 255
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %len, align 2
  %conv14 = zext i8 %42 to i32
  %cmp = icmp ult i32 %conv12, %conv14
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %lock60 = getelementptr inbounds %struct.ice_ptp_tx, ptr %work, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock60) #10
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %len, align 2
  %conv63 = zext i8 %44 to i32
  %45 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %in_use, align 4
  %call.i = call i32 @_find_first_bit_be(ptr noundef %46, i32 noundef %conv63) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv63)
  %cmp4.i = icmp eq i32 %call.i, %conv63
  br i1 %cmp4.i, label %for.end.if.end68_crit_edge, label %if.then65

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then65:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %kworker = getelementptr inbounds %struct.ice_ptp, ptr %work, i32 0, i32 6
  %47 = ptrtoint ptr %kworker to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %kworker, align 4
  %call67 = call zeroext i1 @kthread_queue_work(ptr noundef %48, ptr noundef %work) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %for.end.if.end68_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock60) #10
  br label %cleanup70

cleanup70:                                        ; preds = %if.end68, %entry.cleanup70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_read_phy_tstamp(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_phy_exit_bypass_e822(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_check_tx_fifo(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.ice_ptp_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 2
  %conv = zext i8 %1 to i32
  %div107 = lshr i32 %conv, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !226
  %add.ptr5 = getelementptr i8, ptr %port, i32 -848
  %hw6 = getelementptr i8, ptr %port, i32 2112
  %tx_fifo_busy_cnt = getelementptr inbounds %struct.ice_ptp_port, ptr %port, i32 0, i32 4
  %3 = ptrtoint ptr %tx_fifo_busy_cnt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx_fifo_busy_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp = icmp eq i8 %4, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %switch.not.not = icmp eq i32 %rem, 0
  %conv14 = trunc i32 %div107 to i8
  %. = select i1 %switch.not.not, i16 3324, i16 3320
  %call16 = call i32 @ice_read_quad_reg_e822(ptr noundef %hw6, i8 noundef zeroext %conv14, i16 noundef zeroext %., ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port_num, align 2
  %conv20 = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %conv20, i32 noundef %call16) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and24 = lshr i32 %10, 10
  %phy_sts.0.in = select i1 %tobool22.not, i32 %10, i32 %and24
  %and29 = and i32 %phy_sts.0.in, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %tx_fifo_busy_cnt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %tx_fifo_busy_cnt, align 1
  br label %cleanup

if.end33:                                         ; preds = %if.end21
  %12 = ptrtoint ptr %tx_fifo_busy_cnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_fifo_busy_cnt, align 1
  %inc = add i8 %13, 1
  store i8 %inc, ptr %tx_fifo_busy_cnt, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_check_tx_fifo.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_check_tx_fifo, %if.then41)) #10
          to label %do.end50 [label %if.then41], !srcloc !236

if.then41:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr5, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %tx_fifo_busy_cnt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_fifo_busy_cnt, align 1
  %conv45 = zext i8 %17 to i32
  %18 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_num, align 2
  %conv47 = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_check_tx_fifo.__UNIQUE_ID_ddebug617, ptr noundef %dev43, ptr noundef nonnull @.str.37, i32 noundef %conv45, i32 noundef %conv47) #10
  br label %do.end50

do.end50:                                         ; preds = %if.then41, %if.end33
  %20 = ptrtoint ptr %tx_fifo_busy_cnt to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tx_fifo_busy_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %21)
  %cmp53 = icmp eq i8 %21, 5
  br i1 %cmp53, label %do.body56, label %do.end50.cleanup_crit_edge

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body56:                                        ; preds = %do.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_check_tx_fifo.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_check_tx_fifo, %if.then68)) #10
          to label %do.end75 [label %if.then68], !srcloc !236

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr5, align 8
  %dev70 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port_num, align 2
  %conv72 = zext i8 %25 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_check_tx_fifo.__UNIQUE_ID_ddebug618, ptr noundef %dev70, ptr noundef nonnull @.str.38, i32 noundef %conv72, i32 noundef %div107) #10
  br label %do.end75

do.end75:                                         ; preds = %if.then68, %do.body56
  %conv.i = trunc i32 %div107 to i8
  %call.i = call i32 @ice_write_quad_reg_e822(ptr noundef %hw6, i8 noundef zeroext %conv.i, i16 noundef zeroext 1560, i32 noundef 1) #10
  %call3.i = call i32 @ice_write_quad_reg_e822(ptr noundef %hw6, i8 noundef zeroext %conv.i, i16 noundef zeroext 1560, i32 noundef -2) #10
  %26 = ptrtoint ptr %tx_fifo_busy_cnt to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %tx_fifo_busy_cnt, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %do.end50.cleanup_crit_edge, %if.then31, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %do.end ], [ 0, %if.then31 ], [ 0, %do.end75 ], [ 0, %entry.cleanup_crit_edge ], [ -11, %do.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_read_phy_reg_e822(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_clear_phy_tstamp(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_cfg_clkout(ptr noundef %pf, i32 noundef %chan, ptr noundef readonly %config, i1 noundef zeroext %store) unnamed_addr #0 align 64 {
entry:
  %phase = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phase) #10
  %0 = ptrtoint ptr %phase to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %phase, align 8, !annotation !226
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %tmr_index_owned = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 6, i32 5
  %1 = ptrtoint ptr %tmr_index_owned to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmr_index_owned, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw1, align 8
  %conv = zext i8 %2 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %mul2 = shl i32 %chan, 3
  %add = add i32 %mul, %mul2
  %add3 = add i32 %add, 559512
  %add.ptr = getelementptr i8, ptr %4, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !225
  %tobool.not = icmp eq ptr %config, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.lhs.false

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config, align 8, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %lor.lhs.false.do.body5_crit_edge, label %if.end48

lor.lhs.false.do.body5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

do.body5:                                         ; preds = %lor.lhs.false.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1, align 8
  %add13 = add i32 %add, 559544
  %add.ptr14 = getelementptr i8, ptr %8, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #10, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 8
  %mul22 = shl i32 %chan, 4
  %add21 = add i32 %mul, %mul22
  %add23 = add i32 %add21, 559400
  %add.ptr24 = getelementptr i8, ptr %10, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #10, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1, align 8
  %add33 = add i32 %add21, 559408
  %add.ptr34 = getelementptr i8, ptr %12, i32 %add33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #10, !srcloc !225
  %gpio_pin35 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 7, i32 %chan, i32 1
  %13 = ptrtoint ptr %gpio_pin35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_pin35, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw1, align 8
  %mul40 = shl i32 %14, 2
  %add41 = add i32 %mul40, 557256
  %add.ptr42 = getelementptr i8, ptr %16, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 268435456) #10, !srcloc !225
  br i1 %store, label %if.then44, label %do.body5.cleanup_crit_edge

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then44:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 7, i32 %chan
  %17 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  br label %cleanup

if.end48:                                         ; preds = %lor.lhs.false
  %period49 = getelementptr inbounds %struct.ice_perout_channel, ptr %config, i32 0, i32 2
  %18 = ptrtoint ptr %period49 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %period49, align 8
  %start_time50 = getelementptr inbounds %struct.ice_perout_channel, ptr %config, i32 0, i32 3
  %20 = ptrtoint ptr %start_time50 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %start_time50, align 8
  %call = call i64 @div64_u64_rem(i64 noundef %21, i64 noundef %19, ptr noundef nonnull %phase) #10
  %gpio_pin51 = getelementptr inbounds %struct.ice_perout_channel, ptr %config, i32 0, i32 1
  %22 = ptrtoint ptr %gpio_pin51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gpio_pin51, align 4
  %and = and i64 %19, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool52.not = icmp eq i64 %and, 0
  br i1 %tobool52.not, label %if.end57, label %do.end56

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #13
  br label %do.end156

if.end57:                                         ; preds = %if.end48
  %26 = add i64 %19, -8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8589934584, i64 %26)
  %27 = icmp ult i64 %26, -8589934584
  br i1 %27, label %do.end65, label %do.body69

do.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pf, align 8
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.44, i32 noundef 6) #13
  br label %do.end156

do.body69:                                        ; preds = %if.end57
  %shr = lshr i64 %19, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  call void @arm_heavy_mb() #10
  %conv73 = trunc i64 %shr to i32
  %30 = call i32 @llvm.bswap.i32(i32 %conv73)
  %31 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw1, align 8
  %add79 = add i32 %add, 559544
  %add.ptr80 = getelementptr i8, ptr %32, i32 %add79
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %30) #10, !srcloc !225
  %call.i = call zeroext i8 @ice_get_ptp_src_clock_index(ptr noundef %hw1) #10
  %33 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw1, align 8
  %conv.i = zext i8 %call.i to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 559312
  %add.ptr.i = getelementptr i8, ptr %34, i32 %add.i
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !222
  %36 = call i32 @llvm.bswap.i32(i32 %35) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  %37 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw1, align 8
  %add9.i = add nuw nsw i32 %mul.i, 559320
  %add.ptr10.i = getelementptr i8, ptr %38, i32 %add9.i
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !222
  %40 = call i32 @llvm.bswap.i32(i32 %39) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %41 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw1, align 8
  %add.ptr20.i = getelementptr i8, ptr %42, i32 %add.i
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #10, !srcloc !222
  %44 = call i32 @llvm.bswap.i32(i32 %43) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %36)
  %cmp.i = icmp ult i32 %44, %36
  br i1 %cmp.i, label %if.then.i, label %do.body69.ice_ptp_read_src_clk_reg.exit_crit_edge

do.body69.ice_ptp_read_src_clk_reg.exit_crit_edge: ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_read_src_clk_reg.exit

if.then.i:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw1, align 8
  %add.ptr31.i = getelementptr i8, ptr %46, i32 %add.i
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #10, !srcloc !222
  %48 = call i32 @llvm.bswap.i32(i32 %47) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  %49 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw1, align 8
  %add.ptr41.i = getelementptr i8, ptr %50, i32 %add9.i
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #10, !srcloc !222
  %52 = call i32 @llvm.bswap.i32(i32 %51) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  br label %ice_ptp_read_src_clk_reg.exit

ice_ptp_read_src_clk_reg.exit:                    ; preds = %if.then.i, %do.body69.ice_ptp_read_src_clk_reg.exit_crit_edge
  %lo.0.i = phi i32 [ %48, %if.then.i ], [ %36, %do.body69.ice_ptp_read_src_clk_reg.exit_crit_edge ]
  %hi.0.i = phi i32 [ %52, %if.then.i ], [ %40, %do.body69.ice_ptp_read_src_clk_reg.exit_crit_edge ]
  %conv45.i = zext i32 %hi.0.i to i64
  %shl.i = shl nuw i64 %conv45.i, 32
  %conv46.i = zext i32 %lo.0.i to i64
  %or.i = or i64 %shl.i, %conv46.i
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %or.i)
  %cmp82 = icmp ult i64 %21, %or.i
  br i1 %cmp82, label %if.then84, label %ice_ptp_read_src_clk_reg.exit.if.end89_crit_edge

ice_ptp_read_src_clk_reg.exit.if.end89_crit_edge: ; preds = %ice_ptp_read_src_clk_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then84:                                        ; preds = %ice_ptp_read_src_clk_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add i64 %or.i, 999999999
  %call86 = call i64 @div64_u64(i64 noundef %sub, i64 noundef 1000000000) #10
  %mul87 = mul i64 %call86, 1000000000
  %53 = ptrtoint ptr %phase to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %phase, align 8
  %add88 = add i64 %mul87, %54
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %ice_ptp_read_src_clk_reg.exit.if.end89_crit_edge
  %start_time.0 = phi i64 [ %add88, %if.then84 ], [ %21, %ice_ptp_read_src_clk_reg.exit.if.end89_crit_edge ]
  %call90 = call zeroext i1 @ice_is_e810(ptr noundef %hw1) #10
  br i1 %call90, label %if.then91, label %if.else

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %sub92 = add i64 %start_time.0, -1
  %extract.t = trunc i64 %sub92 to i32
  %extract = lshr i64 %sub92, 32
  %extract.t241 = trunc i64 %extract to i32
  br label %do.body97

if.else:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %ts_func_info.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 6
  %55 = ptrtoint ptr %ts_func_info.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ts_func_info.i, align 4
  %pps_delay.i = getelementptr [6 x %struct.ice_time_ref_info_e822], ptr @e822_time_ref, i32 0, i32 %56, i32 2
  %57 = ptrtoint ptr %pps_delay.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pps_delay.i, align 8
  %conv.i231 = zext i8 %58 to i64
  %sub95 = sub i64 %start_time.0, %conv.i231
  %extract.t240 = trunc i64 %sub95 to i32
  %extract242 = lshr i64 %sub95, 32
  %extract.t243 = trunc i64 %extract242 to i32
  br label %do.body97

do.body97:                                        ; preds = %if.else, %if.then91
  %sub92.sink239.off0 = phi i32 [ %extract.t, %if.then91 ], [ %extract.t240, %if.else ]
  %sub92.sink239.off32 = phi i32 [ %extract.t241, %if.then91 ], [ %extract.t243, %if.else ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  call void @arm_heavy_mb() #10
  %59 = call i32 @llvm.bswap.i32(i32 %sub92.sink239.off0)
  %60 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw1, align 8
  %mul106 = shl i32 %chan, 4
  %add105 = add i32 %mul, %mul106
  %add107 = add i32 %add105, 559400
  %add.ptr108 = getelementptr i8, ptr %61, i32 %add107
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %59) #10, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  call void @arm_heavy_mb() #10
  %62 = call i32 @llvm.bswap.i32(i32 %sub92.sink239.off32)
  %63 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw1, align 8
  %add120 = add i32 %add105, 559408
  %add.ptr121 = getelementptr i8, ptr %64, i32 %add120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 %62) #10, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw1, align 8
  %add.ptr131 = getelementptr i8, ptr %66, i32 %add3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 117440512) #10, !srcloc !225
  %add132 = add i32 %chan, 8
  %add135 = add i32 %add132, %mul
  %shl = shl i32 %add135, 8
  %and136 = and i32 %shl, 3840
  %or = or i32 %and136, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  call void @arm_heavy_mb() #10
  %67 = call i32 @llvm.bswap.i32(i32 %or)
  %68 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw1, align 8
  %mul141 = shl i32 %23, 2
  %add142 = add i32 %mul141, 557256
  %add.ptr143 = getelementptr i8, ptr %69, i32 %add142
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %67) #10, !srcloc !225
  br i1 %store, label %if.then145, label %do.body97.cleanup_crit_edge

do.body97.cleanup_crit_edge:                      ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then145:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx148 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 7, i32 %chan
  %70 = call ptr @memcpy(ptr %arrayidx148, ptr %config, i32 24)
  %71 = ptrtoint ptr %phase to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %phase, align 8
  %start_time152 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 7, i32 %chan, i32 3
  %73 = ptrtoint ptr %start_time152 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %start_time152, align 8
  br label %cleanup

do.end156:                                        ; preds = %do.end65, %do.end56
  %74 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pf, align 8
  %dev158 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev158, ptr noundef nonnull @.str.47) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end156, %if.then145, %do.body97.cleanup_crit_edge, %if.then44, %do.body5.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end156 ], [ 0, %if.then44 ], [ 0, %do.body5.cleanup_crit_edge ], [ 0, %if.then145 ], [ 0, %do.body97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phase) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_set_ptp_clock_index(ptr noundef %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %clock = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 9
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tmr_index_assoc = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 6, i32 3
  %4 = ptrtoint ptr %tmr_index_assoc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tmr_index_assoc, align 2
  %call = tail call i32 @ptp_clock_index(ptr noundef nonnull %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.95) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp ne i8 %5, 0
  %. = zext i1 %tobool3.not to i32
  %or = or i32 %call, -2147483648
  %call10 = tail call i32 @ice_aq_set_driver_param(ptr noundef %hw2, i32 noundef %., i32 noundef %or, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 30, i32 8
  %6 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sq_last_status, align 4
  %call16 = tail call ptr @ice_aq_str(i32 noundef %7) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.98, i32 noundef %call10, ptr noundef %call16) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_ptp_adjtime(ptr noundef %info, i64 noundef %delta) #0 align 64 {
entry:
  %now.i = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  %tmp1.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %info, i32 -1296
  %hw4 = getelementptr i8, ptr %info, i32 1664
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = add i64 %delta, -2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967296, i64 %2)
  %3 = icmp ult i64 %2, -4294967296
  br i1 %3, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_adjtime.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_adjtime, %if.then10)) #10
          to label %do.end [label %if.then10], !srcloc !236

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_adjtime.__UNIQUE_ID_ddebug619, ptr noundef %dev5, ptr noundef nonnull @.str.53, i64 noundef %delta) #10
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #10
  %4 = call ptr @memset(ptr %now.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %delta) #10
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %then.sroa.0.0.copyload6.i = load i64, ptr %tmp.i, align 8
  %then.sroa.5.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %6 = ptrtoint ptr %then.sroa.5.0.tmp.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %then.sroa.5.0.copyload7.i = load i64, ptr %then.sroa.5.0.tmp.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  %call.i = call i32 @ice_ptp_gettimex64(ptr noundef %info, ptr noundef nonnull %now.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.ice_ptp_adjtime_nonatomic.exit_crit_edge

do.end.ice_ptp_adjtime_nonatomic.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_adjtime_nonatomic.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp1.i) #10
  %7 = ptrtoint ptr %now.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %.fca.0.load.i = load i64, ptr %now.i, align 8
  %.fca.1.gep.i = getelementptr inbounds [2 x i64], ptr %now.i, i32 0, i32 1
  %8 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  %lhs.sroa.2.8.extract.shift.i.i = lshr i64 %.fca.1.load.i, 32
  %lhs.sroa.2.8.extract.trunc.i.i = trunc i64 %lhs.sroa.2.8.extract.shift.i.i to i32
  %rhs.sroa.2.8.extract.shift.i.i = lshr i64 %then.sroa.5.0.copyload7.i, 32
  %rhs.sroa.2.8.extract.trunc.i.i = trunc i64 %rhs.sroa.2.8.extract.shift.i.i to i32
  %9 = call ptr @memset(ptr %tmp1.i, i32 255, i32 16)
  %add.i.i = add i64 %.fca.0.load.i, %then.sroa.0.0.copyload6.i
  %add3.i.i = add i32 %lhs.sroa.2.8.extract.trunc.i.i, %rhs.sroa.2.8.extract.trunc.i.i
  %conv.i.i = sext i32 %add3.i.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp1.i, i64 noundef %add.i.i, i64 noundef %conv.i.i) #10
  %10 = call ptr @memcpy(ptr %now.i, ptr %tmp1.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp1.i) #10
  %call2.i = call i32 @ice_ptp_settime64(ptr noundef %info, ptr noundef nonnull %now.i) #10
  br label %ice_ptp_adjtime_nonatomic.exit

ice_ptp_adjtime_nonatomic.exit:                   ; preds = %if.end.i, %do.end.ice_ptp_adjtime_nonatomic.exit_crit_edge
  %retval.0.i44 = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %do.end.ice_ptp_adjtime_nonatomic.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #10
  br label %cleanup

if.end12:                                         ; preds = %entry
  %call13 = tail call zeroext i1 @ice_ptp_lock(ptr noundef %hw4) #10
  br i1 %call13, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.54) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  tail call fastcc void @ice_ptp_disable_all_clkout(ptr noundef %add.ptr3)
  %conv = trunc i64 %delta to i32
  %call.i45 = tail call i32 @ice_ptp_adj_clock(ptr noundef %hw4, i32 noundef %conv) #10
  %n_per_out.i = getelementptr i8, ptr %info, i32 48
  %11 = ptrtoint ptr %n_per_out.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_per_out.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12.not.i = icmp eq i32 %12, 0
  br i1 %cmp12.not.i, label %if.end18.ice_ptp_enable_all_clkout.exit_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.ice_ptp_enable_all_clkout.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_enable_all_clkout.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end18.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ice_pf, ptr %add.ptr3, i32 0, i32 32, i32 7, i32 %i.013.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 8, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i46 = icmp eq i8 %14, 0
  br i1 %tobool.not.i46, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i47 = tail call fastcc i32 @ice_ptp_cfg_clkout(ptr noundef %add.ptr3, i32 noundef %i.013.i, ptr noundef %arrayidx.i, i1 noundef zeroext false) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %15 = ptrtoint ptr %n_per_out.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_per_out.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %16
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ice_ptp_enable_all_clkout.exit_crit_edge

for.inc.i.ice_ptp_enable_all_clkout.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_enable_all_clkout.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ice_ptp_enable_all_clkout.exit:                   ; preds = %for.inc.i.ice_ptp_enable_all_clkout.exit_crit_edge, %if.end18.ice_ptp_enable_all_clkout.exit_crit_edge
  tail call void @ice_ptp_unlock(ptr noundef %hw4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool20.not = icmp eq i32 %call.i45, 0
  br i1 %tobool20.not, label %if.end25, label %do.end24

do.end24:                                         ; preds = %ice_ptp_enable_all_clkout.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.56, i32 noundef %call.i45) #13
  br label %cleanup

if.end25:                                         ; preds = %ice_ptp_enable_all_clkout.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ice_ptp_update_cached_phctime(ptr noundef %add.ptr3)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end24, %do.end17, %ice_ptp_adjtime_nonatomic.exit
  %retval.0 = phi i32 [ %retval.0.i44, %ice_ptp_adjtime_nonatomic.exit ], [ %call.i45, %do.end24 ], [ 0, %if.end25 ], [ -16, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_ptp_adjfine(ptr noundef %info, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %info, i32 -1296
  %hw4 = getelementptr i8, ptr %info, i32 1664
  %call.i = tail call zeroext i1 @ice_is_e810(ptr noundef %hw4) #10
  br i1 %call.i, label %entry.do.body.i_crit_edge, label %if.else.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  %ts_func_info.i.i = getelementptr i8, ptr %info, i32 5052
  %0 = ptrtoint ptr %ts_func_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ts_func_info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i = icmp ult i32 %1, 6
  br i1 %cmp.i, label %if.then3.i, label %if.else.i.do.body.i_crit_edge

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %nominal_incval.i.i = getelementptr [6 x %struct.ice_time_ref_info_e822], ptr @e822_time_ref, i32 0, i32 %1, i32 1
  %2 = ptrtoint ptr %nominal_incval.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %nominal_incval.i.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then3.i, %if.else.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %incval.0.i = phi i64 [ %3, %if.then3.i ], [ 5286113595, %entry.do.body.i_crit_edge ], [ 4294967296, %if.else.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_base_incval.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_adjfine, %if.then11.i)) #10
          to label %ice_base_incval.exit [label %if.then11.i], !srcloc !236

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr3, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_base_incval.__UNIQUE_ID_ddebug616, ptr noundef %dev.i, ptr noundef nonnull @.str.26, i64 noundef %incval.0.i) #10
  br label %ice_base_incval.exit

ice_base_incval.exit:                             ; preds = %if.then11.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scaled_ppm)
  %cmp = icmp slt i32 %scaled_ppm, 0
  %6 = tail call i32 @llvm.abs.i32(i32 %scaled_ppm, i1 false)
  %conv40 = sext i32 %6 to i64
  %call541 = tail call i64 @div64_u64(i64 noundef -1, i64 noundef %incval.0.i) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call541, i64 %conv40)
  %cmp642 = icmp ult i64 %call541, %conv40
  br i1 %cmp642, label %ice_base_incval.exit.while.body_crit_edge, label %ice_base_incval.exit.while.end_crit_edge

ice_base_incval.exit.while.end_crit_edge:         ; preds = %ice_base_incval.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

ice_base_incval.exit.while.body_crit_edge:        ; preds = %ice_base_incval.exit
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %ice_base_incval.exit.while.body_crit_edge
  %divisor.044 = phi i64 [ %shr8, %while.body.while.body_crit_edge ], [ 1000000, %ice_base_incval.exit.while.body_crit_edge ]
  %scaled_ppm.addr.143 = phi i32 [ %shr, %while.body.while.body_crit_edge ], [ %6, %ice_base_incval.exit.while.body_crit_edge ]
  %shr = ashr i32 %scaled_ppm.addr.143, 2
  %shr8 = lshr i64 %divisor.044, 2
  %conv = sext i32 %shr to i64
  %call5 = tail call i64 @div64_u64(i64 noundef -1, i64 noundef %incval.0.i) #10
  %cmp6 = icmp ult i64 %call5, %conv
  br i1 %cmp6, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %extract.t = trunc i64 %shr8 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %ice_base_incval.exit.while.end_crit_edge
  %divisor.0.lcssa.off0 = phi i32 [ 1000000, %ice_base_incval.exit.while.end_crit_edge ], [ %extract.t, %while.end.loopexit ]
  %conv.lcssa = phi i64 [ %conv40, %ice_base_incval.exit.while.end_crit_edge ], [ %conv, %while.end.loopexit ]
  %mul = mul i64 %conv.lcssa, %incval.0.i
  %shr10 = lshr i64 %mul, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710656, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 281474976710656
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !230

if.then168.i.i:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i = trunc i64 %shr10 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %divisor.0.lcssa.off0
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %divisor.0.lcssa.off0, i64 %shr10) #14, !srcloc !253
  %asmresult1.i.i.i = extractvalue { i64, i64 } %7, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %8 = sub i64 0, %dividend.addr.0.i.i
  %incval.0.p = select i1 %cmp, i64 %8, i64 %dividend.addr.0.i.i
  %incval.0 = add i64 %incval.0.p, %incval.0.i
  %call16 = tail call i32 @ice_ptp_write_incval_locked(ptr noundef %hw4, i64 noundef %incval.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %div_u64.exit.cleanup_crit_edge, label %do.end

div_u64.exit.cleanup_crit_edge:                   ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call16) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %div_u64.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %div_u64.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_ptp_gettimex64(ptr noundef %info, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw4 = getelementptr i8, ptr %info, i32 1664
  %call = tail call zeroext i1 @ice_ptp_lock(ptr noundef %hw4) #10
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr3 = getelementptr i8, ptr %info, i32 -1296
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i8 @ice_get_ptp_src_clock_index(ptr noundef %hw4) #10
  %tobool.not.i.i.i = icmp eq ptr %sts, null
  br i1 %tobool.not.i.i.i, label %if.end.ptp_read_system_prets.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.ptp_read_system_prets.exit.i.i_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptp_read_system_prets.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #10
  br label %ptp_read_system_prets.exit.i.i

ptp_read_system_prets.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end.ptp_read_system_prets.exit.i.i_crit_edge
  %2 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw4, align 8
  %conv.i.i = zext i8 %call.i.i to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 559312
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add.i.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !222
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  br i1 %tobool.not.i.i.i, label %ptp_read_system_prets.exit.i.i.ptp_read_system_postts.exit.i.i_crit_edge, label %if.then.i61.i.i

ptp_read_system_prets.exit.i.i.ptp_read_system_postts.exit.i.i_crit_edge: ; preds = %ptp_read_system_prets.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptp_read_system_postts.exit.i.i

if.then.i61.i.i:                                  ; preds = %ptp_read_system_prets.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %post_ts.i.i.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i.i.i) #10
  br label %ptp_read_system_postts.exit.i.i

ptp_read_system_postts.exit.i.i:                  ; preds = %if.then.i61.i.i, %ptp_read_system_prets.exit.i.i.ptp_read_system_postts.exit.i.i_crit_edge
  %6 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw4, align 8
  %add9.i.i = add nuw nsw i32 %mul.i.i, 559320
  %add.ptr10.i.i = getelementptr i8, ptr %7, i32 %add9.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #10, !srcloc !222
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %10 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw4, align 8
  %add.ptr20.i.i = getelementptr i8, ptr %11, i32 %add.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #10, !srcloc !222
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp.i.i = icmp ult i32 %13, %5
  br i1 %cmp.i.i, label %if.then.i.i, label %ptp_read_system_postts.exit.i.i.ice_ptp_read_time.exit_crit_edge

ptp_read_system_postts.exit.i.i.ice_ptp_read_time.exit_crit_edge: ; preds = %ptp_read_system_postts.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_read_time.exit

if.then.i.i:                                      ; preds = %ptp_read_system_postts.exit.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.ptp_read_system_prets.exit64.i.i_crit_edge, label %if.then.i63.i.i

if.then.i.i.ptp_read_system_prets.exit64.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptp_read_system_prets.exit64.i.i

if.then.i63.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #10
  br label %ptp_read_system_prets.exit64.i.i

ptp_read_system_prets.exit64.i.i:                 ; preds = %if.then.i63.i.i, %if.then.i.i.ptp_read_system_prets.exit64.i.i_crit_edge
  %14 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw4, align 8
  %add.ptr31.i.i = getelementptr i8, ptr %15, i32 %add.i.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i.i) #10, !srcloc !222
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  br i1 %tobool.not.i.i.i, label %ptp_read_system_prets.exit64.i.i.ptp_read_system_postts.exit68.i.i_crit_edge, label %if.then.i67.i.i

ptp_read_system_prets.exit64.i.i.ptp_read_system_postts.exit68.i.i_crit_edge: ; preds = %ptp_read_system_prets.exit64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptp_read_system_postts.exit68.i.i

if.then.i67.i.i:                                  ; preds = %ptp_read_system_prets.exit64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %post_ts.i66.i.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i66.i.i) #10
  br label %ptp_read_system_postts.exit68.i.i

ptp_read_system_postts.exit68.i.i:                ; preds = %if.then.i67.i.i, %ptp_read_system_prets.exit64.i.i.ptp_read_system_postts.exit68.i.i_crit_edge
  %18 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw4, align 8
  %add.ptr41.i.i = getelementptr i8, ptr %19, i32 %add9.i.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i.i) #10, !srcloc !222
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  br label %ice_ptp_read_time.exit

ice_ptp_read_time.exit:                           ; preds = %ptp_read_system_postts.exit68.i.i, %ptp_read_system_postts.exit.i.i.ice_ptp_read_time.exit_crit_edge
  %lo.0.i.i = phi i32 [ %17, %ptp_read_system_postts.exit68.i.i ], [ %5, %ptp_read_system_postts.exit.i.i.ice_ptp_read_time.exit_crit_edge ]
  %hi.0.i.i = phi i32 [ %21, %ptp_read_system_postts.exit68.i.i ], [ %9, %ptp_read_system_postts.exit.i.i.ice_ptp_read_time.exit_crit_edge ]
  %conv45.i.i = zext i32 %hi.0.i.i to i64
  %shl.i.i = shl nuw i64 %conv45.i.i, 32
  %conv46.i.i = zext i32 %lo.0.i.i to i64
  %or.i.i = or i64 %shl.i.i, %conv46.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %or.i.i) #10
  %22 = call ptr @memcpy(ptr %ts, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @ice_ptp_unlock(ptr noundef %hw4) #10
  br label %cleanup

cleanup:                                          ; preds = %ice_ptp_read_time.exit, %do.end
  %retval.0 = phi i32 [ 0, %ice_ptp_read_time.exit ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_ptp_settime64(ptr noundef %info, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %info, i32 -1296
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %ts64.sroa.0.0.copyload42 = load i64, ptr %ts, align 8
  %ts64.sroa.5.0.ts.sroa_idx = getelementptr inbounds i8, ptr %ts, i32 8
  %1 = ptrtoint ptr %ts64.sroa.5.0.ts.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %ts64.sroa.5.0.copyload43 = load i32, ptr %ts64.sroa.5.0.ts.sroa_idx, align 8
  %hw4 = getelementptr i8, ptr %info, i32 1664
  %ptp = getelementptr i8, ptr %info, i32 -448
  %link_up = getelementptr i8, ptr %info, i32 -208
  %2 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_up, align 8, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @ice_ptp_port_phy_stop(ptr noundef %ptp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call7 = tail call zeroext i1 @ice_ptp_lock(ptr noundef %hw4) #10
  br i1 %call7, label %if.end9, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end9:                                          ; preds = %if.end
  tail call fastcc void @ice_ptp_disable_all_clkout(ptr noundef %add.ptr3)
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %ts64.sroa.0.0.copyload42)
  %cmp.i.i = icmp sgt i64 %ts64.sroa.0.0.copyload42, 9223372035
  br i1 %cmp.i.i, label %if.end9.ice_ptp_write_init.exit_crit_edge, label %if.end.i.i

if.end9.ice_ptp_write_init.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_write_init.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %ts64.sroa.0.0.copyload42)
  %cmp2.i.i = icmp slt i64 %ts64.sroa.0.0.copyload42, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.ice_ptp_write_init.exit_crit_edge, label %if.end4.i.i

if.end.i.i.ice_ptp_write_init.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_write_init.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.i = mul nsw i64 %ts64.sroa.0.0.copyload42, 1000000000
  %conv.i.i = sext i32 %ts64.sroa.5.0.copyload43 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %ice_ptp_write_init.exit

ice_ptp_write_init.exit:                          ; preds = %if.end4.i.i, %if.end.i.i.ice_ptp_write_init.exit_crit_edge, %if.end9.ice_ptp_write_init.exit_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end4.i.i ], [ 9223372036854775807, %if.end9.ice_ptp_write_init.exit_crit_edge ], [ -9223372036854775808, %if.end.i.i.ice_ptp_write_init.exit_crit_edge ]
  %call2.i = tail call i32 @ice_ptp_init_time(ptr noundef %hw4, i64 noundef %retval.0.i.i) #10
  tail call void @ice_ptp_unlock(ptr noundef %hw4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool11.not = icmp eq i32 %call2.i, 0
  br i1 %tobool11.not, label %if.then12, label %ice_ptp_write_init.exit.if.end13_crit_edge

ice_ptp_write_init.exit.if.end13_crit_edge:       ; preds = %ice_ptp_write_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %ice_ptp_write_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ice_ptp_update_cached_phctime(ptr noundef %add.ptr3)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %ice_ptp_write_init.exit.if.end13_crit_edge
  %n_per_out.i = getelementptr i8, ptr %info, i32 48
  %4 = ptrtoint ptr %n_per_out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_per_out.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not.i = icmp eq i32 %5, 0
  br i1 %cmp12.not.i, label %if.end13.ice_ptp_enable_all_clkout.exit_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.ice_ptp_enable_all_clkout.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_enable_all_clkout.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end13.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ice_pf, ptr %add.ptr3, i32 0, i32 32, i32 7, i32 %i.013.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 8, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call fastcc i32 @ice_ptp_cfg_clkout(ptr noundef %add.ptr3, i32 noundef %i.013.i, ptr noundef %arrayidx.i, i1 noundef zeroext false) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %8 = ptrtoint ptr %n_per_out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_per_out.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ice_ptp_enable_all_clkout.exit_crit_edge

for.inc.i.ice_ptp_enable_all_clkout.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_enable_all_clkout.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ice_ptp_enable_all_clkout.exit:                   ; preds = %for.inc.i.ice_ptp_enable_all_clkout.exit_crit_edge, %if.end13.ice_ptp_enable_all_clkout.exit_crit_edge
  %10 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_up, align 8, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  br i1 %tobool17.not, label %ice_ptp_enable_all_clkout.exit.exit_crit_edge, label %if.then18

ice_ptp_enable_all_clkout.exit.exit_crit_edge:    ; preds = %ice_ptp_enable_all_clkout.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then18:                                        ; preds = %ice_ptp_enable_all_clkout.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call fastcc i32 @ice_ptp_port_phy_restart(ptr noundef %ptp)
  br label %exit

exit:                                             ; preds = %if.then18, %ice_ptp_enable_all_clkout.exit.exit_crit_edge
  br i1 %tobool11.not, label %exit.cleanup_crit_edge, label %exit.do.end_crit_edge

exit.do.end_crit_edge:                            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %err.047 = phi i32 [ %call2.i, %exit.do.end_crit_edge ], [ -16, %if.end.do.end_crit_edge ]
  %12 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %err.047) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.047, %do.end ], [ 0, %exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_ptp_update_cached_phctime(ptr noundef %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %call.i = tail call zeroext i8 @ice_get_ptp_src_clock_index(ptr noundef %hw1.i) #10
  %0 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1.i, align 8
  %conv.i = zext i8 %call.i to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 559312
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !222
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  %4 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1.i, align 8
  %add9.i = add nuw nsw i32 %mul.i, 559320
  %add.ptr10.i = getelementptr i8, ptr %5, i32 %add9.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !222
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %8 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %9, i32 %add.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #10, !srcloc !222
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp.i = icmp ult i32 %11, %3
  br i1 %cmp.i, label %if.then.i, label %entry.ice_ptp_read_src_clk_reg.exit_crit_edge

entry.ice_ptp_read_src_clk_reg.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_read_src_clk_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1.i, align 8
  %add.ptr31.i = getelementptr i8, ptr %13, i32 %add.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #10, !srcloc !222
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  %16 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1.i, align 8
  %add.ptr41.i = getelementptr i8, ptr %17, i32 %add9.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #10, !srcloc !222
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  br label %ice_ptp_read_src_clk_reg.exit

ice_ptp_read_src_clk_reg.exit:                    ; preds = %if.then.i, %entry.ice_ptp_read_src_clk_reg.exit_crit_edge
  %lo.0.i = phi i32 [ %15, %if.then.i ], [ %3, %entry.ice_ptp_read_src_clk_reg.exit_crit_edge ]
  %hi.0.i = phi i32 [ %19, %if.then.i ], [ %7, %entry.ice_ptp_read_src_clk_reg.exit_crit_edge ]
  %conv45.i = zext i32 %hi.0.i to i64
  %shl.i = shl nuw i64 %conv45.i, 32
  %conv46.i = zext i32 %lo.0.i to i64
  %or.i = or i64 %shl.i, %conv46.i
  %cached_phc_time = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 32, i32 3
  %20 = ptrtoint ptr %cached_phc_time to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %or.i, ptr %cached_phc_time, align 8
  %num_alloc_vsi = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 49
  %21 = ptrtoint ptr %num_alloc_vsi to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_alloc_vsi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp55.not = icmp eq i16 %22, 0
  br i1 %cmp55.not, label %ice_ptp_read_src_clk_reg.exit.for.end36_crit_edge, label %for.body.lr.ph

ice_ptp_read_src_clk_reg.exit.for.end36_crit_edge: ; preds = %ice_ptp_read_src_clk_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end36

for.body.lr.ph:                                   ; preds = %ice_ptp_read_src_clk_reg.exit
  %vsi8 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc35, %cleanup.for.body_crit_edge ]
  %23 = ptrtoint ptr %vsi8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vsi8, align 8
  %arrayidx = getelementptr ptr, ptr %24, i32 %i.056
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %type = getelementptr inbounds %struct.ice_vsi, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp9.not = icmp eq i32 %28, 0
  br i1 %cmp9.not, label %for.cond13.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond13.preheader:                             ; preds = %if.end
  %num_rxq = getelementptr inbounds %struct.ice_vsi, ptr %26, i32 0, i32 50
  %29 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_rxq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp1552.not = icmp eq i16 %30, 0
  br i1 %cmp1552.not, label %for.cond13.preheader.cleanup_crit_edge, label %for.body17.lr.ph

for.cond13.preheader.cleanup_crit_edge:           ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body17.lr.ph:                                 ; preds = %for.cond13.preheader
  %rx_rings = getelementptr inbounds %struct.ice_vsi, ptr %26, i32 0, i32 4
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.body17.lr.ph
  %j.053 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc, %for.inc.for.body17_crit_edge ]
  %31 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_rings, align 16
  %arrayidx18 = getelementptr ptr, ptr %32, i32 %j.053
  %33 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %34, null
  br i1 %tobool19.not, label %for.body17.for.inc_crit_edge, label %do.body26

for.body17.for.inc_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body26:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  %cached_phctime = getelementptr inbounds %struct.ice_rx_ring, ptr %34, i32 0, i32 28
  %35 = ptrtoint ptr %cached_phctime to i32
  call void @__asan_store8_noabort(i32 %35)
  store volatile i64 %or.i, ptr %cached_phctime, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.body26, %for.body17.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.053, 1
  %36 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_rxq, align 2
  %conv14 = zext i16 %37 to i32
  %cmp15 = icmp ult i32 %inc, %conv14
  br i1 %cmp15, label %for.inc.for.body17_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond13.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc35 = add nuw nsw i32 %i.056, 1
  %38 = ptrtoint ptr %num_alloc_vsi to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_alloc_vsi, align 4
  %conv = zext i16 %39 to i32
  %cmp = icmp ult i32 %inc35, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end36_crit_edge

cleanup.for.end36_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end36

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end36:                                        ; preds = %cleanup.for.end36_crit_edge, %ice_ptp_read_src_clk_reg.exit.for.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_ptp_adj_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_ptp_write_incval_locked(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_ptp_gpio_enable_e810(ptr noundef %info, ptr nocapture noundef readonly %rq, i32 noundef %on) #0 align 64 {
entry:
  %clk_cfg = alloca %struct.ice_perout_channel, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %info, i32 -1296
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %clk_cfg) #10
  %0 = ptrtoint ptr %clk_cfg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %clk_cfg, align 8
  %call = tail call zeroext i1 @ice_is_feature_supported(ptr noundef %add.ptr3, i32 noundef 1) #10
  %1 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rq, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb41
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %index = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 8
  br i1 %call, label %if.then4, label %if.else13

if.then4:                                         ; preds = %sw.bb
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %6, label %if.then4.cleanup_crit_edge [
    i32 1, label %if.then5
    i32 2, label %if.then8
  ]

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %gpio_pin6 = getelementptr inbounds %struct.ice_perout_channel, ptr %clk_cfg, i32 0, i32 1
  %8 = ptrtoint ptr %gpio_pin6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %gpio_pin6, align 4
  br label %if.end30

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %gpio_pin9 = getelementptr inbounds %struct.ice_perout_channel, ptr %clk_cfg, i32 0, i32 1
  %9 = ptrtoint ptr %gpio_pin9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %gpio_pin9, align 4
  br label %if.end30

if.else13:                                        ; preds = %sw.bb
  %hw = getelementptr i8, ptr %info, i32 1664
  %call14 = tail call zeroext i1 @ice_is_e810t(ptr noundef %hw) #10
  br i1 %call14, label %if.then15, label %if.else22

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp16 = icmp eq i32 %6, 0
  %gpio_pin18 = getelementptr inbounds %struct.ice_perout_channel, ptr %clk_cfg, i32 0, i32 1
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %gpio_pin18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %gpio_pin18, align 4
  br label %if.end30

if.else19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %gpio_pin18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %gpio_pin18, align 4
  br label %if.end30

if.else22:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp23 = icmp eq i32 %6, 3
  %gpio_pin25 = getelementptr inbounds %struct.ice_perout_channel, ptr %clk_cfg, i32 0, i32 1
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %gpio_pin25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %gpio_pin25, align 4
  br label %if.end30

if.else26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %gpio_pin25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %gpio_pin25, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %if.then24, %if.else19, %if.then17, %if.then8, %if.then5
  %period = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %period, align 8
  %mul = mul i64 %15, 1000000000
  %nsec = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %nsec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nsec, align 8
  %conv = zext i32 %17 to i64
  %add = add i64 %mul, %conv
  %period32 = getelementptr inbounds %struct.ice_perout_channel, ptr %clk_cfg, i32 0, i32 2
  %18 = ptrtoint ptr %period32 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add, ptr %period32, align 8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %4, align 8
  %mul34 = mul i64 %20, 1000000000
  %nsec35 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %nsec35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nsec35, align 8
  %conv36 = zext i32 %22 to i64
  %add37 = add i64 %mul34, %conv36
  %start_time = getelementptr inbounds %struct.ice_perout_channel, ptr %clk_cfg, i32 0, i32 3
  %23 = ptrtoint ptr %start_time to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add37, ptr %start_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool38 = icmp ne i32 %on, 0
  %frombool = zext i1 %tobool38 to i8
  %24 = ptrtoint ptr %clk_cfg to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %clk_cfg, align 8
  %call40 = call fastcc i32 @ice_ptp_cfg_clkout(ptr noundef %add.ptr3, i32 noundef %6, ptr noundef nonnull %clk_cfg, i1 noundef zeroext true)
  br label %cleanup

sw.bb41:                                          ; preds = %entry
  %25 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  br i1 %call, label %if.then44, label %if.else50

if.then44:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp45.inv = icmp ugt i32 %27, 1
  %. = select i1 %cmp45.inv, i32 3, i32 1
  br label %if.end61

if.else50:                                        ; preds = %sw.bb41
  %hw51 = getelementptr i8, ptr %info, i32 1664
  %call52 = tail call zeroext i1 @ice_is_e810t(ptr noundef %hw51) #10
  br i1 %call52, label %if.then53, label %if.else50.if.end61_crit_edge

if.else50.if.end61_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then53:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp54 = icmp eq i32 %27, 0
  %.93 = select i1 %cmp54, i32 1, i32 3
  br label %if.end61

if.end61:                                         ; preds = %if.then53, %if.else50.if.end61_crit_edge, %if.then44
  %gpio_pin.0 = phi i32 [ %., %if.then44 ], [ %.93, %if.then53 ], [ %27, %if.else50.if.end61_crit_edge ]
  %flags = getelementptr inbounds %struct.ptp_extts_request, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %hw1.i = getelementptr i8, ptr %info, i32 1664
  %n_ext_ts.i = getelementptr i8, ptr %info, i32 44
  %30 = ptrtoint ptr %n_ext_ts.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_ext_ts.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %27)
  %cmp.i = icmp ult i32 %31, %27
  br i1 %cmp.i, label %if.end61.cleanup_crit_edge, label %if.end.i

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool62.not = icmp eq i32 %on, 0
  %tmr_index_owned.i = getelementptr i8, ptr %info, i32 5060
  %32 = ptrtoint ptr %tmr_index_owned.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tmr_index_owned.i, align 4
  %34 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %35, i32 1493248
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !222
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  br i1 %tobool62.not, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %37, 4096
  %and.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 16, i32 18
  %and8.i = lshr i32 %29, 1
  %38 = and i32 %and8.i, 1
  %39 = or i32 %spec.select.i, %38
  %add.i = add i32 %27, 1
  %conv.i = zext i8 %33 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 3
  %add13.i = add i32 %add.i, %mul.i
  %shl.i = shl i32 %add13.i, 16
  %and14.i = and i32 %shl.i, 983040
  %shl15.i = shl nuw i32 1, %27
  %ext_ts_chan.i = getelementptr i8, ptr %info, i32 -104
  %40 = ptrtoint ptr %ext_ts_chan.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ext_ts_chan.i, align 8
  %42 = trunc i32 %shl15.i to i8
  %conv19.i = or i8 %41, %42
  store i8 %conv19.i, ptr %ext_ts_chan.i, align 8
  br label %do.body.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl20.i = shl nuw i32 1, %27
  %ext_ts_chan22.i = getelementptr i8, ptr %info, i32 -104
  %43 = ptrtoint ptr %ext_ts_chan22.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ext_ts_chan22.i, align 8
  %45 = trunc i32 %shl20.i to i8
  %46 = xor i8 %45, -1
  %conv25.i = and i8 %44, %46
  store i8 %conv25.i, ptr %ext_ts_chan22.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv25.i)
  %tobool28.not.i = icmp eq i8 %conv25.i, 0
  %and30.i = and i32 %37, -4097
  %spec.select75.i = select i1 %tobool28.not.i, i32 %and30.i, i32 %37
  %.pre.i = zext i8 %33 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then3.i
  %conv39.pre-phi.i = phi i32 [ %.pre.i, %if.else.i ], [ %conv.i, %if.then3.i ]
  %irq_reg.0.i = phi i32 [ %spec.select75.i, %if.else.i ], [ %or.i, %if.then3.i ]
  %gpio_reg.0.i = phi i32 [ 0, %if.else.i ], [ %and14.i, %if.then3.i ]
  %aux_reg.2.i = phi i32 [ 0, %if.else.i ], [ %39, %if.then3.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  tail call void @arm_heavy_mb() #10
  %47 = tail call i32 @llvm.bswap.i32(i32 %irq_reg.0.i) #10
  %48 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw1.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %49, i32 1493248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %47) #10, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %50 = tail call i32 @llvm.bswap.i32(i32 %aux_reg.2.i) #10
  %51 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw1.i, align 8
  %mul40.i = shl nuw nsw i32 %conv39.pre-phi.i, 2
  %mul42.i = shl i32 %27, 3
  %add41.i = add i32 %mul42.i, 559576
  %add43.i = add i32 %add41.i, %mul40.i
  %add.ptr44.i = getelementptr i8, ptr %52, i32 %add43.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %50) #10, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw1.i, align 8
  %mul49.i = shl i32 %gpio_pin.0, 2
  %add50.i = add i32 %mul49.i, 557256
  %add.ptr51.i = getelementptr i8, ptr %54, i32 %add50.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %gpio_reg.0.i) #10, !srcloc !225
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.end61.cleanup_crit_edge, %if.end30, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then4.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %call40, %if.end30 ], [ 0, %do.body.i ], [ -22, %if.end61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %clk_cfg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_e810t(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_feature_supported(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_pca9575_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_clear_feature_support(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_verify_pin_e810t(ptr noundef %info, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #0 align 64 {
entry:
  %data.i.i = alloca i8, align 1
  %ptp_pins.i = alloca [5 x %struct.ptp_pin_desc], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr [5 x %struct.ptp_pin_desc], ptr @ice_pin_desc_e810t, i32 0, i32 %pin, i32 3
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %chan)
  %cmp.not = icmp eq i32 %1, %chan
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %2 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %func, label %if.end.sw.epilog_crit_edge [
    i32 3, label %if.end.return_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pin)
  %cmp2 = icmp eq i32 %pin, 2
  br i1 %cmp2, label %sw.bb.return_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb5:                                           ; preds = %if.end
  %3 = zext i32 %pin to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %pin, label %sw.bb5.sw.epilog_crit_edge [
    i32 4, label %sw.bb5.return_crit_edge
    i32 0, label %sw.bb5.return_crit_edge16
  ]

sw.bb5.return_crit_edge16:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %ptp_pins.i) #10
  %4 = call ptr @memset(ptr %ptp_pins.i, i32 255, i32 480)
  %hw4.i = getelementptr i8, ptr %info, i32 1664
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pin)
  %cmp.i = icmp eq i32 %pin, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %func)
  %cmp5.i = icmp ugt i32 %func, 2
  %or.cond.i = or i1 %cmp.i, %cmp5.i
  br i1 %or.cond.i, label %sw.epilog.ice_ptp_set_sma_e810t.exit_crit_edge, label %if.end.i

sw.epilog.ice_ptp_set_sma_e810t.exit_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_set_sma_e810t.exit

if.end.i:                                         ; preds = %sw.epilog
  %call.i = call fastcc i32 @ice_get_sma_config_e810t(ptr noundef %hw4.i, ptr noundef nonnull %ptp_pins.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.ice_ptp_set_sma_e810t.exit_crit_edge

if.end.i.ice_ptp_set_sma_e810t.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_set_sma_e810t.exit

if.end7.i:                                        ; preds = %if.end.i
  %5 = zext i32 %pin to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %pin, label %if.end7.i.if.end41.i_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true16.i
    i32 3, label %land.lhs.true25.i
    i32 4, label %land.lhs.true34.i
  ]

if.end7.i.if.end41.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %func9.i = getelementptr inbounds [5 x %struct.ptp_pin_desc], ptr %ptp_pins.i, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %func9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %func9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %func)
  %cmp10.i = icmp eq i32 %7, %func
  br i1 %cmp10.i, label %land.lhs.true.i.if.end41.sink.split.i_crit_edge, label %land.lhs.true.i.if.end41.i_crit_edge

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

land.lhs.true.i.if.end41.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.sink.split.i

land.lhs.true16.i:                                ; preds = %if.end7.i
  %func18.i = getelementptr inbounds [5 x %struct.ptp_pin_desc], ptr %ptp_pins.i, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %func18.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %func18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %func)
  %cmp19.i = icmp eq i32 %9, %func
  br i1 %cmp19.i, label %land.lhs.true16.i.if.end41.sink.split.i_crit_edge, label %land.lhs.true16.i.if.end41.i_crit_edge

land.lhs.true16.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

land.lhs.true16.i.if.end41.sink.split.i_crit_edge: ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.sink.split.i

land.lhs.true25.i:                                ; preds = %if.end7.i
  %func27.i = getelementptr inbounds [5 x %struct.ptp_pin_desc], ptr %ptp_pins.i, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %func27.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %func27.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %func)
  %cmp28.i = icmp eq i32 %11, %func
  br i1 %cmp28.i, label %land.lhs.true25.i.if.end41.sink.split.i_crit_edge, label %land.lhs.true25.i.if.end41.i_crit_edge

land.lhs.true25.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

land.lhs.true25.i.if.end41.sink.split.i_crit_edge: ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.sink.split.i

land.lhs.true34.i:                                ; preds = %if.end7.i
  %func36.i = getelementptr inbounds [5 x %struct.ptp_pin_desc], ptr %ptp_pins.i, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %func36.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %func36.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %func)
  %cmp37.i = icmp eq i32 %13, %func
  br i1 %cmp37.i, label %land.lhs.true34.i.if.end41.sink.split.i_crit_edge, label %land.lhs.true34.i.if.end41.i_crit_edge

land.lhs.true34.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

land.lhs.true34.i.if.end41.sink.split.i_crit_edge: ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.sink.split.i

if.end41.sink.split.i:                            ; preds = %land.lhs.true34.i.if.end41.sink.split.i_crit_edge, %land.lhs.true25.i.if.end41.sink.split.i_crit_edge, %land.lhs.true16.i.if.end41.sink.split.i_crit_edge, %land.lhs.true.i.if.end41.sink.split.i_crit_edge
  %func27.sink.i = phi ptr [ %func9.i, %land.lhs.true.i.if.end41.sink.split.i_crit_edge ], [ %func18.i, %land.lhs.true16.i.if.end41.sink.split.i_crit_edge ], [ %func27.i, %land.lhs.true25.i.if.end41.sink.split.i_crit_edge ], [ %func36.i, %land.lhs.true34.i.if.end41.sink.split.i_crit_edge ]
  %14 = ptrtoint ptr %func27.sink.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %func27.sink.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end41.sink.split.i, %land.lhs.true34.i.if.end41.i_crit_edge, %land.lhs.true25.i.if.end41.i_crit_edge, %land.lhs.true16.i.if.end41.i_crit_edge, %land.lhs.true.i.if.end41.i_crit_edge, %if.end7.i.if.end41.i_crit_edge
  %func43.i = getelementptr [5 x %struct.ptp_pin_desc], ptr %ptp_pins.i, i32 0, i32 %pin, i32 2
  %15 = ptrtoint ptr %func43.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %func, ptr %func43.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #10
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %data.i.i, align 1, !annotation !226
  %func.i.i = getelementptr inbounds %struct.ptp_pin_desc, ptr %ptp_pins.i, i32 1, i32 2
  %17 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %func.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end41.i.if.end.i.i_crit_edge

if.end41.i.if.end.i.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end41.i
  %func2.i.i = getelementptr inbounds %struct.ptp_pin_desc, ptr %ptp_pins.i, i32 2, i32 2
  %19 = ptrtoint ptr %func2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %func2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp3.i.i = icmp eq i32 %20, 2
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.ice_ptp_set_sma_config_e810t.exit.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i.ice_ptp_set_sma_config_e810t.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_set_sma_config_e810t.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end41.i.if.end.i.i_crit_edge
  %func5.i.i = getelementptr inbounds %struct.ptp_pin_desc, ptr %ptp_pins.i, i32 3, i32 2
  %21 = ptrtoint ptr %func5.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %func5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp6.i.i = icmp eq i32 %22, 1
  br i1 %cmp6.i.i, label %land.lhs.true7.i.i, label %if.end.i.i.if.end12.i.i_crit_edge

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

land.lhs.true7.i.i:                               ; preds = %if.end.i.i
  %func9.i.i = getelementptr inbounds %struct.ptp_pin_desc, ptr %ptp_pins.i, i32 4, i32 2
  %23 = ptrtoint ptr %func9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %func9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp10.i.i = icmp eq i32 %24, 1
  br i1 %cmp10.i.i, label %land.lhs.true7.i.i.ice_ptp_set_sma_config_e810t.exit.i_crit_edge, label %land.lhs.true7.i.i.if.end12.i.i_crit_edge

land.lhs.true7.i.i.if.end12.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

land.lhs.true7.i.i.ice_ptp_set_sma_config_e810t.exit.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_set_sma_config_e810t.exit.i

if.end12.i.i:                                     ; preds = %land.lhs.true7.i.i.if.end12.i.i_crit_edge, %if.end.i.i.if.end12.i.i_crit_edge
  %call.i.i = call i32 @ice_read_sma_ctrl_e810t(ptr noundef %hw4.i, ptr noundef nonnull %data.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.end12.i.i.ice_ptp_set_sma_config_e810t.exit.i_crit_edge

if.end12.i.i.ice_ptp_set_sma_config_e810t.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_set_sma_config_e810t.exit.i

if.end14.i.i:                                     ; preds = %if.end12.i.i
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data.i.i, align 1
  %27 = and i8 %26, -49
  store i8 %27, ptr %data.i.i, align 1
  %28 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %func.i.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %29, label %if.end14.i.i.if.end113.i.i_crit_edge [
    i32 0, label %land.lhs.true20.i.i
    i32 1, label %land.lhs.true32.i.i
    i32 2, label %land.lhs.true92.i.i
  ]

if.end14.i.i.if.end113.i.i_crit_edge:             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i.i

land.lhs.true20.i.i:                              ; preds = %if.end14.i.i
  %func22.i.i = getelementptr inbounds %struct.ptp_pin_desc, ptr %ptp_pins.i, i32 2, i32 2
  %31 = ptrtoint ptr %func22.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %func22.i.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %32, label %land.lhs.true20.i.i.if.end113.i.i_crit_edge [
    i32 0, label %do.end.i.i
    i32 2, label %do.end62.i.i
  ]

land.lhs.true20.i.i.if.end113.i.i_crit_edge:      ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i.i

do.end.i.i:                                       ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %info, i32 -1296
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.65) #13
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data.i.i, align 1
  %38 = or i8 %37, 48
  store i8 %38, ptr %data.i.i, align 1
  br label %if.end113.i.i

land.lhs.true32.i.i:                              ; preds = %if.end14.i.i
  %func34.i.i = getelementptr inbounds %struct.ptp_pin_desc, ptr %ptp_pins.i, i32 2, i32 2
  %39 = ptrtoint ptr %func34.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %func34.i.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %40, label %land.lhs.true32.i.i.if.end113.i.i_crit_edge [
    i32 0, label %do.end40.i.i
    i32 2, label %do.end81.i.i
  ]

land.lhs.true32.i.i.if.end113.i.i_crit_edge:      ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i.i

do.end40.i.i:                                     ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr43.i.i = getelementptr i8, ptr %info, i32 -1296
  %42 = ptrtoint ptr %add.ptr43.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr43.i.i, align 8
  %dev45.i.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev45.i.i, ptr noundef nonnull @.str.68) #13
  %44 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data.i.i, align 1
  %46 = or i8 %45, 32
  store i8 %46, ptr %data.i.i, align 1
  br label %if.end113.i.i

do.end62.i.i:                                     ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr65.i.i = getelementptr i8, ptr %info, i32 -1296
  %47 = ptrtoint ptr %add.ptr65.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr65.i.i, align 8
  %dev67.i.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev67.i.i, ptr noundef nonnull @.str.71) #13
  br label %if.end113.i.i

do.end81.i.i:                                     ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr84.i.i = getelementptr i8, ptr %info, i32 -1296
  %49 = ptrtoint ptr %add.ptr84.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr84.i.i, align 8
  %dev86.i.i = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev86.i.i, ptr noundef nonnull @.str.71) #13
  br label %if.end113.i.i

land.lhs.true92.i.i:                              ; preds = %if.end14.i.i
  %func94.i.i = getelementptr inbounds %struct.ptp_pin_desc, ptr %ptp_pins.i, i32 2, i32 2
  %51 = ptrtoint ptr %func94.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %func94.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp95.i.i = icmp eq i32 %52, 0
  br i1 %cmp95.i.i, label %do.end100.i.i, label %land.lhs.true92.i.i.if.end113.i.i_crit_edge

land.lhs.true92.i.i.if.end113.i.i_crit_edge:      ; preds = %land.lhs.true92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i.i

do.end100.i.i:                                    ; preds = %land.lhs.true92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr103.i.i = getelementptr i8, ptr %info, i32 -1296
  %53 = ptrtoint ptr %add.ptr103.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr103.i.i, align 8
  %dev105.i.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev105.i.i, ptr noundef nonnull @.str.76) #13
  %55 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %data.i.i, align 1
  %57 = or i8 %56, 16
  store i8 %57, ptr %data.i.i, align 1
  br label %if.end113.i.i

if.end113.i.i:                                    ; preds = %do.end100.i.i, %land.lhs.true92.i.i.if.end113.i.i_crit_edge, %do.end81.i.i, %do.end62.i.i, %do.end40.i.i, %land.lhs.true32.i.i.if.end113.i.i_crit_edge, %do.end.i.i, %land.lhs.true20.i.i.if.end113.i.i_crit_edge, %if.end14.i.i.if.end113.i.i_crit_edge
  %58 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data.i.i, align 1
  %60 = and i8 %59, 55
  store i8 %60, ptr %data.i.i, align 1
  %61 = ptrtoint ptr %func5.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %func5.i.i, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %62, label %if.end113.i.i.if.end230.i.i_crit_edge [
    i32 0, label %land.lhs.true121.i.i
    i32 1, label %land.lhs.true143.i.i
    i32 2, label %land.lhs.true187.i.i
  ]

if.end113.i.i.if.end230.i.i_crit_edge:            ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.i.i

land.lhs.true121.i.i:                             ; preds = %if.end113.i.i
  %func123.i.i = getelementptr inbounds %struct.ptp_pin_desc, ptr %ptp_pins.i, i32 4, i32 2
  %64 = ptrtoint ptr %func123.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %func123.i.i, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %65, label %land.lhs.true121.i.i.if.end230.i.i_crit_edge [
    i32 0, label %do.end129.i.i
    i32 1, label %do.end173.i.i
  ]

land.lhs.true121.i.i.if.end230.i.i_crit_edge:     ; preds = %land.lhs.true121.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.i.i

do.end129.i.i:                                    ; preds = %land.lhs.true121.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr132.i.i = getelementptr i8, ptr %info, i32 -1296
  %67 = ptrtoint ptr %add.ptr132.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr132.i.i, align 8
  %dev134.i.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev134.i.i, ptr noundef nonnull @.str.79) #13
  %69 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %data.i.i, align 1
  %71 = or i8 %70, -56
  store i8 %71, ptr %data.i.i, align 1
  br label %if.end230.i.i

land.lhs.true143.i.i:                             ; preds = %if.end113.i.i
  %func145.i.i = getelementptr inbounds %struct.ptp_pin_desc, ptr %ptp_pins.i, i32 4, i32 2
  %72 = ptrtoint ptr %func145.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %func145.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp146.i.i = icmp eq i32 %73, 0
  br i1 %cmp146.i.i, label %do.end151.i.i, label %land.lhs.true143.i.i.if.end230.i.i_crit_edge

land.lhs.true143.i.i.if.end230.i.i_crit_edge:     ; preds = %land.lhs.true143.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.i.i

do.end151.i.i:                                    ; preds = %land.lhs.true143.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr154.i.i = getelementptr i8, ptr %info, i32 -1296
  %74 = ptrtoint ptr %add.ptr154.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr154.i.i, align 8
  %dev156.i.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev156.i.i, ptr noundef nonnull @.str.82) #13
  %76 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %data.i.i, align 1
  %78 = or i8 %77, -120
  store i8 %78, ptr %data.i.i, align 1
  br label %if.end230.i.i

do.end173.i.i:                                    ; preds = %land.lhs.true121.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr176.i.i = getelementptr i8, ptr %info, i32 -1296
  %79 = ptrtoint ptr %add.ptr176.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr176.i.i, align 8
  %dev178.i.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev178.i.i, ptr noundef nonnull @.str.85) #13
  %81 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %data.i.i, align 1
  %83 = or i8 %82, -64
  store i8 %83, ptr %data.i.i, align 1
  br label %if.end230.i.i

land.lhs.true187.i.i:                             ; preds = %if.end113.i.i
  %func189.i.i = getelementptr inbounds %struct.ptp_pin_desc, ptr %ptp_pins.i, i32 4, i32 2
  %84 = ptrtoint ptr %func189.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %func189.i.i, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %85, label %land.lhs.true187.i.i.if.end230.i.i_crit_edge [
    i32 0, label %do.end195.i.i
    i32 1, label %do.end217.i.i
  ]

land.lhs.true187.i.i.if.end230.i.i_crit_edge:     ; preds = %land.lhs.true187.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.i.i

do.end195.i.i:                                    ; preds = %land.lhs.true187.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr198.i.i = getelementptr i8, ptr %info, i32 -1296
  %87 = ptrtoint ptr %add.ptr198.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr198.i.i, align 8
  %dev200.i.i = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev200.i.i, ptr noundef nonnull @.str.88) #13
  %89 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %data.i.i, align 1
  %91 = or i8 %90, 72
  store i8 %91, ptr %data.i.i, align 1
  br label %if.end230.i.i

do.end217.i.i:                                    ; preds = %land.lhs.true187.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr220.i.i = getelementptr i8, ptr %info, i32 -1296
  %92 = ptrtoint ptr %add.ptr220.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr220.i.i, align 8
  %dev222.i.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev222.i.i, ptr noundef nonnull @.str.91) #13
  %94 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %data.i.i, align 1
  %96 = or i8 %95, 64
  store i8 %96, ptr %data.i.i, align 1
  br label %if.end230.i.i

if.end230.i.i:                                    ; preds = %do.end217.i.i, %do.end195.i.i, %land.lhs.true187.i.i.if.end230.i.i_crit_edge, %do.end173.i.i, %do.end151.i.i, %land.lhs.true143.i.i.if.end230.i.i_crit_edge, %do.end129.i.i, %land.lhs.true121.i.i.if.end230.i.i_crit_edge, %if.end113.i.i.if.end230.i.i_crit_edge
  %97 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %data.i.i, align 1
  %call231.i.i = call i32 @ice_write_sma_ctrl_e810t(ptr noundef %hw4.i, i8 noundef zeroext %98) #10
  br label %ice_ptp_set_sma_config_e810t.exit.i

ice_ptp_set_sma_config_e810t.exit.i:              ; preds = %if.end230.i.i, %if.end12.i.i.ice_ptp_set_sma_config_e810t.exit.i_crit_edge, %land.lhs.true7.i.i.ice_ptp_set_sma_config_e810t.exit.i_crit_edge, %land.lhs.true.i.i.ice_ptp_set_sma_config_e810t.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call231.i.i, %if.end230.i.i ], [ -22, %land.lhs.true.i.i.ice_ptp_set_sma_config_e810t.exit.i_crit_edge ], [ -22, %land.lhs.true7.i.i.ice_ptp_set_sma_config_e810t.exit.i_crit_edge ], [ %call.i.i, %if.end12.i.i.ice_ptp_set_sma_config_e810t.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #10
  br label %ice_ptp_set_sma_e810t.exit

ice_ptp_set_sma_e810t.exit:                       ; preds = %ice_ptp_set_sma_config_e810t.exit.i, %if.end.i.ice_ptp_set_sma_e810t.exit_crit_edge, %sw.epilog.ice_ptp_set_sma_e810t.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i.i, %ice_ptp_set_sma_config_e810t.exit.i ], [ -95, %sw.epilog.ice_ptp_set_sma_e810t.exit_crit_edge ], [ %call.i, %if.end.i.ice_ptp_set_sma_e810t.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %ptp_pins.i) #10
  br label %return

return:                                           ; preds = %ice_ptp_set_sma_e810t.exit, %sw.bb5.return_crit_edge, %sw.bb5.return_crit_edge16, %sw.bb.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ice_ptp_set_sma_e810t.exit ], [ -95, %entry.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ -95, %sw.bb5.return_crit_edge ], [ -95, %sw.bb5.return_crit_edge16 ], [ -95, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_get_sma_config_e810t(ptr noundef %hw, ptr noundef writeonly %ptp_pins) unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !226
  %call = call i32 @ice_read_sma_ctrl_e810t(ptr noundef %hw, ptr noundef nonnull %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ptp_pins, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef nonnull @ice_pin_desc_e810t)
  %index11 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 0, i32 1
  %1 = ptrtoint ptr %index11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %index11, align 4
  %func16 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 0, i32 2
  %2 = ptrtoint ptr %func16 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %func16, align 4
  %chan21 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 0, i32 3
  %3 = ptrtoint ptr %chan21 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %chan21, align 4
  %arrayidx.1 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 1
  %call6.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.1, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef getelementptr inbounds ([5 x %struct.ptp_pin_desc], ptr @ice_pin_desc_e810t, i32 0, i32 1))
  %index11.1 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 1, i32 1
  %4 = ptrtoint ptr %index11.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %index11.1, align 4
  %func16.1 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 1, i32 2
  %5 = ptrtoint ptr %func16.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %func16.1, align 4
  %chan21.1 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 1, i32 3
  %6 = ptrtoint ptr %chan21.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %chan21.1, align 4
  %arrayidx.2 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 2
  %call6.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.2, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef getelementptr inbounds ([5 x %struct.ptp_pin_desc], ptr @ice_pin_desc_e810t, i32 0, i32 2))
  %index11.2 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 2, i32 1
  %7 = ptrtoint ptr %index11.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %index11.2, align 4
  %func16.2 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 2, i32 2
  %8 = ptrtoint ptr %func16.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %func16.2, align 4
  %chan21.2 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 2, i32 3
  %9 = ptrtoint ptr %chan21.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %chan21.2, align 4
  %arrayidx.3 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 3
  %call6.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.3, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef getelementptr inbounds ([5 x %struct.ptp_pin_desc], ptr @ice_pin_desc_e810t, i32 0, i32 3))
  %index11.3 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 3, i32 1
  %10 = ptrtoint ptr %index11.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %index11.3, align 4
  %func16.3 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 3, i32 2
  %11 = ptrtoint ptr %func16.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %func16.3, align 4
  %chan21.3 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 3, i32 3
  %12 = ptrtoint ptr %chan21.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %chan21.3, align 4
  %arrayidx.4 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 4
  %call6.4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.4, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef getelementptr inbounds ([5 x %struct.ptp_pin_desc], ptr @ice_pin_desc_e810t, i32 0, i32 4))
  %index11.4 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 4, i32 1
  %13 = ptrtoint ptr %index11.4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %index11.4, align 4
  %func16.4 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 4, i32 2
  %chan21.4 = getelementptr %struct.ptp_pin_desc, ptr %ptp_pins, i32 4, i32 3
  %14 = ptrtoint ptr %chan21.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %chan21.4, align 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data, align 1
  %17 = lshr i8 %16, 4
  %18 = and i8 %17, 3
  %19 = zext i8 %18 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ice_get_sma_config_e810t, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep108 = getelementptr inbounds [4 x i32], ptr @switch.table.ice_get_sma_config_e810t.109, i32 0, i32 %19
  %21 = ptrtoint ptr %switch.gep108 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load109 = load i32, ptr %switch.gep108, align 4
  %22 = ptrtoint ptr %func16.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %switch.load, ptr %func16.1, align 4
  %23 = ptrtoint ptr %func16.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %switch.load109, ptr %func16.2, align 4
  %24 = and i8 %16, -56
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %24, label %for.body.preheader.cleanup.sink.split_crit_edge [
    i8 64, label %sw.bb65
    i8 -120, label %sw.bb50
    i8 72, label %sw.bb55
    i8 -64, label %sw.bb60
  ]

for.body.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb50:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb55:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb60:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb65:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb65, %sw.bb60, %sw.bb55, %sw.bb50, %for.body.preheader.cleanup.sink.split_crit_edge
  %.sink107 = phi i32 [ 1, %sw.bb50 ], [ 2, %sw.bb55 ], [ 0, %sw.bb60 ], [ 2, %sw.bb65 ], [ 0, %for.body.preheader.cleanup.sink.split_crit_edge ]
  %.sink106 = phi i32 [ 0, %sw.bb50 ], [ 0, %sw.bb55 ], [ 1, %sw.bb60 ], [ 1, %sw.bb65 ], [ 0, %for.body.preheader.cleanup.sink.split_crit_edge ]
  %26 = ptrtoint ptr %func16.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink107, ptr %func16.3, align 4
  %27 = ptrtoint ptr %func16.4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink106, ptr %func16.4, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_read_sma_ctrl_e810t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_write_sma_ctrl_e810t(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_set_driver_param(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_ptp_periodic_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %work, i32 -640
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1092
  tail call fastcc void @ice_ptp_update_cached_phctime(ptr noundef %add.ptr3)
  %init.i = getelementptr i8, ptr %work, i32 -169
  %3 = ptrtoint ptr %init.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %init.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.ice_ptp_tx_tstamp_cleanup.exit_crit_edge, label %if.end.i

if.end.ice_ptp_tx_tstamp_cleanup.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_tx_tstamp_cleanup.exit

if.end.i:                                         ; preds = %if.end
  %in_use.i = getelementptr i8, ptr %work, i32 -176
  %5 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %in_use.i, align 4
  %len.i = getelementptr i8, ptr %work, i32 -170
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len.i, align 2
  %conv.i = zext i8 %8 to i32
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %6, i32 noundef %conv.i, i32 noundef 0) #10
  %conv247.i = and i32 %call.i, 255
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len.i, align 2
  %conv448.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv247.i, i32 %conv448.i)
  %cmp49.i = icmp ult i32 %conv247.i, %conv448.i
  br i1 %cmp49.i, label %for.body.lr.ph.i, label %if.end.i.ice_ptp_tx_tstamp_cleanup.exit_crit_edge

if.end.i.ice_ptp_tx_tstamp_cleanup.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_tx_tstamp_cleanup.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %tstamps.i = getelementptr i8, ptr %work, i32 -180
  %lock.i = getelementptr i8, ptr %work, i32 -224
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv250.i = phi i32 [ %conv247.i, %for.body.lr.ph.i ], [ %conv2.i, %cleanup.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %tstamps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tstamps.i, align 4
  %start.i = getelementptr %struct.ice_tx_tstamp, ptr %13, i32 %conv250.i, i32 1
  %14 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start.i, align 4
  %add.neg.i = add i32 %11, -200
  %sub.i = sub i32 %add.neg.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp6.i = icmp slt i32 %sub.i, 0
  br i1 %cmp6.i, label %for.body.i.cleanup.i_crit_edge, label %if.end9.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end9.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %16 = ptrtoint ptr %tstamps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tstamps.i, align 4
  %arrayidx12.i = getelementptr %struct.ice_tx_tstamp, ptr %17, i32 %conv250.i
  %18 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx12.i, align 8
  store ptr null, ptr %arrayidx12.i, align 8
  %20 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %in_use.i, align 4
  tail call void @_clear_bit(i32 noundef %conv250.i, ptr noundef %21) #10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  tail call void @__dev_kfree_skb_any(ptr noundef %19, i32 noundef 1) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end9.i, %for.body.i.cleanup.i_crit_edge
  %22 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %in_use.i, align 4
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %len.i, align 2
  %conv23.i = zext i8 %25 to i32
  %add25.i = add nuw nsw i32 %conv250.i, 1
  %call26.i = tail call i32 @_find_next_bit_be(ptr noundef %23, i32 noundef %conv23.i, i32 noundef %add25.i) #10
  %conv2.i = and i32 %call26.i, 255
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %len.i, align 2
  %conv4.i = zext i8 %27 to i32
  %cmp.i = icmp ult i32 %conv2.i, %conv4.i
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.ice_ptp_tx_tstamp_cleanup.exit_crit_edge

cleanup.i.ice_ptp_tx_tstamp_cleanup.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_ptp_tx_tstamp_cleanup.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ice_ptp_tx_tstamp_cleanup.exit:                   ; preds = %cleanup.i.ice_ptp_tx_tstamp_cleanup.exit_crit_edge, %if.end.i.ice_ptp_tx_tstamp_cleanup.exit_crit_edge, %if.end.ice_ptp_tx_tstamp_cleanup.exit_crit_edge
  %kworker = getelementptr i8, ptr %work, i32 104
  %28 = ptrtoint ptr %kworker to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %kworker, align 4
  %call7 = tail call zeroext i1 @kthread_queue_delayed_work(ptr noundef %29, ptr noundef %work, i32 noundef 50) #10
  br label %cleanup

cleanup:                                          ; preds = %ice_ptp_tx_tstamp_cleanup.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_ptp_extts_work(ptr nocapture noundef %work) #0 align 64 {
entry:
  %event = alloca %struct.ptp_clock_event, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %event) #10
  %0 = call ptr @memset(ptr %event, i32 255, i32 24)
  %hw4 = getelementptr i8, ptr %work, i32 1800
  %tmr_index_owned = getelementptr i8, ptr %work, i32 5196
  %1 = ptrtoint ptr %tmr_index_owned to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmr_index_owned, align 4
  %ext_ts_irq = getelementptr i8, ptr %work, i32 33
  %conv9 = zext i8 %2 to i32
  %mul = shl nuw nsw i32 %conv9, 2
  %3 = getelementptr inbounds %struct.ptp_clock_event, ptr %event, i32 0, i32 2
  %index = getelementptr inbounds %struct.ptp_clock_event, ptr %event, i32 0, i32 1
  %clock = getelementptr i8, ptr %work, i32 244
  %4 = ptrtoint ptr %ext_ts_irq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ext_ts_irq, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw4, align 8
  %add12 = add nuw nsw i32 %mul, 559464
  %add.ptr13 = getelementptr i8, ptr %8, i32 %add12
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  %10 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw4, align 8
  %add24 = add nuw nsw i32 %mul, 559472
  %add.ptr25 = getelementptr i8, ptr %11, i32 %add24
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  %13 = zext i32 %12 to i64
  %14 = zext i32 %9 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or i64 %15, %13
  %17 = call i64 @llvm.bswap.i64(i64 %16)
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %3, align 8
  %19 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %event, align 8
  %20 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %index, align 4
  %21 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clock, align 4
  call void @ptp_clock_event(ptr noundef %22, ptr noundef nonnull %event) #10
  %23 = ptrtoint ptr %ext_ts_irq to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ext_ts_irq, align 1
  %conv40 = and i8 %24, -2
  store i8 %conv40, ptr %ext_ts_irq, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %25 = ptrtoint ptr %ext_ts_irq to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ext_ts_irq, align 1
  %27 = and i8 %26, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.1 = icmp eq i8 %27, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw4, align 8
  %add12.1 = add nuw nsw i32 %mul, 559480
  %add.ptr13.1 = getelementptr i8, ptr %29, i32 %add12.1
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.1) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  %31 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw4, align 8
  %add24.1 = add nuw nsw i32 %mul, 559488
  %add.ptr25.1 = getelementptr i8, ptr %32, i32 %add24.1
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.1) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  %34 = zext i32 %33 to i64
  %35 = zext i32 %30 to i64
  %36 = shl nuw i64 %35, 32
  %37 = or i64 %36, %34
  %38 = call i64 @llvm.bswap.i64(i64 %37)
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %3, align 8
  %40 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %event, align 8
  %41 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %index, align 4
  %42 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clock, align 4
  call void @ptp_clock_event(ptr noundef %43, ptr noundef nonnull %event) #10
  %44 = ptrtoint ptr %ext_ts_irq to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ext_ts_irq, align 1
  %conv40.1 = and i8 %45, -3
  store i8 %conv40.1, ptr %ext_ts_irq, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %46 = ptrtoint ptr %ext_ts_irq to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ext_ts_irq, align 1
  %48 = and i8 %47, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.2 = icmp eq i8 %48, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw4, align 8
  %add12.2 = add nuw nsw i32 %mul, 559496
  %add.ptr13.2 = getelementptr i8, ptr %50, i32 %add12.2
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.2) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  %52 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw4, align 8
  %add24.2 = add nuw nsw i32 %mul, 559504
  %add.ptr25.2 = getelementptr i8, ptr %53, i32 %add24.2
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.2) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  %55 = zext i32 %54 to i64
  %56 = zext i32 %51 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or i64 %57, %55
  %59 = call i64 @llvm.bswap.i64(i64 %58)
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %3, align 8
  %61 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %event, align 8
  %62 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %index, align 4
  %63 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clock, align 4
  call void @ptp_clock_event(ptr noundef %64, ptr noundef nonnull %event) #10
  %65 = ptrtoint ptr %ext_ts_irq to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ext_ts_irq, align 1
  %conv40.2 = and i8 %66, -5
  store i8 %conv40.2, ptr %ext_ts_irq, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_stop_phy_timer_e822(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !62, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !197, !198, !200, !201, !203, !205, !206, !207, !208, !210, !211}
!llvm.named.register.sp = !{!212}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 364, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ice_get_ptp_clock_index._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ice_get_ptp_clock_index._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @ice_ptp_reset.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 2402, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 2415, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ice_ptp_reset._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ice_ptp_reset._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 2419, i32 2}
!19 = !{ptr @ice_ptp_reset._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @ice_ptp_reset._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 2610, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ice_ptp_init._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @ice_ptp_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 2620, i32 2}
!28 = !{ptr @ice_ptp_init._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ice_ptp_init._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 2661, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ice_ptp_release._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ice_ptp_release._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 980, i32 3}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ice_ptp_port_phy_restart._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ice_ptp_port_phy_restart._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!42 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 704, i32 2}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ice_base_incval.__UNIQUE_ID_ddebug616, !48, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 1069, i32 3}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ice_ptp_tx_ena_intr._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ice_ptp_tx_ena_intr._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @ice_ptp_alloc_tx_tracker.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 2181, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 903, i32 3}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ice_ptp_wait_for_offset_valid._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @ice_ptp_wait_for_offset_valid._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 806, i32 3}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ice_ptp_check_tx_offset_valid._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @ice_ptp_check_tx_offset_valid._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 751, i32 3}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ice_ptp_check_tx_fifo._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @ice_ptp_check_tx_fifo._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 768, i32 2}
!78 = !{ptr @ice_ptp_check_tx_fifo.__UNIQUE_ID_ddebug617, !77, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 772, i32 3}
!81 = !{ptr @ice_ptp_check_tx_fifo.__UNIQUE_ID_ddebug618, !80, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 836, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ice_ptp_check_rx_offset_valid._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ice_ptp_check_rx_offset_valid._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 1280, i32 3}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ice_ptp_cfg_clkout._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ice_ptp_cfg_clkout._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 1290, i32 3}
!94 = !{ptr @ice_ptp_cfg_clkout._entry.43, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ice_ptp_cfg_clkout._entry_ptr.45, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 1335, i32 2}
!98 = !{ptr @ice_ptp_cfg_clkout._entry.46, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ice_ptp_cfg_clkout._entry_ptr.48, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 2472, i32 3}
!102 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ice_ptp_init_owner._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @ice_ptp_init_owner._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 1960, i32 47}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 1566, i32 3}
!109 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ice_ptp_adjtime.__UNIQUE_ID_ddebug619, !108, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 1571, i32 3}
!113 = !{ptr @ice_ptp_adjtime._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @ice_ptp_adjtime._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 1586, i32 3}
!117 = !{ptr @ice_ptp_adjtime._entry.55, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ice_ptp_adjtime._entry_ptr.57, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 1125, i32 3}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ice_ptp_adjfine._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @ice_ptp_adjfine._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 1467, i32 3}
!126 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ice_ptp_gettimex64._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @ice_ptp_gettimex64._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 1521, i32 3}
!131 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @ice_ptp_settime64._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @ice_ptp_settime64._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @ice_pin_desc_e810t, !135, !"ice_pin_desc_e810t", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 11, i32 34}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 42, i32 5}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 131, i32 3}
!140 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ice_ptp_set_sma_config_e810t._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @ice_ptp_set_sma_config_e810t._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 135, i32 3}
!145 = !{ptr @ice_ptp_set_sma_config_e810t._entry.67, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ice_ptp_set_sma_config_e810t._entry_ptr.69, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 140, i32 3}
!149 = !{ptr @ice_ptp_set_sma_config_e810t._entry.70, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @ice_ptp_set_sma_config_e810t._entry_ptr.72, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @ice_ptp_set_sma_config_e810t._entry.73, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 143, i32 3}
!153 = !{ptr @ice_ptp_set_sma_config_e810t._entry_ptr.74, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 146, i32 3}
!156 = !{ptr @ice_ptp_set_sma_config_e810t._entry.75, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @ice_ptp_set_sma_config_e810t._entry_ptr.77, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 153, i32 3}
!160 = !{ptr @ice_ptp_set_sma_config_e810t._entry.78, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @ice_ptp_set_sma_config_e810t._entry_ptr.80, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 157, i32 3}
!164 = !{ptr @ice_ptp_set_sma_config_e810t._entry.81, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @ice_ptp_set_sma_config_e810t._entry_ptr.83, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 162, i32 3}
!168 = !{ptr @ice_ptp_set_sma_config_e810t._entry.84, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ice_ptp_set_sma_config_e810t._entry_ptr.86, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 166, i32 3}
!172 = !{ptr @ice_ptp_set_sma_config_e810t._entry.87, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @ice_ptp_set_sma_config_e810t._entry_ptr.89, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.91, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 171, i32 3}
!176 = !{ptr @ice_ptp_set_sma_config_e810t._entry.90, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @ice_ptp_set_sma_config_e810t._entry_ptr.92, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.93, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 1834, i32 2}
!180 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @ice_ptp_disable_sma_pins_e810t._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @ice_ptp_disable_sma_pins_e810t._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 409, i32 3}
!185 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ice_set_ptp_clock_index._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @ice_set_ptp_clock_index._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.98, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 416, i32 3}
!190 = !{ptr @ice_set_ptp_clock_index._entry.97, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @ice_set_ptp_clock_index._entry_ptr.99, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @ice_ptp_init_port.__key, !193, !"__key", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 2560, i32 2}
!194 = !{ptr @.str.100, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @ice_ptp_init_port.__key.101, !196, !"__key", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 2565, i32 2}
!197 = !{ptr @.str.102, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @ice_ptp_init_work.__key, !199, !"__key", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 2534, i32 2}
!200 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.104, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 2540, i32 37}
!203 = !{ptr @.str.105, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 930, i32 3}
!205 = !{ptr @.str.106, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @ice_ptp_port_phy_stop._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @ice_ptp_port_phy_stop._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp.c", i32 449, i32 3}
!210 = !{ptr @.str.108, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @ice_clear_ptp_clock_index.__UNIQUE_ID_ddebug613, !209, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!212 = !{!"sp"}
!213 = !{i32 1, !"wchar_size", i32 2}
!214 = !{i32 1, !"min_enum_size", i32 4}
!215 = !{i32 8, !"branch-target-enforcement", i32 0}
!216 = !{i32 8, !"sign-return-address", i32 0}
!217 = !{i32 8, !"sign-return-address-all", i32 0}
!218 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!222 = !{i64 6810957}
!223 = !{i64 2160186066}
!224 = !{i64 2160186548}
!225 = !{i64 6810539}
!226 = !{!"auto-init"}
!227 = !{i8 0, i8 2}
!228 = !{i64 2153157926, i64 2153157951}
!229 = !{i64 2153157245, i64 2153157270}
!230 = !{!"branch_weights", i32 2000, i32 1}
!231 = !{i64 5652800}
!232 = !{i64 5652997}
!233 = !{i64 2153138230}
!234 = !{i64 2148311030, i64 2148311062, i64 2148311091, i64 2148311125, i64 2148311156, i64 2148311179}
!235 = !{!"branch_weights", i32 1, i32 2000}
!236 = !{i64 2148791315, i64 2148791320, i64 2148791333, i64 2148791377, i64 2148791411, i64 2148791432}
!237 = !{i64 2160363621}
!238 = !{i64 2160290734}
!239 = !{i64 2160291432}
!240 = !{i64 2160292134}
!241 = !{i64 2160292837}
!242 = !{i64 2160293534}
!243 = !{i64 2160297842}
!244 = !{i64 2160196392}
!245 = !{i64 2160197124}
!246 = !{i64 2160197856}
!247 = !{i64 2160198588}
!248 = !{i64 2160199320}
!249 = !{i64 2160298794}
!250 = !{i64 2160299712}
!251 = !{i64 2160300641}
!252 = !{i64 2160301378}
!253 = !{i64 2148700034, i64 2148700314, i64 2148700648, i64 2148700982}
!254 = !{i64 2160287926}
!255 = !{i64 2160288701}
!256 = !{i64 2160289389}
!257 = !{i64 2160290031}
!258 = !{i64 2160286433}
!259 = !{i64 2160287324}
