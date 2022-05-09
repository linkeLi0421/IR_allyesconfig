; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.189, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.189 = type { i32 }
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
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.1, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.1 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ice_mbx_snapshot = type { %struct.ice_mbx_snap_buffer_data, %struct.ice_mbx_vf_counter }
%struct.ice_mbx_snap_buffer_data = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.ice_mbx_vf_counter = type { ptr, i32 }
%struct.ice_fdir_fltr = type { %struct.list_head, i32, %union.anon.202, %union.anon.202, %struct.ice_fdir_udp_gtp, %struct.ice_fdir_udp_gtp, %struct.ice_fdir_l2tpv3, %struct.ice_fdir_l2tpv3, %struct.ice_fdir_extra, %struct.ice_fdir_extra, i16, i8, i16, i16, i16, i16, i16, i8, i8, i8, i16, i32, i8, i8 }
%union.anon.202 = type { %struct.ice_fdir_v6 }
%struct.ice_fdir_v6 = type { [4 x i32], [4 x i32], i16, i16, i32, i32, i8, i8, i8 }
%struct.ice_fdir_udp_gtp = type <{ i8, i8, i16, i32, i16, i8, i8, i8, i16, i8, i32, i8, [3 x i8] }>
%struct.ice_fdir_l2tpv3 = type { i32 }
%struct.ice_fdir_extra = type { [6 x i8], [6 x i8], i16, [2 x i32], i16, i16 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ice_fdir_v4 = type { i32, i32, i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethtool_usrip6_spec = type { [4 x i32], [4 x i32], i32, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.203, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.203 = type { ptr }
%struct.ice_fd_hw_prof = type { [2 x ptr], i32, [18 x [2 x i64]], [18 x i16] }
%struct.ice_fltr_desc = type { i64, i64 }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.180 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.180 = type { %struct.devlink_port_pci_vf_attrs }
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
%struct.ice_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_link_default_override_tlv = type { i8, i8, i8, i8, i64, i64 }
%struct.ice_switchdev_info = type { ptr, ptr, i8 }
%struct.ice_agg_node = type { i32, i32, i8 }
%struct.ice_flow_seg_info = type { i32, i64, i64, [42 x %struct.ice_flow_fld_info], i8, [2 x %struct.ice_flow_seg_fld_raw] }
%struct.ice_flow_fld_info = type { i32, %struct.ice_flow_fld_loc, %struct.ice_flow_fld_loc, %struct.ice_flow_seg_xtrct }
%struct.ice_flow_fld_loc = type { i16, i16, i16 }
%struct.ice_flow_seg_xtrct = type { i8, i16, i8, i8, i16 }
%struct.ice_flow_seg_fld_raw = type { %struct.ice_flow_fld_info, i16 }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.ice_channel = type { %struct.list_head, i8, i16, i16, i16, i16, i16, i8, %struct.ice_aqc_vsi_props, i64, i64, %struct.atomic_t, ptr }

@ice_get_ethtool_fdir_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 214, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Missing input index for flow_type %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_get_ethtool_fdir_entry\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_get_ethtool_fdir_entry._entry_ptr = internal global ptr @ice_get_ethtool_fdir_entry._entry, section ".printk_index", align 4
@ice_fdir_rem_adq_chnl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 327, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ice_flow_rem_vsi_prof() failed status=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_fdir_rem_adq_chnl\00", [42 x i8] zeroinitializer }, align 32
@ice_fdir_rem_adq_chnl._entry_ptr = internal global ptr @ice_fdir_rem_adq_chnl._entry, section ".printk_index", align 4
@ice_fdir_replay_flows._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 464, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not replay Flow Director, flow type %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_fdir_replay_flows\00", [42 x i8] zeroinitializer }, align 32
@ice_fdir_replay_flows._entry_ptr = internal global ptr @ice_fdir_replay_flows._entry, section ".printk_index", align 4
@ice_fdir_replay_fltrs.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_fdir_replay_fltrs\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Flow Director error %d, could not reprogram filter %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ice_del_fdir_ethtool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1640, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Device is resetting - deleting Flow Director filters not supported during reset\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_del_fdir_ethtool\00", [43 x i8] zeroinitializer }, align 32
@ice_del_fdir_ethtool._entry_ptr = internal global ptr @ice_del_fdir_ethtool._entry, section ".printk_index", align 4
@ice_add_fdir_ethtool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1863, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Device is resetting - adding Flow Director filters not supported during reset\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_add_fdir_ethtool\00", [43 x i8] zeroinitializer }, align 32
@ice_add_fdir_ethtool._entry_ptr = internal global ptr @ice_add_fdir_ethtool._entry, section ".printk_index", align 4
@ice_add_fdir_ethtool._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1880, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Failed to add filter.  The maximum number of flow director filters has been reached.\0A\00", [42 x i8] zeroinitializer }, align 32
@ice_add_fdir_ethtool._entry_ptr.18 = internal global ptr @ice_add_fdir_ethtool._entry.16, section ".printk_index", align 4
@ice_add_fdir_ethtool._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1888, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ice_add_fdir_ethtool._entry_ptr.20 = internal global ptr @ice_add_fdir_ethtool._entry.19, section ".printk_index", align 4
@ice_fdir_set_hw_fltr_rule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 663, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Failed to add filter.  Flow director filters on each port must have the same input set.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_fdir_set_hw_fltr_rule\00", [38 x i8] zeroinitializer }, align 32
@ice_fdir_set_hw_fltr_rule._entry_ptr = internal global ptr @ice_fdir_set_hw_fltr_rule._entry, section ".printk_index", align 4
@ice_fdir_set_hw_fltr_rule._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 669, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"aRFS using perfect flow type %d, cannot change input set\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_fdir_set_hw_fltr_rule._entry_ptr.25 = internal global ptr @ice_fdir_set_hw_fltr_rule._entry.23, section ".printk_index", align 4
@ice_fdir_set_hw_fltr_rule._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 720, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Could not add Channel VSI %d to flow group\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_fdir_set_hw_fltr_rule._entry_ptr.28 = internal global ptr @ice_fdir_set_hw_fltr_rule._entry.26, section ".printk_index", align 4
@ice_fdir_set_hw_fltr_rule._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 765, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ice_fdir_set_hw_fltr_rule._entry_ptr.30 = internal global ptr @ice_fdir_set_hw_fltr_rule._entry.29, section ".printk_index", align 4
@zero_ipv6_addr_mask = internal global { { { [16 x i8] } }, [16 x i8] } zeroinitializer, align 32
@full_ipv6_addr_mask = internal global { { { [16 x i8] } }, [16 x i8] } { { { [16 x i8] } } { { [16 x i8] } { [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" } }, [16 x i8] zeroinitializer }, align 32
@ice_set_fdir_input_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1718, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Failed to add filter. Flow director filters are not supported on VF queues.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_set_fdir_input_set\00", [41 x i8] zeroinitializer }, align 32
@ice_set_fdir_input_set._entry_ptr = internal global ptr @ice_set_fdir_input_set._entry, section ".printk_index", align 4
@switch.table.ice_add_fdir_ethtool = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2, i32 1, i32 3, i32 0, i32 25, i32 24, i32 26, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 27], [40 x i8] zeroinitializer }, align 32
@switch.table.ice_set_fdir_input_set = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2, i32 1, i32 3, i32 0, i32 25, i32 24, i32 26, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 27], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 24, i64 25]
@__sancov_gen_cov_switch_values.36 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.40 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 24, i64 25]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 213, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 326, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 463, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1459, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1640, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1863, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1880, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1888, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 663, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 668, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 719, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 765, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c"zero_ipv6_addr_mask\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 20, i32 24 }
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c"full_ipv6_addr_mask\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 11, i32 24 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [53 x i8] c"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1718, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [34 x i8] c"switch.table.ice_add_fdir_ethtool\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [36 x i8] c"switch.table.ice_set_fdir_input_set\00", align 1
@llvm.compiler.used = appending global [51 x ptr] [ptr @ice_add_fdir_ethtool._entry, ptr @ice_add_fdir_ethtool._entry.16, ptr @ice_add_fdir_ethtool._entry.19, ptr @ice_add_fdir_ethtool._entry_ptr, ptr @ice_add_fdir_ethtool._entry_ptr.18, ptr @ice_add_fdir_ethtool._entry_ptr.20, ptr @ice_del_fdir_ethtool._entry, ptr @ice_del_fdir_ethtool._entry_ptr, ptr @ice_fdir_rem_adq_chnl._entry, ptr @ice_fdir_rem_adq_chnl._entry_ptr, ptr @ice_fdir_replay_flows._entry, ptr @ice_fdir_replay_flows._entry_ptr, ptr @ice_fdir_set_hw_fltr_rule._entry, ptr @ice_fdir_set_hw_fltr_rule._entry.23, ptr @ice_fdir_set_hw_fltr_rule._entry.26, ptr @ice_fdir_set_hw_fltr_rule._entry.29, ptr @ice_fdir_set_hw_fltr_rule._entry_ptr, ptr @ice_fdir_set_hw_fltr_rule._entry_ptr.25, ptr @ice_fdir_set_hw_fltr_rule._entry_ptr.28, ptr @ice_fdir_set_hw_fltr_rule._entry_ptr.30, ptr @ice_get_ethtool_fdir_entry._entry, ptr @ice_get_ethtool_fdir_entry._entry_ptr, ptr @ice_set_fdir_input_set._entry, ptr @ice_set_fdir_input_set._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @zero_ipv6_addr_mask, ptr @full_ipv6_addr_mask, ptr @.str.33, ptr @.str.34, ptr @switch.table.ice_add_fdir_ethtool, ptr @switch.table.ice_set_fdir_input_set], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_get_ethtool_fdir_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_rem_adq_chnl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_replay_flows._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_del_fdir_ethtool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_fdir_ethtool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_fdir_ethtool._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_fdir_ethtool._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_set_hw_fltr_rule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_set_hw_fltr_rule._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_set_hw_fltr_rule._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_set_hw_fltr_rule._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_ipv6_addr_mask to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_ipv6_addr_mask to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_set_fdir_input_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_add_fdir_ethtool to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_set_fdir_input_set to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_ethtool_fdir_entry(ptr noundef %hw, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %fdir_fltr_lock = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 65
  tail call void @mutex_lock_nested(ptr noundef %fdir_fltr_lock, i32 noundef 0) #7
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %location, align 8
  %call = tail call ptr @ice_fdir_find_fltr_by_idx(ptr noundef %hw, i32 noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.release_lock_crit_edge, label %lor.lhs.false

entry.release_lock_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_lock

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %location, align 8
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 21
  %4 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fltr_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.release_lock_crit_edge

lor.lhs.false.release_lock_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_lock

if.end:                                           ; preds = %lor.lhs.false
  %flow_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flow_type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %ice_fltr_to_ethtool_flow.exit.thread286 [
    i32 2, label %if.end.sw.bb33_crit_edge
    i32 1, label %sw.bb1.i
    i32 3, label %sw.bb2.i
    i32 4, label %sw.bb
    i32 25, label %if.end.sw.bb105_crit_edge
    i32 24, label %sw.bb5.i
    i32 26, label %sw.bb6.i
    i32 27, label %sw.bb62
  ]

if.end.sw.bb105_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb105

if.end.sw.bb33_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb105

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb105

ice_fltr_to_ethtool_flow.exit.thread286:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fs, align 8
  %m_u288 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %10 = call ptr @memset(ptr %m_u288, i32 0, i32 72)
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 13, ptr %fs, align 8
  %m_u292 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_u = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %ip_ver = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u, i32 0, i32 4
  %12 = call ptr @memset(ptr %m_u292, i32 0, i32 72)
  %13 = ptrtoint ptr %ip_ver to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %ip_ver, align 1
  %proto = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u, i32 0, i32 5
  %14 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %proto, align 2
  %ip = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2
  %l4_header = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %l4_header to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %l4_header, align 4
  %l4_4_bytes = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %l4_4_bytes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %l4_4_bytes, align 4
  %tos = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tos, align 4
  %tos9 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %20 = ptrtoint ptr %tos9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tos9, align 4
  %src_ip = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %src_ip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src_ip, align 4
  %23 = ptrtoint ptr %h_u to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %h_u, align 4
  %24 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ip, align 4
  %ip4dst = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %ip4dst to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ip4dst, align 4
  %mask = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3
  %src_ip14 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %src_ip14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %src_ip14, align 4
  %29 = ptrtoint ptr %m_u292 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %m_u292, align 4
  %30 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask, align 4
  %ip4dst20 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %ip4dst20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ip4dst20, align 4
  %ip_ver22 = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u292, i32 0, i32 4
  %33 = ptrtoint ptr %ip_ver22 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %ip_ver22, align 1
  %proto24 = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u292, i32 0, i32 5
  %34 = ptrtoint ptr %proto24 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %proto24, align 2
  %l4_header26 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 3
  %35 = ptrtoint ptr %l4_header26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %l4_header26, align 4
  %l4_4_bytes28 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %37 = ptrtoint ptr %l4_4_bytes28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %l4_4_bytes28, align 4
  %tos30 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %tos30 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tos30, align 4
  %tos32 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %40 = ptrtoint ptr %tos32 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %tos32, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %sw.bb2.i, %sw.bb1.i, %if.end.sw.bb33_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %if.end.sw.bb33_crit_edge ], [ 2, %sw.bb1.i ], [ 3, %sw.bb2.i ]
  %41 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i.ph, ptr %fs, align 8
  %m_u272 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %ip34 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2
  %src_port = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip34, i32 0, i32 3
  %42 = call ptr @memset(ptr %m_u272, i32 0, i32 72)
  %43 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %src_port, align 2
  %h_u35 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %psrc = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %45 = ptrtoint ptr %psrc to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %psrc, align 4
  %dst_port = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 2
  %46 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %dst_port, align 4
  %pdst = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u35, i32 0, i32 3
  %48 = ptrtoint ptr %pdst to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %pdst, align 2
  %src_ip39 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %src_ip39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %src_ip39, align 4
  %51 = ptrtoint ptr %h_u35 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %h_u35, align 4
  %52 = ptrtoint ptr %ip34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ip34, align 4
  %ip4dst45 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %ip4dst45 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %ip4dst45, align 4
  %mask46 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3
  %src_port47 = getelementptr inbounds %struct.ice_fdir_v4, ptr %mask46, i32 0, i32 3
  %55 = ptrtoint ptr %src_port47 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %src_port47, align 2
  %psrc49 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %57 = ptrtoint ptr %psrc49 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %psrc49, align 4
  %dst_port51 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %dst_port51 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %dst_port51, align 4
  %pdst53 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u272, i32 0, i32 3
  %60 = ptrtoint ptr %pdst53 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %pdst53, align 2
  %src_ip55 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1
  %61 = ptrtoint ptr %src_ip55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %src_ip55, align 4
  %63 = ptrtoint ptr %m_u272 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %m_u272, align 4
  %64 = ptrtoint ptr %mask46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mask46, align 4
  %ip4dst61 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %66 = ptrtoint ptr %ip4dst61 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %ip4dst61, align 4
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 14, ptr %fs, align 8
  %m_u = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %ip63 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2
  %l4_header64 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 4
  %68 = call ptr @memset(ptr %m_u, i32 0, i32 72)
  %69 = ptrtoint ptr %l4_header64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %l4_header64, align 4
  %h_u65 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %l4_4_bytes66 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %71 = ptrtoint ptr %l4_4_bytes66 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %l4_4_bytes66, align 4
  %tc = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 6
  %72 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %tc, align 4
  %tclass = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 4
  %74 = ptrtoint ptr %tclass to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %tclass, align 4
  %proto70 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 7
  %75 = ptrtoint ptr %proto70 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %proto70, align 1
  %l4_proto = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %h_u65, i32 0, i32 4
  %77 = ptrtoint ptr %l4_proto to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %l4_proto, align 1
  %src_ip74 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 1
  %78 = call ptr @memcpy(ptr %h_u65, ptr %src_ip74, i32 16)
  %ip6dst = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %79 = call ptr @memcpy(ptr %ip6dst, ptr %ip63, i32 16)
  %mask84 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3
  %src_ip85 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 1
  %80 = call ptr @memcpy(ptr %m_u, ptr %src_ip85, i32 16)
  %ip6dst88 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %81 = call ptr @memcpy(ptr %ip6dst88, ptr %mask84, i32 16)
  %l4_header94 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 4
  %82 = ptrtoint ptr %l4_header94 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %l4_header94, align 4
  %l4_4_bytes96 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %84 = ptrtoint ptr %l4_4_bytes96 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %l4_4_bytes96, align 4
  %tc98 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 6
  %85 = ptrtoint ptr %tc98 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %tc98, align 4
  %tclass100 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %87 = ptrtoint ptr %tclass100 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %tclass100, align 4
  %proto102 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 7
  %88 = ptrtoint ptr %proto102 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %proto102, align 1
  %l4_proto104 = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %m_u, i32 0, i32 4
  %90 = ptrtoint ptr %l4_proto104 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %l4_proto104, align 1
  br label %sw.epilog

sw.bb105:                                         ; preds = %sw.bb6.i, %sw.bb5.i, %if.end.sw.bb105_crit_edge
  %retval.0.i.ph279 = phi i32 [ 6, %sw.bb5.i ], [ 7, %sw.bb6.i ], [ 5, %if.end.sw.bb105_crit_edge ]
  %91 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %retval.0.i.ph279, ptr %fs, align 8
  %m_u282 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_u106 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %ip109 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2
  %src_ip110 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 1
  %92 = call ptr @memset(ptr %m_u282, i32 0, i32 72)
  %93 = call ptr @memcpy(ptr %h_u106, ptr %src_ip110, i32 16)
  %ip6dst113 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %94 = call ptr @memcpy(ptr %ip6dst113, ptr %ip109, i32 16)
  %src_port119 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 3
  %95 = ptrtoint ptr %src_port119 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %src_port119, align 2
  %psrc121 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %97 = ptrtoint ptr %psrc121 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %psrc121, align 4
  %dst_port123 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 2
  %98 = ptrtoint ptr %dst_port123 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %dst_port123, align 4
  %pdst125 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 3
  %100 = ptrtoint ptr %pdst125 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %pdst125, align 2
  %mask129 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3
  %src_ip130 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 1
  %101 = call ptr @memcpy(ptr %m_u282, ptr %src_ip130, i32 16)
  %ip6dst133 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %102 = call ptr @memcpy(ptr %ip6dst133, ptr %mask129, i32 16)
  %src_port139 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 3
  %103 = ptrtoint ptr %src_port139 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %src_port139, align 2
  %psrc141 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %105 = ptrtoint ptr %psrc141 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %psrc141, align 4
  %dst_port143 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 2
  %106 = ptrtoint ptr %dst_port143 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %dst_port143, align 4
  %pdst145 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 3
  %108 = ptrtoint ptr %pdst145 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %pdst145, align 2
  %tc147 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 2, i32 0, i32 6
  %109 = ptrtoint ptr %tc147 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %tc147, align 4
  %tclass149 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 4
  %111 = ptrtoint ptr %tclass149 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %tclass149, align 4
  %tc151 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 3, i32 0, i32 6
  %112 = ptrtoint ptr %tc151 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %tc151, align 4
  %tclass153 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %114 = ptrtoint ptr %tclass153 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %tclass153, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb105, %sw.bb62, %sw.bb33, %sw.bb, %ice_fltr_to_ethtool_flow.exit.thread286
  %retval.0.i275 = phi i32 [ %retval.0.i.ph279, %sw.bb105 ], [ 14, %sw.bb62 ], [ %retval.0.i.ph, %sw.bb33 ], [ 13, %sw.bb ], [ 0, %ice_fltr_to_ethtool_flow.exit.thread286 ]
  %dest_ctl = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 17
  %115 = ptrtoint ptr %dest_ctl to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %dest_ctl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp154 = icmp eq i8 %116, 0
  br i1 %cmp154, label %sw.epilog.if.end159_crit_edge, label %if.else

sw.epilog.if.end159_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %orig_q_index = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call, i32 0, i32 15
  %117 = ptrtoint ptr %orig_q_index to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %orig_q_index, align 2
  %conv157 = zext i16 %118 to i64
  br label %if.end159

if.end159:                                        ; preds = %if.else, %sw.epilog.if.end159_crit_edge
  %conv157.sink = phi i64 [ %conv157, %if.else ], [ -1, %sw.epilog.if.end159_crit_edge ]
  %119 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv157.sink, ptr %119, align 8
  %switch.tableidx = add i32 %retval.0.i275, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %121 = icmp ult i32 %switch.tableidx, 14
  br i1 %121, label %switch.hole_check, label %if.end159.do.end_crit_edge

if.end159.do.end_crit_edge:                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.end159.do.end_crit_edge
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %122 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %124 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flow_type, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %125) #10
  br label %release_lock

switch.hole_check:                                ; preds = %if.end159
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 12407, %switch.maskindex
  %126 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %switch.lobit.not = icmp eq i16 %126, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.hole_check.release_lock_crit_edge

switch.hole_check.release_lock_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_lock

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

release_lock:                                     ; preds = %switch.hole_check.release_lock_crit_edge, %do.end, %lor.lhs.false.release_lock_crit_edge, %entry.release_lock_crit_edge
  %ret.0 = phi i32 [ -22, %do.end ], [ -22, %lor.lhs.false.release_lock_crit_edge ], [ -22, %entry.release_lock_crit_edge ], [ 0, %switch.hole_check.release_lock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %fdir_fltr_lock) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_fdir_find_fltr_by_idx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_fdir_fltr_ids(ptr noundef %hw, ptr nocapture noundef %cmd, ptr nocapture noundef writeonly %rule_locs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ice_get_fdir_cnt_all(ptr noundef %hw) #7
  %conv = sext i32 %call to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %data, align 8
  %fdir_fltr_lock = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 65
  tail call void @mutex_lock_nested(ptr noundef %fdir_fltr_lock, i32 noundef 0) #7
  %fdir_list_head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 66
  %1 = ptrtoint ptr %fdir_list_head to i32
  call void @__asan_load4_noabort(i32 %1)
  %f_rule.029 = load ptr, ptr %fdir_list_head, align 4
  %cmp.not30 = icmp eq ptr %f_rule.029, %fdir_list_head
  br i1 %cmp.not30, label %entry.if.then11_crit_edge, label %for.body.lr.ph

entry.if.then11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %f_rule.032 = phi ptr [ %f_rule.029, %for.body.lr.ph ], [ %f_rule.0, %if.end.for.body_crit_edge ]
  %cnt.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.031, i32 %4)
  %cmp3 = icmp eq i32 %cnt.031, %4
  br i1 %cmp3, label %release_lock, label %if.end

if.end:                                           ; preds = %for.body
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %f_rule.032, i32 0, i32 21
  %5 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fltr_id, align 4
  %arrayidx = getelementptr i32, ptr %rule_locs, i32 %cnt.031
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  %inc = add i32 %cnt.031, 1
  %8 = ptrtoint ptr %f_rule.032 to i32
  call void @__asan_load4_noabort(i32 %8)
  %f_rule.0 = load ptr, ptr %f_rule.032, align 4
  %cmp.not = icmp eq ptr %f_rule.0, %fdir_list_head
  br i1 %cmp.not, label %if.end.if.then11_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

release_lock:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %fdir_fltr_lock) #7
  br label %if.end12

if.then11:                                        ; preds = %if.end.if.then11_crit_edge, %entry.if.then11_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %entry.if.then11_crit_edge ], [ %inc, %if.end.if.then11_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %fdir_fltr_lock) #7
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cnt.0.lcssa, ptr %9, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %release_lock
  %val.026 = phi i32 [ 0, %if.then11 ], [ -90, %release_lock ]
  ret i32 %val.026
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_fdir_cnt_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_fdir_rem_adq_chnl(ptr noundef %hw, i16 noundef zeroext %vsi_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_prof = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 68
  %0 = ptrtoint ptr %fdir_prof to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdir_prof, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup37_crit_edge, label %for.cond.preheader

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup37

for.cond.preheader:                               ; preds = %entry
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %flow.072 = phi i32 [ 0, %for.cond.preheader ], [ %inc35, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %fdir_prof to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdir_prof, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %flow.072
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %cnt = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %for.body8.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body8.preheader:                              ; preds = %lor.lhs.false
  %conv = zext i32 %flow.072 to i64
  %8 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1167 = icmp sgt i32 %9, 0
  br i1 %cmp1167, label %for.body8.preheader.for.body13_crit_edge, label %for.body8.preheader.for.end_crit_edge

for.body8.preheader.for.end_crit_edge:            ; preds = %for.body8.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body8.preheader.for.body13_crit_edge:         ; preds = %for.body8.preheader
  br label %for.body13

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.body8.preheader.for.body13_crit_edge
  %i.068 = phi i32 [ %inc, %for.inc.for.body13_crit_edge ], [ 0, %for.body8.preheader.for.body13_crit_edge ]
  %arrayidx14 = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 3, i32 %i.068
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx14, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %vsi_idx)
  %cmp17.not = icmp eq i16 %11, %vsi_idx
  br i1 %cmp17.not, label %if.end20, label %for.inc

if.end20:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx22 = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 2, i32 %i.068, i32 0
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %arrayidx22, align 8
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %arrayidx14, align 2
  br label %for.end

for.inc:                                          ; preds = %for.body13
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body13_crit_edge

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end20, %for.body8.preheader.for.end_crit_edge
  %i.066 = phi i32 [ %i.068, %if.end20 ], [ 0, %for.body8.preheader.for.end_crit_edge ], [ %9, %for.inc.for.end_crit_edge ]
  %14 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %i.066)
  %cmp.not.i = icmp eq i32 %15, %i.066
  br i1 %cmp.not.i, label %for.end.ice_fdir_remap_entries.exit_crit_edge, label %for.cond.preheader.i

for.end.ice_fdir_remap_entries.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_fdir_remap_entries.exit

for.cond.preheader.i:                             ; preds = %for.end
  %sub35.i = add i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub35.i, i32 %i.066)
  %cmp336.i = icmp sgt i32 %sub35.i, %i.066
  br i1 %cmp336.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.037.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ %i.066, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.i = add nsw i32 %i.037.i, 1
  %arrayidx4.i = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 2, i32 %add.i, i32 0
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx4.i, align 8
  %arrayidx7.i = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 2, i32 %i.037.i, i32 0
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %arrayidx7.i, align 8
  %arrayidx9.i = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 3, i32 %add.i
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx9.i, align 2
  %arrayidx11.i = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 3, i32 %i.037.i
  %21 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx11.i, align 2
  %22 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cnt, align 8
  %sub.i = add i32 %23, -1
  %cmp3.i = icmp slt i32 %add.i, %sub.i
  br i1 %cmp3.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.066, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  %arrayidx14.i = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 2, i32 %i.0.lcssa.i, i32 0
  %24 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %arrayidx14.i, align 8
  %arrayidx16.i = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 3, i32 %i.0.lcssa.i
  %25 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %arrayidx16.i, align 2
  br label %ice_fdir_remap_entries.exit

ice_fdir_remap_entries.exit:                      ; preds = %for.end.i, %for.end.ice_fdir_remap_entries.exit_crit_edge
  %call = tail call i32 @ice_flow_rem_vsi_prof(ptr noundef %hw, i16 noundef zeroext %vsi_idx, i64 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool25.not = icmp eq i32 %call, 0
  br i1 %tobool25.not, label %ice_fdir_remap_entries.exit.if.end27_crit_edge, label %do.end

ice_fdir_remap_entries.exit.if.end27_crit_edge:   ; preds = %ice_fdir_remap_entries.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end:                                           ; preds = %ice_fdir_remap_entries.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end, %ice_fdir_remap_entries.exit.if.end27_crit_edge
  %add.1 = add nuw nsw i32 %flow.072, 28
  %conv.1 = zext i32 %add.1 to i64
  %28 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1167.1 = icmp sgt i32 %29, 0
  br i1 %cmp1167.1, label %if.end27.for.body13.1_crit_edge, label %if.end27.for.end.1_crit_edge

if.end27.for.end.1_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1

if.end27.for.body13.1_crit_edge:                  ; preds = %if.end27
  br label %for.body13.1

for.body13.1:                                     ; preds = %for.inc.1.for.body13.1_crit_edge, %if.end27.for.body13.1_crit_edge
  %i.068.1 = phi i32 [ %inc.1, %for.inc.1.for.body13.1_crit_edge ], [ 0, %if.end27.for.body13.1_crit_edge ]
  %arrayidx14.1 = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 3, i32 %i.068.1
  %30 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx14.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %vsi_idx)
  %cmp17.not.1 = icmp eq i16 %31, %vsi_idx
  br i1 %cmp17.not.1, label %if.end20.1, label %for.inc.1

for.inc.1:                                        ; preds = %for.body13.1
  %inc.1 = add nuw nsw i32 %i.068.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %29
  br i1 %exitcond.1.not, label %for.inc.1.for.end.1_crit_edge, label %for.inc.1.for.body13.1_crit_edge

for.inc.1.for.body13.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13.1

for.inc.1.for.end.1_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1

if.end20.1:                                       ; preds = %for.body13.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx22.1 = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 2, i32 %i.068.1, i32 1
  %32 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %arrayidx22.1, align 8
  %33 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %arrayidx14.1, align 2
  br label %for.end.1

for.end.1:                                        ; preds = %if.end20.1, %for.inc.1.for.end.1_crit_edge, %if.end27.for.end.1_crit_edge
  %i.066.1 = phi i32 [ %i.068.1, %if.end20.1 ], [ 0, %if.end27.for.end.1_crit_edge ], [ %29, %for.inc.1.for.end.1_crit_edge ]
  %34 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %i.066.1)
  %cmp.not.i.1 = icmp eq i32 %35, %i.066.1
  br i1 %cmp.not.i.1, label %for.end.1.ice_fdir_remap_entries.exit.1_crit_edge, label %for.cond.preheader.i.1

for.end.1.ice_fdir_remap_entries.exit.1_crit_edge: ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_fdir_remap_entries.exit.1

for.cond.preheader.i.1:                           ; preds = %for.end.1
  %sub35.i.1 = add i32 %35, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub35.i.1, i32 %i.066.1)
  %cmp336.i.1 = icmp sgt i32 %sub35.i.1, %i.066.1
  br i1 %cmp336.i.1, label %for.cond.preheader.i.1.for.body.i.1_crit_edge, label %for.cond.preheader.i.1.for.end.i.1_crit_edge

for.cond.preheader.i.1.for.end.i.1_crit_edge:     ; preds = %for.cond.preheader.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.1

for.cond.preheader.i.1.for.body.i.1_crit_edge:    ; preds = %for.cond.preheader.i.1
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %for.cond.preheader.i.1.for.body.i.1_crit_edge
  %i.037.i.1 = phi i32 [ %add.i.1, %for.body.i.1.for.body.i.1_crit_edge ], [ %i.066.1, %for.cond.preheader.i.1.for.body.i.1_crit_edge ]
  %add.i.1 = add nsw i32 %i.037.i.1, 1
  %arrayidx4.i.1 = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 2, i32 %add.i.1, i32 1
  %36 = ptrtoint ptr %arrayidx4.i.1 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx4.i.1, align 8
  %arrayidx7.i.1 = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 2, i32 %i.037.i.1, i32 1
  %38 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx7.i.1, align 8
  %arrayidx9.i.1 = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 3, i32 %add.i.1
  %39 = ptrtoint ptr %arrayidx9.i.1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx9.i.1, align 2
  %arrayidx11.i.1 = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 3, i32 %i.037.i.1
  %41 = ptrtoint ptr %arrayidx11.i.1 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx11.i.1, align 2
  %42 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cnt, align 8
  %sub.i.1 = add i32 %43, -1
  %cmp3.i.1 = icmp slt i32 %add.i.1, %sub.i.1
  br i1 %cmp3.i.1, label %for.body.i.1.for.body.i.1_crit_edge, label %for.body.i.1.for.end.i.1_crit_edge

for.body.i.1.for.end.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.1

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.1

for.end.i.1:                                      ; preds = %for.body.i.1.for.end.i.1_crit_edge, %for.cond.preheader.i.1.for.end.i.1_crit_edge
  %i.0.lcssa.i.1 = phi i32 [ %i.066.1, %for.cond.preheader.i.1.for.end.i.1_crit_edge ], [ %add.i.1, %for.body.i.1.for.end.i.1_crit_edge ]
  %arrayidx14.i.1 = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 2, i32 %i.0.lcssa.i.1, i32 1
  %44 = ptrtoint ptr %arrayidx14.i.1 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %arrayidx14.i.1, align 8
  %arrayidx16.i.1 = getelementptr %struct.ice_fd_hw_prof, ptr %5, i32 0, i32 3, i32 %i.0.lcssa.i.1
  %45 = ptrtoint ptr %arrayidx16.i.1 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %arrayidx16.i.1, align 2
  br label %ice_fdir_remap_entries.exit.1

ice_fdir_remap_entries.exit.1:                    ; preds = %for.end.i.1, %for.end.1.ice_fdir_remap_entries.exit.1_crit_edge
  %call.1 = tail call i32 @ice_flow_rem_vsi_prof(ptr noundef %hw, i16 noundef zeroext %vsi_idx, i64 noundef %conv.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool25.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool25.not.1, label %ice_fdir_remap_entries.exit.1.if.end27.1_crit_edge, label %do.end.1

ice_fdir_remap_entries.exit.1.if.end27.1_crit_edge: ; preds = %ice_fdir_remap_entries.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.1

do.end.1:                                         ; preds = %ice_fdir_remap_entries.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 8
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.1, ptr noundef nonnull @.str.5, i32 noundef %call.1) #10
  br label %if.end27.1

if.end27.1:                                       ; preds = %do.end.1, %ice_fdir_remap_entries.exit.1.if.end27.1_crit_edge
  %48 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cnt, align 8
  %dec = add i32 %49, -1
  store i32 %dec, ptr %cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end27.1, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc35 = add nuw nsw i32 %flow.072, 1
  %exitcond77.not = icmp eq i32 %inc35, 28
  br i1 %exitcond77.not, label %cleanup.cleanup37_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.cleanup37_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_flow_rem_vsi_prof(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_fdir_release_flows(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 0)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 1)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 2)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 3)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 4)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 5)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 6)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 7)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 8)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 9)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 10)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 11)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 12)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 13)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 14)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 15)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 16)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 17)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 18)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 19)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 20)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 21)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 22)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 23)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 24)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 25)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 26)
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef 27)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw, i32 noundef %flow) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_prof.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 68
  %0 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdir_prof.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup26_crit_edge, label %ice_fdir_get_hw_prof.exit

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

ice_fdir_get_hw_prof.exit:                        ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %flow
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ice_fdir_get_hw_prof.exit.cleanup26_crit_edge, label %for.cond.preheader

ice_fdir_get_hw_prof.exit.cleanup26_crit_edge:    ; preds = %ice_fdir_get_hw_prof.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

for.cond.preheader:                               ; preds = %ice_fdir_get_hw_prof.exit
  %cnt = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %3, i32 0, i32 1
  %conv = sext i32 %flow to i64
  %4 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23 = icmp sgt i32 %5, 0
  br i1 %cmp23, label %for.cond.preheader.for.body4_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body4_crit_edge:           ; preds = %for.cond.preheader
  br label %for.body4

for.body4:                                        ; preds = %cleanup.for.body4_crit_edge, %for.cond.preheader.for.body4_crit_edge
  %j.04 = phi i32 [ %inc, %cleanup.for.body4_crit_edge ], [ 0, %for.cond.preheader.for.body4_crit_edge ]
  %arrayidx5 = getelementptr %struct.ice_fd_hw_prof, ptr %3, i32 0, i32 2, i32 %j.04, i32 0
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool6.not = icmp eq i64 %7, 0
  br i1 %tobool6.not, label %for.body4.cleanup_crit_edge, label %lor.lhs.false

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body4
  %arrayidx7 = getelementptr %struct.ice_fd_hw_prof, ptr %3, i32 0, i32 3, i32 %j.04
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool8.not = icmp eq i16 %9, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %9) #7
  %call14 = tail call i32 @ice_rem_prof_id_flow(ptr noundef %hw, i32 noundef 2, i16 noundef zeroext %call13, i64 noundef %conv) #7
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx5, align 8
  %call18 = tail call i32 @ice_flow_rem_entry(ptr noundef %hw, i32 noundef 2, i64 noundef %11) #7
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %arrayidx5, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lor.lhs.false.cleanup_crit_edge, %for.body4.cleanup_crit_edge
  %inc = add nuw nsw i32 %j.04, 1
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnt, align 8
  %cmp2 = icmp slt i32 %inc, %14
  br i1 %cmp2, label %cleanup.for.body4_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body4_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call22 = tail call i32 @ice_flow_rem_prof(ptr noundef %hw, i32 noundef 2, i64 noundef %conv) #7
  %add.1 = add i32 %flow, 28
  %conv.1 = sext i32 %add.1 to i64
  %15 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23.1 = icmp sgt i32 %16, 0
  br i1 %cmp23.1, label %for.end.for.body4.1_crit_edge, label %for.end.for.end.1_crit_edge

for.end.for.end.1_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1

for.end.for.body4.1_crit_edge:                    ; preds = %for.end
  br label %for.body4.1

for.body4.1:                                      ; preds = %cleanup.1.for.body4.1_crit_edge, %for.end.for.body4.1_crit_edge
  %j.04.1 = phi i32 [ %inc.1, %cleanup.1.for.body4.1_crit_edge ], [ 0, %for.end.for.body4.1_crit_edge ]
  %arrayidx5.1 = getelementptr %struct.ice_fd_hw_prof, ptr %3, i32 0, i32 2, i32 %j.04.1, i32 1
  %17 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx5.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool6.not.1 = icmp eq i64 %18, 0
  br i1 %tobool6.not.1, label %for.body4.1.cleanup.1_crit_edge, label %lor.lhs.false.1

for.body4.1.cleanup.1_crit_edge:                  ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

lor.lhs.false.1:                                  ; preds = %for.body4.1
  %arrayidx7.1 = getelementptr %struct.ice_fd_hw_prof, ptr %3, i32 0, i32 3, i32 %j.04.1
  %19 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx7.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool8.not.1 = icmp eq i16 %20, 0
  br i1 %tobool8.not.1, label %lor.lhs.false.1.cleanup.1_crit_edge, label %if.end10.1

lor.lhs.false.1.cleanup.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.end10.1:                                       ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #9
  %call13.1 = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %20) #7
  %call14.1 = tail call i32 @ice_rem_prof_id_flow(ptr noundef %hw, i32 noundef 2, i16 noundef zeroext %call13.1, i64 noundef %conv.1) #7
  %21 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx5.1, align 8
  %call18.1 = tail call i32 @ice_flow_rem_entry(ptr noundef %hw, i32 noundef 2, i64 noundef %22) #7
  %23 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %arrayidx5.1, align 8
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end10.1, %lor.lhs.false.1.cleanup.1_crit_edge, %for.body4.1.cleanup.1_crit_edge
  %inc.1 = add nuw nsw i32 %j.04.1, 1
  %24 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cnt, align 8
  %cmp2.1 = icmp slt i32 %inc.1, %25
  br i1 %cmp2.1, label %cleanup.1.for.body4.1_crit_edge, label %cleanup.1.for.end.1_crit_edge

cleanup.1.for.end.1_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1

cleanup.1.for.body4.1_crit_edge:                  ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.1

for.end.1:                                        ; preds = %cleanup.1.for.end.1_crit_edge, %for.end.for.end.1_crit_edge
  %call22.1 = tail call i32 @ice_flow_rem_prof(ptr noundef %hw, i32 noundef 2, i64 noundef %conv.1) #7
  br label %cleanup26

cleanup26:                                        ; preds = %for.end.1, %ice_fdir_get_hw_prof.exit.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_fdir_replay_flows(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %hw_prof = alloca ptr, align 4
  %entry_h = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_prof = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 68
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %cleanup34.for.body_crit_edge, %entry
  %flow.069 = phi i32 [ 0, %entry ], [ %inc38, %cleanup34.for.body_crit_edge ]
  %0 = ptrtoint ptr %fdir_prof to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdir_prof, align 8
  %arrayidx = getelementptr ptr, ptr %1, i32 %flow.069
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.cleanup34_crit_edge, label %lor.lhs.false

for.body.cleanup34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

lor.lhs.false:                                    ; preds = %for.body
  %cnt = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup34_crit_edge, label %for.body6.preheader

lor.lhs.false.cleanup34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

for.body6.preheader:                              ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_prof) #7
  %6 = ptrtoint ptr %hw_prof to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %hw_prof, align 4, !annotation !74
  %7 = ptrtoint ptr %fdir_prof to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fdir_prof, align 8
  %arrayidx8 = getelementptr ptr, ptr %8, i32 %flow.069
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx8, align 4
  %conv = zext i32 %flow.069 to i64
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call = call i32 @ice_flow_add_prof(ptr noundef %hw, i32 noundef 2, i32 noundef 2, i64 noundef %conv, ptr noundef %12, i8 noundef zeroext 1, ptr noundef nonnull %hw_prof) #7
  %cnt13 = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %cnt13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnt13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1465 = icmp sgt i32 %14, 0
  br i1 %cmp1465, label %for.body16.lr.ph, label %for.body6.preheader.for.end_crit_edge

for.body6.preheader.for.end_crit_edge:            ; preds = %for.body6.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body16.lr.ph:                                 ; preds = %for.body6.preheader
  %vsi_h = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %10, i32 0, i32 3
  br label %for.body16

for.body16:                                       ; preds = %cleanup.for.body16_crit_edge, %for.body16.lr.ph
  %j.066 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc, %cleanup.for.body16_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry_h) #7
  %15 = ptrtoint ptr %entry_h to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %entry_h, align 8
  %16 = ptrtoint ptr %vsi_h to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vsi_h, align 8
  %conv18 = zext i16 %17 to i64
  %arrayidx20 = getelementptr %struct.ice_fd_hw_prof, ptr %10, i32 0, i32 3, i32 %j.066
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx20, align 2
  %call22 = call i32 @ice_flow_add_entry(ptr noundef %hw, i32 noundef 2, i64 noundef %conv, i64 noundef %conv18, i16 noundef zeroext %19, i32 noundef 1, ptr noundef %10, ptr noundef nonnull %entry_h) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %do.end

do.end:                                           ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %flow.069) #10
  br label %cleanup

if.end25:                                         ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %entry_h to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %entry_h, align 8
  %arrayidx28 = getelementptr %struct.ice_fd_hw_prof, ptr %10, i32 0, i32 2, i32 %j.066, i32 0
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx28, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry_h) #7
  %inc = add nuw nsw i32 %j.066, 1
  %25 = ptrtoint ptr %cnt13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cnt13, align 8
  %cmp14 = icmp slt i32 %inc, %26
  br i1 %cmp14, label %cleanup.for.body16_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body16_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.body6.preheader.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_prof) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_prof) #7
  %27 = ptrtoint ptr %hw_prof to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %hw_prof, align 4, !annotation !74
  %28 = ptrtoint ptr %fdir_prof to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fdir_prof, align 8
  %arrayidx8.1 = getelementptr ptr, ptr %29, i32 %flow.069
  %30 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx8.1, align 4
  %add.1 = add nuw nsw i32 %flow.069, 28
  %conv.1 = zext i32 %add.1 to i64
  %arrayidx9.1 = getelementptr [2 x ptr], ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx9.1, align 4
  %call.1 = call i32 @ice_flow_add_prof(ptr noundef %hw, i32 noundef 2, i32 noundef 2, i64 noundef %conv.1, ptr noundef %33, i8 noundef zeroext 2, ptr noundef nonnull %hw_prof) #7
  %cnt13.1 = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %cnt13.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cnt13.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp1465.1 = icmp sgt i32 %35, 0
  br i1 %cmp1465.1, label %for.body16.lr.ph.1, label %for.end.for.end.1_crit_edge

for.end.for.end.1_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1

for.body16.lr.ph.1:                               ; preds = %for.end
  %vsi_h.1 = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %31, i32 0, i32 3
  br label %for.body16.1

for.body16.1:                                     ; preds = %cleanup.1.for.body16.1_crit_edge, %for.body16.lr.ph.1
  %j.066.1 = phi i32 [ 0, %for.body16.lr.ph.1 ], [ %inc.1, %cleanup.1.for.body16.1_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry_h) #7
  %36 = ptrtoint ptr %entry_h to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %entry_h, align 8
  %37 = ptrtoint ptr %vsi_h.1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vsi_h.1, align 8
  %conv18.1 = zext i16 %38 to i64
  %arrayidx20.1 = getelementptr %struct.ice_fd_hw_prof, ptr %31, i32 0, i32 3, i32 %j.066.1
  %39 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx20.1, align 2
  %call22.1 = call i32 @ice_flow_add_entry(ptr noundef %hw, i32 noundef 2, i64 noundef %conv.1, i64 noundef %conv18.1, i16 noundef zeroext %40, i32 noundef 1, ptr noundef %31, ptr noundef nonnull %entry_h) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.1)
  %tobool23.not.1 = icmp eq i32 %call22.1, 0
  br i1 %tobool23.not.1, label %if.end25.1, label %do.end.1

do.end.1:                                         ; preds = %for.body16.1
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 8
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.1, ptr noundef nonnull @.str.7, i32 noundef %flow.069) #10
  br label %cleanup.1

if.end25.1:                                       ; preds = %for.body16.1
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %entry_h to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %entry_h, align 8
  %arrayidx28.1 = getelementptr %struct.ice_fd_hw_prof, ptr %31, i32 0, i32 2, i32 %j.066.1, i32 1
  %45 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %arrayidx28.1, align 8
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end25.1, %do.end.1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry_h) #7
  %inc.1 = add nuw nsw i32 %j.066.1, 1
  %46 = ptrtoint ptr %cnt13.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cnt13.1, align 8
  %cmp14.1 = icmp slt i32 %inc.1, %47
  br i1 %cmp14.1, label %cleanup.1.for.body16.1_crit_edge, label %cleanup.1.for.end.1_crit_edge

cleanup.1.for.end.1_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1

cleanup.1.for.body16.1_crit_edge:                 ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16.1

for.end.1:                                        ; preds = %cleanup.1.for.end.1_crit_edge, %for.end.for.end.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_prof) #7
  br label %cleanup34

cleanup34:                                        ; preds = %for.end.1, %lor.lhs.false.cleanup34_crit_edge, %for.body.cleanup34_crit_edge
  %inc38 = add nuw nsw i32 %flow.069, 1
  %exitcond.not = icmp eq i32 %inc38, 28
  br i1 %exitcond.not, label %for.end39, label %cleanup34.for.body_crit_edge

cleanup34.for.body_crit_edge:                     ; preds = %cleanup34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end39:                                        ; preds = %cleanup34
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_flow_add_prof(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_flow_add_entry(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fdir_write_fltr(ptr noundef %pf, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext %is_tun) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_fltr_desc, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %hw3 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc) #7
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %2 = call ptr @memset(ptr %desc, i32 255, i32 16)
  %3 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %ctrl_vsi_idx.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 8
  %5 = ptrtoint ptr %ctrl_vsi_idx.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ctrl_vsi_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp.i = icmp eq i16 %6, -1
  br i1 %cmp.i, label %lor.lhs.false.i.cleanup_crit_edge, label %ice_get_ctrl_vsi.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ice_get_ctrl_vsi.exit:                            ; preds = %lor.lhs.false.i
  %conv.i = zext i16 %6 to i32
  %arrayidx.i = getelementptr ptr, ptr %4, i32 %conv.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %ice_get_ctrl_vsi.exit.cleanup_crit_edge, label %if.end

ice_get_ctrl_vsi.exit.cleanup_crit_edge:          ; preds = %ice_get_ctrl_vsi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ice_get_ctrl_vsi.exit
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 562, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i75 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 562, i32 noundef 3520) #7
  %tobool9.not = icmp eq ptr %call.i75, null
  br i1 %tobool9.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.end11

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end7
  call void @ice_fdir_get_prgm_desc(ptr noundef %hw3, ptr noundef %input, ptr noundef nonnull %desc, i1 noundef zeroext %add) #7
  %call14 = call i32 @ice_fdir_get_gen_prgm_pkt(ptr noundef %hw3, ptr noundef %input, ptr noundef nonnull %call.i, i1 noundef zeroext false, i1 noundef zeroext %is_tun) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.err_free_all_crit_edge

if.end11.err_free_all_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_all

if.end17:                                         ; preds = %if.end11
  %call18 = call i32 @ice_prgm_fdir_fltr(ptr noundef nonnull %8, ptr noundef nonnull %desc, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err_free_all_crit_edge

if.end17.err_free_all_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_all

if.end21:                                         ; preds = %if.end17
  %flow_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 1
  %9 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flow_type, align 4
  %call22 = call zeroext i1 @ice_fdir_has_frag(i32 noundef %10) #7
  br i1 %call22, label %if.then25, label %if.end21.cleanup.sink.split_crit_edge

if.end21.cleanup.sink.split_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then25:                                        ; preds = %if.end21
  call void @ice_fdir_get_prgm_desc(ptr noundef %hw3, ptr noundef %input, ptr noundef nonnull %desc, i1 noundef zeroext %add) #7
  %call28 = call i32 @ice_fdir_get_gen_prgm_pkt(ptr noundef %hw3, ptr noundef %input, ptr noundef nonnull %call.i75, i1 noundef zeroext true, i1 noundef zeroext %is_tun) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then25.cleanup.sink.split_crit_edge

if.then25.cleanup.sink.split_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.then25
  %call32 = call i32 @ice_prgm_fdir_fltr(ptr noundef nonnull %8, ptr noundef nonnull %desc, ptr noundef nonnull %call.i75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end31.cleanup.sink.split_crit_edge

if.end31.cleanup.sink.split_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_free_all:                                     ; preds = %if.end17.err_free_all_crit_edge, %if.end11.err_free_all_crit_edge
  %err.0 = phi i32 [ %call14, %if.end11.err_free_all_crit_edge ], [ %call18, %if.end17.err_free_all_crit_edge ]
  call void @devm_kfree(ptr noundef %dev2, ptr noundef nonnull %call.i75) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_free_all, %if.end31.cleanup.sink.split_crit_edge, %if.then25.cleanup.sink.split_crit_edge, %if.end21.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge
  %call.i75.sink = phi ptr [ %call.i75, %if.end21.cleanup.sink.split_crit_edge ], [ %call.i, %if.end7.cleanup.sink.split_crit_edge ], [ %call.i, %err_free_all ], [ %call.i75, %if.end31.cleanup.sink.split_crit_edge ], [ %call.i75, %if.then25.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end21.cleanup.sink.split_crit_edge ], [ -12, %if.end7.cleanup.sink.split_crit_edge ], [ %err.0, %err_free_all ], [ %call32, %if.end31.cleanup.sink.split_crit_edge ], [ %call28, %if.then25.cleanup.sink.split_crit_edge ]
  call void @devm_kfree(ptr noundef %dev2, ptr noundef nonnull %call.i75.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end31.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ice_get_ctrl_vsi.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %ice_get_ctrl_vsi.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fdir_get_prgm_desc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_fdir_get_gen_prgm_pkt(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_prgm_fdir_fltr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_fdir_has_frag(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_fdir_replay_fltrs(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  %port_num.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_list_head = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 66
  %0 = ptrtoint ptr %fdir_list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %f_rule.027 = load ptr, ptr %fdir_list_head, align 4
  %cmp.not28 = icmp eq ptr %f_rule.027, %fdir_list_head
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %f_rule.029 = phi ptr [ %f_rule.027, %for.body.lr.ph ], [ %f_rule.0, %if.end10.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port_num.i) #7
  %1 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %port_num.i, align 2, !annotation !74
  %call5.i = call i32 @ice_fdir_write_fltr(ptr noundef %pf, ptr noundef %f_rule.029, i1 noundef zeroext true, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.1.i, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true.1.i:                                ; preds = %for.body
  %call.1.i = call zeroext i1 @ice_get_open_tunnel_port(ptr noundef %hw.i, ptr noundef nonnull %port_num.i, i32 noundef 255) #7
  br i1 %call.1.i, label %if.end.1.i, label %land.lhs.true.1.i.ice_fdir_write_all_fltr.exit_crit_edge

land.lhs.true.1.i.ice_fdir_write_all_fltr.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_fdir_write_all_fltr.exit

if.end.1.i:                                       ; preds = %land.lhs.true.1.i
  %call5.1.i = call i32 @ice_fdir_write_fltr(ptr noundef %pf, ptr noundef %f_rule.029, i1 noundef zeroext true, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1.i)
  %tobool6.not.1.i = icmp eq i32 %call5.1.i, 0
  br i1 %tobool6.not.1.i, label %if.end.1.i.ice_fdir_write_all_fltr.exit_crit_edge, label %if.end.1.i.do.body_crit_edge

if.end.1.i.do.body_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.1.i.ice_fdir_write_all_fltr.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_fdir_write_all_fltr.exit

ice_fdir_write_all_fltr.exit:                     ; preds = %if.end.1.i.ice_fdir_write_all_fltr.exit_crit_edge, %land.lhs.true.1.i.ice_fdir_write_all_fltr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_num.i) #7
  br label %if.end10

do.body:                                          ; preds = %if.end.1.i.do.body_crit_edge, %for.body.do.body_crit_edge
  %retval.2.i.ph = phi i32 [ %call5.1.i, %if.end.1.i.do.body_crit_edge ], [ %call5.i, %for.body.do.body_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_num.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_fdir_replay_fltrs.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_fdir_replay_fltrs, %if.then9)) #7
          to label %if.end10 [label %if.then9], !srcloc !75

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %f_rule.029, i32 0, i32 21
  %4 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fltr_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_fdir_replay_fltrs.__UNIQUE_ID_ddebug613, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %retval.2.i.ph, i32 noundef %5) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.body, %ice_fdir_write_all_fltr.exit
  %6 = ptrtoint ptr %f_rule.029 to i32
  call void @__asan_load4_noabort(i32 %6)
  %f_rule.0 = load ptr, ptr %f_rule.029, align 4
  %cmp.not = icmp eq ptr %f_rule.0, %fdir_list_head
  br i1 %cmp.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_fdir_write_all_fltr(ptr noundef %pf, ptr noundef %input, i1 noundef zeroext %add) unnamed_addr #0 align 64 {
if.end:
  %port_num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port_num) #7
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %port_num, align 2, !annotation !74
  %call5 = call i32 @ice_fdir_write_fltr(ptr noundef %pf, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.1, label %if.end.cleanup10_crit_edge

if.end.cleanup10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

land.lhs.true.1:                                  ; preds = %if.end
  %hw = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %call.1 = call zeroext i1 @ice_get_open_tunnel_port(ptr noundef %hw, ptr noundef nonnull %port_num, i32 noundef 255) #7
  br i1 %call.1, label %if.end.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %land.lhs.true.1
  %call5.1 = call i32 @ice_fdir_write_fltr(ptr noundef %pf, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %if.end.1.for.inc.1_crit_edge, label %if.end.1.cleanup10_crit_edge

if.end.1.cleanup10_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge
  br label %cleanup10

cleanup10:                                        ; preds = %for.inc.1, %if.end.1.cleanup10_crit_edge, %if.end.cleanup10_crit_edge
  %retval.2 = phi i32 [ %call5, %if.end.cleanup10_crit_edge ], [ %call5.1, %if.end.1.cleanup10_crit_edge ], [ 0, %for.inc.1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_num) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fdir_create_dflt_rules(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_create_init_fdir_rule(ptr noundef %pf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @ice_create_init_fdir_rule(ptr noundef %pf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @ice_create_init_fdir_rule(ptr noundef %pf, i32 noundef 25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc i32 @ice_create_init_fdir_rule(ptr noundef %pf, i32 noundef 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_create_init_fdir_rule(ptr noundef %pf, i32 noundef %flow) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %fdir_prof = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 68
  %2 = ptrtoint ptr %fdir_prof to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdir_prof, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %3, i32 %flow
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %land.lhs.true5.if.end_crit_edge, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1096, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2192, i32 noundef 3520) #7
  %tobool14.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %call.i) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %8 = zext i32 %flow to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %flow, label %if.end16.err_exit_crit_edge [
    i32 2, label %if.end16.if.end37_crit_edge
    i32 1, label %ice_set_init_fdir_seg.exit90
    i32 25, label %ice_set_init_fdir_seg.exit95
    i32 24, label %ice_set_init_fdir_seg.exit100
  ]

if.end16.if.end37_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end16.err_exit_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

ice_set_init_fdir_seg.exit90:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

ice_set_init_fdir_seg.exit95:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

ice_set_init_fdir_seg.exit100:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end37:                                         ; preds = %ice_set_init_fdir_seg.exit100, %ice_set_init_fdir_seg.exit95, %ice_set_init_fdir_seg.exit90, %if.end16.if.end37_crit_edge
  %.sink107 = phi i32 [ 132, %ice_set_init_fdir_seg.exit90 ], [ 72, %ice_set_init_fdir_seg.exit95 ], [ 136, %ice_set_init_fdir_seg.exit100 ], [ 68, %if.end16.if.end37_crit_edge ]
  %.sink105 = phi i32 [ 11, %ice_set_init_fdir_seg.exit90 ], [ 13, %ice_set_init_fdir_seg.exit95 ], [ 13, %ice_set_init_fdir_seg.exit100 ], [ 11, %if.end16.if.end37_crit_edge ]
  %.sink104 = phi i32 [ 12, %ice_set_init_fdir_seg.exit90 ], [ 14, %ice_set_init_fdir_seg.exit95 ], [ 14, %ice_set_init_fdir_seg.exit100 ], [ 12, %if.end16.if.end37_crit_edge ]
  %.sink103 = phi i32 [ 17, %ice_set_init_fdir_seg.exit90 ], [ 15, %ice_set_init_fdir_seg.exit95 ], [ 17, %ice_set_init_fdir_seg.exit100 ], [ 15, %if.end16.if.end37_crit_edge ]
  %.sink = phi i32 [ 18, %ice_set_init_fdir_seg.exit90 ], [ 16, %ice_set_init_fdir_seg.exit95 ], [ 18, %ice_set_init_fdir_seg.exit100 ], [ 16, %if.end16.if.end37_crit_edge ]
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i, align 8
  %or15.i = or i32 %10, %.sink107
  store i32 %or15.i, ptr %call.i, align 8
  tail call void @ice_flow_set_fld(ptr noundef nonnull %call.i, i32 noundef %.sink105, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  tail call void @ice_flow_set_fld(ptr noundef nonnull %call.i, i32 noundef %.sink104, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  tail call void @ice_flow_set_fld(ptr noundef nonnull %call.i, i32 noundef %.sink103, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  tail call void @ice_flow_set_fld(ptr noundef nonnull %call.i, i32 noundef %.sink, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  %call38 = tail call fastcc i32 @ice_fdir_set_hw_fltr_rule(ptr noundef %pf, ptr noundef nonnull %call.i, i32 noundef %flow, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.err_exit_crit_edge

if.end37.err_exit_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.end41:                                         ; preds = %if.end37
  %arrayidx42 = getelementptr %struct.ice_flow_seg_info, ptr %call5.i.i, i32 1
  %11 = call ptr @memcpy(ptr %arrayidx42, ptr %call.i, i32 1096)
  %call43 = tail call fastcc i32 @ice_fdir_set_hw_fltr_rule(ptr noundef %pf, ptr noundef nonnull %call5.i.i, i32 noundef %flow, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end41.if.end46_crit_edge, label %if.then45

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %call5.i.i) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41.if.end46_crit_edge
  %fdir_perfect_fltr = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 69
  tail call void @_set_bit(i32 noundef %flow, ptr noundef %fdir_perfect_fltr) #7
  br label %cleanup

err_exit:                                         ; preds = %if.end37.err_exit_crit_edge, %if.end16.err_exit_crit_edge
  tail call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %call5.i.i) #7
  tail call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %if.end46, %if.then15, %if.end.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %err_exit ], [ %call43, %if.end46 ], [ -12, %if.then15 ], [ -22, %land.lhs.true5.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_fdir_del_all_fltrs(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  %port_num.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %fdir_list_head = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58, i32 66
  %2 = ptrtoint ptr %fdir_list_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdir_list_head, align 8
  %cmp.not25 = icmp eq ptr %3, %fdir_list_head
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %f_rule.026 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %f_rule.026 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0 = load ptr, ptr %f_rule.026, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port_num.i) #7
  %5 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %port_num.i, align 2, !annotation !74
  %call5.i = call i32 @ice_fdir_write_fltr(ptr noundef %1, ptr noundef %f_rule.026, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.1.i, label %for.body.ice_fdir_write_all_fltr.exit_crit_edge

for.body.ice_fdir_write_all_fltr.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_fdir_write_all_fltr.exit

land.lhs.true.1.i:                                ; preds = %for.body
  %call.1.i = call zeroext i1 @ice_get_open_tunnel_port(ptr noundef %hw1, ptr noundef nonnull %port_num.i, i32 noundef 255) #7
  br i1 %call.1.i, label %if.end.1.i, label %land.lhs.true.1.i.ice_fdir_write_all_fltr.exit_crit_edge

land.lhs.true.1.i.ice_fdir_write_all_fltr.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_fdir_write_all_fltr.exit

if.end.1.i:                                       ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.1.i = call i32 @ice_fdir_write_fltr(ptr noundef %1, ptr noundef %f_rule.026, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %ice_fdir_write_all_fltr.exit

ice_fdir_write_all_fltr.exit:                     ; preds = %if.end.1.i, %land.lhs.true.1.i.ice_fdir_write_all_fltr.exit_crit_edge, %for.body.ice_fdir_write_all_fltr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_num.i) #7
  %flow_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %f_rule.026, i32 0, i32 1
  %6 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flow_type, align 4
  call void @ice_fdir_update_cntrs(ptr noundef %hw1, i32 noundef %7, i1 noundef zeroext false) #7
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %f_rule.026) #7
  br i1 %call.i.i, label %if.end.i.i, label %ice_fdir_write_all_fltr.exit.list_del.exit_crit_edge

ice_fdir_write_all_fltr.exit.list_del.exit_crit_edge: ; preds = %ice_fdir_write_all_fltr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %ice_fdir_write_all_fltr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %f_rule.026, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %f_rule.026 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_rule.026, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %ice_fdir_write_all_fltr.exit.list_del.exit_crit_edge
  %14 = ptrtoint ptr %f_rule.026 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %f_rule.026, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %f_rule.026, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev, ptr noundef %f_rule.026) #7
  %cmp.not = icmp eq ptr %tmp.0, %fdir_list_head
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fdir_update_cntrs(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_vsi_manage_fdir(ptr nocapture noundef readonly %vsi, i1 noundef zeroext %ena) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  br i1 %ena, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #7
  %call.i = tail call fastcc i32 @ice_create_init_fdir_rule(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call fastcc i32 @ice_create_init_fdir_rule(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call fastcc i32 @ice_create_init_fdir_rule(ptr noundef %1, i32 noundef 25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call fastcc i32 @ice_create_init_fdir_rule(ptr noundef %1, i32 noundef 24) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %fdir_fltr_lock = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58, i32 65
  tail call void @mutex_lock_nested(ptr noundef %fdir_fltr_lock, i32 noundef 0) #7
  %flags2 = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 21
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flags2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.release_lock_crit_edge, label %if.end7

if.end.release_lock_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_lock

if.end7:                                          ; preds = %if.end
  tail call void @ice_fdir_del_all_fltrs(ptr noundef %vsi)
  %fdir_prof = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58, i32 68
  %2 = ptrtoint ptr %fdir_prof to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdir_prof, align 8
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.end7.release_lock_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.release_lock_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_lock

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %flow.031 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %4 = ptrtoint ptr %fdir_prof to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdir_prof, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %flow.031
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then12:                                        ; preds = %for.body
  %8 = ptrtoint ptr %fdir_prof to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fdir_prof, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then12.for.inc_crit_edge, label %ice_fdir_get_hw_prof.exit.i

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

ice_fdir_get_hw_prof.exit.i:                      ; preds = %if.then12
  %arrayidx.i.i = getelementptr ptr, ptr %9, i32 %flow.031
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i29 = icmp eq ptr %11, null
  br i1 %tobool.not.i29, label %ice_fdir_get_hw_prof.exit.i.for.inc_crit_edge, label %if.end.i30

ice_fdir_get_hw_prof.exit.i.for.inc_crit_edge:    ; preds = %ice_fdir_get_hw_prof.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i30:                                       ; preds = %ice_fdir_get_hw_prof.exit.i
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw1, i32 noundef %flow.031) #7
  %cnt.i = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.i = icmp sgt i32 %13, 0
  br i1 %cmp3.i, label %if.end.i30.for.body.i_crit_edge, label %if.end.i30.for.cond1.preheader.i_crit_edge

if.end.i30.for.cond1.preheader.i_crit_edge:       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

if.end.i30.for.body.i_crit_edge:                  ; preds = %if.end.i30
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %for.body.i.for.cond1.preheader.i_crit_edge, %if.end.i30.for.cond1.preheader.i_crit_edge
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %for.cond1.preheader.i.for.inc12.i_crit_edge, label %if.end7.i

for.cond1.preheader.i.for.inc12.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i30.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i30.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ice_fd_hw_prof, ptr %11, i32 0, i32 3, i32 %i.04.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %arrayidx.i, align 2
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %17 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cnt.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %18
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond1.preheader.i_crit_edge

for.body.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end7.i:                                        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i, ptr noundef nonnull %15) #7
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %11, align 4
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.end7.i, %for.cond1.preheader.i.for.inc12.i_crit_edge
  %arrayidx4.1.i = getelementptr [2 x ptr], ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx4.1.i, align 4
  %tobool5.not.1.i = icmp eq ptr %23, null
  br i1 %tobool5.not.1.i, label %for.inc12.i.for.inc12.1.i_crit_edge, label %if.end7.1.i

for.inc12.i.for.inc12.1.i_crit_edge:              ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.1.i

if.end7.1.i:                                      ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %dev.1.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.1.i, ptr noundef nonnull %23) #7
  %26 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx4.1.i, align 4
  br label %for.inc12.1.i

for.inc12.1.i:                                    ; preds = %if.end7.1.i, %for.inc12.i.for.inc12.1.i_crit_edge
  %27 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cnt.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc12.1.i, %ice_fdir_get_hw_prof.exit.i.for.inc_crit_edge, %if.then12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %flow.031, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.inc.release_lock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.release_lock_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_lock

release_lock:                                     ; preds = %for.inc.release_lock_crit_edge, %if.end7.release_lock_crit_edge, %if.end.release_lock_crit_edge
  tail call void @mutex_unlock(ptr noundef %fdir_fltr_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %release_lock, %if.end8.i, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_del_fdir_ethtool(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %flags = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 20
  %call3 = tail call zeroext i1 @ice_is_reset_in_progress(ptr noundef %state) #7
  br i1 %call3, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %fdir_fltr_lock = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58, i32 65
  tail call void @mutex_lock_nested(ptr noundef %fdir_fltr_lock, i32 noundef 0) #7
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %location, align 8
  %call12 = tail call fastcc i32 @ice_fdir_update_list_entry(ptr noundef %1, ptr noundef null, i32 noundef %11)
  tail call void @mutex_unlock(ptr noundef %fdir_fltr_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ %call12, %if.end11 ], [ -95, %entry.cleanup_crit_edge ], [ -16, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_reset_in_progress(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_fdir_update_list_entry(ptr noundef %pf, ptr noundef %input, i32 noundef %fltr_idx) unnamed_addr #0 align 64 {
entry:
  %port_num.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %state = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 20
  %call = tail call zeroext i1 @ice_is_reset_in_progress(ptr noundef %state) #7
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %0 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %ice_get_main_vsi.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ice_get_main_vsi.exit:                            ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ice_get_main_vsi.exit.cleanup_crit_edge, label %if.end4

ice_get_main_vsi.exit.cleanup_crit_edge:          ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %ice_get_main_vsi.exit
  %call5 = tail call ptr @ice_fdir_find_fltr_by_idx(ptr noundef %hw1, i32 noundef %fltr_idx) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.if.end18_crit_edge, label %if.then7

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then7:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port_num.i) #7
  %4 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %port_num.i, align 2, !annotation !74
  %call5.i = tail call i32 @ice_fdir_write_fltr(ptr noundef %pf, ptr noundef nonnull %call5, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.1.i, label %if.then7.ice_fdir_write_all_fltr.exit.thread_crit_edge

if.then7.ice_fdir_write_all_fltr.exit.thread_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_fdir_write_all_fltr.exit.thread

land.lhs.true.1.i:                                ; preds = %if.then7
  %call.1.i = call zeroext i1 @ice_get_open_tunnel_port(ptr noundef %hw1, ptr noundef nonnull %port_num.i, i32 noundef 255) #7
  br i1 %call.1.i, label %if.end.1.i, label %land.lhs.true.1.i.if.end11_crit_edge

land.lhs.true.1.i.if.end11_crit_edge:             ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end.1.i:                                       ; preds = %land.lhs.true.1.i
  %call5.1.i = call i32 @ice_fdir_write_fltr(ptr noundef %pf, ptr noundef nonnull %call5, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1.i)
  %tobool6.not.1.i = icmp eq i32 %call5.1.i, 0
  br i1 %tobool6.not.1.i, label %if.end.1.i.if.end11_crit_edge, label %if.end.1.i.ice_fdir_write_all_fltr.exit.thread_crit_edge

if.end.1.i.ice_fdir_write_all_fltr.exit.thread_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_fdir_write_all_fltr.exit.thread

if.end.1.i.if.end11_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

ice_fdir_write_all_fltr.exit.thread:              ; preds = %if.end.1.i.ice_fdir_write_all_fltr.exit.thread_crit_edge, %if.then7.ice_fdir_write_all_fltr.exit.thread_crit_edge
  %retval.2.i.ph = phi i32 [ %call5.1.i, %if.end.1.i.ice_fdir_write_all_fltr.exit.thread_crit_edge ], [ %call5.i, %if.then7.ice_fdir_write_all_fltr.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_num.i) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end.1.i.if.end11_crit_edge, %land.lhs.true.1.i.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_num.i) #7
  %flow_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call5, i32 0, i32 1
  %5 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flow_type, align 4
  call void @ice_fdir_update_cntrs(ptr noundef %hw1, i32 noundef %6, i1 noundef zeroext false) #7
  %orig_q_index = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call5, i32 0, i32 15
  %7 = ptrtoint ptr %orig_q_index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %orig_q_index, align 2
  %num_rxq.i = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 50
  %9 = ptrtoint ptr %num_rxq.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_rxq.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %8)
  %cmp.not.i = icmp ugt i16 %10, %8
  br i1 %cmp.not.i, label %if.end.i, label %if.end11.ice_update_per_q_fltr.exit_crit_edge

if.end11.ice_update_per_q_fltr.exit_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_update_per_q_fltr.exit

if.end.i:                                         ; preds = %if.end11
  %conv = zext i16 %8 to i32
  %rx_rings.i = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_rings.i, align 16
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %conv
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %if.end.i.ice_update_per_q_fltr.exit_crit_edge, label %lor.lhs.false4.i

if.end.i.ice_update_per_q_fltr.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_update_per_q_fltr.exit

lor.lhs.false4.i:                                 ; preds = %if.end.i
  %ch.i = getelementptr inbounds %struct.ice_rx_ring, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch.i, align 32
  %tobool5.not.i = icmp eq ptr %16, null
  br i1 %tobool5.not.i, label %lor.lhs.false4.i.ice_update_per_q_fltr.exit_crit_edge, label %if.end7.i

lor.lhs.false4.i.ice_update_per_q_fltr.exit_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_update_per_q_fltr.exit

if.end7.i:                                        ; preds = %lor.lhs.false4.i
  %num_sb_fltr.i = getelementptr inbounds %struct.ice_channel, ptr %16, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_sb_fltr.i, i32 noundef 4) #7
  %17 = ptrtoint ptr %num_sb_fltr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %num_sb_fltr.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.end7.i
  %c.0.i.i.i = phi i32 [ %18, %if.end7.i ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  %sub.i.i.i = add i32 %c.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.ice_update_per_q_fltr.exit_crit_edge, label %do.cond3.i.i.i, !prof !76

do.body1.i.i.i.ice_update_per_q_fltr.exit_crit_edge: ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_update_per_q_fltr.exit

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void @llvm.prefetch.p0(ptr %num_sb_fltr.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %19 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %num_sb_fltr.i, ptr %num_sb_fltr.i, i32 %c.0.i.i.i, i32 %sub.i.i.i, ptr elementtype(i32) %num_sb_fltr.i) #7, !srcloc !78
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !79
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.ice_update_per_q_fltr.exit_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !80

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i.ice_update_per_q_fltr.exit_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_update_per_q_fltr.exit

ice_update_per_q_fltr.exit:                       ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.ice_update_per_q_fltr.exit_crit_edge, %do.body1.i.i.i.ice_update_per_q_fltr.exit_crit_edge, %lor.lhs.false4.i.ice_update_per_q_fltr.exit_crit_edge, %if.end.i.ice_update_per_q_fltr.exit_crit_edge, %if.end11.ice_update_per_q_fltr.exit_crit_edge
  %tobool12.not = icmp eq ptr %input, null
  br i1 %tobool12.not, label %land.lhs.true, label %ice_update_per_q_fltr.exit.if.end17_crit_edge

ice_update_per_q_fltr.exit.if.end17_crit_edge:    ; preds = %ice_update_per_q_fltr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %ice_update_per_q_fltr.exit
  %20 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flow_type, align 4
  %arrayidx = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 67, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool14.not = icmp eq i16 %23, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @ice_fdir_do_rem_flow(ptr noundef %pf, i32 noundef %21)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true.if.end17_crit_edge, %ice_update_per_q_fltr.exit.if.end17_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call5) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.list_del.exit_crit_edge

if.end17.list_del.exit_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call5, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end17.list_del.exit_crit_edge
  %30 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %call5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call5, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %32 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call5) #7
  br label %if.end18

if.end18:                                         ; preds = %list_del.exit, %if.end4.if.end18_crit_edge
  %err.0 = phi i32 [ 0, %list_del.exit ], [ -2, %if.end4.if.end18_crit_edge ]
  %tobool19.not = icmp eq ptr %input, null
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @ice_fdir_list_add_fltr(ptr noundef %hw1, ptr noundef nonnull %input) #7
  %orig_q_index22 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 15
  %34 = ptrtoint ptr %orig_q_index22 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %orig_q_index22, align 2
  %num_rxq.i53 = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 50
  %36 = ptrtoint ptr %num_rxq.i53 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_rxq.i53, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %35)
  %cmp.not.i56 = icmp ugt i16 %37, %35
  br i1 %cmp.not.i56, label %if.end.i61, label %if.end21.ice_update_per_q_fltr.exit68_crit_edge

if.end21.ice_update_per_q_fltr.exit68_crit_edge:  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_update_per_q_fltr.exit68

if.end.i61:                                       ; preds = %if.end21
  %conv23 = zext i16 %35 to i32
  %rx_rings.i58 = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 4
  %38 = ptrtoint ptr %rx_rings.i58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_rings.i58, align 16
  %arrayidx.i59 = getelementptr ptr, ptr %39, i32 %conv23
  %40 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i59, align 4
  %tobool3.not.i60 = icmp eq ptr %41, null
  br i1 %tobool3.not.i60, label %if.end.i61.ice_update_per_q_fltr.exit68_crit_edge, label %lor.lhs.false4.i64

if.end.i61.ice_update_per_q_fltr.exit68_crit_edge: ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_update_per_q_fltr.exit68

lor.lhs.false4.i64:                               ; preds = %if.end.i61
  %ch.i62 = getelementptr inbounds %struct.ice_rx_ring, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %ch.i62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ch.i62, align 32
  %tobool5.not.i63 = icmp eq ptr %43, null
  br i1 %tobool5.not.i63, label %lor.lhs.false4.i64.ice_update_per_q_fltr.exit68_crit_edge, label %if.end7.i67

lor.lhs.false4.i64.ice_update_per_q_fltr.exit68_crit_edge: ; preds = %lor.lhs.false4.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_update_per_q_fltr.exit68

if.end7.i67:                                      ; preds = %lor.lhs.false4.i64
  call void @__sanitizer_cov_trace_pc() #9
  %num_sb_fltr.i65 = getelementptr inbounds %struct.ice_channel, ptr %43, i32 0, i32 11
  %call.i.i.i66 = call zeroext i1 @__kasan_check_write(ptr noundef %num_sb_fltr.i65, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %num_sb_fltr.i65, i32 1, i32 3, i32 1) #7
  %44 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_sb_fltr.i65, ptr %num_sb_fltr.i65, i32 1, ptr elementtype(i32) %num_sb_fltr.i65) #7, !srcloc !81
  br label %ice_update_per_q_fltr.exit68

ice_update_per_q_fltr.exit68:                     ; preds = %if.end7.i67, %lor.lhs.false4.i64.ice_update_per_q_fltr.exit68_crit_edge, %if.end.i61.ice_update_per_q_fltr.exit68_crit_edge, %if.end21.ice_update_per_q_fltr.exit68_crit_edge
  %flow_type24 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 1
  %45 = ptrtoint ptr %flow_type24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flow_type24, align 4
  call void @ice_fdir_update_cntrs(ptr noundef %hw1, i32 noundef %46, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %ice_update_per_q_fltr.exit68, %if.end18.cleanup_crit_edge, %ice_fdir_write_all_fltr.exit.thread, %ice_get_main_vsi.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ice_update_per_q_fltr.exit68 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %ice_get_main_vsi.exit.cleanup_crit_edge ], [ %err.0, %if.end18.cleanup_crit_edge ], [ %retval.2.i.ph, %ice_fdir_write_all_fltr.exit.thread ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_add_fdir_ethtool(ptr noundef %vsi, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %perfect_filter.i = alloca i8, align 1
  %tunnel_port = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tunnel_port) #7
  %0 = ptrtoint ptr %tunnel_port to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tunnel_port, align 2, !annotation !74
  %tobool.not = icmp eq ptr %vsi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %1 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %2, i32 0, i32 58
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %flags = getelementptr inbounds %struct.ice_pf, ptr %2, i32 0, i32 21
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.ice_pf, ptr %2, i32 0, i32 20
  %call7 = tail call zeroext i1 @ice_is_reset_in_progress(ptr noundef %state) #7
  br i1 %call7, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not.i = icmp sgt i32 %9, -1
  br i1 %tobool.not.i, label %if.end9.if.end13_crit_edge, label %if.end.i

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.i:                                         ; preds = %if.end9
  %data1.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 4
  %10 = ptrtoint ptr %data1.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %data1.i, align 4
  %data2.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4
  %12 = ptrtoint ptr %data2.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %data2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool4.not.i = icmp eq i64 %13, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end13_crit_edge, label %if.end6.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end6.i:                                        ; preds = %if.end.i
  %and.i.i = and i64 %13, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %and.i.i)
  %cmp.i.i = icmp ne i64 %and.i.i, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %11)
  %cmp.i = icmp ugt i64 %11, 4294967295
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %if.end6.i.cleanup_crit_edge, label %if.end8.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end6.i
  %conv.i = trunc i64 %11 to i16
  %and10.i = lshr i64 %11, 16
  %conv11.i = trunc i64 %and10.i to i16
  %14 = and i64 %11, 4294901760
  call void @__sanitizer_cov_trace_const_cmp8(i64 33423360, i64 %14)
  %cmp14.i = icmp ugt i64 %14, 33423360
  br i1 %cmp14.i, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end13_crit_edge

if.end8.i.if.end13_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8.i.if.end13_crit_edge, %if.end.i.if.end13_crit_edge, %if.end9.if.end13_crit_edge
  %userdata.sroa.0.0.ph = phi i16 [ 0, %if.end.i.if.end13_crit_edge ], [ 0, %if.end9.if.end13_crit_edge ], [ %conv.i, %if.end8.i.if.end13_crit_edge ]
  %userdata.sroa.6.0.ph = phi i16 [ 0, %if.end.i.if.end13_crit_edge ], [ 0, %if.end9.if.end13_crit_edge ], [ %conv11.i, %if.end8.i.if.end13_crit_edge ]
  %tobool33.not.i = phi i1 [ true, %if.end.i.if.end13_crit_edge ], [ true, %if.end9.if.end13_crit_edge ], [ false, %if.end8.i.if.end13_crit_edge ]
  %and = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %perfect_filter.i) #7
  %17 = ptrtoint ptr %perfect_filter.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %perfect_filter.i, align 1, !annotation !74
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 1096, i32 noundef 3520) #7
  %tobool.not.i122 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i122, label %if.end16.ice_cfg_fdir_xtrct_seq.exit.thread_crit_edge, label %if.end.i124

if.end16.ice_cfg_fdir_xtrct_seq.exit.thread_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_cfg_fdir_xtrct_seq.exit.thread

if.end.i124:                                      ; preds = %if.end16
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 2192, i32 noundef 3520) #7
  %tobool4.not.i123 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool4.not.i123, label %if.end.i124.ice_cfg_fdir_xtrct_seq.exit.thread.sink.split_crit_edge, label %if.end6.i125

if.end.i124.ice_cfg_fdir_xtrct_seq.exit.thread.sink.split_crit_edge: ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_cfg_fdir_xtrct_seq.exit.thread.sink.split

if.end6.i125:                                     ; preds = %if.end.i124
  %18 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fs, align 8
  %and.i = and i32 %19, 2147483647
  %20 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %and.i, label %if.end6.i125.err_exit.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb11.i
    i32 13, label %sw.bb14.i
    i32 5, label %sw.bb17.i
    i32 6, label %sw.bb20.i
    i32 7, label %sw.bb23.i
    i32 14, label %sw.bb26.i
  ]

if.end6.i125.err_exit.i_crit_edge:                ; preds = %if.end6.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

sw.bb.i:                                          ; preds = %if.end6.i125
  call void @__sanitizer_cov_trace_pc() #9
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %call7.i = call fastcc i32 @ice_set_fdir_ip4_seg(ptr noundef nonnull %call.i.i, ptr noundef %m_u.i, i32 noundef 64, ptr noundef nonnull %perfect_filter.i) #7
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end6.i125
  call void @__sanitizer_cov_trace_pc() #9
  %m_u9.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %call10.i = call fastcc i32 @ice_set_fdir_ip4_seg(ptr noundef nonnull %call.i.i, ptr noundef %m_u9.i, i32 noundef 128, ptr noundef nonnull %perfect_filter.i) #7
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end6.i125
  call void @__sanitizer_cov_trace_pc() #9
  %m_u12.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %call13.i = call fastcc i32 @ice_set_fdir_ip4_seg(ptr noundef nonnull %call.i.i, ptr noundef %m_u12.i, i32 noundef 256, ptr noundef nonnull %perfect_filter.i) #7
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end6.i125
  %m_u15.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %l4_4_bytes.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %l4_4_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %l4_4_bytes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb14.i.err_exit.i_crit_edge

sw.bb14.i.err_exit.i_crit_edge:                   ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.end.i.i:                                       ; preds = %sw.bb14.i
  %tos.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tos.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i.i.err_exit.i_crit_edge

if.end.i.i.err_exit.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %ip_ver.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u15.i, i32 0, i32 4
  %25 = ptrtoint ptr %ip_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ip_ver.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool4.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end3.i.i.err_exit.i_crit_edge

if.end3.i.i.err_exit.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.end6.i.i:                                      ; preds = %if.end3.i.i
  %proto.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u15.i, i32 0, i32 5
  %27 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %proto.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end6.i.i.err_exit.i_crit_edge

if.end6.i.i.err_exit.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.end9.i.i:                                      ; preds = %if.end6.i.i
  %29 = ptrtoint ptr %m_u15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m_u15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool10.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i, label %if.end13.i.i

land.lhs.true.i.i:                                ; preds = %if.end9.i.i
  %ip4dst.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %ip4dst.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ip4dst.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true.i.i.err_exit.i_crit_edge, label %if.end13.i.thread.i

land.lhs.true.i.i.err_exit.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.end13.i.thread.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call.i.i, align 8
  %or.i136.i = or i32 %34, 4
  store i32 %or.i136.i, ptr %call.i.i, align 8
  %35 = ptrtoint ptr %perfect_filter.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %perfect_filter.i, align 1
  br label %if.end21.i.i

if.end13.i.i:                                     ; preds = %if.end9.i.i
  %36 = ptrtoint ptr %perfect_filter.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %perfect_filter.i, align 1
  %37 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call.i.i, align 8
  %or.i.i = or i32 %38, 4
  store i32 %or.i.i, ptr %call.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cond.i = icmp eq i32 %30, -1
  br i1 %cond.i, label %if.then15.i.i, label %if.end13.i.i.err_exit.i_crit_edge

if.end13.i.i.err_exit.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_flow_set_fld(ptr noundef nonnull %call.i.i, i32 noundef 11, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then15.i.i, %if.end13.i.thread.i
  %ip4dst22.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %ip4dst22.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ip4dst22.i.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %40, label %if.end21.i.i.err_exit.i_crit_edge [
    i32 -1, label %if.then24.i.i
    i32 0, label %if.then28.i.i
  ]

if.end21.i.i.err_exit.i_crit_edge:                ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.then24.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_flow_set_fld(ptr noundef nonnull %call.i.i, i32 noundef 12, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %if.end31.i

if.then28.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %perfect_filter.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %perfect_filter.i, align 1
  br label %if.end31.i

sw.bb17.i:                                        ; preds = %if.end6.i125
  call void @__sanitizer_cov_trace_pc() #9
  %m_u18.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %call19.i = call fastcc i32 @ice_set_fdir_ip6_seg(ptr noundef nonnull %call.i.i, ptr noundef %m_u18.i, i32 noundef 64, ptr noundef nonnull %perfect_filter.i) #7
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.end6.i125
  call void @__sanitizer_cov_trace_pc() #9
  %m_u21.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %call22.i = call fastcc i32 @ice_set_fdir_ip6_seg(ptr noundef nonnull %call.i.i, ptr noundef %m_u21.i, i32 noundef 128, ptr noundef nonnull %perfect_filter.i) #7
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end6.i125
  call void @__sanitizer_cov_trace_pc() #9
  %m_u24.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %call25.i = call fastcc i32 @ice_set_fdir_ip6_seg(ptr noundef nonnull %call.i.i, ptr noundef %m_u24.i, i32 noundef 256, ptr noundef nonnull %perfect_filter.i) #7
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.end6.i125
  %m_u27.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %l4_4_bytes.i123.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %43 = ptrtoint ptr %l4_4_bytes.i123.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %l4_4_bytes.i123.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i124.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i124.i, label %if.end.i126.i, label %sw.bb26.i.err_exit.i_crit_edge

sw.bb26.i.err_exit.i_crit_edge:                   ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.end.i126.i:                                    ; preds = %sw.bb26.i
  %tclass.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %45 = ptrtoint ptr %tclass.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tclass.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool1.not.i125.i = icmp eq i8 %46, 0
  br i1 %tobool1.not.i125.i, label %if.end3.i128.i, label %if.end.i126.i.err_exit.i_crit_edge

if.end.i126.i.err_exit.i_crit_edge:               ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.end3.i128.i:                                   ; preds = %if.end.i126.i
  %l4_proto.i.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %m_u27.i, i32 0, i32 4
  %47 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %l4_proto.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool4.not.i127.i = icmp eq i8 %48, 0
  br i1 %tobool4.not.i127.i, label %if.end6.i130.i, label %if.end3.i128.i.err_exit.i_crit_edge

if.end3.i128.i.err_exit.i_crit_edge:              ; preds = %if.end3.i128.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.end6.i130.i:                                   ; preds = %if.end3.i128.i
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %m_u27.i, ptr noundef nonnull dereferenceable(16) @zero_ipv6_addr_mask, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool7.not.i129.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool7.not.i129.i, label %land.lhs.true.i132.i, label %if.end6.i130.i.if.end12.i.i_crit_edge

if.end6.i130.i.if.end12.i.i_crit_edge:            ; preds = %if.end6.i130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

land.lhs.true.i132.i:                             ; preds = %if.end6.i130.i
  %ip6dst.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %bcmp52.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ip6dst.i.i, ptr noundef nonnull dereferenceable(16) @zero_ipv6_addr_mask, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp52.i.i)
  %tobool10.not.i131.i = icmp eq i32 %bcmp52.i.i, 0
  br i1 %tobool10.not.i131.i, label %land.lhs.true.i132.i.err_exit.i_crit_edge, label %land.lhs.true.i132.i.if.end12.i.i_crit_edge

land.lhs.true.i132.i.if.end12.i.i_crit_edge:      ; preds = %land.lhs.true.i132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

land.lhs.true.i132.i.err_exit.i_crit_edge:        ; preds = %land.lhs.true.i132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i132.i.if.end12.i.i_crit_edge, %if.end6.i130.i.if.end12.i.i_crit_edge
  %49 = ptrtoint ptr %perfect_filter.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %perfect_filter.i, align 1
  %50 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call.i.i, align 8
  %or.i133.i = or i32 %51, 8
  store i32 %or.i133.i, ptr %call.i.i, align 8
  %bcmp53.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %m_u27.i, ptr noundef nonnull dereferenceable(16) @full_ipv6_addr_mask, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp53.i.i)
  %tobool16.not.i.i = icmp eq i32 %bcmp53.i.i, 0
  br i1 %tobool16.not.i.i, label %if.then17.i.i, label %if.else.i.i

if.then17.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_flow_set_fld(ptr noundef nonnull %call.i.i, i32 noundef 13, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %if.end25.i.i

if.else.i.i:                                      ; preds = %if.end12.i.i
  br i1 %tobool7.not.i129.i, label %if.then22.i.i, label %if.else.i.i.err_exit.i_crit_edge

if.else.i.i.err_exit.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.then22.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %perfect_filter.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %perfect_filter.i, align 1
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then22.i.i, %if.then17.i.i
  %ip6dst26.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %bcmp54.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ip6dst26.i.i, ptr noundef nonnull dereferenceable(16) @full_ipv6_addr_mask, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp54.i.i)
  %tobool29.not.i.i = icmp eq i32 %bcmp54.i.i, 0
  br i1 %tobool29.not.i.i, label %if.then30.i.i, label %if.else31.i.i

if.then30.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_flow_set_fld(ptr noundef nonnull %call.i.i, i32 noundef 14, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %if.end31.i

if.else31.i.i:                                    ; preds = %if.end25.i.i
  %bcmp55.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ip6dst26.i.i, ptr noundef nonnull dereferenceable(16) @zero_ipv6_addr_mask, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp55.i.i)
  %tobool35.not.i.i = icmp eq i32 %bcmp55.i.i, 0
  br i1 %tobool35.not.i.i, label %if.then36.i.i, label %if.else31.i.i.err_exit.i_crit_edge

if.else31.i.i.err_exit.i_crit_edge:               ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.then36.i.i:                                    ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %perfect_filter.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %perfect_filter.i, align 1
  br label %if.end31.i

sw.epilog.i:                                      ; preds = %sw.bb23.i, %sw.bb20.i, %sw.bb17.i, %sw.bb11.i, %sw.bb8.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call25.i, %sw.bb23.i ], [ %call22.i, %sw.bb20.i ], [ %call19.i, %sw.bb17.i ], [ %call13.i, %sw.bb11.i ], [ %call10.i, %sw.bb8.i ], [ %call7.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool29.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool29.not.i, label %sw.epilog.i.if.end31.i_crit_edge, label %sw.epilog.i.err_exit.i_crit_edge

sw.epilog.i.err_exit.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

sw.epilog.i.if.end31.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %sw.epilog.i.if.end31.i_crit_edge, %if.then36.i.i, %if.then30.i.i, %if.then28.i.i, %if.then24.i.i
  %arrayidx.i = getelementptr %struct.ice_flow_seg_info, ptr %call5.i.i.i, i32 1
  %54 = call ptr @memcpy(ptr %arrayidx.i, ptr %call.i.i, i32 1096)
  br i1 %tobool33.not.i, label %if.end31.i.if.end37.i_crit_edge, label %if.then34.i

if.end31.i.if.end37.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %perfect_filter.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %perfect_filter.i, align 1
  tail call void @ice_flow_add_fld_raw(ptr noundef nonnull %call.i.i, i16 noundef zeroext %userdata.sroa.6.0.ph, i8 noundef zeroext 2, i16 noundef zeroext -1, i16 noundef zeroext -1) #7
  tail call void @ice_flow_add_fld_raw(ptr noundef %arrayidx.i, i16 noundef zeroext %userdata.sroa.6.0.ph, i8 noundef zeroext 2, i16 noundef zeroext -1, i16 noundef zeroext -1) #7
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end37.i_crit_edge
  %56 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fs, align 8
  %and39.i = and i32 %57, 2147483647
  %switch.tableidx = add nsw i32 %and39.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %58 = icmp ult i32 %switch.tableidx, 14
  br i1 %58, label %switch.lookup, label %if.end37.i.ice_ethtool_flow_to_fltr.exit.i_crit_edge

if.end37.i.ice_ethtool_flow_to_fltr.exit.i_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_ethtool_flow_to_fltr.exit.i

switch.lookup:                                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.ice_add_fdir_ethtool, i32 0, i32 %switch.tableidx
  %59 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ice_ethtool_flow_to_fltr.exit.i

ice_ethtool_flow_to_fltr.exit.i:                  ; preds = %switch.lookup, %if.end37.i.ice_ethtool_flow_to_fltr.exit.i_crit_edge
  %retval.0.i135.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end37.i.ice_ethtool_flow_to_fltr.exit.i_crit_edge ]
  %call41.i = tail call fastcc i32 @ice_fdir_set_hw_fltr_rule(ptr noundef %2, ptr noundef nonnull %call.i.i, i32 noundef %retval.0.i135.i, i32 noundef 0) #7
  %60 = zext i32 %call41.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call41.i, label %ice_ethtool_flow_to_fltr.exit.i.err_exit.i_crit_edge [
    i32 -17, label %if.then43.i
    i32 0, label %ice_ethtool_flow_to_fltr.exit.i.if.end47.i_crit_edge
  ]

ice_ethtool_flow_to_fltr.exit.i.if.end47.i_crit_edge: ; preds = %ice_ethtool_flow_to_fltr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

ice_ethtool_flow_to_fltr.exit.i.err_exit.i_crit_edge: ; preds = %ice_ethtool_flow_to_fltr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit.i

if.then43.i:                                      ; preds = %ice_ethtool_flow_to_fltr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devm_kfree(ptr noundef %dev1.i, ptr noundef nonnull %call.i.i) #7
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then43.i, %ice_ethtool_flow_to_fltr.exit.i.if.end47.i_crit_edge
  %61 = call ptr @memcpy(ptr %arrayidx.i, ptr %call.i.i, i32 1096)
  %call49.i = tail call fastcc i32 @ice_fdir_set_hw_fltr_rule(ptr noundef %2, ptr noundef nonnull %call5.i.i.i, i32 noundef %retval.0.i135.i, i32 noundef 1) #7
  %62 = zext i32 %call49.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call49.i, label %if.then55.i [
    i32 -17, label %if.end47.i.if.end57.sink.split.i_crit_edge
    i32 0, label %if.end47.i.if.end57.i_crit_edge
  ]

if.end47.i.if.end57.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.end47.i.if.end57.sink.split.i_crit_edge:       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.sink.split.i

if.then55.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.sink.split.i

if.end57.sink.split.i:                            ; preds = %if.then55.i, %if.end47.i.if.end57.sink.split.i_crit_edge
  %ret.1.ph.i = phi i32 [ %call49.i, %if.then55.i ], [ 0, %if.end47.i.if.end57.sink.split.i_crit_edge ]
  tail call void @devm_kfree(ptr noundef %dev1.i, ptr noundef nonnull %call5.i.i.i) #7
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.end57.sink.split.i, %if.end47.i.if.end57.i_crit_edge
  %ret.1.i = phi i32 [ %call49.i, %if.end47.i.if.end57.i_crit_edge ], [ %ret.1.ph.i, %if.end57.sink.split.i ]
  %63 = ptrtoint ptr %perfect_filter.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %perfect_filter.i, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool58.not.i = icmp eq i8 %64, 0
  %fdir_perfect_fltr61.i = getelementptr inbounds %struct.ice_pf, ptr %2, i32 0, i32 58, i32 69
  br i1 %tobool58.not.i, label %if.else60.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef %retval.0.i135.i, ptr noundef %fdir_perfect_fltr61.i) #7
  br label %ice_cfg_fdir_xtrct_seq.exit

if.else60.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef %retval.0.i135.i, ptr noundef %fdir_perfect_fltr61.i) #7
  br label %ice_cfg_fdir_xtrct_seq.exit

err_exit.i:                                       ; preds = %ice_ethtool_flow_to_fltr.exit.i.err_exit.i_crit_edge, %sw.epilog.i.err_exit.i_crit_edge, %if.else31.i.i.err_exit.i_crit_edge, %if.else.i.i.err_exit.i_crit_edge, %land.lhs.true.i132.i.err_exit.i_crit_edge, %if.end3.i128.i.err_exit.i_crit_edge, %if.end.i126.i.err_exit.i_crit_edge, %sw.bb26.i.err_exit.i_crit_edge, %if.end21.i.i.err_exit.i_crit_edge, %if.end13.i.i.err_exit.i_crit_edge, %land.lhs.true.i.i.err_exit.i_crit_edge, %if.end6.i.i.err_exit.i_crit_edge, %if.end3.i.i.err_exit.i_crit_edge, %if.end.i.i.err_exit.i_crit_edge, %sw.bb14.i.err_exit.i_crit_edge, %if.end6.i125.err_exit.i_crit_edge
  tail call void @devm_kfree(ptr noundef %dev1.i, ptr noundef nonnull %call5.i.i.i) #7
  br label %ice_cfg_fdir_xtrct_seq.exit.thread.sink.split

ice_cfg_fdir_xtrct_seq.exit.thread.sink.split:    ; preds = %err_exit.i, %if.end.i124.ice_cfg_fdir_xtrct_seq.exit.thread.sink.split_crit_edge
  %retval.0.i128.ph.ph = phi i32 [ -95, %err_exit.i ], [ -12, %if.end.i124.ice_cfg_fdir_xtrct_seq.exit.thread.sink.split_crit_edge ]
  tail call void @devm_kfree(ptr noundef %dev1.i, ptr noundef nonnull %call.i.i) #7
  br label %ice_cfg_fdir_xtrct_seq.exit.thread

ice_cfg_fdir_xtrct_seq.exit.thread:               ; preds = %ice_cfg_fdir_xtrct_seq.exit.thread.sink.split, %if.end16.ice_cfg_fdir_xtrct_seq.exit.thread_crit_edge
  %retval.0.i128.ph = phi i32 [ -12, %if.end16.ice_cfg_fdir_xtrct_seq.exit.thread_crit_edge ], [ %retval.0.i128.ph.ph, %ice_cfg_fdir_xtrct_seq.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %perfect_filter.i) #7
  br label %cleanup

ice_cfg_fdir_xtrct_seq.exit:                      ; preds = %if.else60.i, %if.then59.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %perfect_filter.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool18.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool18.not, label %if.end20, label %ice_cfg_fdir_xtrct_seq.exit.cleanup_crit_edge

ice_cfg_fdir_xtrct_seq.exit.cleanup_crit_edge:    ; preds = %ice_cfg_fdir_xtrct_seq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %ice_cfg_fdir_xtrct_seq.exit
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %65 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %location, align 8
  %call21 = tail call i32 @ice_get_fdir_cnt_all(ptr noundef %hw1) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %call21)
  %cmp.not = icmp ult i32 %66, %call21
  br i1 %cmp.not, label %if.end26, label %do.end25

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %call27 = call zeroext i1 @ice_get_open_tunnel_port(ptr noundef %hw1, ptr noundef nonnull %tunnel_port, i32 noundef 255) #7
  %67 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %location, align 8
  %call29 = call ptr @ice_fdir_find_fltr_by_idx(ptr noundef %hw1, i32 noundef %68) #7
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %land.lhs.true, label %if.end26.if.end38_crit_edge

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end26
  %cond = select i1 %call27, i32 2, i32 1
  %vsi31 = getelementptr inbounds %struct.ice_pf, ptr %2, i32 0, i32 9
  %69 = ptrtoint ptr %vsi31 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vsi31, align 8
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %71 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %idx, align 2
  %idxprom = zext i16 %72 to i32
  %arrayidx = getelementptr ptr, ptr %70, i32 %idxprom
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx, align 4
  %call32 = call fastcc i32 @ice_fdir_num_avail_fltr(ptr noundef %hw1, ptr noundef %74)
  call void @__sanitizer_cov_trace_cmp4(i32 %call32, i32 %cond)
  %cmp33 = icmp slt i32 %call32, %cond
  br i1 %cmp33, label %do.end37, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.end37:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %if.end26.if.end38_crit_edge
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 248, i32 noundef 3520) #7
  %tobool40.not = icmp eq ptr %call.i, null
  br i1 %tobool40.not, label %if.end38.cleanup_crit_edge, label %if.end42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %call43 = call fastcc i32 @ice_set_fdir_input_set(ptr noundef nonnull %vsi, ptr noundef %fs, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.if.then65_crit_edge

if.end42.if.then65_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

if.end46:                                         ; preds = %if.end42
  %fdir_fltr_lock = getelementptr inbounds %struct.ice_pf, ptr %2, i32 0, i32 58, i32 65
  call void @mutex_lock_nested(ptr noundef %fdir_fltr_lock, i32 noundef 0) #7
  %call47 = call zeroext i1 @ice_fdir_is_dup_fltr(ptr noundef %hw1, ptr noundef nonnull %call.i) #7
  br i1 %call47, label %if.end46.free_input.thread149_crit_edge, label %if.end49

if.end46.free_input.thread149_crit_edge:          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_input.thread149

if.end49:                                         ; preds = %if.end46
  br i1 %tobool33.not.i, label %if.end49.if.end55_crit_edge, label %if.then51

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %flex_fltr52 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 13
  %75 = ptrtoint ptr %flex_fltr52 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 1, ptr %flex_fltr52, align 2
  %flex_word53 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 10
  %76 = ptrtoint ptr %flex_word53 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %userdata.sroa.0.0.ph, ptr %flex_word53, align 4
  %flex_offset54 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 12
  %77 = ptrtoint ptr %flex_offset54 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %userdata.sroa.6.0.ph, ptr %flex_offset54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end49.if.end55_crit_edge
  %cnt_ena = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 18
  %78 = ptrtoint ptr %cnt_ena to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %cnt_ena, align 1
  %fdid_prio = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 22
  %79 = ptrtoint ptr %fdid_prio to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 3, ptr %fdid_prio, align 4
  %comp_report = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 23
  %80 = ptrtoint ptr %comp_report to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %comp_report, align 1
  %81 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %location, align 8
  %call57 = call fastcc i32 @ice_fdir_update_list_entry(ptr noundef %2, ptr noundef nonnull %call.i, i32 noundef %82)
  %call58 = call fastcc i32 @ice_fdir_write_all_fltr(ptr noundef %2, ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %free_input, label %remove_sw_rule

remove_sw_rule:                                   ; preds = %if.end55
  %flow_type62 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 1
  %83 = ptrtoint ptr %flow_type62 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flow_type62, align 4
  call void @ice_fdir_update_cntrs(ptr noundef %hw1, i32 noundef %84, i1 noundef zeroext false) #7
  %orig_q_index = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 15
  %85 = ptrtoint ptr %orig_q_index to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %orig_q_index, align 2
  %conv = zext i16 %86 to i32
  call fastcc void @ice_update_per_q_fltr(ptr noundef nonnull %vsi, i32 noundef %conv, i1 noundef zeroext false)
  %call.i.i129 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i) #7
  br i1 %call.i.i129, label %if.end.i.i130, label %remove_sw_rule.list_del.exit_crit_edge

remove_sw_rule.list_del.exit_crit_edge:           ; preds = %remove_sw_rule
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i130:                                    ; preds = %remove_sw_rule
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i, align 4
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev1.i.i.i, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %90, ptr %88, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i130, %remove_sw_rule.list_del.exit_crit_edge
  %93 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %free_input.thread149

free_input.thread149:                             ; preds = %list_del.exit, %if.end46.free_input.thread149_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.end46.free_input.thread149_crit_edge ], [ %call58, %list_del.exit ]
  call void @mutex_unlock(ptr noundef %fdir_fltr_lock) #7
  br label %if.then65

free_input:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %fdir_fltr_lock) #7
  br label %cleanup

if.then65:                                        ; preds = %free_input.thread149, %if.end42.if.then65_crit_edge
  %ret.1148 = phi i32 [ %ret.0.ph, %free_input.thread149 ], [ %call43, %if.end42.if.then65_crit_edge ]
  call void @devm_kfree(ptr noundef %dev2, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %free_input, %if.end38.cleanup_crit_edge, %do.end37, %do.end25, %ice_cfg_fdir_xtrct_seq.exit.cleanup_crit_edge, %ice_cfg_fdir_xtrct_seq.exit.thread, %if.end13.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -28, %do.end25 ], [ -28, %do.end37 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ %ret.1.i, %ice_cfg_fdir_xtrct_seq.exit.cleanup_crit_edge ], [ -12, %if.end38.cleanup_crit_edge ], [ %ret.1148, %if.then65 ], [ 0, %free_input ], [ -22, %if.end6.i.cleanup_crit_edge ], [ -22, %if.end8.i.cleanup_crit_edge ], [ %retval.0.i128.ph, %ice_cfg_fdir_xtrct_seq.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tunnel_port) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_get_open_tunnel_port(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_fdir_num_avail_fltr(ptr noundef %hw, ptr nocapture noundef readonly %vsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx, align 2
  %call = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %1) #7
  %num_gfltr = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 22
  %2 = ptrtoint ptr %num_gfltr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_gfltr, align 16
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %conv = zext i16 %call to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 4603904
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %7 = and i32 %6, -12648448
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = trunc i32 %8 to i16
  %conv4 = sub i16 %3, %9
  %fd_fltr_best_effort = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 5
  %10 = ptrtoint ptr %fd_fltr_best_effort to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fd_fltr_best_effort, align 8
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr9 = getelementptr i8, ptr %13, i32 4587544
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %15 = and i32 %14, 65407
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %shr14 = lshr exact i32 %16, 16
  %sub16 = sub i32 %11, %shr14
  %conv18 = zext i16 %conv4 to i32
  %conv19 = and i32 %sub16, 65535
  %add20 = add nuw nsw i32 %conv19, %conv18
  ret i32 %add20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_set_fdir_input_set(ptr noundef readonly %vsi, ptr noundef readonly %fsp, ptr noundef writeonly %input) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vsi, null
  %tobool1.not = icmp eq ptr %fsp, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %input, null
  %or.cond339 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond339, label %entry.cleanup218_crit_edge, label %if.end

entry.cleanup218_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup218

if.end:                                           ; preds = %entry
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idx, align 2
  %ring_cookie = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 5
  %4 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ring_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp = icmp eq i64 %5, -1
  br i1 %cmp, label %if.end.if.end21_crit_edge, label %if.else

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else:                                          ; preds = %if.end
  %conv = trunc i64 %5 to i32
  %6 = and i64 %5, 1095216660480
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool10.not = icmp eq i64 %6, 0
  br i1 %tobool10.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %cleanup218

if.end12:                                         ; preds = %if.else
  %num_rxq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 50
  %9 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_rxq, align 2
  %conv13 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv13)
  %cmp14.not = icmp ult i32 %conv, %conv13
  br i1 %cmp14.not, label %if.end17, label %if.end12.cleanup218_crit_edge

if.end12.cleanup218_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup218

if.end17:                                         ; preds = %if.end12
  %conv18 = trunc i64 %5 to i16
  %ch_list.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 67
  %11 = ptrtoint ptr %ch_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %ch.030.i = load ptr, ptr %ch_list.i, align 4
  %cmp.not31.i = icmp eq ptr %ch.030.i, %ch_list.i
  br i1 %cmp.not31.i, label %if.end17.cleanup_crit_edge, label %if.end17.for.body.i_crit_edge

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %dest_vsi.0 = phi i16 [ %dest_vsi.1, %for.inc.i.for.body.i_crit_edge ], [ %3, %if.end17.for.body.i_crit_edge ]
  %ring.0 = phi i32 [ %ring.1, %for.inc.i.for.body.i_crit_edge ], [ %conv, %if.end17.for.body.i_crit_edge ]
  %ch.032.i = phi ptr [ %ch.0.i, %for.inc.i.for.body.i_crit_edge ], [ %ch.030.i, %if.end17.for.body.i_crit_edge ]
  %ch_vsi.i = getelementptr inbounds %struct.ice_channel, ptr %ch.032.i, i32 0, i32 12
  %12 = ptrtoint ptr %ch_vsi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ch_vsi.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %base_q.i = getelementptr inbounds %struct.ice_channel, ptr %ch.032.i, i32 0, i32 3
  %14 = ptrtoint ptr %base_q.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %base_q.i, align 4
  %conv.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ring.0, i32 %conv.i)
  %cmp2.i = icmp ult i32 %ring.0, %conv.i
  br i1 %cmp2.i, label %if.end.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %num_rxq.i = getelementptr inbounds %struct.ice_channel, ptr %ch.032.i, i32 0, i32 4
  %16 = ptrtoint ptr %num_rxq.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_rxq.i, align 2
  %conv6.i = zext i16 %17 to i32
  %add.i = add nuw nsw i32 %conv6.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %ring.0, i32 %add.i)
  %cmp7.not.i = icmp ult i32 %ring.0, %add.i
  br i1 %cmp7.not.i, label %if.end10.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end10.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %idx.i = getelementptr inbounds %struct.ice_vsi, ptr %13, i32 0, i32 19
  %18 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %idx.i, align 2
  %sub.i = sub i32 %ring.0, %conv.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %dest_vsi.1 = phi i16 [ %dest_vsi.0, %for.body.i.for.inc.i_crit_edge ], [ %dest_vsi.0, %if.end.i.for.inc.i_crit_edge ], [ %19, %if.end10.i ], [ %dest_vsi.0, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %ring.1 = phi i32 [ %ring.0, %for.body.i.for.inc.i_crit_edge ], [ %ring.0, %if.end.i.for.inc.i_crit_edge ], [ %sub.i, %if.end10.i ], [ %ring.0, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %20 = ptrtoint ptr %ch.032.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %ch.0.i = load ptr, ptr %ch.032.i, align 4
  %cmp.not.i = icmp eq ptr %ch.0.i, %ch_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %dest_vsi.2 = phi i16 [ %3, %if.end17.cleanup_crit_edge ], [ %dest_vsi.1, %for.inc.i.cleanup_crit_edge ]
  %ring.2 = phi i32 [ %conv, %if.end17.cleanup_crit_edge ], [ %ring.1, %for.inc.i.cleanup_crit_edge ]
  %conv19 = trunc i32 %ring.2 to i16
  br label %if.end21

if.end21:                                         ; preds = %cleanup, %if.end.if.end21_crit_edge
  %dest_vsi.4 = phi i16 [ %3, %if.end.if.end21_crit_edge ], [ %dest_vsi.2, %cleanup ]
  %q_index.1 = phi i16 [ 0, %if.end.if.end21_crit_edge ], [ %conv19, %cleanup ]
  %orig_q_index.1 = phi i16 [ 0, %if.end.if.end21_crit_edge ], [ %conv18, %cleanup ]
  %dest_ctl.1 = phi i8 [ 0, %if.end.if.end21_crit_edge ], [ 1, %cleanup ]
  %location = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 6
  %21 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %location, align 8
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 21
  %23 = ptrtoint ptr %fltr_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fltr_id, align 4
  %q_index22 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 14
  %24 = ptrtoint ptr %q_index22 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %q_index.1, ptr %q_index22, align 4
  %25 = ptrtoint ptr %fsp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fsp, align 8
  %and = and i32 %26, 2147483647
  %orig_q_index24 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 15
  %27 = ptrtoint ptr %orig_q_index24 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %orig_q_index.1, ptr %orig_q_index24, align 2
  %dest_vsi25 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 16
  %28 = ptrtoint ptr %dest_vsi25 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %dest_vsi.4, ptr %dest_vsi25, align 4
  %dest_ctl26 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 17
  %29 = ptrtoint ptr %dest_ctl26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %dest_ctl.1, ptr %dest_ctl26, align 2
  %fltr_status = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 19
  %30 = ptrtoint ptr %fltr_status to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %fltr_status, align 4
  %fd_ctr_base = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58, i32 7
  %31 = ptrtoint ptr %fd_ctr_base to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %fd_ctr_base, align 4
  %mul = shl i16 %32, 8
  %cnt_index = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 20
  %33 = ptrtoint ptr %cnt_index to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %mul, ptr %cnt_index, align 2
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %34 = icmp ult i32 %switch.tableidx, 14
  br i1 %34, label %switch.lookup, label %if.end21.ice_ethtool_flow_to_fltr.exit_crit_edge

if.end21.ice_ethtool_flow_to_fltr.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_ethtool_flow_to_fltr.exit

switch.lookup:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.ice_set_fdir_input_set, i32 0, i32 %switch.tableidx
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ice_ethtool_flow_to_fltr.exit

ice_ethtool_flow_to_fltr.exit:                    ; preds = %switch.lookup, %if.end21.ice_ethtool_flow_to_fltr.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end21.ice_ethtool_flow_to_fltr.exit_crit_edge ]
  %flow_type30 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 1
  %36 = ptrtoint ptr %flow_type30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i, ptr %flow_type30, align 4
  %37 = ptrtoint ptr %fsp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fsp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %tobool33.not = icmp sgt i32 %38, -1
  br i1 %tobool33.not, label %ice_ethtool_flow_to_fltr.exit.if.end52_crit_edge, label %if.then34

ice_ethtool_flow_to_fltr.exit.if.end52_crit_edge: ; preds = %ice_ethtool_flow_to_fltr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then34:                                        ; preds = %ice_ethtool_flow_to_fltr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %usr_def = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 3
  %data = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %data, align 4
  %41 = ptrtoint ptr %usr_def to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %usr_def, align 4
  %vlan_etype = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %vlan_etype to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vlan_etype, align 8
  %vlan_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 4
  %44 = ptrtoint ptr %vlan_type to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %vlan_type, align 4
  %vlan_tci = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 2, i32 3
  %45 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vlan_tci, align 2
  %vlan_tag = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 5
  %47 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %vlan_tag, align 2
  %usr_def40 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 9, i32 3
  %data42 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 4, i32 4
  %48 = ptrtoint ptr %data42 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %data42, align 4
  %50 = ptrtoint ptr %usr_def40 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %usr_def40, align 4
  %vlan_etype45 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 4, i32 2
  %51 = ptrtoint ptr %vlan_etype45 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vlan_etype45, align 8
  %vlan_type47 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 9, i32 4
  %53 = ptrtoint ptr %vlan_type47 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %vlan_type47, align 4
  %vlan_tci49 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 4, i32 3
  %54 = ptrtoint ptr %vlan_tci49 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vlan_tci49, align 2
  %vlan_tag51 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 9, i32 5
  %56 = ptrtoint ptr %vlan_tag51 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %vlan_tag51, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then34, %ice_ethtool_flow_to_fltr.exit.if.end52_crit_edge
  %57 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %and, label %if.end52.cleanup218_crit_edge [
    i32 1, label %if.end52.sw.bb_crit_edge
    i32 2, label %if.end52.sw.bb_crit_edge349
    i32 3, label %if.end52.sw.bb_crit_edge350
    i32 13, label %sw.bb73
    i32 5, label %if.end52.sw.bb117_crit_edge
    i32 6, label %if.end52.sw.bb117_crit_edge351
    i32 7, label %if.end52.sw.bb117_crit_edge352
    i32 14, label %sw.bb162
  ]

if.end52.sw.bb117_crit_edge352:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb117

if.end52.sw.bb117_crit_edge351:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb117

if.end52.sw.bb117_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb117

if.end52.sw.bb_crit_edge350:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end52.sw.bb_crit_edge349:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end52.sw.bb_crit_edge:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end52.cleanup218_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup218

sw.bb:                                            ; preds = %if.end52.sw.bb_crit_edge, %if.end52.sw.bb_crit_edge349, %if.end52.sw.bb_crit_edge350
  %h_u = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1
  %pdst = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u, i32 0, i32 3
  %58 = ptrtoint ptr %pdst to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %pdst, align 2
  %ip = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %dst_port = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 2
  %60 = ptrtoint ptr %dst_port to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %dst_port, align 4
  %psrc = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1, i32 0, i32 0, i32 2
  %61 = ptrtoint ptr %psrc to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %psrc, align 4
  %src_port = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip, i32 0, i32 3
  %63 = ptrtoint ptr %src_port to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %src_port, align 2
  %ip4dst = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1, i32 0, i32 0, i32 1
  %64 = ptrtoint ptr %ip4dst to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ip4dst, align 4
  %66 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %ip, align 4
  %67 = ptrtoint ptr %h_u to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %h_u, align 4
  %src_ip = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %69 = ptrtoint ptr %src_ip to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %src_ip, align 4
  %m_u = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3
  %pdst59 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u, i32 0, i32 3
  %70 = ptrtoint ptr %pdst59 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %pdst59, align 2
  %mask = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3
  %dst_port60 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 0, i32 2
  %72 = ptrtoint ptr %dst_port60 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %dst_port60, align 4
  %psrc62 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3, i32 0, i32 0, i32 2
  %73 = ptrtoint ptr %psrc62 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %psrc62, align 4
  %src_port64 = getelementptr inbounds %struct.ice_fdir_v4, ptr %mask, i32 0, i32 3
  %75 = ptrtoint ptr %src_port64 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %src_port64, align 2
  %ip4dst66 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3, i32 0, i32 0, i32 1
  %76 = ptrtoint ptr %ip4dst66 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ip4dst66, align 4
  %78 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %mask, align 4
  %79 = ptrtoint ptr %m_u to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %m_u, align 4
  %src_ip72 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 0, i32 1
  %81 = ptrtoint ptr %src_ip72 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %src_ip72, align 4
  br label %cleanup218

sw.bb73:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %h_u74 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1
  %ip4dst75 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1, i32 0, i32 0, i32 1
  %82 = ptrtoint ptr %ip4dst75 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ip4dst75, align 4
  %ip76 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %84 = ptrtoint ptr %ip76 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %ip76, align 4
  %85 = ptrtoint ptr %h_u74 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %h_u74, align 4
  %src_ip81 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %87 = ptrtoint ptr %src_ip81 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %src_ip81, align 4
  %l4_4_bytes = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1, i32 0, i32 0, i32 2
  %88 = ptrtoint ptr %l4_4_bytes to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %l4_4_bytes, align 4
  %l4_header = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 3
  %90 = ptrtoint ptr %l4_header to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %l4_header, align 4
  %proto = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u74, i32 0, i32 5
  %91 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %proto, align 2
  %proto86 = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip76, i32 0, i32 8
  %93 = ptrtoint ptr %proto86 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %proto86, align 2
  %ip_ver = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u74, i32 0, i32 4
  %94 = ptrtoint ptr %ip_ver to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ip_ver, align 1
  %ip_ver89 = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip76, i32 0, i32 7
  %96 = ptrtoint ptr %ip_ver89 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %ip_ver89, align 1
  %tos = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1, i32 0, i32 0, i32 3
  %97 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %tos, align 4
  %tos92 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 1
  %99 = ptrtoint ptr %tos92 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %tos92, align 4
  %m_u93 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3
  %ip4dst94 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3, i32 0, i32 0, i32 1
  %100 = ptrtoint ptr %ip4dst94 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ip4dst94, align 4
  %mask95 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3
  %102 = ptrtoint ptr %mask95 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %mask95, align 4
  %103 = ptrtoint ptr %m_u93 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %m_u93, align 4
  %src_ip100 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 0, i32 1
  %105 = ptrtoint ptr %src_ip100 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %src_ip100, align 4
  %l4_4_bytes102 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3, i32 0, i32 0, i32 2
  %106 = ptrtoint ptr %l4_4_bytes102 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %l4_4_bytes102, align 4
  %l4_header104 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 0, i32 3
  %108 = ptrtoint ptr %l4_header104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %l4_header104, align 4
  %proto106 = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u93, i32 0, i32 5
  %109 = ptrtoint ptr %proto106 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %proto106, align 2
  %proto108 = getelementptr inbounds %struct.ice_fdir_v4, ptr %mask95, i32 0, i32 8
  %111 = ptrtoint ptr %proto108 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %proto108, align 2
  %ip_ver110 = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u93, i32 0, i32 4
  %112 = ptrtoint ptr %ip_ver110 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %ip_ver110, align 1
  %ip_ver112 = getelementptr inbounds %struct.ice_fdir_v4, ptr %mask95, i32 0, i32 7
  %114 = ptrtoint ptr %ip_ver112 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %ip_ver112, align 1
  %tos114 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3, i32 0, i32 0, i32 3
  %115 = ptrtoint ptr %tos114 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %tos114, align 4
  %tos116 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 1, i32 1
  %117 = ptrtoint ptr %tos116 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %tos116, align 4
  br label %cleanup218

sw.bb117:                                         ; preds = %if.end52.sw.bb117_crit_edge, %if.end52.sw.bb117_crit_edge351, %if.end52.sw.bb117_crit_edge352
  %ip118 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %h_u121 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1
  %ip6dst = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1, i32 0, i32 1
  %118 = call ptr @memcpy(ptr %ip118, ptr %ip6dst, i32 16)
  %src_ip124 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1
  %119 = call ptr @memcpy(ptr %src_ip124, ptr %h_u121, i32 16)
  %pdst129 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1, i32 0, i32 3
  %120 = ptrtoint ptr %pdst129 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %pdst129, align 2
  %dst_port131 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 2
  %122 = ptrtoint ptr %dst_port131 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %dst_port131, align 4
  %psrc133 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1, i32 0, i32 2
  %123 = ptrtoint ptr %psrc133 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %psrc133, align 4
  %src_port135 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 3
  %125 = ptrtoint ptr %src_port135 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %src_port135, align 2
  %tclass = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1, i32 0, i32 4
  %126 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %tclass, align 4
  %tc = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 6
  %128 = ptrtoint ptr %tc to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %tc, align 4
  %mask138 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3
  %m_u141 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3
  %ip6dst142 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3, i32 0, i32 1
  %129 = call ptr @memcpy(ptr %mask138, ptr %ip6dst142, i32 16)
  %src_ip145 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 1
  %130 = call ptr @memcpy(ptr %src_ip145, ptr %m_u141, i32 16)
  %pdst151 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3, i32 0, i32 3
  %131 = ptrtoint ptr %pdst151 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %pdst151, align 2
  %dst_port153 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 2
  %133 = ptrtoint ptr %dst_port153 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %dst_port153, align 4
  %psrc155 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3, i32 0, i32 2
  %134 = ptrtoint ptr %psrc155 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %psrc155, align 4
  %src_port157 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 3
  %136 = ptrtoint ptr %src_port157 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %src_port157, align 2
  %tclass159 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3, i32 0, i32 4
  %137 = ptrtoint ptr %tclass159 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %tclass159, align 4
  %tc161 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 6
  %139 = ptrtoint ptr %tc161 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %tc161, align 4
  br label %cleanup218

sw.bb162:                                         ; preds = %if.end52
  %ip163 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %h_u166 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1
  %ip6dst167 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1, i32 0, i32 1
  %140 = call ptr @memcpy(ptr %ip163, ptr %ip6dst167, i32 16)
  %src_ip170 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1
  %141 = call ptr @memcpy(ptr %src_ip170, ptr %h_u166, i32 16)
  %l4_4_bytes176 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1, i32 0, i32 2
  %142 = ptrtoint ptr %l4_4_bytes176 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %l4_4_bytes176, align 4
  %l4_header178 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 4
  %144 = ptrtoint ptr %l4_header178 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %l4_header178, align 4
  %tclass180 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 1, i32 0, i32 4
  %145 = ptrtoint ptr %tclass180 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %tclass180, align 4
  %tc182 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 6
  %147 = ptrtoint ptr %tc182 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %tc182, align 4
  %m_u183 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3
  %l4_proto = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %m_u183, i32 0, i32 4
  %148 = ptrtoint ptr %l4_proto to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %l4_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool184.not = icmp eq i8 %149, 0
  br i1 %tobool184.not, label %sw.bb162.if.end193_crit_edge, label %if.else188

sw.bb162.if.end193_crit_edge:                     ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.else188:                                       ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #9
  %l4_proto190 = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %h_u166, i32 0, i32 4
  %150 = ptrtoint ptr %l4_proto190 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %l4_proto190, align 1
  br label %if.end193

if.end193:                                        ; preds = %if.else188, %sw.bb162.if.end193_crit_edge
  %.sink = phi i8 [ %151, %if.else188 ], [ 59, %sw.bb162.if.end193_crit_edge ]
  %152 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 7
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %.sink, ptr %152, align 1
  %mask194 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3
  %ip6dst198 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3, i32 0, i32 1
  %154 = call ptr @memcpy(ptr %mask194, ptr %ip6dst198, i32 16)
  %src_ip201 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 1
  %155 = call ptr @memcpy(ptr %src_ip201, ptr %m_u183, i32 16)
  %l4_4_bytes207 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3, i32 0, i32 2
  %156 = ptrtoint ptr %l4_4_bytes207 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %l4_4_bytes207, align 4
  %l4_header209 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 4
  %158 = ptrtoint ptr %l4_header209 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %l4_header209, align 4
  %tclass211 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fsp, i32 0, i32 3, i32 0, i32 4
  %159 = ptrtoint ptr %tclass211 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %tclass211, align 4
  %tc213 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 6
  %161 = ptrtoint ptr %tc213 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %tc213, align 4
  %162 = ptrtoint ptr %l4_proto to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %l4_proto, align 1
  %proto217 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 3, i32 0, i32 7
  %164 = ptrtoint ptr %proto217 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %proto217, align 1
  br label %cleanup218

cleanup218:                                       ; preds = %if.end193, %sw.bb117, %sw.bb73, %sw.bb, %if.end52.cleanup218_crit_edge, %if.end12.cleanup218_crit_edge, %do.end, %entry.cleanup218_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup218_crit_edge ], [ -22, %if.end52.cleanup218_crit_edge ], [ 0, %if.end193 ], [ 0, %sw.bb117 ], [ 0, %sw.bb73 ], [ 0, %sw.bb ], [ -22, %do.end ], [ -22, %if.end12.cleanup218_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_fdir_is_dup_fltr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_update_per_q_fltr(ptr nocapture noundef readonly %vsi, i32 noundef %q_index, i1 noundef zeroext %inc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rxq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 50
  %0 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_rxq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp ne i16 %1, 0
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %q_index)
  %cmp.not = icmp ugt i32 %conv, %q_index
  %or.cond = and i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 4
  %2 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_rings, align 16
  %arrayidx = getelementptr ptr, ptr %3, i32 %q_index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %ch = getelementptr inbounds %struct.ice_rx_ring, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch, align 32
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %num_sb_fltr = getelementptr inbounds %struct.ice_channel, ptr %7, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_sb_fltr, i32 noundef 4) #7
  br i1 %inc, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @llvm.prefetch.p0(ptr %num_sb_fltr, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_sb_fltr, ptr %num_sb_fltr, i32 1, ptr elementtype(i32) %num_sb_fltr) #7, !srcloc !81
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %9 = ptrtoint ptr %num_sb_fltr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %num_sb_fltr, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %if.else
  %c.0.i.i = phi i32 [ %10, %if.else ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  %sub.i.i = add i32 %c.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i.cleanup_crit_edge, label %do.cond3.i.i, !prof !76

do.body1.i.i.cleanup_crit_edge:                   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %num_sb_fltr, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %num_sb_fltr, ptr %num_sb_fltr, i32 %c.0.i.i, i32 %sub.i.i, ptr elementtype(i32) %num_sb_fltr) #7, !srcloc !78
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !79
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.cleanup_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !80

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i

arch_atomic_cmpxchg.exit.i.i.i.cleanup_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.i.cleanup_crit_edge, %do.body1.i.i.cleanup_crit_edge, %if.then9, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ice_get_hw_vsi_num(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_rem_prof_id_flow(ptr noundef, i32 noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_flow_rem_entry(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_flow_rem_prof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_fdir_set_hw_fltr_rule(ptr noundef %pf, ptr noundef %seg, i32 noundef %flow, i32 noundef %tun) unnamed_addr #0 align 64 {
entry:
  %prof = alloca ptr, align 4
  %entry1_h = alloca i64, align 8
  %entry2_h = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prof) #7
  %2 = ptrtoint ptr %prof to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %prof, align 4
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry1_h) #7
  %3 = ptrtoint ptr %entry1_h to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %entry1_h, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry2_h) #7
  %4 = ptrtoint ptr %entry2_h to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %entry2_h, align 8
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %5 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.cleanup152_crit_edge, label %ice_get_main_vsi.exit

entry.cleanup152_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup152

ice_get_main_vsi.exit:                            ; preds = %entry
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %ice_get_main_vsi.exit.cleanup152_crit_edge, label %lor.lhs.false.i

ice_get_main_vsi.exit.cleanup152_crit_edge:       ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup152

lor.lhs.false.i:                                  ; preds = %ice_get_main_vsi.exit
  %ctrl_vsi_idx.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 8
  %9 = ptrtoint ptr %ctrl_vsi_idx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ctrl_vsi_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp.i = icmp eq i16 %10, -1
  br i1 %cmp.i, label %lor.lhs.false.i.cleanup152_crit_edge, label %ice_get_ctrl_vsi.exit

lor.lhs.false.i.cleanup152_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup152

ice_get_ctrl_vsi.exit:                            ; preds = %lor.lhs.false.i
  %conv.i = zext i16 %10 to i32
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %conv.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not = icmp eq ptr %12, null
  %tobool.not.i270 = icmp eq ptr %hw2, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool.not.i270
  br i1 %or.cond, label %ice_get_ctrl_vsi.exit.cleanup152_crit_edge, label %if.end.i271

ice_get_ctrl_vsi.exit.cleanup152_crit_edge:       ; preds = %ice_get_ctrl_vsi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup152

if.end.i271:                                      ; preds = %ice_get_ctrl_vsi.exit
  %fdir_prof.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 68
  %13 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fdir_prof.i, align 8
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i271.if.end8.i_crit_edge

if.end.i271.if.end8.i_crit_edge:                  ; preds = %if.end.i271
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then2.i:                                       ; preds = %if.end.i271
  %15 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pf, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 112, i32 noundef 3520) #7
  %17 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i.i, ptr %fdir_prof.i, align 8
  %tobool5.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool5.not.i, label %if.then2.i.cleanup152_crit_edge, label %if.then2.i.if.end8.i_crit_edge

if.then2.i.if.end8.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then2.i.cleanup152_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup152

if.end8.i:                                        ; preds = %if.then2.i.if.end8.i_crit_edge, %if.end.i271.if.end8.i_crit_edge
  %18 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fdir_prof.i, align 8
  %arrayidx.i272 = getelementptr ptr, ptr %19, i32 %flow
  %20 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i272, align 4
  %tobool10.not.i = icmp eq ptr %21, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end8.i.if.end10_crit_edge

if.end8.i.if.end10_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then11.i:                                      ; preds = %if.end8.i
  %22 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pf, align 8
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev16.i, i32 noundef 344, i32 noundef 3520) #7
  %24 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fdir_prof.i, align 8
  %arrayidx19.i = getelementptr ptr, ptr %25, i32 %flow
  %26 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %arrayidx19.i, align 4
  %27 = load ptr, ptr %fdir_prof.i, align 8
  %arrayidx21.i = getelementptr ptr, ptr %27, i32 %flow
  %28 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx21.i, align 4
  %tobool22.not.i = icmp eq ptr %29, null
  br i1 %tobool22.not.i, label %if.then11.i.cleanup152_crit_edge, label %if.then11.i.if.end10_crit_edge

if.then11.i.if.end10_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then11.i.cleanup152_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup152

if.end10:                                         ; preds = %if.then11.i.if.end10_crit_edge, %if.end8.i.if.end10_crit_edge
  %30 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fdir_prof.i, align 8
  %arrayidx = getelementptr ptr, ptr %31, i32 %flow
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr [2 x ptr], ptr %33, i32 0, i32 %tun
  %34 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %35, null
  br i1 %tobool12.not, label %if.end10.if.end28_crit_edge, label %if.then13

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then13:                                        ; preds = %if.end10
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1096) %35, ptr noundef dereferenceable(1096) %seg, i32 1096) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool15.not = icmp eq i32 %bcmp, 0
  br i1 %tobool15.not, label %if.then13.cleanup152_crit_edge, label %if.end17

if.then13.cleanup152_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup152

if.end17:                                         ; preds = %if.then13
  %arrayidx18 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 67, i32 %flow
  %36 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool19.not = icmp eq i16 %37, 0
  br i1 %tobool19.not, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #10
  br label %cleanup152

if.end21:                                         ; preds = %if.end17
  %call22 = tail call zeroext i1 @ice_is_arfs_using_perfect_flow(ptr noundef nonnull %hw2, i32 noundef %flow) #7
  br i1 %call22, label %do.end26, label %if.end27

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %flow) #10
  br label %cleanup152

if.end27:                                         ; preds = %if.end21
  %and.i = and i32 %flow, 2147483647
  %38 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fdir_prof.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end27.if.end28_crit_edge, label %ice_fdir_get_hw_prof.exit.i

if.end27.if.end28_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

ice_fdir_get_hw_prof.exit.i:                      ; preds = %if.end27
  %arrayidx.i.i = getelementptr ptr, ptr %39, i32 %and.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i274 = icmp eq ptr %41, null
  br i1 %tobool.not.i274, label %ice_fdir_get_hw_prof.exit.i.if.end28_crit_edge, label %if.end.i275

ice_fdir_get_hw_prof.exit.i.if.end28_crit_edge:   ; preds = %ice_fdir_get_hw_prof.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end.i275:                                      ; preds = %ice_fdir_get_hw_prof.exit.i
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef nonnull %hw2, i32 noundef %and.i) #7
  %cnt.i = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp3.i = icmp sgt i32 %43, 0
  br i1 %cmp3.i, label %if.end.i275.for.body.i_crit_edge, label %if.end.i275.for.cond1.preheader.i_crit_edge

if.end.i275.for.cond1.preheader.i_crit_edge:      ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

if.end.i275.for.body.i_crit_edge:                 ; preds = %if.end.i275
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %for.body.i.for.cond1.preheader.i_crit_edge, %if.end.i275.for.cond1.preheader.i_crit_edge
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %tobool5.not.i277 = icmp eq ptr %45, null
  br i1 %tobool5.not.i277, label %for.cond1.preheader.i.for.inc12.i_crit_edge, label %if.end7.i

for.cond1.preheader.i.for.inc12.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i275.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i275.for.body.i_crit_edge ]
  %arrayidx.i278 = getelementptr %struct.ice_fd_hw_prof, ptr %41, i32 0, i32 3, i32 %i.04.i
  %46 = ptrtoint ptr %arrayidx.i278 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %arrayidx.i278, align 2
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %47 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cnt.i, align 8
  %cmp.i279 = icmp slt i32 %inc.i, %48
  br i1 %cmp.i279, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond1.preheader.i_crit_edge

for.body.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end7.i:                                        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pf, align 8
  %dev.i280 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i280, ptr noundef nonnull %45) #7
  %51 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %41, align 4
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.end7.i, %for.cond1.preheader.i.for.inc12.i_crit_edge
  %arrayidx4.1.i = getelementptr [2 x ptr], ptr %41, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx4.1.i, align 4
  %tobool5.not.1.i = icmp eq ptr %53, null
  br i1 %tobool5.not.1.i, label %for.inc12.i.for.inc12.1.i_crit_edge, label %if.end7.1.i

for.inc12.i.for.inc12.1.i_crit_edge:              ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.1.i

if.end7.1.i:                                      ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pf, align 8
  %dev.1.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.1.i, ptr noundef nonnull %53) #7
  %56 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx4.1.i, align 4
  br label %for.inc12.1.i

for.inc12.1.i:                                    ; preds = %if.end7.1.i, %for.inc12.i.for.inc12.1.i_crit_edge
  %57 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %cnt.i, align 8
  br label %if.end28

if.end28:                                         ; preds = %for.inc12.1.i, %ice_fdir_get_hw_prof.exit.i.if.end28_crit_edge, %if.end27.if.end28_crit_edge, %if.end10.if.end28_crit_edge
  %mul = mul i32 %tun, 28
  %add = add i32 %mul, %flow
  %conv = zext i32 %add to i64
  %58 = trunc i32 %tun to i8
  %conv30 = add i8 %58, 1
  %call31 = call i32 @ice_flow_add_prof(ptr noundef %hw2, i32 noundef 2, i32 noundef 2, i64 noundef %conv, ptr noundef %seg, i8 noundef zeroext %conv30, ptr noundef nonnull %prof) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end28.cleanup152_crit_edge

if.end28.cleanup152_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup152

if.end34:                                         ; preds = %if.end28
  %idx35 = getelementptr inbounds %struct.ice_vsi, ptr %8, i32 0, i32 19
  %59 = ptrtoint ptr %idx35 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %idx35, align 2
  %conv36 = zext i16 %60 to i64
  %call38 = call i32 @ice_flow_add_entry(ptr noundef %hw2, i32 noundef 2, i64 noundef %conv, i64 noundef %conv36, i16 noundef zeroext %60, i32 noundef 1, ptr noundef %seg, ptr noundef nonnull %entry1_h) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end34.err_prof_crit_edge

if.end34.err_prof_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_prof

if.end41:                                         ; preds = %if.end34
  %61 = ptrtoint ptr %idx35 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %idx35, align 2
  %conv43 = zext i16 %62 to i64
  %idx44 = getelementptr inbounds %struct.ice_vsi, ptr %12, i32 0, i32 19
  %63 = ptrtoint ptr %idx44 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %idx44, align 2
  %call45 = call i32 @ice_flow_add_entry(ptr noundef %hw2, i32 noundef 2, i64 noundef %conv, i64 noundef %conv43, i16 noundef zeroext %64, i32 noundef 1, ptr noundef %seg, ptr noundef nonnull %entry2_h) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end41.err_entry_crit_edge

if.end41.err_entry_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_entry

if.end48:                                         ; preds = %if.end41
  %65 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %seg, ptr %arrayidx11, align 4
  %66 = ptrtoint ptr %entry1_h to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %entry1_h, align 8
  %entry_h = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %33, i32 0, i32 2
  %arrayidx52 = getelementptr [2 x i64], ptr %entry_h, i32 0, i32 %tun
  %68 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx52, align 8
  %69 = ptrtoint ptr %entry2_h to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %entry2_h, align 8
  %arrayidx55 = getelementptr %struct.ice_fd_hw_prof, ptr %33, i32 0, i32 2, i32 1, i32 %tun
  %71 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %arrayidx55, align 8
  %72 = ptrtoint ptr %idx35 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %idx35, align 2
  %vsi_h = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %33, i32 0, i32 3
  %74 = ptrtoint ptr %vsi_h to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %vsi_h, align 8
  %75 = ptrtoint ptr %idx44 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %idx44, align 2
  %arrayidx60 = getelementptr %struct.ice_fd_hw_prof, ptr %33, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %arrayidx60, align 2
  %cnt = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %33, i32 0, i32 1
  %78 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool61.not = icmp eq i32 %79, 0
  br i1 %tobool61.not, label %if.then62, label %if.end48.if.end64_crit_edge

if.end48.if.end64_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then62:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %cnt, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end48.if.end64_crit_edge
  %flags.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end64
  %idx.0305 = phi i32 [ 1, %if.end64 ], [ %inc, %for.inc.for.body_crit_edge ]
  %81 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i.i281 = icmp eq ptr %82, null
  br i1 %tobool.not.i.i281, label %for.body.for.inc_crit_edge, label %ice_get_main_vsi.exit.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

ice_get_main_vsi.exit.i:                          ; preds = %for.body
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %tobool.not.i282 = icmp eq ptr %84, null
  br i1 %tobool.not.i282, label %ice_get_main_vsi.exit.i.for.inc_crit_edge, label %if.end.i284

ice_get_main_vsi.exit.i.for.inc_crit_edge:        ; preds = %ice_get_main_vsi.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i284:                                      ; preds = %ice_get_main_vsi.exit.i
  %tc_cfg.i = getelementptr inbounds %struct.ice_vsi, ptr %84, i32 0, i32 56
  %85 = ptrtoint ptr %tc_cfg.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %tc_cfg.i, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %86)
  %cmp.i283 = icmp ugt i8 %86, 1
  br i1 %cmp.i283, label %land.lhs.true.i, label %if.end.i284.for.inc_crit_edge

if.end.i284.for.inc_crit_edge:                    ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end.i284
  %87 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %flags.i, align 4
  %89 = and i32 %88, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool3.not.i = icmp eq i32 %89, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %lor.lhs.false

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true.i
  %arrayidx68 = getelementptr %struct.ice_vsi, ptr %8, i32 0, i32 64, i32 %idx.0305
  %90 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx68, align 4
  %tobool69.not = icmp eq ptr %91, null
  br i1 %tobool69.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end71

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end71:                                         ; preds = %lor.lhs.false
  %92 = ptrtoint ptr %entry1_h to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 0, ptr %entry1_h, align 8
  %93 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx68, align 4
  %idx74 = getelementptr inbounds %struct.ice_vsi, ptr %94, i32 0, i32 19
  %95 = ptrtoint ptr %idx74 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %idx74, align 2
  %97 = ptrtoint ptr %idx35 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %idx35, align 2
  %conv76 = zext i16 %98 to i64
  %call77 = call i32 @ice_flow_add_entry(ptr noundef %hw2, i32 noundef 2, i64 noundef %conv, i64 noundef %conv76, i16 noundef zeroext %96, i32 noundef 1, ptr noundef %seg, ptr noundef nonnull %entry1_h) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end83, label %err_unroll

if.end83:                                         ; preds = %if.end71
  %99 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx68, align 4
  %idx86 = getelementptr inbounds %struct.ice_vsi, ptr %100, i32 0, i32 19
  %101 = ptrtoint ptr %idx86 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %idx86, align 2
  %103 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp31.i = icmp sgt i32 %104, 0
  br i1 %cmp31.i, label %if.end83.for.body.i289_crit_edge, label %if.end83.for.end.i_crit_edge

if.end83.for.end.i_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end83.for.body.i289_crit_edge:                 ; preds = %if.end83
  br label %for.body.i289

for.body.i289:                                    ; preds = %for.inc.i.for.body.i289_crit_edge, %if.end83.for.body.i289_crit_edge
  %conv33.i = phi i32 [ %conv.i291, %for.inc.i.for.body.i289_crit_edge ], [ 0, %if.end83.for.body.i289_crit_edge ]
  %idx.032.i = phi i16 [ %inc.i290, %for.inc.i.for.body.i289_crit_edge ], [ 0, %if.end83.for.body.i289_crit_edge ]
  %arrayidx.i287 = getelementptr %struct.ice_fd_hw_prof, ptr %33, i32 0, i32 3, i32 %conv33.i
  %105 = ptrtoint ptr %arrayidx.i287 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx.i287, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %106, i16 %102)
  %cmp3.i288 = icmp eq i16 %106, %102
  br i1 %cmp3.i288, label %for.body.i289.ice_fdir_prof_vsi_idx.exit_crit_edge, label %for.inc.i

for.body.i289.ice_fdir_prof_vsi_idx.exit_crit_edge: ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_fdir_prof_vsi_idx.exit

for.inc.i:                                        ; preds = %for.body.i289
  %inc.i290 = add i16 %idx.032.i, 1
  %conv.i291 = zext i16 %inc.i290 to i32
  %cmp.i292 = icmp sgt i32 %104, %conv.i291
  br i1 %cmp.i292, label %for.inc.i.for.body.i289_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i289_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i289

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end83.for.end.i_crit_edge
  %idx.0.lcssa.i = phi i16 [ 0, %if.end83.for.end.i_crit_edge ], [ %inc.i290, %for.inc.i.for.end.i_crit_edge ]
  %conv.lcssa.i = phi i32 [ 0, %if.end83.for.end.i_crit_edge ], [ %conv.i291, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %conv.lcssa.i)
  %cmp7.i = icmp eq i32 %104, %conv.lcssa.i
  br i1 %cmp7.i, label %if.then9.i, label %for.end.i.ice_fdir_prof_vsi_idx.exit_crit_edge

for.end.i.ice_fdir_prof_vsi_idx.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_fdir_prof_vsi_idx.exit

if.then9.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc13.i = add i32 %104, 1
  %107 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %inc13.i, ptr %cnt, align 8
  %arrayidx14.i = getelementptr %struct.ice_fd_hw_prof, ptr %33, i32 0, i32 3, i32 %104
  %108 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %102, ptr %arrayidx14.i, align 2
  br label %ice_fdir_prof_vsi_idx.exit

ice_fdir_prof_vsi_idx.exit:                       ; preds = %if.then9.i, %for.end.i.ice_fdir_prof_vsi_idx.exit_crit_edge, %for.body.i289.ice_fdir_prof_vsi_idx.exit_crit_edge
  %idx.030.i = phi i16 [ %idx.0.lcssa.i, %for.end.i.ice_fdir_prof_vsi_idx.exit_crit_edge ], [ %idx.0.lcssa.i, %if.then9.i ], [ %idx.032.i, %for.body.i289.ice_fdir_prof_vsi_idx.exit_crit_edge ]
  %109 = ptrtoint ptr %entry1_h to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %entry1_h, align 8
  %idxprom = zext i16 %idx.030.i to i32
  %arrayidx91 = getelementptr %struct.ice_fd_hw_prof, ptr %33, i32 0, i32 2, i32 %idxprom, i32 %tun
  %111 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %arrayidx91, align 8
  br label %for.inc

for.inc:                                          ; preds = %ice_fdir_prof_vsi_idx.exit, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end.i284.for.inc_crit_edge, %ice_get_main_vsi.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.0305, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup152_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup152_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup152

err_unroll:                                       ; preds = %if.end71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %idx.0305) #10
  %112 = ptrtoint ptr %entry1_h to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 0, ptr %entry1_h, align 8
  %113 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %arrayidx11, align 4
  %114 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %33, align 4
  %tobool101.not = icmp eq ptr %115, null
  br i1 %tobool101.not, label %for.cond95, label %err_unroll.for.end106_crit_edge

err_unroll.for.end106_crit_edge:                  ; preds = %err_unroll
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end106

for.cond95:                                       ; preds = %err_unroll
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx100.1 = getelementptr [2 x ptr], ptr %33, i32 0, i32 1
  %116 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx100.1, align 4
  %tobool101.not.1 = icmp ne ptr %117, null
  br label %for.end106

for.end106:                                       ; preds = %for.cond95, %err_unroll.for.end106_crit_edge
  %cmp96.lcssa = phi i1 [ true, %err_unroll.for.end106_crit_edge ], [ %tobool101.not.1, %for.cond95 ]
  %118 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp109309 = icmp sgt i32 %119, 0
  br i1 %cmp109309, label %for.end106.for.body111_crit_edge, label %for.end106.for.end139_crit_edge

for.end106.for.end139_crit_edge:                  ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end139

for.end106.for.body111_crit_edge:                 ; preds = %for.end106
  br label %for.body111

for.body111:                                      ; preds = %cleanup134.for.body111_crit_edge, %for.end106.for.body111_crit_edge
  %idx.2310 = phi i32 [ %inc138, %cleanup134.for.body111_crit_edge ], [ 0, %for.end106.for.body111_crit_edge ]
  %arrayidx113 = getelementptr %struct.ice_fd_hw_prof, ptr %33, i32 0, i32 3, i32 %idx.2310
  %120 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx113, align 2
  %call114 = call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw2, i16 noundef zeroext %121) #7
  %arrayidx117 = getelementptr %struct.ice_fd_hw_prof, ptr %33, i32 0, i32 2, i32 %idx.2310, i32 %tun
  %122 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx117, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %123)
  %tobool118.not = icmp eq i64 %123, 0
  br i1 %tobool118.not, label %for.body111.cleanup134_crit_edge, label %if.end120

for.body111.cleanup134_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup134

if.end120:                                        ; preds = %for.body111
  %call121 = call i32 @ice_rem_prof_id_flow(ptr noundef %hw2, i32 noundef 2, i16 noundef zeroext %call114, i64 noundef %conv) #7
  %124 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx117, align 8
  %call125 = call i32 @ice_flow_rem_entry(ptr noundef %hw2, i32 noundef 2, i64 noundef %125) #7
  %126 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 0, ptr %arrayidx117, align 8
  br i1 %cmp96.lcssa, label %if.end120.cleanup134_crit_edge, label %if.then130

if.end120.cleanup134_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup134

if.then130:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %arrayidx113, align 2
  br label %cleanup134

cleanup134:                                       ; preds = %if.then130, %if.end120.cleanup134_crit_edge, %for.body111.cleanup134_crit_edge
  %inc138 = add nuw nsw i32 %idx.2310, 1
  %128 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cnt, align 8
  %cmp109 = icmp slt i32 %inc138, %129
  br i1 %cmp109, label %cleanup134.for.body111_crit_edge, label %cleanup134.for.end139_crit_edge

cleanup134.for.end139_crit_edge:                  ; preds = %cleanup134
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end139

cleanup134.for.body111_crit_edge:                 ; preds = %cleanup134
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body111

for.end139:                                       ; preds = %cleanup134.for.end139_crit_edge, %for.end106.for.end139_crit_edge
  br i1 %cmp96.lcssa, label %for.end139.err_entry_crit_edge, label %if.then141

for.end139.err_entry_crit_edge:                   ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_entry

if.then141:                                       ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %cnt, align 8
  br label %err_entry

err_entry:                                        ; preds = %if.then141, %for.end139.err_entry_crit_edge, %if.end41.err_entry_crit_edge
  %err.2 = phi i32 [ %call45, %if.end41.err_entry_crit_edge ], [ %call77, %if.then141 ], [ %call77, %for.end139.err_entry_crit_edge ]
  %131 = ptrtoint ptr %idx35 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %idx35, align 2
  %call145 = call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw2, i16 noundef zeroext %132) #7
  %call146 = call i32 @ice_rem_prof_id_flow(ptr noundef %hw2, i32 noundef 2, i16 noundef zeroext %call145, i64 noundef %conv) #7
  %133 = ptrtoint ptr %entry1_h to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %entry1_h, align 8
  %call147 = call i32 @ice_flow_rem_entry(ptr noundef %hw2, i32 noundef 2, i64 noundef %134) #7
  br label %err_prof

err_prof:                                         ; preds = %err_entry, %if.end34.err_prof_crit_edge
  %err.3 = phi i32 [ %call38, %if.end34.err_prof_crit_edge ], [ %err.2, %err_entry ]
  %call148 = call i32 @ice_flow_rem_prof(ptr noundef %hw2, i32 noundef 2, i64 noundef %conv) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #10
  br label %cleanup152

cleanup152:                                       ; preds = %err_prof, %for.inc.cleanup152_crit_edge, %if.end28.cleanup152_crit_edge, %do.end26, %do.end, %if.then13.cleanup152_crit_edge, %if.then11.i.cleanup152_crit_edge, %if.then2.i.cleanup152_crit_edge, %ice_get_ctrl_vsi.exit.cleanup152_crit_edge, %lor.lhs.false.i.cleanup152_crit_edge, %ice_get_main_vsi.exit.cleanup152_crit_edge, %entry.cleanup152_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end26 ], [ %err.3, %err_prof ], [ -22, %ice_get_main_vsi.exit.cleanup152_crit_edge ], [ -22, %ice_get_ctrl_vsi.exit.cleanup152_crit_edge ], [ -17, %if.then13.cleanup152_crit_edge ], [ %call31, %if.end28.cleanup152_crit_edge ], [ -22, %entry.cleanup152_crit_edge ], [ -22, %lor.lhs.false.i.cleanup152_crit_edge ], [ -12, %if.then11.i.cleanup152_crit_edge ], [ -12, %if.then2.i.cleanup152_crit_edge ], [ 0, %for.inc.cleanup152_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry2_h) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry1_h) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prof) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_flow_set_fld(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_arfs_using_perfect_flow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_fdir_do_rem_flow(ptr noundef %pf, i32 noundef %flow_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %0 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %flow_type, label %if.end13.critedge [
    i32 2, label %entry.land.lhs.true.critedge_crit_edge
    i32 1, label %entry.land.lhs.true.critedge_crit_edge52
    i32 25, label %entry.land.lhs.true.critedge_crit_edge53
    i32 24, label %entry.land.lhs.true.critedge_crit_edge54
  ]

entry.land.lhs.true.critedge_crit_edge54:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.critedge

entry.land.lhs.true.critedge_crit_edge53:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.critedge

entry.land.lhs.true.critedge_crit_edge52:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.critedge

entry.land.lhs.true.critedge_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.critedge

land.lhs.true.critedge:                           ; preds = %entry.land.lhs.true.critedge_crit_edge, %entry.land.lhs.true.critedge_crit_edge52, %entry.land.lhs.true.critedge_crit_edge53, %entry.land.lhs.true.critedge_crit_edge54
  %fdir_perfect_fltr = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 69
  %div3.i = lshr i32 %flow_type, 5
  %arrayidx.i = getelementptr i32, ptr %fdir_perfect_fltr, i32 %div3.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i, align 4
  %3 = shl nuw nsw i32 1, %flow_type
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.then11.critedge, label %land.lhs.true.critedge.cleanup_crit_edge

land.lhs.true.critedge.cleanup_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11.critedge:                               ; preds = %land.lhs.true.critedge
  %fdir_prof.i.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 68
  %5 = ptrtoint ptr %fdir_prof.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fdir_prof.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then11.critedge.ice_fdir_rem_flow.exit_crit_edge, label %ice_fdir_get_hw_prof.exit.i

if.then11.critedge.ice_fdir_rem_flow.exit_crit_edge: ; preds = %if.then11.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_fdir_rem_flow.exit

ice_fdir_get_hw_prof.exit.i:                      ; preds = %if.then11.critedge
  %arrayidx.i.i = getelementptr ptr, ptr %6, i32 %flow_type
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %ice_fdir_get_hw_prof.exit.i.ice_fdir_rem_flow.exit_crit_edge, label %if.end.i

ice_fdir_get_hw_prof.exit.i.ice_fdir_rem_flow.exit_crit_edge: ; preds = %ice_fdir_get_hw_prof.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_fdir_rem_flow.exit

if.end.i:                                         ; preds = %ice_fdir_get_hw_prof.exit.i
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw1, i32 noundef %flow_type) #7
  %cnt.i = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3.i = icmp sgt i32 %10, 0
  br i1 %cmp3.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.cond1.preheader.i_crit_edge

if.end.i.for.cond1.preheader.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %for.body.i.for.cond1.preheader.i_crit_edge, %if.end.i.for.cond1.preheader.i_crit_edge
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %tobool5.not.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i, label %for.cond1.preheader.i.for.inc12.i_crit_edge, label %if.end7.i

for.cond1.preheader.i.for.inc12.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i25 = getelementptr %struct.ice_fd_hw_prof, ptr %8, i32 0, i32 3, i32 %i.04.i
  %13 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %arrayidx.i25, align 2
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %14 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cnt.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond1.preheader.i_crit_edge

for.body.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end7.i:                                        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pf, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i, ptr noundef nonnull %12) #7
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %8, align 4
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.end7.i, %for.cond1.preheader.i.for.inc12.i_crit_edge
  %arrayidx4.1.i = getelementptr [2 x ptr], ptr %8, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx4.1.i, align 4
  %tobool5.not.1.i = icmp eq ptr %20, null
  br i1 %tobool5.not.1.i, label %for.inc12.i.for.inc12.1.i_crit_edge, label %if.end7.1.i

for.inc12.i.for.inc12.1.i_crit_edge:              ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.1.i

if.end7.1.i:                                      ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pf, align 8
  %dev.1.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.1.i, ptr noundef nonnull %20) #7
  %23 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx4.1.i, align 4
  br label %for.inc12.1.i

for.inc12.1.i:                                    ; preds = %if.end7.1.i, %for.inc12.i.for.inc12.1.i_crit_edge
  %24 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cnt.i, align 8
  br label %ice_fdir_rem_flow.exit

ice_fdir_rem_flow.exit:                           ; preds = %for.inc12.1.i, %ice_fdir_get_hw_prof.exit.i.ice_fdir_rem_flow.exit_crit_edge, %if.then11.critedge.ice_fdir_rem_flow.exit_crit_edge
  %call12 = tail call fastcc i32 @ice_create_init_fdir_rule(ptr noundef %pf, i32 noundef %flow_type)
  br label %cleanup

if.end13.critedge:                                ; preds = %entry
  %and.i26 = and i32 %flow_type, 2147483647
  %fdir_prof.i.i27 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 68
  %25 = ptrtoint ptr %fdir_prof.i.i27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fdir_prof.i.i27, align 8
  %tobool.not.i.i28 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i28, label %if.end13.critedge.cleanup_crit_edge, label %ice_fdir_get_hw_prof.exit.i31

if.end13.critedge.cleanup_crit_edge:              ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ice_fdir_get_hw_prof.exit.i31:                    ; preds = %if.end13.critedge
  %arrayidx.i.i29 = getelementptr ptr, ptr %26, i32 %and.i26
  %27 = ptrtoint ptr %arrayidx.i.i29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i29, align 4
  %tobool.not.i30 = icmp eq ptr %28, null
  br i1 %tobool.not.i30, label %ice_fdir_get_hw_prof.exit.i31.cleanup_crit_edge, label %if.end.i34

ice_fdir_get_hw_prof.exit.i31.cleanup_crit_edge:  ; preds = %ice_fdir_get_hw_prof.exit.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i34:                                       ; preds = %ice_fdir_get_hw_prof.exit.i31
  tail call fastcc void @ice_fdir_erase_flow_from_hw(ptr noundef %hw1, i32 noundef %and.i26) #7
  %cnt.i32 = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %cnt.i32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cnt.i32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp3.i33 = icmp sgt i32 %30, 0
  br i1 %cmp3.i33, label %if.end.i34.for.body.i42_crit_edge, label %if.end.i34.for.cond1.preheader.i37_crit_edge

if.end.i34.for.cond1.preheader.i37_crit_edge:     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i37

if.end.i34.for.body.i42_crit_edge:                ; preds = %if.end.i34
  br label %for.body.i42

for.cond1.preheader.i37:                          ; preds = %for.body.i42.for.cond1.preheader.i37_crit_edge, %if.end.i34.for.cond1.preheader.i37_crit_edge
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %tobool5.not.i36 = icmp eq ptr %32, null
  br i1 %tobool5.not.i36, label %for.cond1.preheader.i37.for.inc12.i47_crit_edge, label %if.end7.i44

for.cond1.preheader.i37.for.inc12.i47_crit_edge:  ; preds = %for.cond1.preheader.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i47

for.body.i42:                                     ; preds = %for.body.i42.for.body.i42_crit_edge, %if.end.i34.for.body.i42_crit_edge
  %i.04.i38 = phi i32 [ %inc.i40, %for.body.i42.for.body.i42_crit_edge ], [ 0, %if.end.i34.for.body.i42_crit_edge ]
  %arrayidx.i39 = getelementptr %struct.ice_fd_hw_prof, ptr %28, i32 0, i32 3, i32 %i.04.i38
  %33 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %arrayidx.i39, align 2
  %inc.i40 = add nuw nsw i32 %i.04.i38, 1
  %34 = ptrtoint ptr %cnt.i32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cnt.i32, align 8
  %cmp.i41 = icmp slt i32 %inc.i40, %35
  br i1 %cmp.i41, label %for.body.i42.for.body.i42_crit_edge, label %for.body.i42.for.cond1.preheader.i37_crit_edge

for.body.i42.for.cond1.preheader.i37_crit_edge:   ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i37

for.body.i42.for.body.i42_crit_edge:              ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i42

if.end7.i44:                                      ; preds = %for.cond1.preheader.i37
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pf, align 8
  %dev.i43 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i43, ptr noundef nonnull %32) #7
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %28, align 4
  br label %for.inc12.i47

for.inc12.i47:                                    ; preds = %if.end7.i44, %for.cond1.preheader.i37.for.inc12.i47_crit_edge
  %arrayidx4.1.i45 = getelementptr [2 x ptr], ptr %28, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx4.1.i45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx4.1.i45, align 4
  %tobool5.not.1.i46 = icmp eq ptr %40, null
  br i1 %tobool5.not.1.i46, label %for.inc12.i47.for.inc12.1.i50_crit_edge, label %if.end7.1.i49

for.inc12.i47.for.inc12.1.i50_crit_edge:          ; preds = %for.inc12.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.1.i50

if.end7.1.i49:                                    ; preds = %for.inc12.i47
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pf, align 8
  %dev.1.i48 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.1.i48, ptr noundef nonnull %40) #7
  %43 = ptrtoint ptr %arrayidx4.1.i45 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx4.1.i45, align 4
  br label %for.inc12.1.i50

for.inc12.1.i50:                                  ; preds = %if.end7.1.i49, %for.inc12.i47.for.inc12.1.i50_crit_edge
  %44 = ptrtoint ptr %cnt.i32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cnt.i32, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.inc12.1.i50, %ice_fdir_get_hw_prof.exit.i31.cleanup_crit_edge, %if.end13.critedge.cleanup_crit_edge, %ice_fdir_rem_flow.exit, %land.lhs.true.critedge.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fdir_list_add_fltr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_set_fdir_ip4_seg(ptr noundef %seg, ptr nocapture noundef readonly %tcp_ip4_spec, i32 noundef %l4_proto, ptr nocapture noundef writeonly %perfect_fltr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %psrc = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %tcp_ip4_spec, i32 0, i32 2
  %0 = ptrtoint ptr %psrc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %psrc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %tcp_ip4_spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tcp_ip4_spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %pdst = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %tcp_ip4_spec, i32 0, i32 3
  %4 = ptrtoint ptr %pdst to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pdst, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp eq i16 %5, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %ip4dst = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %tcp_ip4_spec, i32 0, i32 1
  %6 = ptrtoint ptr %ip4dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ip4dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tos = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %tcp_ip4_spec, i32 0, i32 4
  %8 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %10 = zext i32 %l4_proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %l4_proto, label %if.end8.cleanup_crit_edge [
    i32 64, label %if.end8.if.end18_crit_edge
    i32 128, label %if.then11
    i32 256, label %if.then14
  ]

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.then11, %if.end8.if.end18_crit_edge
  %src_port.0 = phi i32 [ 17, %if.then11 ], [ 19, %if.then14 ], [ 15, %if.end8.if.end18_crit_edge ]
  %dst_port.0 = phi i32 [ 18, %if.then11 ], [ 20, %if.then14 ], [ 16, %if.end8.if.end18_crit_edge ]
  %11 = ptrtoint ptr %perfect_fltr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %perfect_fltr, align 1
  %12 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seg, align 8
  %or = or i32 %13, %l4_proto
  %or19 = or i32 %or, 4
  store i32 %or19, ptr %seg, align 8
  %14 = ptrtoint ptr %tcp_ip4_spec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tcp_ip4_spec, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %15, label %if.end18.cleanup_crit_edge [
    i32 -1, label %if.then22
    i32 0, label %if.then26
  ]

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_flow_set_fld(ptr noundef %seg, i32 noundef 11, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %if.end29

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %perfect_fltr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %perfect_fltr, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then22
  %ip4dst30 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %tcp_ip4_spec, i32 0, i32 1
  %18 = ptrtoint ptr %ip4dst30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ip4dst30, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %19, label %if.end29.cleanup_crit_edge [
    i32 -1, label %if.then32
    i32 0, label %if.then36
  ]

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_flow_set_fld(ptr noundef %seg, i32 noundef 12, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %if.end39

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %perfect_fltr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %perfect_fltr, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  %22 = ptrtoint ptr %psrc to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %psrc, align 4
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %23, label %if.end39.cleanup_crit_edge [
    i16 -1, label %if.then43
    i16 0, label %if.then47
  ]

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_flow_set_fld(ptr noundef %seg, i32 noundef %src_port.0, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %if.end50

if.then47:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %perfect_fltr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %perfect_fltr, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.then43
  %pdst51 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %tcp_ip4_spec, i32 0, i32 3
  %26 = ptrtoint ptr %pdst51 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pdst51, align 2
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %27, label %if.end50.cleanup_crit_edge [
    i16 -1, label %if.then55
    i16 0, label %if.then59
  ]

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_flow_set_fld(ptr noundef %seg, i32 noundef %dst_port.0, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %cleanup

if.then59:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %perfect_fltr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %perfect_fltr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.then55, %if.end50.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true4.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end8.cleanup_crit_edge ], [ -95, %if.end18.cleanup_crit_edge ], [ -95, %if.end29.cleanup_crit_edge ], [ -95, %if.end39.cleanup_crit_edge ], [ -95, %if.end50.cleanup_crit_edge ], [ 0, %if.then59 ], [ 0, %if.then55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_set_fdir_ip6_seg(ptr noundef %seg, ptr nocapture noundef readonly %tcp_ip6_spec, i32 noundef %l4_proto, ptr nocapture noundef writeonly %perfect_fltr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %tcp_ip6_spec, ptr noundef nonnull dereferenceable(16) @zero_ipv6_addr_mask, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ip6dst = getelementptr inbounds %struct.ethtool_tcpip6_spec, ptr %tcp_ip6_spec, i32 0, i32 1
  %bcmp97 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ip6dst, ptr noundef nonnull dereferenceable(16) @zero_ipv6_addr_mask, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp97)
  %tobool3.not = icmp eq i32 %bcmp97, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %psrc = getelementptr inbounds %struct.ethtool_tcpip6_spec, ptr %tcp_ip6_spec, i32 0, i32 2
  %0 = ptrtoint ptr %psrc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %psrc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool5.not = icmp eq i16 %1, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %pdst = getelementptr inbounds %struct.ethtool_tcpip6_spec, ptr %tcp_ip6_spec, i32 0, i32 3
  %2 = ptrtoint ptr %pdst to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pdst, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool7.not = icmp eq i16 %3, 0
  br i1 %tobool7.not, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true6.if.end_crit_edge, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tclass = getelementptr inbounds %struct.ethtool_tcpip6_spec, ptr %tcp_ip6_spec, i32 0, i32 4
  %4 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tclass, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %6 = zext i32 %l4_proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %l4_proto, label %if.end10.cleanup_crit_edge [
    i32 64, label %if.end10.if.end20_crit_edge
    i32 128, label %if.then13
    i32 256, label %if.then16
  ]

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then13, %if.end10.if.end20_crit_edge
  %src_port.0 = phi i32 [ 17, %if.then13 ], [ 19, %if.then16 ], [ 15, %if.end10.if.end20_crit_edge ]
  %dst_port.0 = phi i32 [ 18, %if.then13 ], [ 20, %if.then16 ], [ 16, %if.end10.if.end20_crit_edge ]
  %7 = ptrtoint ptr %perfect_fltr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %perfect_fltr, align 1
  %8 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seg, align 8
  %or = or i32 %9, %l4_proto
  %or21 = or i32 %or, 8
  store i32 %or21, ptr %seg, align 8
  %bcmp98 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %tcp_ip6_spec, ptr noundef nonnull dereferenceable(16) @full_ipv6_addr_mask, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp98)
  %tobool25.not = icmp eq i32 %bcmp98, 0
  br i1 %tobool25.not, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_flow_set_fld(ptr noundef %seg, i32 noundef 13, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %if.end35

if.else27:                                        ; preds = %if.end20
  %bcmp101 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %tcp_ip6_spec, ptr noundef nonnull dereferenceable(16) @zero_ipv6_addr_mask, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp101)
  %tobool31.not = icmp eq i32 %bcmp101, 0
  br i1 %tobool31.not, label %if.then32, label %if.else27.cleanup_crit_edge

if.else27.cleanup_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %perfect_fltr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %perfect_fltr, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then26
  %ip6dst36 = getelementptr inbounds %struct.ethtool_tcpip6_spec, ptr %tcp_ip6_spec, i32 0, i32 1
  %bcmp99 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ip6dst36, ptr noundef nonnull dereferenceable(16) @full_ipv6_addr_mask, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp99)
  %tobool39.not = icmp eq i32 %bcmp99, 0
  br i1 %tobool39.not, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_flow_set_fld(ptr noundef %seg, i32 noundef 14, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %if.end49

if.else41:                                        ; preds = %if.end35
  %bcmp100 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ip6dst36, ptr noundef nonnull dereferenceable(16) @zero_ipv6_addr_mask, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp100)
  %tobool45.not = icmp eq i32 %bcmp100, 0
  br i1 %tobool45.not, label %if.then46, label %if.else41.cleanup_crit_edge

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then46:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %perfect_fltr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %perfect_fltr, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.then40
  %psrc50 = getelementptr inbounds %struct.ethtool_tcpip6_spec, ptr %tcp_ip6_spec, i32 0, i32 2
  %12 = ptrtoint ptr %psrc50 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %psrc50, align 4
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %13, label %if.end49.cleanup_crit_edge [
    i16 -1, label %if.then53
    i16 0, label %if.then57
  ]

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_flow_set_fld(ptr noundef %seg, i32 noundef %src_port.0, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %if.end60

if.then57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %perfect_fltr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %perfect_fltr, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.then53
  %pdst61 = getelementptr inbounds %struct.ethtool_tcpip6_spec, ptr %tcp_ip6_spec, i32 0, i32 3
  %16 = ptrtoint ptr %pdst61 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pdst61, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %17, label %if.end60.cleanup_crit_edge [
    i16 -1, label %if.then65
    i16 0, label %if.then69
  ]

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_flow_set_fld(ptr noundef %seg, i32 noundef %dst_port.0, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %cleanup

if.then69:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %perfect_fltr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %perfect_fltr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %if.then65, %if.end60.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.else41.cleanup_crit_edge, %if.else27.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true6.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -95, %if.else27.cleanup_crit_edge ], [ -95, %if.else41.cleanup_crit_edge ], [ -95, %if.end49.cleanup_crit_edge ], [ -95, %if.end60.cleanup_crit_edge ], [ 0, %if.then69 ], [ 0, %if.then65 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_flow_add_fld_raw(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !60, !62, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 213, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ice_get_ethtool_fdir_entry._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ice_get_ethtool_fdir_entry._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 326, i32 5}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ice_fdir_rem_adq_chnl._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ice_fdir_rem_adq_chnl._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 463, i32 6}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ice_fdir_replay_flows._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @ice_fdir_replay_flows._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 1459, i32 4}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ice_fdir_replay_fltrs.__UNIQUE_ID_ddebug613, !19, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 1640, i32 3}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ice_del_fdir_ethtool._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ice_del_fdir_ethtool._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 1863, i32 3}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ice_add_fdir_ethtool._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ice_add_fdir_ethtool._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 1880, i32 3}
!35 = !{ptr @ice_add_fdir_ethtool._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ice_add_fdir_ethtool._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @ice_add_fdir_ethtool._entry.19, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 1888, i32 3}
!39 = !{ptr @ice_add_fdir_ethtool._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 663, i32 4}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ice_fdir_set_hw_fltr_rule._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ice_fdir_set_hw_fltr_rule._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 668, i32 4}
!47 = !{ptr @ice_fdir_set_hw_fltr_rule._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ice_fdir_set_hw_fltr_rule._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 719, i32 4}
!51 = !{ptr @ice_fdir_set_hw_fltr_rule._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ice_fdir_set_hw_fltr_rule._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @ice_fdir_set_hw_fltr_rule._entry.29, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 765, i32 2}
!55 = !{ptr @ice_fdir_set_hw_fltr_rule._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @zero_ipv6_addr_mask, !57, !"zero_ipv6_addr_mask", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 20, i32 24}
!58 = !{ptr @full_ipv6_addr_mask, !59, !"full_ipv6_addr_mask", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 11, i32 24}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c", i32 1718, i32 4}
!62 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ice_set_fdir_input_set._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ice_set_fdir_input_set._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i64 2148772422, i64 2148772427, i64 2148772440, i64 2148772484, i64 2148772518, i64 2148772539}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2148392430}
!78 = !{i64 774343, i64 774367, i64 774388, i64 774405, i64 774422}
!79 = !{i64 2148392656}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2148290607, i64 2148290633, i64 2148290662, i64 2148290696, i64 2148290727, i64 2148290750}
!82 = !{i8 0, i8 2}
!83 = !{i64 6792064}
!84 = !{i64 2160142290}
!85 = !{i64 2160142930}
